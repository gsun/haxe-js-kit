package js.npm.neataptic;

import haxe.Constraints;
import js.support.Either;
import haxe.extern.Rest;

typedef NeatOptions = {
	?popsize : Int,
	?elitism : Int,
	?provenance : Float,
	?mutation : Array<Dynamic>,
	?selection : Function,
	//?crossover : Array<Dynamic>,
	?fitnessPopulation : Bool,
	?mutationRate : Float,
	?mutationAmount : Float,
	?network : Network,
	?equal : Bool,
	?clear : Bool
}

extern class Neat
implements npm.Package.RequireNamespace<"neataptic","^1.4.7"> 
{
	public function new(
		input : Int, output : Int, 
		?fitness : Either<Network -> js.Promise<Float>, Array<Network> -> js.Promise<Dynamic>>, 
		?options : NeatOptions
	) : Void;

	public function evolve() : js.Promise<Network>;
	public function getFittest() : Network;
	public function getAverage() : Float;

	@:native('import')
	public function importJSON(json : Dynamic) : Void;

	@:native('export')
	public function exportJSON() : haxe.DynamicAccess<Dynamic>;

	public var input(default, null) : Int;
	public var output(default, null) : Int;

	public var generation : Int;
	public var population : Array<Network>;
	public var fitness : Either<Network -> js.Promise<Float>, Array<Network> -> js.Promise<Dynamic>>;
}
