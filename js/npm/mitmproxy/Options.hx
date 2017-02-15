package js.npm.mitmproxy;

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
