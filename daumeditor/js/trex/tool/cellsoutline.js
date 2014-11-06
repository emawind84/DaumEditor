/**
 * @fileoverview 
 * '행,열 삽입' Icon Source,
 * Class Trex.Tool.celloutline configuration을 포함    
 *     
 */
TrexMessage.addMsg({
	'@cellsoutline.label1': '모든 테두리',
	'@cellsoutline.label2': '바깥 테두리',
	'@cellsoutline.label3': '안쪽 테두리',
	'@cellsoutline.label4': '위쪽 테두리',
	'@cellsoutline.label5': '아래쪽 테두리',
	'@cellsoutline.label6': '왼쪽 테두리',
	'@cellsoutline.label7': '오른쪽 테두리',
	'@cellsoutline.label8': '테두리 없음'
});

TrexConfig.addTool(
	"cellsoutline",
	{
		sync: _FALSE,
		status: _TRUE,
		options: [
			{ label: TXMSG('@cellsoutline.label1'), title: TXMSG('@cellsoutline.label1'), data: 'all', klass: 'tx-cellsoutline-1' },
			{ label: TXMSG('@cellsoutline.label2'), title: TXMSG('@cellsoutline.label2'), data: 'out', klass: 'tx-cellsoutline-2' },
			{ label: TXMSG('@cellsoutline.label3'), title: TXMSG('@cellsoutline.label3'), data: 'in', klass: 'tx-cellsoutline-3' },
			{ label: TXMSG('@cellsoutline.label4'), title: TXMSG('@cellsoutline.label4'), data: 'top' , klass: 'tx-cellsoutline-4' },
			{ label: TXMSG('@cellsoutline.label5'), title: TXMSG('@cellsoutline.label5'), data: 'bottom', klass: 'tx-cellsoutline-5' },
			{ label: TXMSG('@cellsoutline.label6'), title: TXMSG('@cellsoutline.label6'), data: 'left' , klass: 'tx-cellsoutline-6' },
			{ label: TXMSG('@cellsoutline.label7'), title: TXMSG('@cellsoutline.label7'), data: 'right' , klass: 'tx-cellsoutline-7' },
			{ label: TXMSG('@cellsoutline.label8'), title: TXMSG('@cellsoutline.label8'), data: 'none' , klass: 'tx-cellsoutline-8' }
		]
	}
);

Trex.Tool.Cellsoutline = Trex.Class.create({
	$const: {
		__Identity: 'cellsoutline'
	},
	$extend: Trex.Tool,
    oninitialized: function(config) {
        var self = this;
		
		this.twinkleCount = 0;
		this.twinkleTimer = _NULL;
		
		self.createListStyleMap(config);
        self.weave(
			new Trex.Button.CellsoutlineList(self.buttonCfg),
			new Trex.Menu.Select(self.menuCfg),
			self.handler
		);
		
		this.toolbar.observeJob(Trex.Ev.__TOOL_CELL_LINE_CHANGE, function(data){
			if (data.fromInit != _TRUE) {
				self.twinkleButton();
			}
		});
	},
    createListStyleMap: function(config) {
        var listStyleMap = this.listStyleMap = {};
		config.options.each(function(option) {
			listStyleMap[option.data] = {
				type: option.type,
				klass: option.klass
			};
		});
    },
    handler: function(data) {
		var self = this;
        if (!self.listStyleMap[data]) {
            return;
        }
		// 실제 로직은 여기부분 입니다.
		self.canvas.query(function(processor){
			if (processor.table) {
				processor.table.setBorderRange(data);
			}
		});
		self.canvas.execute(function(processor) {
			if (processor.table) {
				if (data == 'none') {
					processor.table.setNoBorder();
				} else {
					processor.table.applyBorder();
				}
			}
        });
    },
    twinkleButton: function(){
		var self;
		self = this;
		
		if (this.twinkleTimer) {
			clearInterval(this.twinkleTimer);
			this.twinkleTimer = _NULL;
		}
		this.twinkleCount = 4;
		this.twinkleTimer = setInterval(function(){
			if (0 < self.twinkleCount) {
				self.twinkleCount -= 1;
				if (self.button.currentState() == "hovered") {
					self.button.normalState();
				} else {
					self.button.hoveredState()
				}
			} else {
				self.button.normalState();
				clearInterval(self.twinkleTimer);
				self.twinkleTimer = _NULL;
			}
		}, 500);
	}
});

Trex.Button.CellsoutlineList = Trex.Class.create({
	$extend: Trex.Button.Select
});






