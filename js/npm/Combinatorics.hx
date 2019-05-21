package js.npm;

import haxe.Constraints;
import haxe.extern.Rest;
import js.support.Either;

extern class Combinatorics
implements npm.Package.Require<"js-combinatorics","^0.5.3"> 
{
	public static function power<T>(array : Array<T>) : Combinator<Array<T>>;

	@:overload(function<T>(array : Array<T>) : Combinator<Array<T>> {})
	public static function combination<T>(array : Array<T>, nelem : Int) : Combinator<Array<T>>;

	@:overload(function<T>(array : Array<T>) : Combinator<Array<T>> {})
	public static function bigCombination<T>(array : Array<T>, nelem : Int) : Combinator<Array<T>>;

	public static function permutation<T>(array : Array<T>) : Combinator<Array<T>>;

	public static function permutationCombination<T>(array : Array<T>) : Combinator<Array<T>>;

	public static function cartesianProduct<T : Either<Int, Float>>(arrays : Rest<Array<T>>) : Combinator<Array<T>>;

	@:overload(function<T>(array : Array<T>) : Combinator<Array<T>> {})
	public static function baseN<T>(array : Array<T>, nelem : Int) : Combinator<Array<T>>;

	public static function P(m : Float, n : Float) : Float;
	public static function C(m : Float, n : Float) : Float;
	public static function factorial(n : Float) : Float;
	public static function factoradic(n : Float, d : Int) : Float;
}

extern class Combinator<T>
implements npm.Package.Require<"js-combinatorics","^0.5.3"> 
{
	public function init() : Void;
	public function next() : Null<T>;
	public function forEach(cb : T -> Void) : Void;
	public function toArray() : Array<T>;
	public function map<T2>(cb : T -> T2) : Array<T2>;
	public function lazyMap<T2>(cb : T -> T2) : Array<T2>;
	public function filter(cb : T -> Bool) : Array<T>;
	public function find(cb : T -> Bool) : Null<T>;
	public function nth(i : Int) : T;

	public var length(default, null) : Int;
}
