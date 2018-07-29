package js.npm;

import haxe.Constraints;
import js.node.Buffer;
import js.support.Either;

typedef OsmosisMiddlewareCallback<T> = Dynamic -> Dynamic -> T;

extern class Osmosis
implements npm.Package.Require<"osmosis","^1.1.7"> 
{
	@:overload(function(url : String) : Void {})
	public function new(url : String, params : {}) : Void;

	@:overload(function(url : String) : Osmosis {})
	@:selfCall public static function start(url : String, params : {}) : Osmosis;

	@:overload(function(options: {}) : Osmosis {})
	public function config(key : String, value : Dynamic) : Osmosis;

	public function click(selector : String) : Osmosis;
	public function cookie(name : String, value : String) : Osmosis;
	public function data(cb : Dynamic -> Void) : Osmosis;
	public function delay(delay : Int) : Osmosis;
	//public function do(function) : Osmosis;
	public function done(cb : Void -> Void) : Osmosis;
	public function fail(selector : String) : Osmosis;
	public function filter(match : String) : Osmosis;

	@:overload(function(selector : OsmosisMiddlewareCallback<String>) : Osmosis {})	
	public function find(selector : String) : Osmosis;

	public function follow(selector : Either<String, EReg>) : Osmosis;

	@:overload(function(url : String) : Osmosis {})	
	@:overload(function(url : OsmosisMiddlewareCallback<String>) : Osmosis {})	
	@:overload(function(url : OsmosisMiddlewareCallback<String>, params : {}) : Osmosis {})	
	public function get(url : String, params : {}) : Osmosis;

	public function header(name : String, value : String) : Osmosis;
	public function headers(headers : {}) : Osmosis;
	public function learn(name : String) : Osmosis;
	public function login(username : String, password : String) : Osmosis;
	public function match(match : Either<String, EReg>) : Osmosis;

	@:overload(function(selector : String, limit : OsmosisMiddlewareCallback<Int>) : Osmosis {})
	@:overload(function(selector : String, limit : OsmosisMiddlewareCallback<String>) : Osmosis {})
	@:overload(function(selector : String, limit : String) : Osmosis {})
	@:overload(function(selector : String, limit : Int) : Osmosis {})
	public function paginate(selector : String) : Osmosis;
	
	public function parse(data : Either<String, Buffer>, options : {}) : Osmosis;

	public function pause() : Osmosis;

	@:overload(function(url : String) : Osmosis {})	
	@:overload(function(url : OsmosisMiddlewareCallback<String>) : Osmosis {})	
	@:overload(function(url : OsmosisMiddlewareCallback<String>, data : Dynamic) : Osmosis {})	
	public function post(url : String, data : Dynamic) : Osmosis;

	public function proxy(proxy : Either<String, Array<String>>) : Osmosis;
	public function resume() : Osmosis;

	@:overload(function(selector : OsmosisMiddlewareCallback<String>) : Osmosis {})
	public function select(selector : String) : Osmosis;

	public function set(data : {}) : Osmosis;
	public function stop() : Osmosis;
	public function submit(selector : String, params : {}) : Osmosis;
	public function success(selector : String) : Osmosis;

	@:overload(function(callback : Dynamic -> Dynamic -> (Dynamic -> Dynamic -> Void) -> (Void -> Void) -> Void) : Osmosis {})
	@:overload(function(callback : Dynamic -> Dynamic -> (Dynamic -> Dynamic -> Void) -> Void) : Osmosis {})
	public function then(callback : Dynamic -> Dynamic -> Void) : Osmosis;
	
	public function train(object : {}) : Osmosis;
	public function trigger(event : String, selector : String) : Osmosis;
	public function use() : Osmosis;
	@:native('using') public function usingVariables(object : {}) : Osmosis;

	public function run() : Void;

	///// Error/logging /////

	public function log(cb : String -> Void) : Osmosis;
	public function error(cb : String -> Void) : Osmosis;
	public function debug(cb : String -> Void) : Osmosis;
}
