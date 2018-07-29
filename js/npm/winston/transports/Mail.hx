package js.npm.winston.transports;

extern class Mail
implements npm.Package.RequireNamespace<"winston-mail", "^1.5.1">
{
	@:overload(function() : Void {})
	public function new(options : {}) : Void;
}
