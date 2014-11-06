<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sangah" uri="/WEB-INF/tld/sangah.tld" %> 

<style type="text/css">
.imgattacher .mainwrapper{border:1px solid #CCC;height:100%;width:100%;}
.imgattacher .contentwrapper{float:left;height:100%;width:100%;}
.imgattacher .contentcolumn{height:100%;margin-left:200px;}
.imgattacher .leftcolumn{background:url("/ext/style/COMMON/image/bg/bg.png") repeat scroll 0 0 #cccccc;border-right:1px solid #CCC;float:left;height:100%;margin-left:-100%;width:200px;}
</style>

<div class="imgattacher" style="display: none;" >
	<div class="clearfix mainwrapper" >
		<div class="contentwrapper">
			<div class="contentcolumn">
				<iframe class="filemng" src="<%=PmisConfig.get("system.blankpage")%>" frameborder="no" scrolling="no" width="100%" height="100%"></iframe>
			</div>
		</div>
		<div class="leftcolumn">
			<div class="preview-wrapper" style="width: 100%; height: 100%">
				<img class="preview-img" src="/ext/style/COMMON/image/comm/preview.png"  width="100%" height="100%" align="absmiddle" onerror="this.src='/ext/style/COMMON/image/comm/preview.png';">
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
(function($){
"use strict";

	/* REMOVE EVENTS PREVIOUSLY ATTACHED */
	$(document).off(".imgattacher");

	/* GLOBAL FUNCTIONS AND PARAMETERS */
	window.attacher = window.attacher || {};
	$.extend( window.attacher, {
		defaults: {
			appendTo: "body",
			fileseq: "284881"
		},
		
		// file manager iframe dom object
		iframeFileMng: null,
		
		// appendTo selector
		appendTo: null,
		
		// file seq
		fileseq: null,
		
		// dialog dom object
		dlg: null,
		
		// form id that will be used to upload files
		form: "imgform",
		
		// initialized or not
		__ATTACHER_LOADED__: false,
		
		openAttacher: function(){
			$(attacher.dlg).dialog("open");
		},
		
		closeAttacher: function(){
			$(attacher.dlg).dialog("close");
		},
		
		initAttacher: function(params){
			if(!params || !params.form) { console.warn("Parameter 'form' null. Default value will be used!"); }
			if(!params || !params.fileseq) { console.warn("Parameter 'fileseq' null. Default value will be used!"); }
			
			var params = $.extend( true, {}, window.attacher.defaults, params || {});
			
			if( $('.imgattacher').length > 1 ) {
				console.warn("Supported only one attacher object.");
				return;
			}
			
			if( attacher.__ATTACHER_LOADED__ ) {
				console.warn("Attacher already inizialized.");
				return; 
			}
			
			attacher.iframeFileMng = $('.imgattacher iframe.filemng')[0];
			attacher.dlg = $('.imgattacher')[0];
			attacher.appendTo = params.form || params.appendTo;
			attacher.fileseq = params.fileseq;
			
			/* FILEMNG/DBLCLICK */
			$(document).on("filemng/dblclick.imgattacher", function(e, data){
				if( data._id_ !== attacher.getFileMngID() ) return;
				
				var file = data.file;
				var filepath = "<sangah:config id='system.WebRoot' />/Common/FileView.action?revid=" + file.file_revid;
				
				if( typeof Editor !== 'undefined' ){ /* Daum Editor */
					var _mockdata = {
						'imageurl': filepath,
						'filename': file.file_name,
						'filesize': file.file_size,
						'imagealign': 'C',
						'originalurl': filepath,
						'thumburl': filepath
					};
					var t = Editor.getSidebar().getAttacher('image');
					t.execAttach( _mockdata );
				}
				else if( typeof tinymce !== 'undefined' ) { /* tinyMCE Editor*/
					tinyMCE.execCommand("mceInsertContent", false, '<img src="' + filepath + '" alt="" />');
				}
				else {
					throw new Error("No editor found.");
				}
			});
			/* FILEMNG/SELECTED */
			$(document).on("filemng/selected.imgattacher", function(e, data){
				if( data._id_ !== attacher.getFileMngID() ) return;
				
				var filepath = "<sangah:config id='edms.PathRoot' />" + data.file.file_path;
				$('img.preview-img')[0].src = pmis.url("/Thumb", {
					"filePath": filepath,
					"fileName": data.file.file_name,
					"width": 200
				});
			});
			/* FILEMNG/ADDED */
			$(document).on("filemng/added.imgattacher", function(e, data){
				if( data._id_ !== attacher.getFileMngID() ) return;
				
				attacher.saveFiles();
			});
			
			/* CREATE DIALOG */
			$(attacher.dlg).dialog({
				width: 740,
				height: 200,
				title: "Image Attacher",
				autoOpen: false,
				resizable: false,
				appendTo: $("#" + attacher.appendTo)[0]
			});
			
			/* LOAD FILE MANAGER */
			attacher.loadFiles();
			
			attacher.__ATTACHER_LOADED__ = true;
		},
		
		loadFiles: function(){
			attacher.iframeFileMng.src = pmis.action("/Core/CoreList", {
				"user-query": "common.file.getFileList",
				"user-forward": "/pmis/STND_PMIS/common/file/AddFileNoActivex.jsp",
				"file_seq": attacher.fileseq,
				"jspType": "2",
				"disabledblclick": 1,
				"accept_filter": "image/*"
			});
		},
		
		reloadFiles: attacher.loadFiles,
		
		saveFiles: function(){
			var form = $('<form>').attr("id", attacher.form ).appendTo(attacher.dlg);
			attacher.iframeFileMng.contentWindow.cmdUpload( attacher.form ).done( function(){
			// after temporary upload
				$.ajax({
					url: pmis.action("/Core/CoreUpdate", {
						file_seq: attacher.fileseq
					}),
					data: $( '#' + attacher.form ).serializeArray(),
					type: "POST"
				}).done(function(data){
					form.remove();
					attacher.loadFiles();
				});
			});
		},
		
		// file manager identifier number
		getFileMngID: function(){
			return attacher.iframeFileMng.contentWindow.getID();
		}
	});
	
	// READY FUNCTION
	$(function(){
		$('.tx-btn-custom-wrapper').append("<li style=\"margin-top: 4px;display: inline-block;\"><button type='button' class=\"btn small tx-btn-attacher\" ><sangah:msg id='label.2016' /></button></li>");
		$('.tx-body').on( "click", '.tx-btn-attacher', function(){
			if( attacher && attacher.__ATTACHER_LOADED__ ) {
				attacher.openAttacher();
			}
		});
	});


})(jQuery);
</script>