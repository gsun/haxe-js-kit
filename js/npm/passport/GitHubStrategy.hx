package js.npm.passport;

import js.support.Callback;

@:native('Strategy')
extern class GitHubStrategy
implements js.npm.passport.Strategy
implements npm.Package.RequireNamespace<"passport-github","*">
{
	public function new( config : OAuth2StrategyConfig , cb : String -> String -> Profile -> Callback<Dynamic> -> Void ) : Void;
}
