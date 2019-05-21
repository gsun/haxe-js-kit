package js.npm.winston.transports;

@:native('transports.Console')
extern class Console
implements npm.Package.RequireNamespace<"winston", "^2.4.3">
{
	@:overload(function() : Void {})
	public function new(options : {}) : Void;
}
