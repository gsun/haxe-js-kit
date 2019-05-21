package js.npm.neataptic.architecture;

import haxe.Constraints;
import js.support.Either;
import haxe.extern.Rest;

typedef NetworkOptions = {
	?log : Int,
	?error : Float,
	?cost : Function,
	?rate : Float,
	?dropout : Float,
	?shuffle : Bool,
	?iterations : Int,
	?schedule : Dynamic,
	?clear : Bool,
	?momentum : Float,
	?ratePolicy : Function,
	?batchSize : Int
}

typedef EvolveOptions = {
	iterations : Int,
	?cost : Function,
	?amount : Int,
	?growth : Float,
	?error : Float,
	?log : Int,
	?schedule : Dynamic,
	?clear : Bool,
	?threads : Int
}

typedef EvolveResult = {
	error : Float,
	iterations : Int,
	time : Int,
	//evolved : Network
}

typedef TrainingSet = Array<{
	input: Either<Array<Int>, Array<Float>>,
	output: Either<Array<Int>, Array<Float>>
}>;

extern class Network
{
	public function train(trainingSet : TrainingSet, options : NetworkOptions) : Void;

	public function evolve(
		trainingSet : TrainingSet, 
		options : EvolveOptions
	) : js.Promise<EvolveResult>;

	public function activate(nodes : Either<Array<Int>, Array<Float>>) : Array<Float>;
	public function noTraceActivate(nodes : Either<Array<Int>, Array<Float>>) : Array<Float>;

	public static function fromJSON(json : Dynamic) : Network;
	public function toJSON() : haxe.DynamicAccess<Dynamic>;

	public static function crossOver(network1 : Network, network2 : Network) : Network;

	public function set(properties : {}) : Void;
	public function clear() : Void;

	public var input(default, null) : Int;
	public var output(default, null) : Int;

	public var score : Float;
}
