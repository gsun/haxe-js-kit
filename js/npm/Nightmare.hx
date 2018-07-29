package js.npm;

import js.Error;
import js.Promise;
import haxe.Constraints;

import haxe.extern.EitherType;
import haxe.extern.Rest;

extern class Nightmare extends Promise<Dynamic>
implements npm.Package.Require<"nightmare", "^3.0.1">
{
	@:overload(function(options : {}) : Void {})
	@:selfCall function new() : Void;

	public static var version(default, null) : String;
	public static function action(name : String, electronAction : Function, action : Function) : Void;

	/**
	 * Start a scrape
	 */
	@:overload(function(url : EitherType<String, Array<String>>, selector : Dynamic) : Xray {})
	@:selfCall public function x(url : EitherType<String, Array<String>>, scope : EitherType<String, Array<String>>, selector : Dynamic) : Xray;

	public function engineVersions() : Nightmare;

	public function useragent(useragent : Dynamic) : Nightmare;
	public function authentication(user : String, password : String) : Nightmare;

	/**
	 *  If you're using promises, .then() must be called after .end() to run the .end() task.
	 */
	@:overload(function(cb : Void -> Void) : Nightmare {})
	@:overload(function(cb : Dynamic -> Void) : Nightmare {})
	@:overload(function(cb : Dynamic -> Dynamic) : Nightmare {})
	public function end() : Nightmare;

	@:overload(function(error : EitherType<String, Error>) : Nightmare {})
	public function halt(error : EitherType<String, Error>, cb : Void -> Void) : Nightmare;

	@:overload(function(url : String, headers : {}) : Nightmare {})
	public function goto(url : String) : Nightmare;

	public function back() : Nightmare;
	public function forward() : Nightmare;
	public function refresh() : Nightmare;
	
	public function click(selector : String) : Nightmare;
	public function check(selector : String) : Nightmare;
	public function uncheck(selector : String) : Nightmare;
	public function mouseup(selector : String) : Nightmare;
	public function mousedown(selector : String) : Nightmare;
	public function mouseover(selector : String) : Nightmare;
	public function select(selector : String, option : String) : Nightmare;

	/**
	 *  Mimics a user typing in a textbox and will emit the proper keyboard events
	 */
	@:overload(function(selector : String) : Nightmare {})
	public function type(selector : String, text : String) : Nightmare;

	/**
	 *  Insert is faster than type but does not trigger the keyboard events.
	 */
	@:overload(function(selector : String) : Nightmare {})
	public function insert(selector : String, text : String) : Nightmare;

	public function scrollTo(top : Float, left : Float) : Nightmare;
	public function viewport(width : Float, height : Float) : Nightmare;

	/**
	 *  Inject a local file onto the current page. The file type must be either js or css.
	 */
	public function inject(type : String, file : String) : Nightmare;

	@:overload(function(fn : Function) : Nightmare {})
	public function evaluate(fn : Function, args : Rest<Dynamic>) : Nightmare;

	/**
	 *  Internal function evaluate_now. Only use if you're creating custom actions.
	 *  This function is different than nightmare.evaluate because it runs it immediately, whereas nightmare.evaluate is queued.
	 */
	@:overload(function(fn : Function) : Nightmare {})
	public function evaluate_now(fn : Function, args : Rest<Dynamic>) : Nightmare;

	@:overload(function(fn : Function, args : Rest<Dynamic>) : Nightmare {})
	@:overload(function(fn : Function) : Nightmare {})
	@:overload(function(selector : String) : Nightmare {})
	public function wait(ms : Int) : Nightmare;

	public function header(name : String, value : String) : Nightmare;

	public function exists(selector : String) : Nightmare;
	public function visible(selector : String) : Nightmare;

	public function on(event : String, cb : Function) : Nightmare;
	public function once(event : String, cb : Function) : Nightmare;
	public function removeListener(event : String, cb : Function) : Nightmare;

	@:overload(function() : Nightmare {})
	@:overload(function(clip : {}) : Nightmare {})
	@:overload(function(path : String) : Nightmare {})
	public function screenshot(path : String, clip : {}) : Nightmare;

	public function html(path : String, saveType : String) : Nightmare;

	public function pdf(path : String, options : {}) : Nightmare;

	public function title() : Nightmare;
	public function url() : Nightmare;
	public function path() : Nightmare;

	public function use(plugin : Dynamic) : Nightmare;

	public var cookies(default, null) : Dynamic;
}
