package js.npm.restify;

import js.node.http.IncomingMessage;

extern class Request extends IncomingMessage implements Dynamic
{
    public function header(key : String, ?defaultValue : String) : Null<String>;

    public function accepts(type : String) : Bool;

    public function is(type : String) : Bool;

    public function isSecure() : Bool;

    public function isChunked() : Bool;

    public function isKeepAlive() : Bool;

    public function getQuery() : String;

    public function time() : Int;

    public function startHandlerTimer(handlerName : String) : Void;

    public function endHandlerTimer(handlerName : String) : Void;
}
