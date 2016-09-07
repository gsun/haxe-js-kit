package js.npm;

import js.node.Buffer;
import js.support.Either;

typedef DotEnvOptions = {
	?silent: Bool,
	?path: String,
	?encoding: String
}

extern class DotEnv
implements npm.Package.Require<"dotenv", "^2.0.0">
{
	@:overload(function() : Dynamic {})	
	public static function config(options : DotEnvOptions) : Dynamic;

	@:overload(function() : Dynamic {})	
	public static function load(options : DotEnvOptions) : Dynamic;

	public static function parse(buf : Either<String, Buffer>) : Dynamic;
}
