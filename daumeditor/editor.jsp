<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/sangah.tld" prefix="sangah" %> 


<div class="tx-body" style="visibility: hidden;">
	<!-- 에디터 시작 -->
	<!--
		@decsription
		등록하기 위한 Form으로 상황에 맞게 수정하여 사용한다. Form 이름은 에디터를 생성할 때 설정값으로 설정한다.
	-->
		<!-- 에디터 컨테이너 시작 -->
		<div id="tx_trex_container" class="tx-editor-container">
			<!-- 사이드바 -->
			<div id="tx_sidebar" class="tx-sidebar" style="display: none;">
				<div class="tx-sidebar-boundary">
					<!-- 사이드바 / 첨부 -->
					<ul class="tx-bar tx-bar-left tx-nav-attach">
						<!-- 이미지 첨부 버튼 시작 -->
						<!--
							@decsription
							<li></li> 단위로 위치를 이동할 수 있다.
						-->
						<li class="tx-list">
							<div unselectable="on" id="tx_image" class="tx-image tx-btn-trans">
								<a href="javascript:;" title="사진" class="tx-text">사진</a>
							</div>
						</li>
						<!-- 이미지 첨부 버튼 끝 -->
						<li class="tx-list">
							<div unselectable="on" id="tx_file" class="tx-file tx-btn-trans">
								<a href="javascript:;" title="파일" class="tx-text">파일</a>
							</div>
						</li>
						<li class="tx-list">
							<div unselectable="on" id="tx_media" class="tx-media tx-btn-trans">
								<a href="javascript:;" title="외부컨텐츠" class="tx-text">외부컨텐츠</a>
							</div>
						</li>
						<li class="tx-list tx-list-extra">
							<div unselectable="on" class="tx-btn-nlrbg tx-extra">
								<a href="javascript:;" class="tx-icon" title="버튼 더보기">버튼 더보기</a>
							</div>
							<ul class="tx-extra-menu tx-menu" style="left:-48px;" unselectable="on">
								<!--
									@decsription
									일부 버튼들을 빼서 레이어로 숨기는 기능을 원할 경우 이 곳으로 이동시킬 수 있다.
								-->
							</ul>
						</li>
					</ul>
					<!-- 사이드바 / 우측영역 -->
					<ul class="tx-bar tx-bar-right">
						<li class="tx-list">
							<div unselectable="on" class="tx-btn-lrbg tx-fullscreen" id="tx_fullscreen">
								<a href="javascript:;" class="tx-icon" title="넓게쓰기 (Ctrl+M)">넓게쓰기</a>
							</div>
						</li>
					</ul>
					<!-- <ul class="tx-bar tx-bar-right tx-nav-opt">
						<li class="tx-list">
							<div unselectable="on" class="tx-switchtoggle" id="tx_switchertoggle">
								<a href="javascript:;" title="에디터 타입">에디터</a>
							</div>
						</li>
					</ul> -->
				</div>
			</div>

			<!-- 툴바 - 기본 시작 -->
			<!--
				@decsription
				툴바 버튼의 그룹핑의 변경이 필요할 때는 위치(왼쪽, 가운데, 오른쪽) 에 따라 <li> 아래의 <div>의 클래스명을 변경하면 된다.
				tx-btn-lbg: 왼쪽, tx-btn-bg: 가운데, tx-btn-rbg: 오른쪽, tx-btn-lrbg: 독립적인 그룹

				드롭다운 버튼의 크기를 변경하고자 할 경우에는 넓이에 따라 <li> 아래의 <div>의 클래스명을 변경하면 된다.
				tx-slt-70bg, tx-slt-59bg, tx-slt-42bg, tx-btn-43lrbg, tx-btn-52lrbg, tx-btn-57lrbg, tx-btn-71lrbg
				tx-btn-48lbg, tx-btn-48rbg, tx-btn-30lrbg, tx-btn-46lrbg, tx-btn-67lrbg, tx-btn-49lbg, tx-btn-58bg, tx-btn-46bg, tx-btn-49rbg
			-->
			<div id="tx_toolbar_basic" class="tx-toolbar tx-toolbar-basic"><div class="tx-toolbar-boundary">
				<ul class="tx-bar tx-bar-left">
					<li class="tx-list">
						<div id="tx_fontfamily" unselectable="on" class="tx-slt-70bg tx-fontfamily">
							<a href="javascript:;" title="<sangah:msg id='label.2003' />">굴림</a>
							<a href="javascript:;" class="tx-arrow" title="<sangah:msg id='label.2003' />"><sangah:msg id='label.2003' /></a>
						</div>
						<div id="tx_fontfamily_menu" class="tx-fontfamily-menu tx-menu" unselectable="on"></div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-left">
					<li class="tx-list">
						<div unselectable="on" class="tx-slt-42bg tx-fontsize" id="tx_fontsize">
							<a href="javascript:;" title="<sangah:msg id='label.2001' />">9pt</a>
							<a href="javascript:;" class="tx-arrow" title="<sangah:msg id='label.2001' />"><sangah:msg id='label.2001' /></a>
						</div>
						<div id="tx_fontsize_menu" class="tx-fontsize-menu tx-menu" unselectable="on"></div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-left tx-group-font">

					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-lbg 	tx-bold" id="tx_bold">
							<a href="javascript:;" class="tx-icon" title="<sangah:msg id='label.2013' /> (Ctrl+B)"><sangah:msg id='label.2013' /></a>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-bg 	tx-underline" id="tx_underline">
							<a href="javascript:;" class="tx-icon" title="<sangah:msg id='label.1961' /> (Ctrl+U)"><sangah:msg id='label.1961' /></a>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-bg 	tx-italic" id="tx_italic">
							<a href="javascript:;" class="tx-icon" title="<sangah:msg id='label.1996' /> (Ctrl+I)"><sangah:msg id='label.1996' /></a>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-bg 	tx-strike" id="tx_strike">
							<a href="javascript:;" class="tx-icon" title="<sangah:msg id='label.1970' /> (Ctrl+D)"><sangah:msg id='label.1970' /></a>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-slt-tbg 	tx-forecolor" id="tx_forecolor">
							<a href="javascript:;" class="tx-icon" title="<sangah:msg id='label.2002' />">A</a>
							<a href="javascript:;" class="tx-arrow" title="<sangah:msg id='label.1965' />"><sangah:msg id='label.1965' /></a>
						</div>
						<div id="tx_forecolor_menu" class="tx-menu tx-forecolor-menu tx-colorpallete"
							 unselectable="on"></div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-slt-brbg 	tx-backcolor" id="tx_backcolor">
							<a href="javascript:;" class="tx-icon" title="<sangah:msg id='label.2015' />">A</a>
							<a href="javascript:;" class="tx-arrow" title="<sangah:msg id='label.2014' />"><sangah:msg id='label.2014' /></a>
						</div>
						<div id="tx_backcolor_menu" class="tx-menu tx-backcolor-menu tx-colorpallete"
							 unselectable="on"></div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-left tx-group-align">
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-lbg 	tx-alignleft" id="tx_alignleft">
							<a href="javascript:;" class="tx-icon" title="<sangah:msg id='label.2019' /> (Ctrl+,)"><sangah:msg id='label.2019' /></a>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-bg 	tx-aligncenter" id="tx_aligncenter">
							<a href="javascript:;" class="tx-icon" title="<sangah:msg id='label.2020' /> (Ctrl+.)"><sangah:msg id='label.2020' /></a>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-bg 	tx-alignright" id="tx_alignright">
							<a href="javascript:;" class="tx-icon" title="<sangah:msg id='label.2018' /> (Ctrl+/)"><sangah:msg id='label.2018' /></a>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-rbg 	tx-alignfull" id="tx_alignfull">
							<a href="javascript:;" class="tx-icon" title="<sangah:msg id='label.1995' />"><sangah:msg id='label.1995' /></a>
						</div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-left tx-group-tab">
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-lbg 	tx-indent" id="tx_indent">
							<a href="javascript:;" title="<sangah:msg id='label.1998' /> (Tab)" class="tx-icon"><sangah:msg id='label.1998' /></a>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-rbg 	tx-outdent" id="tx_outdent">
							<a href="javascript:;" title="<sangah:msg id='label.2009' /> (Shift+Tab)" class="tx-icon"><sangah:msg id='label.2009' /></a>
						</div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-left tx-group-list">
					<li class="tx-list">
						<div unselectable="on" class="tx-slt-31lbg tx-lineheight" id="tx_lineheight">
							<a href="javascript:;" class="tx-icon" title="<sangah:msg id='label.1991' />"><sangah:msg id='label.1991' /></a>
							<a href="javascript:;" class="tx-arrow" title="<sangah:msg id='label.1990' />"><sangah:msg id='label.1990' /></a>
						</div>
						<div id="tx_lineheight_menu" class="tx-lineheight-menu tx-menu" unselectable="on"></div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="tx-slt-31rbg tx-styledlist" id="tx_styledlist">
							<a href="javascript:;" class="tx-icon" title="<sangah:msg id='label.1987' />"><sangah:msg id='label.1987' /></a>
							<a href="javascript:;" class="tx-arrow" title="<sangah:msg id='label.1986' />"><sangah:msg id='label.1986' /></a>
						</div>
						<div id="tx_styledlist_menu" class="tx-styledlist-menu tx-menu" unselectable="on"></div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-left tx-group-etc">
					<%-- <li class="tx-list">
						<div unselectable="on" class="		 tx-btn-lbg 	tx-emoticon" id="tx_emoticon">
							<a href="javascript:;" class="tx-icon" title="<sangah:msg id='label.2004' />"><sangah:msg id='label.2004' /></a>
						</div>
						<div id="tx_emoticon_menu" class="tx-emoticon-menu tx-menu" unselectable="on"></div>
					</li> --%>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-lbg 	tx-link" id="tx_link">
							<a href="javascript:;" class="tx-icon" title="<sangah:msg id='label.1988' /> (Ctrl+K)"><sangah:msg id='label.1988' /></a>
						</div>
						<div id="tx_link_menu" class="tx-link-menu tx-menu"></div>
					</li>
					<%-- <li class="tx-list">
						<div unselectable="on" class="		 tx-btn-bg 	tx-specialchar" id="tx_specialchar">
							<a href="javascript:;" class="tx-icon" title="<sangah:msg id='label.1972' />"><sangah:msg id='label.1972' /></a>
						</div>
						<div id="tx_specialchar_menu" class="tx-specialchar-menu tx-menu"></div>
					</li> --%>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-bg 	tx-table" id="tx_table">
							<a href="javascript:;" class="tx-icon" title="<sangah:msg id='label.1969' />"><sangah:msg id='label.1969' /></a>
						</div>
						<div id="tx_table_menu" class="tx-table-menu tx-menu" unselectable="on">
							<div class="tx-menu-inner">
								<div class="tx-menu-preview"></div>
								<div class="tx-menu-rowcol"></div>
								<div class="tx-menu-deco"></div>
								<div class="tx-menu-enter"></div>
							</div>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-rbg 	tx-horizontalrule" id="tx_horizontalrule">
							<a href="javascript:;" class="tx-icon" title="<sangah:msg id='label.1993' />"><sangah:msg id='label.1993' /></a>
						</div>
						<div id="tx_horizontalrule_menu" class="tx-horizontalrule-menu tx-menu" unselectable="on"></div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-left">
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-lbg 	tx-richtextbox" id="tx_richtextbox">
							<a href="javascript:;" class="tx-icon" title="<sangah:msg id='label.1966' />"><sangah:msg id='label.1966' /></a>
						</div>
						<div id="tx_richtextbox_menu" class="tx-richtextbox-menu tx-menu">
							<div class="tx-menu-header">
								<div class="tx-menu-preview-area">
									<div class="tx-menu-preview"></div>
								</div>
								<div class="tx-menu-switch">
									<div class="tx-menu-simple tx-selected"><a><span><sangah:msg id='label.1981' /></span></a></div>
									<div class="tx-menu-advanced"><a><span><sangah:msg id='label.2010' /></span></a></div>
								</div>
							</div>
							<div class="tx-menu-inner">
							</div>
							<div class="tx-menu-footer">
								<img class="tx-menu-confirm"
									 src="/ext/daumeditor/base<sangah:image />/images/icon/editor/btn_confirm.gif?rv=1.0.1" alt=""/>
								<img class="tx-menu-cancel" hspace="3"
									 src="/ext/daumeditor/base<sangah:image />/images/icon/editor/btn_cancel.gif?rv=1.0.1" alt=""/>
							</div>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-bg 	tx-quote" id="tx_quote">
							<a href="javascript:;" class="tx-icon" title="<sangah:msg id='label.1979' /> (Ctrl+Q)"><sangah:msg id='label.1979' /></a>
						</div>
						<div id="tx_quote_menu" class="tx-quote-menu tx-menu" unselectable="on"></div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-bg 	tx-background" id="tx_background">
							<a href="javascript:;" class="tx-icon" title="<sangah:msg id='label.2015' />"><sangah:msg id='label.2015' /></a>
						</div>
						<div id="tx_background_menu" class="tx-menu tx-background-menu tx-colorpallete"
							 unselectable="on"></div>
					</li>
					<!-- <li class="tx-list">
						<div unselectable="on" class="		 tx-btn-rbg 	tx-dictionary" id="tx_dictionary">
							<a href="javascript:;" class="tx-icon" title="사전">사전</a>
						</div>
					</li> -->
				</ul>
				<ul class="tx-bar tx-bar-left tx-group-undo">
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-lbg 	tx-undo" id="tx_undo">
							<a href="javascript:;" class="tx-icon" title="<sangah:msg id='label.1960' /> (Ctrl+Z)"><sangah:msg id='label.1960' /></a>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="		 tx-btn-rbg 	tx-redo" id="tx_redo">
							<a href="javascript:;" class="tx-icon" title="<sangah:msg id='label.1977' /> (Ctrl+Y)"><sangah:msg id='label.1977' /></a>
						</div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-right">
					<li class="tx-list">
						<div unselectable="on" class="tx-btn-nlrbg tx-advanced" id="tx_advanced">
							<a href="javascript:;" class="tx-icon" title="<sangah:msg id='label.1963' />"><sangah:msg id='label.1963' /></a>
						</div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-right tx-nav-opt">
					<li class="tx-list">
						<div unselectable="on" class="tx-switchtoggle" id="tx_switchertoggle">
							<a href="javascript:void(0);" title="<sangah:msg id='label.2005' />"><sangah:msg id='label.2005' /></a>
						</div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-right tx-btn-custom-wrapper" style="padding-right: 10px;" >
					<li style="margin-top: 4px;display: inline-block"><button class="btn small tx-btn-fullscreen" title="<sangah:msg id='label.2000' /> (Ctrl+M)"><sangah:msg id='label.2000' /></button></li>
				</ul>
			</div></div>
			<!-- 툴바 - 기본 끝 -->
			<!-- 툴바 - 더보기 시작 -->
			<div id="tx_toolbar_advanced" class="tx-toolbar tx-toolbar-advanced"><div class="tx-toolbar-boundary">
				<ul class="tx-bar tx-bar-left">
					<li class="tx-list">
						<div class="tx-tableedit-title">Table</div>
					</li>
				</ul>

				<ul class="tx-bar tx-bar-left tx-group-align">
					<li class="tx-list">
						<div unselectable="on" class="tx-btn-lbg tx-mergecells" id="tx_mergecells">
							<a href="javascript:;" class="tx-icon2" title="<sangah:msg id='label.1985' />"><sangah:msg id='label.1985' /></a>
						</div>
						<div id="tx_mergecells_menu" class="tx-mergecells-menu tx-menu" unselectable="on"></div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="tx-btn-bg tx-insertcells" id="tx_insertcells">
							<a href="javascript:;" class="tx-icon2" title="<sangah:msg id='label.1997' />"><sangah:msg id='label.1997' /></a>
						</div>
						<div id="tx_insertcells_menu" class="tx-insertcells-menu tx-menu" unselectable="on"></div>
					</li>
					<li class="tx-list">
						<div unselectable="on" class="tx-btn-rbg tx-deletecells" id="tx_deletecells">
							<a href="javascript:;" class="tx-icon2" title="<sangah:msg id='label.0148' />"><sangah:msg id='label.0148' /></a>
						</div>
						<div id="tx_deletecells_menu" class="tx-deletecells-menu tx-menu" unselectable="on"></div>
					</li>
				</ul>

				<ul class="tx-bar tx-bar-left tx-group-align">
					<li class="tx-list">
						<div id="tx_cellslinepreview" unselectable="on" class="tx-slt-70lbg tx-cellslinepreview">
							<a href="javascript:;" title='<sangah:msg id="label.1980"/>'></a>
							<a href="javascript:;" class="tx-arrow" title="<sangah:msg id='label.2014' />"><sangah:msg id='label.2014' /></a>
						</div>
						<div id="tx_cellslinepreview_menu" class="tx-cellslinepreview-menu tx-menu"
							 unselectable="on"></div>
					</li>
					<li class="tx-list">
						<div id="tx_cellslinecolor" unselectable="on" class="tx-slt-tbg tx-cellslinecolor">
							<a href="javascript:;" class="tx-icon2" title="<sangah:msg id="label.1992"/>"><sangah:msg id="label.1992"/></a>

							<div class="tx-colorpallete" unselectable="on"></div>
						</div>
						<div id="tx_cellslinecolor_menu" class="tx-cellslinecolor-menu tx-menu tx-colorpallete"
							 unselectable="on"></div>
					</li>
					<li class="tx-list">
						<div id="tx_cellslineheight" unselectable="on" class="tx-btn-bg tx-cellslineheight">
							<a href="javascript:;" class="tx-icon2" title="<sangah:msg id='label.1964' />"><sangah:msg id='label.1964' /></a>

						</div>
						<div id="tx_cellslineheight_menu" class="tx-cellslineheight-menu tx-menu"
							 unselectable="on"></div>
					</li>
					<li class="tx-list">
						<div id="tx_cellslinestyle" unselectable="on" class="tx-btn-bg tx-cellslinestyle">
							<a href="javascript:;" class="tx-icon2" title="<sangah:msg id="label.1989"/>"><sangah:msg id="label.1989"/></a>
						</div>
						<div id="tx_cellslinestyle_menu" class="tx-cellslinestyle-menu tx-menu" unselectable="on"></div>
					</li>
					<li class="tx-list">
						<div id="tx_cellsoutline" unselectable="on" class="tx-btn-rbg tx-cellsoutline">
							<a href="javascript:;" class="tx-icon2" title='<sangah:msg id="label.2012"/>'><sangah:msg id="label.2012"/></a>

						</div>
						<div id="tx_cellsoutline_menu" class="tx-cellsoutline-menu tx-menu" unselectable="on"></div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-left">
					<li class="tx-list">
						<div id="tx_tablebackcolor" unselectable="on" class="tx-btn-lrbg tx-tablebackcolor"
							 style="background-color:#9aa5ea;">
							<a href="javascript:;" class="tx-icon2" title="<sangah:msg id="label.1968"/>"><sangah:msg id="label.1968"/></a>
						</div>
						<div id="tx_tablebackcolor_menu" class="tx-tablebackcolor-menu tx-menu tx-colorpallete"
							 unselectable="on"></div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-left">
					<li class="tx-list">
						<div id="tx_tabletemplate" unselectable="on" class="tx-btn-lrbg tx-tabletemplate">
							<a href="javascript:;" class="tx-icon2" title="<sangah:msg id="label.1967"/>"><sangah:msg id="label.1967"/></a>
						</div>
						<div id="tx_tabletemplate_menu" class="tx-tabletemplate-menu tx-menu tx-colorpallete" unselectable="on"></div>
					</li>
				</ul>

			</div></div>
			<!-- 툴바 - 더보기 끝 -->
			<!-- 편집영역 시작 -->
				<!-- 에디터 Start -->
			<div id="tx_canvas" class="tx-canvas" >
				<div id="tx_loading" class="tx-loading"><div><img src="/ext/daumeditor/base<sangah:image />/images/icon/editor/loading2.png" width="113" height="21" align="absmiddle"/></div></div>
				<div id="tx_canvas_wysiwyg_holder" class="tx-holder" style="display:block;">
					<iframe id="tx_canvas_wysiwyg" id="tx_canvas_wysiwyg" name="tx_canvas_wysiwyg" allowtransparency="true" frameborder="0" style="height: 100%; width: 100%"></iframe>
				</div>
				<div class="tx-source-deco">
					<div id="tx_canvas_source_holder" class="tx-holder">
						<textarea id="tx_canvas_source" style="height: 100%; width: 100%"></textarea>
					</div>
				</div>
				<div id="tx_canvas_text_holder" class="tx-holder">
					<textarea id="tx_canvas_text" rows="30" cols="30"></textarea>
				</div>
			</div>
					<!-- 높이조절 Start -->
			<div id="tx_resizer" class="tx-resize-bar" style="">
				<div class="tx-resize-bar-bg"></div>
				<img id="tx_resize_holder" src="/ext/daumeditor/base<sangah:image />/images/icon/editor/skin/01/btn_drag01.gif" width="58" height="12" unselectable="on" alt="" />
			</div>
			<div class="tx-side-bi" id="tx_side_bi" style="display: none">
				<div style="text-align: right;">
					<img hspace="4" height="14" width="78" align="absmiddle" src="/ext/daumeditor/base<sangah:image />/images/icon/editor/editor_bi.png" />
				</div>
			</div>
						<!-- 편집영역 끝 -->
					<!-- 첨부박스 시작 -->
						<!-- 파일첨부박스 Start -->
			<div id="tx_attach_div" class="tx-attach-div" style="">
				<div id="tx_attach_txt" class="tx-attach-txt">파일 첨부</div>
				<div id="tx_attach_box" class="tx-attach-box">
					<div class="tx-attach-box-inner">
						<div id="tx_attach_preview" class="tx-attach-preview"><p></p><img src="/ext/daumeditor/base<sangah:image />/images/icon/editor/pn_preview.gif" width="147" height="108" unselectable="on"/></div>
						<div class="tx-attach-main">
							<div id="tx_upload_progress" class="tx-upload-progress"><div>0%</div><p>파일을 업로드하는 중입니다.</p></div>
							<ul class="tx-attach-top">
								<li id="tx_attach_delete" class="tx-attach-delete"><a>전체삭제</a></li>
								<li id="tx_attach_size" class="tx-attach-size">
									파일: <span id="tx_attach_up_size" class="tx-attach-size-up"></span>/<span id="tx_attach_max_size"></span>
								</li>
								<li id="tx_attach_tools" class="tx-attach-tools">
								</li>
							</ul>
							<ul id="tx_attach_list" class="tx-attach-list"></ul>
						</div>
					</div>
				</div>
			</div>
				<!-- 첨부박스 끝 -->
		</div>
		<!-- 에디터 컨테이너 끝 -->
</div>
<!-- 에디터 끝 -->

<script type="text/javascript">
(function($){
"use strict";

	$.extend(Editor, {
		
		init: function(options) {
		/*****************************************************************
		Initialization function
		*****************************************************************/
			if(options && options.resizer && options.resizer.hidden == true ) {
				$('#tx_resizer').css('display', 'none');
			}
			EditorJSLoader.ready(function(Editor) {
				var DEFAULT_SETTINGS = {
					txHost: '', /* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) http://xxx.xxx.com */
					txPath: '', /* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) /xxx/xxx/ */
					txService: 'sample', /* 수정필요없음. */
					txProject: 'sample', /* 수정필요없음. 프로젝트가 여러개일 경우만 수정한다. */
					initializedId: "", /* 대부분의 경우에 빈문자열 */
					wrapper: "tx_trex_container", /* 에디터를 둘러싸고 있는 레이어 이름(에디터 컨테이너) */
					form: 'form', /* 등록하기 위한 Form 이름 */
					txIconPath: "/ext/daumeditor/base<sangah:image />/images/icon/editor/", /*에디터에 사용되는 이미지 디렉터리, 필요에 따라 수정한다. */
					txDecoPath: "/ext/daumeditor/base<sangah:image />/images/deco/contents/", /*본문에 사용되는 이미지 디렉터리, 서비스에서 사용할 때는 완성된 컨텐츠로 배포되기 위해 절대경로로 수정한다. */
					canvas: {
						styles: {
							color: "#123456", /* 기본 글자색 */
							fontFamily: "Arial", /* 기본 글자체 */
							fontSize: "10pt", /* 기본 글자크기 */
							backgroundColor: "#fff", /*기본 배경색 */
							lineHeight: "1.5", /*기본 줄간격 */
							padding: "8px" /* 위지윅 영역의 여백 */
						},
						initHeight: 150,
						minHeight: 150,
						selectedMode: "html", // text, source
						doctype: "edge", // xhtml, html
			            mode: ["text", "html", "source"],
						pMarginZero: true,
			            readonly: false,
			            ext: 'html',
			            param: "",
			            newlinepolicy: "p",
			            showGuideArea: false,
			            convertingText: true,
						escapeTextModeContents: true,
						removeTextModeBr: false
					},
					resizer: {
						minHeight: 150,
						hidden: false
					},
					events: {
						preventUnload: false
					},
					sidebar: {
						attachbox: {
							show: false,
							confirmForDeleteAll: true
						},
						attacher: {
							image: {
								objstyle: {
									height: "auto", // really important or the image will not be rendered on pdf! 
									width: "100%" 
								}
							}
						}
					},
					size: {
						//contentWidth: 1024 /* 지정된 본문영역의 넓이가 있을 경우에 설정 */
					}
				};
				var settings = $.extend(true, {}, DEFAULT_SETTINGS, options || {});
				var editor = new Editor(settings);
			});
			
			return this.onReady().then(function(){
				$(window).resize(function(){
					if( typeof Editor !== "undefined" && Editor != null && Editor.refreshSize ){
						Editor.refreshSize();
					}
				});
				
				$(".tx-body").css("visibility", "visible");
				
				Editor.loadCodeMirror();
				
				Editor.canvas.observeJob( Trex.Ev.__CANVAS_DATA_INITIALIZE, function(){
					Editor.loadCodeMirror();
				});
				
				Editor.canvas.observeJob( Trex.Ev.__CANVAS_MODE_CHANGE, function(){
					Editor.loadCodeMirror();
					Editor.fireJobs(Trex.Ev.__EDITOR_CONTENT_CHANGED);
				});
				
				Editor.canvas.observeJob( Trex.Ev.__CANVAS_NORMAL_SCREEN_CHANGE, function(){
					// change fullscreen button label
					var l = '<sangah:msg id="label.2000" />';
					$('.tx-btn-fullscreen').text(l).attr('title', l);
				});
				
				Editor.canvas.observeJob( Trex.Ev.__CANVAS_FULL_SCREEN_CHANGE, function(){
					// change fullscreen button label
					var l = '<sangah:msg id="label.0383" />';
					$('.tx-btn-fullscreen').text(l).attr('title', l);
				});
				
				Editor.observeJob( Trex.Ev.__EDITOR_LOAD_DATA_END, function(){
					if( !!Editor.config.canvas.readonly ){
						$('[contenteditable]', Editor.getDocument()).attr('contenteditable', 'false');
					}
					Editor.fireJobs(Trex.Ev.__EDITOR_CONTENT_CHANGED);
				});
				
				Editor.observeJob( Trex.Ev.__EDITOR_CONTENT_CHANGED, function(){
					Editor._removeDisallowedContent();
				});
				
				$(Editor.getDocument()).on("input", function(){ 
					Editor.fireJobs(Trex.Ev.__EDITOR_CONTENT_CHANGED);
				});
				
				// Prevent the backspace key from navigating back.
				/* $(Editor.getDocument()).unbind('keydown').bind('keydown', function (event) {
				    var doPrevent = false;
				    if (event.keyCode === 8) {
				        var d = event.srcElement || event.target;
				        console.log(d);
				    	doPrevent = doPrevent || !d.isContentEditable;
				    }
				    doPrevent = true;
				    if (doPrevent) {
				        event.preventDefault();
				    }
				}); */
				
			}); 
		},
		
		modify: function(data) {
			if (Editor.__PANEL_LOADED && Editor.__EDITOR_LOADED) {
				if (this.loadEditor) {
					this.loadEditor( $.extend( { inputmode: "original" },  data ) );
				}
			} else {
				setTimeout(this.modify.bind(this, data), 10);
			}
		},
		
		readonly: function(param) {
		/*****************************************************************
		Will disable editing and toolbar
		*****************************************************************/
			if( Editor.__PANEL_LOADED == false ) {
				setTimeout(function() {
			    	Editor.readonly(param);
				}, 50);
			} else {
				if(typeof param === "undefined" || !!param) {
					Editor.__PANEL_READONLY = true;
					$("#tx_canvas_wysiwyg").contents().find("[contenteditable]").attr( "contenteditable", "false" );
					//$('.readonlyDiv').css('display', '');
					//$('.tx-toolbar').css('display', 'none');
				} else {
					Editor.__PANEL_READONLY = false;
					$("#tx_canvas_wysiwyg").contents().find("[contenteditable]").attr( "contenteditable", "true" );
					//$("#tx_canvas_wysiwyg").contents().find(".tx-content-container").remove('.readonlyDiv');
					//$('.readonlyDiv').css('display', 'none');
					//$('.tx-toolbar').css('display', '');
				}
			}
		},
		
		/* Resize function */
		resize: function(_height) {
			if (Editor.__PANEL_LOADED && Editor.__EDITOR_LOADED) {
				Editor.canvas.setCanvasSize({height: _height});
				Editor.canvas.fireJobs('canvas.height.change', _height);
			} else {
				setTimeout( Editor.resize.bind( this, _height), 10);
			}
		},
		
		/* Ready function return a jquery promise to use as an ajax callback */
		onReady: function(defer) {
			if(!defer) {
				var defer = $.Deferred();
			}
			if (Editor.__PANEL_LOADED && Editor.__EDITOR_LOADED) {
				defer.resolve();
			} else {
				setTimeout( Editor.onReady.bind(this, defer), 10);
			}
			return defer.promise(); 
		},
		
		/* Return the editor DOM Document object */
		getDocument: function() {
			if (Editor.__PANEL_LOADED && Editor.__EDITOR_LOADED) {
				//return $('#tx_canvas_wysiwyg_holder iframe').contents()[0];
				Editor.canvas.changeMode('html');
				return Editor.getCanvas().getCurrentPanel().getDocument();
			}
			return null;
		},
		
		/* Return the editor DOM Window object */
		getWindow: function(){
			if (Editor.__PANEL_LOADED && Editor.__EDITOR_LOADED) {
				Editor.canvas.changeMode('html');
				return Editor.getCanvas().getCurrentPanel().getWindow();
			}
			return null;
		},
		
		getHtmlContent: function(){
			Editor.canvas.changeMode('html');
			
			//return "<!DOCTYPE HTML>" + $('html', Editor.getDocument() )[0].outerHTML;
			
			return '<!DOCTYPE HTML>'+
			'<html lang="ko"><head>'+
			'<meta http-equiv=\"Content-type\" content=\"text/html;charset=UTF-8\">'+
			'<link rel="stylesheet" href="' + EditorJSLoader.getCSSBasePath() + 'content_reset.css" type="text/css"></link>' +
			'<link rel="stylesheet" href="' + EditorJSLoader.getCSSBasePath() + 'content_view.css" type="text/css"></link>' +
			'</head><body class="tx-content-container">' +
			Editor.getContent() +
			'</body></html>';
		},
		
		/* Download function */
		download: function(name){
			var w = Editor._newwindow();
			
	    	$.ajax({
	    		url: "/Common/TemporaryFile/uploadContent.action",
	    		data: {
	    			"content" : Editor.getHtmlContent()
	    		},
	    		type: "POST",
	    		dataType: "json"
	    	}).done(function(data) {
	    		w.location.href = "/Common/TemporaryFile/download.action?" + $.param({
	    			"fileId": data.fileId,
					"fileName": name||'editor.html'
	    		});
	    	});
		},
		
		/* Print function */
		print: function(){
			var w = Editor._newwindow();
			setTimeout(function(){ w.print(); }, 100);
		},
		
		/* View function will open a new window with the content of the editor in readonly */
		view: function(){
			Editor._newwindow();
		},
		
		_newwindow: function(){
			var w = window.open();
			w.document.write( Editor.getHtmlContent() );
			w.document.close();
			// set editor content into window's document's body
			//$(w.document.body).html( Editor.getContent() );
			// remove additional meta tags in the body
			$( 'meta[http-equiv]', w.document.body ).remove();
			return w;
		},
		
		loadCodeMirror: function(){
			if( Editor.canvas.mode === "source" ){
				Editor.loadSourceCodeMirror();
			}
			else if( Editor.canvas.mode === "text" ){
				Editor.loadTextCodeMirror();
			}
		},
		
		loadSourceCodeMirror: function(){
			var ta = $("#tx_canvas_source")[0];
			var p = Editor.canvas.panels.source;
			
			if( typeof CodeMirror === "undefined" ){
				var lib = [
		     		"lib/codemirror.js",
		     		"addon/fold/xml-fold.js",
		     		"addon/edit/matchtags.js",
		     		"addon/selection/active-line.js",
		     		"mode/xml/xml.js",
		     		"mode/javascript/javascript.js",
		     		"mode/css/css.js",
		     		"mode/htmlmixed/htmlmixed.js"
		     	];
				Editor._loadCodeMirrorLib( lib );
			}
			if( !p.mrr ){
				var editor = CodeMirror.fromTextArea( ta, {
					mode: { name: "htmlmixed" },
					tabMode: "indent", 
					lineNumbers : true,
					indentUnit : 4,
					matchTags: {bothTags: true},
				    extraKeys: {"Ctrl-J": "toMatchingTag"},
				    styleActiveLine: true
				});
				editor.setSize(null, p.getPanelHeight());
				editor.on('change', function(){
					$(ta).val( editor.getValue() );
				});
				p.mrr = editor;
				
			}
			p.mrr.setValue( $(ta).val() );
			p.mrr.refresh();
		},
		
		loadTextCodeMirror: function(){
			var ta = $("#tx_canvas_text")[0];
			var p = Editor.canvas.panels.text;
			
			if( typeof CodeMirror === "undefined" ){
				var lib = [
	   	     		"lib/codemirror.js",
	   	     		"addon/fold/xml-fold.js",
	   	     		"addon/edit/matchtags.js",
	   	     		"mode/xml/xml.js"
	   	     	];
				Editor._loadCodeMirrorLib( lib );
			}
			if( !p.mrr ){
				var editor = CodeMirror.fromTextArea( ta, {
					//mode: { name: "htmlmixed" },
					mode: "text/html",
					tabMode: "indent", 
					lineNumbers : true,
					indentUnit : 4,
					matchTags: {bothTags: true},
				    extraKeys: {"Ctrl-J": "toMatchingTag"}
				});
				editor.setSize(null, p.getPanelHeight());
				editor.on('change', function(){
					$(ta).val( editor.getValue() );
				});
				p.mrr = editor;
			}
			p.mrr.setValue( $(ta).val() );
			p.mrr.refresh();
		},
		
		_loadCodeMirrorLib: function( lib ){
	     	var codeMirrorJSBasePath = "/ext/codemirror/";
	     	
	     	for(var i=0; i<lib.length; i++){
	     		jQuery.ajax({
	     			url: codeMirrorJSBasePath + lib[i],
	     			cache: true,
	     			async: false,
	     			dataType: "script"
	     		});
	     	}
		},
		
		_removeDisallowedContent: function(){
			var p = Editor.getCanvas().getCurrentPanel();
			// clean content only if in html mode
			if( p.wysiwygDoc ){
				$("[style*='mso-'], [style*='-ms-'], [style*='letter-spacing']", p.getDocument() ).each(function () {
				  var el = this;
				  el.style.cssText = el.style.cssText.replace(/(^|;)\s*mso-[^;]+/g, '');
				  el.style.cssText = el.style.cssText.replace(/(^|;)\s*-ms-[^;]+/g, '');
				  el.style.cssText = el.style.cssText.replace(/(^|;)\s*letter-spacing[^;]+/g, '');
				});
				
				// remove all script tags
				$('script', p.getDocument()).remove();
			}
		}
	});
	
	/* EVENT HANDLER FOR FULLSCREEN BUTTON */
	$('.tx-btn-fullscreen').click(function(){
		Editor.getTool().fullscreen.execute();
	});
	
})(jQuery);
</script>

<!-- Sample: Saving Contents -->
<script type="text/javascript">
	/* 예제용 함수 */
	/* function saveEditorContent() {
		Editor.save(); // 이 함수를 호출하여 글을 등록하면 된다.
	} */

	/**
	 * Editor.save()를 호출한 경우 데이터가 유효한지 검사하기 위해 부르는 콜백함수로
	 * 상황에 맞게 수정하여 사용한다.
	 * 모든 데이터가 유효할 경우에 true를 리턴한다.
	 * @function
	 * @param {Object} editor - 에디터에서 넘겨주는 editor 객체
	 * @returns {Boolean} 모든 데이터가 유효할 경우에 true
	 */
	/* function validEditor(editor) {
		// Place your validation logic here

		// sample : validate that content exists
		var validator = new Trex.Validator();
		var content = editor.getContent();
		if (!validator.exists(content)) {
			alert('내용을 입력하세요');
			return false;
		}

		return true;
	} */

	/**
	 * Editor.save()를 호출한 경우 validForm callback 이 수행된 이후
	 * 실제 form submit을 위해 form 필드를 생성, 변경하기 위해 부르는 콜백함수로
	 * 각자 상황에 맞게 적절히 응용하여 사용한다.
	 * @function
	 * @param {Object} editor - 에디터에서 넘겨주는 editor 객체
	 * @returns {Boolean} 정상적인 경우에 true
	 */
	function setForm(editor) {
		var formGenerator = editor.getForm();
		var content = editor.getContent();
		formGenerator.createField(
				tx.textarea({
					'name': "note_content", // 본문 내용을 필드를 생성하여 값을 할당하는 부분
					'style': { 'display': "none" }
				}, content)
		);
		return true;
	}
</script>