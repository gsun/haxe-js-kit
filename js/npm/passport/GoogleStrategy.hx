package js.npm.passport;

import js.support.Callback;

@:native('Strategy')
extern class GoogleStrategy
implements js.npm.passport.Strategy
implements npm.Package.RequireNamespace<"passport-google-oauth20","*">
{
	public function new( config : OAuth2StrategyConfig , cb : String -> String -> Profile -> Callback<Dynamic> -> Void ) : Void;
}
