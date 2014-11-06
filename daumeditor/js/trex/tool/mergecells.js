/**
 * @fileoverview 
 * '행,열 삽입' Icon Source,
 * Class Trex.Tool.Mergecells configuration을 포함    
 *     
 */

TrexMessage.addMsg({
	'@mergecells.label1': "병합",
	'@mergecells.label2': "병합",
	'@mergecells.label3': "분할",
	'@mergecells.label4': "분할"
});

TrexConfig.addTool(
	"mergecells",
	{
		sync: _FALSE,
		status: _TRUE,
		options: [
			{ label: TXMSG('@mergecells.label1'), title: TXMSG('@mergecells.label2'), data: 'merge' , klass: 'tx-mergecells-1'},
			{ label: TXMSG('@mergecells.label3'), title: TXMSG('@mergecells.label4'), data: 'cancelmerge', klass: 'tx-mergecells-2' }
		]
	}
	
	
);

Trex.Tool.Mergecells = Trex.Class.create({
	$const: {
		__Identity: 'mergecells'
	},
	$extend: Trex.Tool,
	oninitialized: function() {
		var _canvas = this.canvas;
		var _defaultProperty = _canvas.getStyleConfig().insert;
		
		var _toolHandler = function(command) {
			_canvas.execute(function(processor){
				if (processor.table) {
					switch(command){
						case "merge":
							processor.table.merge();
							break;
						case "cancelmerge":
							processor.table.resetMerge();
							break;
					}
				}
			});
		};

		/* button & menu weave */
		this.weave.bind(this)(
			/* button */
			new Trex.Button.Select(TrexConfig.merge(this.buttonCfg, {
				selectedValue: _defaultProperty
			})),
			/* menu */
			new Trex.Menu.Select(this.menuCfg),
			/* handler */
			_toolHandler);
	}
});

