package js.npm;

import js.support.Either.Either3;

typedef MinimistOptions = {
	// a string or array of strings argument names to always treat as strings
	@:optional var string : Array<String>;

	// a boolean, string or array of strings to always treat as booleans. if true will treat all double hyphenated arguments without equal signs as boolean (e.g. affects --foo, not -f or --foo=bar)
	@:optional var boolean : Either3<Bool, String, Array<String>>;

	// an object mapping string names to strings or arrays of string argument names to use as aliases
	@:optional var alias : Dynamic;

	// an object mapping string argument names to default values
	//@:native('default') @:optional var defaultValues : Dynamic;

	// when true, populate _ with everything after the first non-option
	@:optional var stopEarly : Bool;

	// when true, populate _ with everything before the -- and dashDash with everything after the --.
	//@:native('--') @:optional var dashDash : Bool;

	// a function which is invoked with a command line parameter not defined in the opts configuration object. If the function returns false, the unknown option is not added.
	@:optional var unknown : String -> Bool;
}

extern class Minimist
implements npm.Package.Require<"minimist", "^1.2.0">
implements Dynamic
{
	@:selfCall
	@:overload(function(args : Array<String>) : Minimist {})
	public static function parseArgs(args : Array<String>, opts : MinimistOptions) : Minimist;

	/**
	 * Convenience method for parsing process.argv
	 */
	@:overload(function() : Minimist {})
	public static inline function parseNodeArgs(opts : MinimistOptions) : Minimist {
		return opts == null 
			? Minimist.parseArgs(js.Node.process.argv.slice(2))
			: Minimist.parseArgs(js.Node.process.argv.slice(2), opts);
	}

	/**
	 * Contains all the arguments that didn't have an option associated with them.
	 */
	public var _(get, null) : Array<Dynamic>;
	@:noCompletion inline function get__() : Array<Dynamic> {
		return this._;
	}

	/**
	 * When opts.dashDash is true, populate this._ with everything before the -- and this.dashDash with everything after the --
	 */
	public var dashDash(get, null) : Array<Dynamic>;
	@:noCompletion inline function get_dashDash() : Array<Dynamic> {
		return Reflect.field(this, '--');
	}
}
