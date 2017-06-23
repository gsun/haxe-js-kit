package js.npm;

import haxe.extern.EitherType;

typedef BunyanElasticsearchOptions = {
  ?client: Dynamic,
  ?type: EitherType<String, String -> String>,
  ?indexPattern: String,
  ?index: EitherType<String, String -> String>,
  ?host: EitherType<String, Array<String>>,
  ?ssl: {
    rejectUnauthorized: Bool
  },
  ?pipeline: String
}

extern class BunyanElasticsearch
implements npm.Package.Require<"bunyan-elasticsearch", "^1.0.0"> {

  public function new(options: BunyanElasticsearchOptions): Void;
}
