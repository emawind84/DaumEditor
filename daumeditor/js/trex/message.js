var TrexMessage = function () {
    var __MESSAGES = {};
    if( typeof __DAUM_LABELS !== "undefined" ){
    	$.extend(__MESSAGES, __DAUM_LABELS);
    }

    function decorateIconPath(message) {
        return (message.indexOf("#iconpath") > -1) ?
            TrexConfig.getIconPath(message) : message;
    }

    function decorateDecoPath(message) {
        return (message.indexOf("#decopath") > -1) ?
            TrexConfig.getDecoPath(message) : message;
    }

    return {
        getMsg: function (msgid) {
            var message = __MESSAGES[msgid] || "";
            return decorateIconPath(decorateDecoPath(message));
        },

        addMsg: function (messages) {
        	for (var prop in messages) {
        		if( __MESSAGES.hasOwnProperty(prop) ){
        			delete messages[prop];
        		}
        	}
    		$tx.deepcopy(__MESSAGES, messages);
        },

        printAll: function () {
            for (var name in __MESSAGES) {
                if (__MESSAGES.hasOwnProperty(name)) {
                    console.log(name + '=' + __MESSAGES[name]);
                }
            }
        },

        printAllJSON: function(){
        	return __MESSAGES;
        }
    };
}();

_WIN.TXMSG = TrexMessage.getMsg;
_WIN.TrexMessage = TrexMessage;