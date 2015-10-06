(function($){
	
	TrexMessage.addMsg({
	    "@image.editpopup.title": "Edit Image Properties",
	    "@image.editpopup.height": "Height",
	    "@image.editpopup.width": "Width"
	});

	Trex.module('image edit popup', function(editor, toolbar, sidebar, canvas /* , config */) {
		canvas.observeJob(Trex.Ev.__CANVAS_PANEL_DBLCLICK, function(ev) {
			
			// not img tag
			if( ev.target.tagName !== 'IMG' ) return;
			
			// readonly skip
			if( canvas.config.readonly ) return;
			
			// skip if dialog already open
			if( editor._editimagepop_ ) return;
			
			var img = ev.target
			
			if( !$ ){
				console.warning('jQuery missing WTF! Image edit popup module cannot be loaded');
			}
			
			var d = $('<div></div>');
			
			Trex.MarkupTemplate.add(
				'image.editpopup', 
				'<p><label>URL<label></p>' +
				'<input name="src" type="text" style="width: 100%;" class="input_text">' +
				'<p><br><label>@image.editpopup.width (px)<label></p>' +
				'<input name="width" type="text" size="10" class="input_text">' +
				'<p><br><label>@image.editpopup.height (px)<label></p>' +
				'<input name="height" type="text" size="10" class="input_text">'
			);
			
			d.html(Trex.MarkupTemplate.get('image.editpopup').template);
			
			$('input[name=src]', d).val(ev.target.src);
			$('input[name=width]', d).val(ev.target.width);
			$('input[name=height]', d).val(ev.target.height);
			
			d.dialog({
				title: TXMSG("@image.editpopup.title"),
				close: function(){
					editor._editimagepop_ = null;
					$(this).remove();
				},
				buttons: [{
					text: TXMSG("@image.editpopup.apply"),
					//icons: {primary: 'fa fa-check-circle'},
					click: function(){
						$(img).css('width', $('input[name=width]', d).val() );
						$(img).css('height', $('input[name=height]', d).val() );
						$(img).attr('src', $('input[name=src]', d).val() );
						d.dialog('close');
					}
				}
				/*,{
					text: "Cancel",
					click: function(){
						d.dialog('close');
					}
				}*/
				],
				resizable: false,
				closeOnEscape: true,
				appendTo: Editor.getWindow().top.document.body
			});
			
			editor._editimagepop_ = d[0];
		});
	});
	
})(jQuery);