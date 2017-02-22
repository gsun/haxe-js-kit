package js.npm;

import js.Error;
import js.node.stream.Writable.IWritable;
import haxe.extern.EitherType;
import haxe.extern.Rest;

typedef BunyanSerializer = Dynamic -> Dynamic;
typedef BunyanLevel = EitherType<String, Int>;
typedef BunyanOptions = {
  name: String,
  ?level: BunyanLevel,
  ?stream: IWritable,
  ?streams: Array<Dynamic>,
  ?serializers: Dynamic,
  ?src: Bool
}

extern class Bunyan
implements npm.Package.Require<"bunyan", "^1.8.0">
{
  public static var TRACE: String;
  public static var DEBUG: String;
  public static var INFO: String;
  public static var WARN: String;
  public static var ERROR: String;
  public static var FATAL: String;

  public static var stdSerializers: {err: BunyanSerializer, req: BunyanSerializer, res: BunyanSerializer};

	public static function createLogger(options: BunyanOptions) : Bunyan;

	@:overload(function(): Bool {}) // Returns  a boolean: is the "info" level enabled
	@:overload(function(message: String): Void {}) // Log a simple string message (or number).
	@:overload(function(message: String, variables: Rest<Dynamic>): Void {}) // Uses `util.format` for msg formatting.
	@:overload(function(error: Error): Void {}) // Special case to log an `Error` instance to the record.
	@:overload(function(error: Error, message: String, variables: Rest<Dynamic>): Void {}) // ... or you can specify the "msg".
  public function trace(fieldsObject: Dynamic, message: String): Void;

	@:overload(function(): Bool {}) // Returns  a boolean: is the "info" level enabled
	@:overload(function(message: String): Void {}) // Log a simple string message (or number).
	@:overload(function(message: String, variables: Rest<Dynamic>): Void {}) // Uses `util.format` for msg formatting.
	@:overload(function(error: Error): Void {}) // Special case to log an `Error` instance to the record.
	@:overload(function(error: Error, message: String, variables: Rest<Dynamic>): Void {}) // ... or you can specify the "msg".
  public function debug(fieldsObject: Dynamic, message: String): Void;

	@:overload(function(): Bool {}) // Returns  a boolean: is the "info" level enabled
	@:overload(function(message: String): Void {}) // Log a simple string message (or number).
	@:overload(function(message: String, variables: Rest<Dynamic>): Void {}) // Uses `util.format` for msg formatting.
	@:overload(function(error: Error): Void {}) // Special case to log an `Error` instance to the record.
	@:overload(function(error: Error, message: String, variables: Rest<Dynamic>): Void {}) // ... or you can specify the "msg".
  public function info(fieldsObject: Dynamic, message: String): Void;

	@:overload(function(): Bool {}) // Returns  a boolean: is the "info" level enabled
	@:overload(function(message: String): Void {}) // Log a simple string message (or number).
	@:overload(function(message: String, variables: Rest<Dynamic>): Void {}) // Uses `util.format` for msg formatting.
	@:overload(function(error: Error): Void {}) // Special case to log an `Error` instance to the record.
	@:overload(function(error: Error, message: String, variables: Rest<Dynamic>): Void {}) // ... or you can specify the "msg".
  public function warn(fieldsObject: Dynamic, message: String): Void;

	@:overload(function(): Bool {}) // Returns  a boolean: is the "info" level enabled
	@:overload(function(message: String): Void {}) // Log a simple string message (or number).
	@:overload(function(message: String, variables: Rest<Dynamic>): Void {}) // Uses `util.format` for msg formatting.
	@:overload(function(error: Error): Void {}) // Special case to log an `Error` instance to the record.
	@:overload(function(error: Error, message: String, variables: Rest<Dynamic>): Void {}) // ... or you can specify the "msg".
  public function error(fieldsObject: Dynamic, message: String): Void;

	@:overload(function(): Bool {}) // Returns  a boolean: is the "info" level enabled
	@:overload(function(message: String): Void {}) // Log a simple string message (or number).
	@:overload(function(message: String, variables: Rest<Dynamic>): Void {}) // Uses `util.format` for msg formatting.
	@:overload(function(error: Error): Void {}) // Special case to log an `Error` instance to the record.
	@:overload(function(error: Error, message: String, variables: Rest<Dynamic>): Void {}) // ... or you can specify the "msg".
  public function fatal(fieldsObject: Dynamic, message: String): Void;

  @:overload(function(): BunyanLevel {}) // gets current level (lowest level of all streams)
  public function level(level: BunyanLevel): Void; // set all streams to level

  @:overload(function(): Array<BunyanLevel> {}) // get array of levels of all streams
  @:overload(function(streamNumber: Int): BunyanLevel {}) // get level of a stream
  @:overload(function(name: String): BunyanLevel {}) // get level of a stream
  @:overload(function(streamNumber: Int, level: BunyanLevel): Void {}) // set level of stream to level
  public function levels(name: String, level: BunyanLevel): Void; // set level of stream named to level

  public function child(additonalFields: Dynamic): Bunyan;

  public function addSerializers(serializers: Dynamic): Void;
}

