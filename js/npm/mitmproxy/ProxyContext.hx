package js.npm.mitmproxy;

import js.Error;
import js.node.Buffer;
import js.node.http.ClientRequest;
import js.node.http.IncomingMessage;
import js.node.http.ServerResponse;
import js.node.stream.Duplex.IDuplex;

import js.npm.mitmproxy.Handlers;
import js.npm.mitmproxy.Options;

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
