package js.npm.mitmproxy;

typedef EmptyHandler = ProxyContext -> (Void -> Void) -> Void;
typedef ErrorHandler = Null<ProxyContext> -> Error -> String -> Void;
typedef DataHandler<T> = ProxyContext -> T -> (Null<Error> -> Null<T> -> Void) -> Void;
typedef WsHandler = ProxyContext -> String -> String -> (Null<Error> -> String -> String -> Void) -> Void;
