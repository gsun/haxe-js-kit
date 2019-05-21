package js.npm.neataptic.architecture;

import haxe.extern.Rest;
import js.npm.neataptic.Network;

@:native('architect.Perceptron')
extern class Perceptron extends Network
implements npm.Package.RequireNamespace<"neataptic","^1.4.7"> 
{
	public function new(layers : Rest<Int>) : Void;
}
