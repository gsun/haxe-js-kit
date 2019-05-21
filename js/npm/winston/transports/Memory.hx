package js.npm.winston.transports;

@:native('transports.Memory')
extern class Memory
implements npm.Package.RequireNamespace<"winston", "^2.4.3">
{
	@:overload(function() : Void {})
	public function new(options : {}) : Void;

	public var errorOutput : Array<String>;
	public var writeOutput : Array<String>;

	public function clearLogs() : Void;
}
