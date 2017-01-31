package js.npm;

import haxe.extern.EitherType;

import js.Error;
import js.npm.Bluebird;

typedef ListrOptions = {
  ?concurrent: Bool,
  ?exitOnError: Bool,
  ?renderer: EitherType<String, ListrRenderer>,
  ?nonTTYRenderer: EitherType<String, ListrRenderer>
}

typedef ListrTask = {
  title: String,
  task: ?Dynamic -> ?ListrTask -> Void,
  ?skip: Void -> Void,
  ?enabled: Dynamic -> Bool
}

typedef ListrRenderer = {
  render: Void -> Void,
  end: ?Error -> Void
}

extern class Listr
implements npm.Package.Require<"listr","^0.10.0"> {
  function new(?tasks: Array<ListrTask>, options: ListrOptions);

  function add(task: ListrTask): Listr;

  function run(?context: Dynamic): Bluebird<Dynamic, Error>
}
