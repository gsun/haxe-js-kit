package js.npm;

import js.support.Either;
import js.support.Either.Either3;
import js.node.Buffer;
import js.Error;
import haxe.Constraints;

extern class Unirest
implements npm.Package.Require<"unirest", "^0.5.1">
{
	public static function get(url : String) : Unirest;
	public static function head(url : String) : Unirest;
	public static function put(url : String) : Unirest;
	public static function post(url : String) : Unirest;
	public static function patch(url : String) : Unirest;
	public static function delete(url : String) : Unirest;

	public function cookie(keyValue : String) : Dynamic;
	public static function jar() : Dynamic;

	public static var request : js.npm.Request;

	///// Request methods /////

	@:overload(function(user: String, pass: String, ?sendImmediately: Bool) : Unirest {})
	public function auth(o : {user: String, pass: String, ?sendImmediately: Bool}) : Unirest;

	@:overload(function(header : String, value : String) : Unirest {})
	public function header (obj : {}) : Unirest;

	public function part(part : {}) : Unirest;

	@:overload(function(fields : {}) : Unirest {})
	public function query(keyValue : String) : Unirest;

	@:overload(function(body : {}) : Unirest {})
	public function send(body : String) : Unirest;

	public function type(type : String) : Unirest;

	@:overload(function(name : String, path : String) : Unirest {})	
	public function attach(files : {}) : Unirest;

	@:overload(function(name : String, path : String) : Unirest {})	
	public function field(fields : {}) : Unirest;

	public function stream() : Unirest;

	///// Option methods /////

	// Url, or object parsed from url.parse()
	public function url (obj : Either<String, {}>) : Unirest;

	// Object consisting of querystring values to append to url upon request.
	public function qs (obj : {}) : Unirest;

	// Default GET; HTTP Method.
	public function method (s : String) : Unirest;

	// Default {}; HTTP Headers.
	@:overload(function(header : String, value : String) : Unirest {})
	public function headers (obj : {}) : Unirest;

	// Entity body for certain requests.
	public function body (obj : Either<String, {}>) : Unirest;

	// Form data.
	public function form (obj : {}) : Unirest;

	// Experimental; See documentation below.
	public function multipart (a : Array<Dynamic>) : Unirest;

	// Default true; Follow HTTP 3xx responses as redirects.
	public function followRedirect (b : Bool) : Unirest;

	// Default false; Follow Non-GET HTTP 3xx responses as redirects.
	public function followAllRedirects (b : Bool) : Unirest;

	// Default 10; Maximum number of redirects before aborting.
	public function maxRedirects (i : Int) : Unirest;

	// Encoding to be used on setEncoding of response data.
	public function encoding (s : String) : Unirest;

	// Number of milliseconds to wait before aborting.
	public function timeout (i : Int) : Unirest;

	// See Request.proxy() below.
	public function proxy (s : String) : Unirest;

	// See Request.oauth() below.
	public function oauth (obj : {}) : Unirest;

	// See Request.hawk() below
	public function hawk (obj : {}) : Unirest;

	// Default true; See Request.strictSSL() below.
	public function strictSSL (b : Bool) : Unirest;

	// See Request.secureProtocol() below.
	public function secureProtocol (s : String) : Unirest;

	// See Request.jar() below.
	public function jar (jar : Either<Bool, Dynamic>) : Unirest;

	// See Request.aws() below.
	public function aws (obj : {}) : Unirest;

	// See Request.httpSignature() Below.
	public function httpSignature (obj : {}) : Unirest;

	// See Request.localAddress() Below.
	public function localAddress (s : String) : Unirest;

	// See Request.pool() Below.
	public function pool (obj : {}) : Unirest;

	// Default undefined; See Request.forever() Below
	public function forever (b : Bool) : Unirest;

	public function end(cb : UnirestResponse -> Void) : Void;
}

extern class UnirestResponse
{
	// Processed body data
	public var body(default, null) : Dynamic;

	// Unprocessed body data
	public var raw_body(default, null) : Dynamic;

	// Header details
	public var headers(default, null) : haxe.DynamicAccess<String>;

	// Cookies from set-cookies, and cookie headers.
	public var cookies(default, null) : Dynamic;

	// Server http version. (e.g. 1.1)
	public var httpVersion(default, null) : String;

	// Major number (e.g. 1)
	public var httpVersionMajor(default, null) : Int;

	// Minor number (e.g. 1)
	public var httpVersionMinor(default, null) : Int;

	// Dependant on input, can be empty.
	public var url(default, null) : String;

	// Dependant on input, can be empty.
	public var domain(default, null) : Null<String>;

	// Method used, dependant on input.
	public var method(default, null) : Null<String>;

	// Client Object. Detailed information regarding the Connection and Byte throughput.
	public var client(default, null) : Dynamic;

	// Client Object. Specific connection object, useful for events such as errors. Advanced
	public var connection(default, null) : Dynamic;

	// Client Object. Socket specific object and information. Most throughput is same across all three client objects.
	public var socket(default, null) : Dynamic; 

	// Initial request object.
	public var request(default, null) : Dynamic;

	// Set encoding type.
	public var setEncoding(default, null) : Function;

	// Status Code, i.e. 200
	public var code(default, null) : Int;

	// Status Code, same as above.
	public var status(default, null) : Int;

	// Status Code Range Type
	public var statusType(default, null) : UnirestResponseStatusType;

	// Status Range Info?
	public var info(default, null) : Bool;

	// Status Range Ok?
	public var ok(default, null) : Bool;

	// Status Range Client Error?
	public var clientError(default, null) : Bool;

	// Status Range Server Error?
	public var serverError(default, null) : Bool;

	// Status Code 202?
	public var accepted(default, null) : Bool;

	// Status Code 204 or 1223?
	public var noContent(default, null) : Bool;

	// Status Code 400?
	public var badRequest(default, null) : Bool;

	// Status Code 401?
	public var unauthorized(default, null) : Bool;

	// Status Code 406?
	public var notAcceptable(default, null) : Bool;

	// Status Code 404?
	public var notFound(default, null) : Bool;

	// Status Code 403?
	public var forbidden(default, null) : Bool;

	public var error(default, null) : Dynamic;

	public function cookie(name : String) : Dynamic;
}

@:enum abstract UnirestResponseStatusType(Int) from Int to Int {
	var Info = 1;
	var Ok = 2;
	var Miscellaneous = 3;
	var ClientError = 4;
	var ServerError = 5;
}
