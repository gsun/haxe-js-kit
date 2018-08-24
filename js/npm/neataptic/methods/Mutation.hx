package js.npm.neataptic.methods;

import haxe.extern.Rest;

typedef Mutator = {
	name: String
}

typedef MutatorOutput = {
	> Mutator,
	mutateOutput: Bool
}

typedef MutatorBias = {
	> Mutator,
	min: Float,
	max: Float
}

@:native('methods.mutation')
extern class Mutation
implements npm.Package.RequireNamespace<"neataptic","^1.4.7"> 
{
	public static var ADD_NODE(default, null) : Mutator;
	public static var SUB_NODE(default, null) : Mutator;
	public static var ADD_CONN(default, null) : Mutator;
	public static var SUB_CONN(default, null) : Mutator;
	public static var MOD_WEIGHT(default, null) : MutatorBias;
	public static var MOD_BIAS(default, null) : MutatorBias;
	public static var MOD_ACTIVATION(default, null) : MutatorOutput;
	public static var ADD_SELF_CONN(default, null) : Mutator;
	public static var SUB_SELF_CONN(default, null) : Mutator;
	public static var ADD_GATE(default, null) : Mutator;
	public static var SUB_GATE(default, null) : Mutator;
	public static var ADD_BACK_CONN(default, null) : Mutator;
	public static var SUB_BACK_CONN(default, null) : Mutator;
	public static var SWAP_NODES(default, null) : MutatorOutput;

	public static var ALL(default, null) : Array<Mutator>;
	public static var FFW(default, null) : Array<Mutator>;
}
