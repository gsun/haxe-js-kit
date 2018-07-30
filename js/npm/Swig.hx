package js.npm;

import haxe.extern.EitherType;

// http://node-swig.github.io/swig-templates/docs/api/#SwigOpts
typedef SwigOptions = {
	?autoescape : Bool, //	boolean	Controls whether or not variable output will automatically be escaped for safe HTML output. Defaults to true. Functions executed in variable statements will not be auto-escaped. Your application/functions should take care of their own auto-escaping.
	?varControls : Array<String>, //	array	Open and close controls for variables. Defaults to ['{{', '}}'].
	?tagControls : Array<String>, //	array	Open and close controls for tags. Defaults to ['{%', '%}'].
	?cmtControls : Array<String>, //	array	Open and close controls for comments. Defaults to ['{#', '#}'].
	?locals	: {}, //object	Default variable context to be passed to all templates.
	?cache : EitherType<Bool,String>, // CacheOptions, //	Cache control for templates. Defaults to saving in 'memory'. Send false to disable. Send an object with get and set functions to customize.
	?loader : TemplateLoader //	The method that Swig will use to load templates. Defaults to swig.loaders.fs.
}

// http://node-swig.github.io/swig-templates/docs/api/#CacheOptions
typedef CacheOptions = {
	?cache : EitherType<Bool,String>
}

// http://node-swig.github.io/swig-templates/docs/api/#TemplateLoader
typedef TemplateLoader = {
	// TODO
}

typedef CompiledSwig = ?{} -> String;

/**
 * https://github.com/node-swig/swig-templates
 */
extern class Swig
implements npm.Package.Require<"swig-templates","^2.0.2"> {

	// http://node-swig.github.io/swig-templates/docs/api/#version
	public static var version : String;

	// http://node-swig.github.io/swig-templates/docs/api/#setDefaults
	public static function setDefaults(options : SwigOptions) : Void;

	// http://node-swig.github.io/swig-templates/docs/api/#setDefaultTZOffset
	// TODO

	// http://node-swig.github.io/swig-templates/docs/api/#Swig
	// TODO

	// http://node-swig.github.io/swig-templates/docs/api/#invalidateCache
	public static function invalidateCache(): Void;

	// http://node-swig.github.io/swig-templates/docs/api/#setFilter
	// TODO

	// http://node-swig.github.io/swig-templates/docs/api/#setTag
	// TODO

	// http://node-swig.github.io/swig-templates/docs/api/#setExtension
	public static function setExtension( name : String , object : Dynamic ) : Void;

	// http://node-swig.github.io/swig-templates/docs/api/#precompile
	// TODO

	// http://node-swig.github.io/swig-templates/docs/api/#render
	@:overload(function(source : String) : String {})
	public static function render(source : String, options : SwigOptions ) : String;

	// http://node-swig.github.io/swig-templates/docs/api/#renderFile
	@:overload(function(pathName : String) : String {})
	public static function renderFile(pathName : String, locals : {}, ?cb : haxe.Constraints.Function) : String;

	// http://node-swig.github.io/swig-templates/docs/api/#compile
	// @:overload(function(pathName : String) : ? {})
	// public static function compile(pathName : String, options : SwigOptions) : ?;

	// http://node-swig.github.io/swig-templates/docs/api/#compileFile
	// @:overload(function(pathName : String) : CompiledSwig {})
	// public static function compileFile(pathName : String, options : SwigOptions) : CompiledSwig;

	// http://node-swig.github.io/swig-templates/docs/api/#run
	@:overload(function(tpl : String) : String {})
	@:overload(function(tpl : String, locals : {}) : String {})
	public static function run( tpl : String , locals : {} , filepath : String ) : String;

}