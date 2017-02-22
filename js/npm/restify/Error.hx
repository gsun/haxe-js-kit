package js.npm.restify;

typedef ErrorOptions = {
    ?message : Dynamic,
    ?statusCode : Int
}

extern class HttpError extends js.Error
{
    public var code : String;

    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (400 Bad Request)
extern class BadRequestError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (401 Unauthorized)
extern class UnauthorizedError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (402 Payment Required)
extern class PaymentRequiredError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (403 Forbidden)
extern class ForbiddenError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (404 Not Found)
extern class NotFoundError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (405 Method Not Allowed)
extern class MethodNotAllowedError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (406 Not Acceptable)
extern class NotAcceptableError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (407 Proxy Authentication Required)
extern class ProxyAuthenticationRequiredError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (408 Request Time-out)
extern class RequestTimeoutError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (409 Conflict)
extern class ConflictError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (410 Gone)
extern class GoneError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (411 Length Required)
extern class LengthRequiredError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (412 Precondition Failed)
extern class PreconditionFailedError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (413 Request Entity Too Large)
extern class RequestEntityTooLargeError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (414 Request-URI Too Large)
extern class RequesturiTooLargeError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (415 Unsupported Media Type)
extern class UnsupportedMediaTypeError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (416 Requested Range Not Satisfiable)
extern class RequestedRangeNotSatisfiableError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (417 Expectation Failed)
extern class ExpectationFailedError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (418 I'm a teapot)
extern class ImATeapotError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (422 Unprocessable Entity)
extern class UnprocessableEntityError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (423 Locked)
extern class LockedError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (424 Failed Dependency)
extern class FailedDependencyError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (425 Unordered Collection)
extern class UnorderedCollectionError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (426 Upgrade Required)
extern class UpgradeRequiredError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (428 Precondition Required)
extern class PreconditionRequiredError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (429 Too Many Requests)
extern class TooManyRequestsError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (431 Request Header Fields Too Large)
extern class RequestHeaderFieldsTooLargeError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (500 Internal Server Error)
extern class InternalServerError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (501 Not Implemented)
extern class NotImplementedError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (502 Bad Gateway)
extern class BadGatewayError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (503 Service Unavailable)
extern class ServiceUnavailableError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (504 Gateway Time-out)
extern class GatewayTimeoutError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (505 HTTP Version Not Supported)
extern class HttpVersionNotSupportedError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (506 Variant Also Negotiates)
extern class VariantAlsoNegotiatesError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (507 Insufficient Storage)
extern class InsufficientStorageError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (509 Bandwidth Limit Exceeded)
extern class BandwidthLimitExceededError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (510 Not Extended)
extern class NotExtendedError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (511 Network Authentication Required)
extern class NetworkAuthenticationRequiredError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (400 Bad Request)
extern class BadDigestError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (405 Method Not Allowed)
extern class BadMethodError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (500 Internal Server Error)
extern class InternalError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (409 Conflict)
extern class InvalidArgumentError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (400 Bad Request)
extern class InvalidContentError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (401 Unauthorized)
extern class InvalidCredentialsError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (400 Bad Request)
extern class InvalidHeaderError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (400 Bad Request)
extern class InvalidVersionError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (409 Conflict)
extern class MissingParameterError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (403 Forbidden)
extern class NotAuthorizedError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (400 Bad Request)
extern class RequestExpiredError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (429 Too Many Requests)
extern class RequestThrottledError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (404 Not Found)
extern class ResourceNotFoundError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (406 Not Acceptable)
extern class WrongAcceptError extends HttpError
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}
