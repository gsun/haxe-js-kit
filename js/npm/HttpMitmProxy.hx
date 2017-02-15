package js.npm;

import js.npm.mitmproxy.ProxyContext;
import js.npm.mitmproxy.Options;


extern class HttpMitmProxy extends ProxyEventHandler
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

