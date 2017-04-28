package js.npm.uws;
import js.node.Buffer;

@:jsRequire("uws", "WebSocket")
extern class WebSocket {
	@:overload(function(event:String, listener:Void->Void):Void { })
	function on(event:String, listener:Dynamic->Void):Void;
	function send(data:Dynamic, ?params:Dynamic):Void;
	public var id:Int;
	public var readyState:Int;

	function new(url:String) { }

	public var upgradeReq:Dynamic;
	public var req:Dynamic;
}

