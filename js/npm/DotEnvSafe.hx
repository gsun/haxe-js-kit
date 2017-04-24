package js.npm;

import haxe.DynamicAccess;

typedef DotEnvSafeOptions = {
	> DotEnv.DotEnvOptions,
	?allowEmptyValues: Bool,
	?sample: String
}

typedef DotEnvSafeParams = {
	parsed: DynamicAccess<String>,
	required: DynamicAccess<String>
}

extern class DotEnvSafe
implements npm.Package.Require<"dotenv-safe", "^4.0.3">
{
	@:overload(function() : DotEnvSafeParams {})	
	static public function load(options : DotEnvSafeOptions) : DotEnvSafeParams;
}
