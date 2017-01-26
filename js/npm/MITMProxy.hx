package js.npm;

import js.Error;
import js.node.Buffer;
import js.node.http.ClientRequest;
import js.node.http.IncomingMessage;
import js.node.http.ServerResponse;
import js.node.stream.Duplex.IDuplex;

typedef EmptyHandler = ProxyContext -> (Void -> Void) -> Void;
typedef ErrorHandler = Null<ProxyContext> -> Error -> String -> Void;
typedef DataHandler<T> = ProxyContext -> T -> (Null<Error> -> Null<T> -> Void) -> Void;
typedef WsHandler = ProxyContext -> String -> String -> (Null<Error> -> String -> String -> Void) -> Void;

typedef ProxyOptions = {
  ?port: Int, // The port or named socket to listen on (default: 8080).
  ?sslCaDir: String, // Path to the certificates cache directory (default: process.cwd() + '/.http-mitm-proxy')
  ?silent: Bool, // if set to true, nothing will be written to console (default: false)
  ?keepAlive: Bool, // enable HTTP persistent connection
  ?timeout: Int, // The number of milliseconds of inactivity before a socket is presumed to have timed out. Defaults to no timeout.
  ?httpAgent: js.node.http.Agent, // The http.Agent to use when making http requests. Useful for chaining proxys. (default: internal Agent)
  ?httpsAgent: js.node.https.Agent, // The https.Agent to use when making https requests. Useful for chaining proxys. (default: internal Agent)
  ?forceSNI: Bool, // force use of SNI by the client. Allow node-http-mitm-proxy to handle all HTTPS requests with a single internal server.
  ?httpsPort: Int // The port or named socket for https server to listen on. (forceSNI must be enabled)
}

typedef SslOptions = {
  keyFile: String,
  certFile: String,
  ?hosts: Array<String>
}

extern class MITMProxy extends ProxyEventHandler
implements npm.Package.Require<"http-mitm-proxy", "^0.5.0"> {
  // Middlewares bundles with MITM proxy
  public static var gunzip: ProxyEventHandler;
  public static var wildcard: ProxyEventHandler;


  public function new(): Void;

  /**
    Starts the proxy listening on the given port.
  */
  public function listen(options: ProxyOptions): Void;

  /**
    Stops the proxy listening.
  */
  public function close(): Void;

  /**
    Adds a module into the proxy. Modules encapsulate multiple life cycle processing functions into one object.
  */
  public function use(middleware: ProxyEventHandler): Void;
}

extern class ProxyContext extends ProxyEventHandler {
  var isSSL: Bool;
  var clientToProxyRequest: IncomingMessage;
  var proxyToClientResponse: ServerResponse;
  var proxyToServerRequest: ClientRequest;
  var serverToProxyResponse: IncomingMessage;
  
  public function use(middleware: ProxyEventHandler): Void;
  
  /**
    Adds a stream into the request body stream.
  */
  public function addRequestFilter(stream: IDuplex): Void;

  /**
    Adds a stream into the response body stream.
  */
  public function addResponseFilter(stream: IDuplex): Void;
}

extern class ProxyEventHandler {
  /**
    Adds a function to the list of functions to get called if an error occures.
  */
  public function onError(handler: ErrorHandler): Void;

  /**
    Allows the default certificate name/path computation to be overwritten.
    The default behavior expects keys/{hostname}.pem and certs/{hostname}.pem files to be at self.sslCaDir.
  */
  public function onCertificateRequired(handler: String -> (Null<Error> -> Null<SslOptions>) -> Void): Void;

  /**
    Allows you to handle missing certificate files for current request, for example, creating them on the fly.
  */
  public function onCertificateMissing(handler: ProxyContext -> SslOptions -> (Null<Error> -> Null<{keyFileData: String, certFileData: String, ?hosts: Array<String>}>) -> Void): Void;

  /**
    Adds a function to get called at the beginning of a request.
  */
  public function onRequest(handler: EmptyHandler): Void;

  /**
    Adds a function to get called for each request data chunk (the body).
  */
  public function onRequestData(handler: DataHandler<Buffer>): Void;

  /**
    Adds a function to get called when all request data (the body) was sent.
  */
  public function onRequestEnd(handler: EmptyHandler): Void;

  /**
    Adds a function to get called at the beginning of the response.
  */
  public function onResponse(handler: EmptyHandler): Void;

  /**
    Adds a function to get called for each response data chunk (the body).
  */
  public function onResponseData(handler: DataHandler<Buffer>): Void;

  /**
    Adds a function to get called when the proxy request to server has ended.
  */
  public function onResponseEnd(handler: EmptyHandler): Void;

  /**
    Adds a function to get called at the beginning of websocket connection.
  */
  public function onWebSocketConnection(handler: EmptyHandler): Void;

  /**
    Adds a function to get called for each WebSocket message sent by the client.
  */
  public function onWebSocketSend(handler: WsHandler): Void;

  /**
    Adds a function to get called for each WebSocket message received from the server.
  */
  public function onWebSocketMessage(handler: WsHandler): Void;

  /**
    Adds a function to get called for each WebSocket frame exchanged (message, ping or pong).
  */
  public function onWebSocketFrame(handler: ProxyContext -> String -> Bool -> Dynamic -> String -> (Null<Error> -> String -> String -> Void) -> Void): Void;

  /**
    Adds a function to the list of functions to get called if an error occures in WebSocket.
  */
  public function onWebSocketError(handler: ErrorHandler): Void;

  /**
    Adds a function to get called when a WebSocket connection is closed.
  */
  public function onWebSocketClose(handler: WsHandler): Void;
}
