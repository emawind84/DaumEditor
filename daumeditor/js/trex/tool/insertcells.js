/**
 * @fileoverview 
 * '행,열 삽입' Icon Source,
 * Class Trex.Tool.Insert configuration을 포함    
 *     
 */
TrexMessage.addMsg({
	'@insertcells.label1': "위로 삽입",
	'@insertcells.label2': "아래 삽입",
	'@insertcells.label3': "왼쪽 삽입",
	'@insertcells.label4': "오른쪽 삽입"
});

TrexConfig.addTool(
	"insertcells",
	{
		sync: _FALSE,
		status: _TRUE,
		options: [
			{ label: TXMSG('@insertcells.label1'), title: TXMSG('@insertcells.label1'), data: 'addRowUpper' , klass: 'tx-insertcells-1'},
			{ label: TXMSG('@insertcells.label2'), title: TXMSG('@insertcells.label2'), data: 'addRowBelow', klass: 'tx-insertcells-2' },
			{ label: TXMSG('@insertcells.label3'), title: TXMSG('@insertcells.label3'), data: 'addColLeft' , klass: 'tx-insertcells-3'},
			{ label: TXMSG('@insertcells.label4'), title: TXMSG('@insertcells.label4'), data: 'addColRight', klass: 'tx-insertcells-4' }
		]
	}
);

Trex.Tool.Insertcells = Trex.Class.create({
	$const: {
		__Identity: 'insertcells'
	},
	$extend: Trex.Tool,
	oninitialized: function(config) {
		var _canvas = this.canvas;

		var _defaultProperty = _canvas.getStyleConfig().insert;
		var _optionz = (config.options || []);
		var _map = {};
		_optionz.each(function(option) {
			_map[option.data] = option.title;
		});

		/*
		 * "addRowUpper", "addRowBelow", "addColLeft", "addColRight"
		 */
		var _toolHandler = function(command) {
			_canvas.execute(function(processor){
				if (processor.table) {
					switch(command){
						case "addRowUpper":
							processor.table.insertRowAbove();
							break;
						case "addRowBelow":
							processor.table.insertRowBelow();
							break;
						case "addColLeft":
							processor.table.insertColLeft();
							break;
						case "addColRight":
							processor.table.insertColRight();
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

