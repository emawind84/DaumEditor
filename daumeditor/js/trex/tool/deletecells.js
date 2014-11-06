/**
 * @fileoverview 
 * '행,열 삽입' Icon Source,
 * Class Trex.Tool.deletecells configuration을 포함    
 *     
 */
TrexMessage.addMsg({
	'@deletecells.label1': '행 삭제',
	'@deletecells.label2': '열 삭제'
});

TrexConfig.addTool(
	"deletecells",
	{
		sync: _FALSE,
		status: _TRUE,
		options: [
			{ label: TXMSG('@deletecells.label1'), title: TXMSG('@deletecells.label1'), data: 'deleteRow' , klass: 'tx-deletecells-1'},
			{ label: TXMSG('@deletecells.label2'), title: TXMSG('@deletecells.label2'), data: 'deleteCol' , klass: 'tx-deletecells-2'}
		]
	}
);

Trex.Tool.deletecells = Trex.Class.create({
	$const: {
		__Identity: 'deletecells'
	},
	$extend: Trex.Tool,
	oninitialized: function(config) {
		var _canvas = this.canvas;

		var _defaultProperty = _canvas.getStyleConfig().insert;
		/*
		 * "deleteRow", "deleteCol"
		 */
		var _toolHandler = function(command) {
			_canvas.execute(function(processor){
				if (processor.table) {
					switch(command) {
						case "deleteRow":
							processor.table.deleteRow();
							break;
						case "deleteCol":
							processor.table.deleteCol();
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

