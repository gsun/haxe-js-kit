package js.npm.restify;

typedef ErrorOptions = {
    ?message : Dynamic,
    ?statusCode : Int
}

@:native('errors.HttpError')
extern class HttpError extends js.Error implements js.extern.Extern<'restify'>
{
    public var code : String;

    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (400 Bad Request)
@:native('errors.BadRequestError')
extern class BadRequestError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (401 Unauthorized)
@:native('errors.UnauthorizedError')
extern class UnauthorizedError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (402 Payment Required)
@:native('errors.PaymentRequiredError')
extern class PaymentRequiredError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (403 Forbidden)
@:native('errors.ForbiddenError')
extern class ForbiddenError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (404 Not Found)
@:native('errors.NotFoundError')
extern class NotFoundError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (405 Method Not Allowed)
@:native('errors.MethodNotAllowedError')
extern class MethodNotAllowedError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (406 Not Acceptable)
@:native('errors.NotAcceptableError')
extern class NotAcceptableError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (407 Proxy Authentication Required)
@:native('errors.ProxyAuthenticationRequiredError')
extern class ProxyAuthenticationRequiredError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (408 Request Time-out)
@:native('errors.RequestTimeoutError')
extern class RequestTimeoutError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (409 Conflict)
@:native('errors.ConflictError')
extern class ConflictError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (410 Gone)
@:native('errors.GoneError')
extern class GoneError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (411 Length Required)
@:native('errors.LengthRequiredError')
extern class LengthRequiredError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (412 Precondition Failed)
@:native('errors.PreconditionFailedError')
extern class PreconditionFailedError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (413 Request Entity Too Large)
@:native('errors.RequestEntityTooLargeError')
extern class RequestEntityTooLargeError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (414 Request-URI Too Large)
@:native('errors.RequesturiTooLargeError')
extern class RequesturiTooLargeError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (415 Unsupported Media Type)
@:native('errors.UnsupportedMediaTypeError')
extern class UnsupportedMediaTypeError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (416 Requested Range Not Satisfiable)
@:native('errors.RequestedRangeNotSatisfiableError')
extern class RequestedRangeNotSatisfiableError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (417 Expectation Failed)
@:native('errors.ExpectationFailedError')
extern class ExpectationFailedError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (418 I'm a teapot)
@:native('errors.ImATeapotError')
extern class ImATeapotError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (422 Unprocessable Entity)
@:native('errors.UnprocessableEntityError')
extern class UnprocessableEntityError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (423 Locked)
@:native('errors.LockedError')
extern class LockedError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (424 Failed Dependency)
@:native('errors.FailedDependencyError')
extern class FailedDependencyError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (425 Unordered Collection)
@:native('errors.UnorderedCollectionError')
extern class UnorderedCollectionError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (426 Upgrade Required)
@:native('errors.UpgradeRequiredError')
extern class UpgradeRequiredError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (428 Precondition Required)
@:native('errors.PreconditionRequiredError')
extern class PreconditionRequiredError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (429 Too Many Requests)
@:native('errors.TooManyRequestsError')
extern class TooManyRequestsError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (431 Request Header Fields Too Large)
@:native('errors.RequestHeaderFieldsTooLargeError')
extern class RequestHeaderFieldsTooLargeError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (500 Internal Server Error)
@:native('errors.InternalServerError')
extern class InternalServerError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (501 Not Implemented)
@:native('errors.NotImplementedError')
extern class NotImplementedError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (502 Bad Gateway)
@:native('errors.BadGatewayError')
extern class BadGatewayError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (503 Service Unavailable)
@:native('errors.ServiceUnavailableError')
extern class ServiceUnavailableError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (504 Gateway Time-out)
@:native('errors.GatewayTimeoutError')
extern class GatewayTimeoutError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (505 HTTP Version Not Supported)
@:native('errors.HttpVersionNotSupportedError')
extern class HttpVersionNotSupportedError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (506 Variant Also Negotiates)
@:native('errors.VariantAlsoNegotiatesError')
extern class VariantAlsoNegotiatesError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (507 Insufficient Storage)
@:native('errors.InsufficientStorageError')
extern class InsufficientStorageError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (509 Bandwidth Limit Exceeded)
@:native('errors.BandwidthLimitExceededError')
extern class BandwidthLimitExceededError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (510 Not Extended)
@:native('errors.NotExtendedError')
extern class NotExtendedError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (511 Network Authentication Required)
@:native('errors.NetworkAuthenticationRequiredError')
extern class NetworkAuthenticationRequiredError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (400 Bad Request)
@:native('errors.BadDigestError')
extern class BadDigestError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (405 Method Not Allowed)
@:native('errors.BadMethodError')
extern class BadMethodError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (500 Internal Server Error)
@:native('errors.InternalError')
extern class InternalError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (409 Conflict)
@:native('errors.InvalidArgumentError')
extern class InvalidArgumentError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (400 Bad Request)
@:native('errors.InvalidContentError')
extern class InvalidContentError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (401 Unauthorized)
@:native('errors.InvalidCredentialsError')
extern class InvalidCredentialsError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (400 Bad Request)
@:native('errors.InvalidHeaderError')
extern class InvalidHeaderError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (400 Bad Request)
@:native('errors.InvalidVersionError')
extern class InvalidVersionError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (409 Conflict)
@:native('errors.MissingParameterError')
extern class MissingParameterError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (403 Forbidden)
@:native('errors.NotAuthorizedError')
extern class NotAuthorizedError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (400 Bad Request)
@:native('errors.RequestExpiredError')
extern class RequestExpiredError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (429 Too Many Requests)
@:native('errors.RequestThrottledError')
extern class RequestThrottledError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (404 Not Found)
@:native('errors.ResourceNotFoundError')
extern class ResourceNotFoundError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}

// (406 Not Acceptable)
@:native('errors.WrongAcceptError')
extern class WrongAcceptError extends HttpError implements js.extern.Extern<'restify'>
{
    @:overload(function (options : ErrorOptions) : Void {})
    public function new(?error : String);
}
