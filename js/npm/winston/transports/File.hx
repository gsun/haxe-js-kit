package js.npm.winston.transports;

@:native('transports.File')
extern class File
implements npm.Package.RequireNamespace<"winston", "^2.4.3">
{
	@:overload(function() : Void {})
	public function new(options : {}) : Void;
}
