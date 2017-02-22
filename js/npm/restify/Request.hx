package js.npm.restify;

import js.node.http.IncomingMessage;

import js.npm.Bunyan;

extern class Request extends IncomingMessage implements Dynamic
{
    public var log: Null<Bunyan>;

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
