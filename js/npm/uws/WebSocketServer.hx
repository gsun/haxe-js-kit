package js.npm.uws;

@:jsRequire("uws", "Server")
extern class WebSocketServer
{
	function new(params:Dynamic) ;
	function on(event:String, listener:Dynamic->Void):Void;
}

