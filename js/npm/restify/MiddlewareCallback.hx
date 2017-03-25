package js.npm.restify;

import haxe.Constraints.Function;

typedef MiddlewareCallback = Request->Response->NextCallback->Void;
