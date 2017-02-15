package js.npm;

import haxe.extern.EitherType;

import js.Error;
import js.Promise;
import js.node.stream.Writable.IWritable;

typedef Spinner = {
  ?interval: Int,
  frames: Array<String>
}

@:enum abstract Color(String) to String from String {
  var BLACK = 'black';
  var RED = 'red';
  var GREEN = 'green';
  var YELLOW = 'yellow';
  var BLUE = 'blue';
  var MAGENTA = 'magenta';
  var CYAN = 'cyan';
  var WHITE = 'white';
  var GRAY = 'gray';
}

typedef OraOptions = {
  /**
    Text to display after the spinner.
  */
  text: String,
  /**
    Default: dots
    Name of one of the provided spinners.
  */
  ?spinner: Spinner,
  /**
    Default: cyan
    Color of the spinner.
  */
  ?color: Color,
  /**
    Default: Provided by the spinner or 100
    Interval between each frame.
    Spinners provide their own recommended interval, so you don't really need to specify this.
  */
  ?interval: Int,
  /**
    Default: process.stderr
    Stream to write the output.
    You could for example set this to process.stdout instead.
  */
  ?stream: IWritable,
  /**
    Force enable/disable the spinner. If not specified, the spinner will be enabled if the stream is being run inside a TTY context (not spawned or piped) and/or not in a CI environment.
  */
  ?enabled: Bool
}

extern class Ora
implements npm.Package.Require<"ora","^1.1.0"> {

  /**
    Change the text.
  */
  var text: String;
  
  /**
    Change the spinner color.
  */
  var color: Color;

  /**
    If a string is provided, it is treated as a shortcut for options.text.
  */
  @:selfCall
  @:overload(function(text: String): Void{})
  function new(options: OraOptions);

  /**
    Start the spinner. Returns the instance.
  */
  function start(): Ora;

  /**
    Stop and clear the spinner. Returns the instance.
  */
  function stop(): Ora;

  /**
    Stop the spinner, change it to a green ✔ and persist the current text, or text if provided. Returns the instance. See the GIF below.
  */
  function succeed(?text: String): Ora;

  /**
    Stop the spinner, change it to a yellow ⚠ and persist the current text, or text if provided. Returns the instance.
  */
  function warn(?text: String): Ora;

  /**
    Stop the spinner, change it to a red ✖ and persist the current text, or text if provided. Returns the instance. See the GIF below.
  */
  function fail(?text: String): Ora;

  /**
    Default options: ' ' and current text
    Stop the spinner and change the symbol or text. Returns the instance.
  */
  function stopAndPersist(?options: {?symbol: String, ?text: String}): Ora;

  /**
    Clear the spinner. Returns the instance.
  */
  function clear(): Ora;

  /**
    Manually render a new frame. Returns the instance.
  */
  function render(): Ora;

  /**
    Get a new frame.
  */
  function frame(): String;

  /**
    Starts a spinner for a promise. The spinner is stopped with .succeed() if the promise fulfills or with .fail() if it rejects. Returns the spinner instance.
  */
  @:overload(function(action: Promise<Void>, text: String): Ora{})
  function promise(action: Promise<Void>, ?options: OraOptions): Ora;
}
