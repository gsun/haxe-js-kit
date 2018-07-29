package js.npm.neataptic;

import haxe.extern.Rest;
import js.npm.neataptic.Network;

@:native('architect.Perceptron')
extern class Perceptron extends Network<Perceptron>
implements npm.Package.RequireNamespace<"neataptic","^1.4.7"> 
{
	public function new(layers : Rest<Int>) : Void;
}
