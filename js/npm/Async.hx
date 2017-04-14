package js.npm;

import haxe.Constraints;
import haxe.DynamicAccess;
import haxe.extern.EitherType;
import haxe.extern.Rest;

typedef AsyncCallback<T> = T -> Void;
typedef AsyncOptionalCallback<T> = ?T -> Void;
typedef AsyncMapCallback<Err, T> = Err -> T -> Void;

typedef AsyncLoopCallback<Err> = AsyncCallback<Err> -> Void;
typedef AsyncTaskFunction<Err, T> = ?T -> (Null<Err> -> T);
typedef AsyncTask<Err, T> = EitherType<AsyncTaskFunction<Err, T>, Array<EitherType<String, AsyncTaskFunction<Err, T>>>>;

extern class Async
implements npm.Package.Require<"async", "^2.3.0">
{
	public static function each<Err, T1>(arr : Array<T1>, iterator : T1 -> AsyncOptionalCallback<Err> -> Void, ?callback : AsyncCallback<Err>) : Void;
	public static function eachSeries<Err, T1>(arr : Array<T1>, iterator : T1 -> AsyncOptionalCallback<Err> -> Void, ?callback : AsyncCallback<Err>) : Void;
	public static function eachLimit<Err, T1>(arr : Array<T1>, limit : Int, iterator : T1 -> AsyncOptionalCallback<Err> -> Void, ?callback : AsyncCallback<Err>) : Void;

	public static function eachOf<Err, T1>(arr : Array<T1>, iterator : T1 -> Int -> AsyncOptionalCallback<Err> -> Void, ?callback : AsyncCallback<Err>) : Void;
	public static function eachOfSeries<Err, T1>(arr : Array<T1>, iterator : T1 -> Int -> AsyncOptionalCallback<Err> -> Void, ?callback : AsyncCallback<Err>) : Void;
	public static function eachOfLimit<Err, T1>(arr : Array<T1>, limit : Int, iterator : T1 -> Int -> AsyncOptionalCallback<Err> -> Void, ?callback : AsyncCallback<Err>) : Void;

	public static function map<Err, T1, T2>(arr : Array<T1>, iterator : T1 -> AsyncMapCallback<Err, T2> -> Void, ?callback : AsyncMapCallback<Err, Array<T2>>) : Void;
	public static function mapSeries<Err, T1, T2>(arr : Array<T1>, iterator : T1 -> AsyncMapCallback<Err, T2> -> Void, ?callback : AsyncMapCallback<Err, Array<T2>>) : Void;
	public static function mapLimit<Err, T1, T2>(arr : Array<T1>, limit : Int, iterator : T1 -> AsyncMapCallback<Err, T2> -> Void, ?callback : AsyncMapCallback<Err, Array<T2>>) : Void;

	public static function mapValues<Err, T1, T2>(obj : DynamicAccess<T1>, iterator : T1 -> String -> AsyncMapCallback<Err, T2> -> Void, ?callback : AsyncMapCallback<Err, DynamicAccess<T2>>) : Void;
	public static function mapValuesSeries<Err, T1, T2>(arr : DynamicAccess<T1>, iterator : T1 -> String -> AsyncMapCallback<Err, T2> -> Void, ?callback : AsyncMapCallback<Err, DynamicAccess<T2>>) : Void;
	public static function mapValuesLimit<Err, T1, T2>(arr : DynamicAccess<T1>, limit : Int, iterator : T1 -> String -> AsyncMapCallback<Err, T2> -> Void, ?callback : AsyncMapCallback<Err, DynamicAccess<T2>>) : Void;

	public static function filter<Err, T1>(arr : Array<T1>, iterator : T1 -> AsyncCallback<Bool> -> Void, ?callback : AsyncCallback<Array<T1>>) : Void;
	public static function filterLimit<Err, T1>(arr : Array<T1>, limit: Int, iterator : T1 -> AsyncCallback<Bool> -> Void, ?callback : AsyncCallback<Array<T1>>) : Void;
	public static function filterSeries<Err, T1>(arr : Array<T1>, iterator : T1 -> AsyncCallback<Bool> -> Void, ?callback : AsyncCallback<Array<T1>>) : Void;

	public static function reject<Err, T1>(arr : Array<T1>, iterator : T1 -> AsyncCallback<Bool> -> Void, ?callback : AsyncCallback<Array<T1>>) : Void;
	public static function rejectLimit<Err, T1>(arr : Array<T1>, limit: Int, iterator : T1 -> AsyncCallback<Bool> -> Void, ?callback : AsyncCallback<Array<T1>>) : Void;
	public static function rejectSeries<Err, T1>(arr : Array<T1>, iterator : T1 -> AsyncCallback<Bool> -> Void, ?callback : AsyncCallback<Array<T1>>) : Void;

	public static function reduce<Err, T1, T2>(arr: Array<T1>, memo: T2, iteratee: T2 -> T1 -> AsyncMapCallback<Err, T2> -> Void, callback: AsyncMapCallback<Err, T2>) : Void;
	public static function reduceRight<Err, T1, T2>(arr: Array<T1>, memo: T2, iteratee: T2 -> T1 -> AsyncMapCallback<Err, T2> -> Void, callback: AsyncMapCallback<Err, T2>) : Void;

	public static function detect<Err, T1>(arr : Array<T1>, iterator : T1 -> AsyncCallback<Bool> -> Void, ?callback : AsyncCallback<Null<T1>>) : Void;
	public static function detectSeries<Err, T1>(arr : Array<T1>, iterator : T1 -> AsyncCallback<Bool> -> Void, ?callback : AsyncCallback<Null<T1>>) : Void;

	public static function sortBy<Err, T1, T2>(arr : Array<T1>, iterator : T1 -> AsyncMapCallback<Err, T2> -> Void, ?callback : AsyncCallback<Array<T1>>) : Void;

	public static function some<T1>(arr : Array<T1>, iterator : T1 -> AsyncCallback<Bool> -> Void, ?callback : AsyncCallback<Bool>) : Void;
	public static function someLimit<T1>(arr : Array<T1>, limit: Int, iterator : T1 -> AsyncCallback<Bool> -> Void, ?callback : AsyncCallback<Bool>) : Void;
	public static function someSeries<T1>(arr : Array<T1>, iterator : T1 -> AsyncCallback<Bool> -> Void, ?callback : AsyncCallback<Bool>) : Void;

	public static function transform<Err, T1>(arr: Array<T1>, ?accumulator: Array<T1>, iteratee: Array<T1> -> T1 -> Int -> AsyncCallback<Err>, callback: AsyncMapCallback<Err, Array<T1>>) : Void;

	public static function any<T1>(arr : Array<T1>, iterator : T1 -> AsyncCallback<Bool> -> Void, ?callback : AsyncCallback<Bool>) : Void;
	
	public static function every<T1>(arr : Array<T1>, iterator : T1 -> AsyncCallback<Bool> -> Void, ?callback : AsyncCallback<Bool>) : Void;
	public static function everyLimit<T1>(arr : Array<T1>, limit: Int, iterator : T1 -> AsyncCallback<Bool> -> Void, ?callback : AsyncCallback<Bool>) : Void;
	public static function everySeries<T1>(arr : Array<T1>, iterator : T1 -> AsyncCallback<Bool> -> Void, ?callback : AsyncCallback<Bool>) : Void;

	public static function all<T1>(arr : Array<T1>, iterator : T1 -> AsyncCallback<Bool> -> Void, ?callback : AsyncCallback<Bool>) : Void;

	public static function concat<Err, T1, T2>(arr : Array<T1>, iterator : T1 -> AsyncMapCallback<Err, Array<T2>> -> Void, ?callback : AsyncMapCallback<Err, Array<T2>>) : Void;
	public static function concatSeries<Err, T1, T2>(arr : Array<T1>, iterator : T1 -> AsyncMapCallback<Err, Array<T2>> -> Void, ?callback : AsyncMapCallback<Err, Array<T2>>) : Void;

	@:overload(function(tasks : Array<Function>) : Void {})
	public static function series<Err, T1>(tasks : Array<Function>, callback : AsyncMapCallback<Err, Array<T1>>) : Void;

	@:overload(function(tasks : Array<Function>) : Void {})
	public static function parallel<Err, T1>(tasks : Array<Function>, callback : AsyncMapCallback<Err, Array<T1>>) : Void;

	@:overload(function(tasks : Array<Function>, limit : Int) : Void {})
	public static function parallelLimit<Err, T1>(tasks : Array<Function>, limit : Int, callback : AsyncMapCallback<Err, Array<T1>>) : Void;

	// The test function must be synchronous for whilst:
	public static function whilst<Err>(test : Void -> Bool, fn : AsyncLoopCallback<Err>, callback : AsyncCallback<Err>) : Void;
	
	// The test function must be synchronous for until:
	public static function until<Err>(test : Void -> Bool, fn : AsyncLoopCallback<Err>, callback : AsyncCallback<Err>) : Void;
	
	public static function forever<Err>(fn : AsyncLoopCallback<Err>, ?errback : AsyncCallback<Err>) : Void;

	public static function waterfall<Err, T1>(arr : Array<Function>, ?callback : AsyncMapCallback<Err, T1>) : Void;

	public static function groupBy<Err, T1, T2>(arr : Array<T1>, iterator: T1 -> AsyncMapCallback<Err, T2>, ?callback : AsyncMapCallback<Err, Map<T2, Array<T1>>>) : Void;
	public static function groupByLimit<Err, T1, T2>(arr : Array<T1>, limit: Int, iterator: T1 -> AsyncMapCallback<Err, T2>, ?callback : AsyncMapCallback<Err, Map<T2, Array<T1>>>) : Void;
	public static function groupBySeries<Err, T1, T2>(arr : Array<T1>, iterator: T1 -> AsyncMapCallback<Err, T2>, ?callback : AsyncMapCallback<Err, Map<T2, Array<T1>>>) : Void;

	public static function compose<Err, T>(fns : Rest<AsyncTaskFunction<Err, T>>): AsyncTaskFunction<Err, T>;

	public static function doDuring<Err, T>(fn: Void -> Void, test: Function, ?callback: AsyncOptionalCallback<Err>): Void;
	public static function doUntil<Err, T>(iteratee: AsyncCallback<T> -> Void, test: T -> Bool, ?callback: AsyncMapCallback<Null<Err>,T>): Void;
	public static function doWhilst<Err, T>(iteratee: AsyncCallback<T> -> Void, test: T -> Bool, ?callback: AsyncMapCallback<Null<Err>,T>): Void;

	public static function during<Err, T>(test: AsyncMapCallback<Err, Bool>, fn: Void -> Void, ?callback: AsyncOptionalCallback<Err>): Void;

	public static function seq<Err, T>(fns : Rest<AsyncTaskFunction<Err, T>>): AsyncTaskFunction<Err, T>;

	@:overload(function(fns : Array<Function>) : Function {})
	@:overload(function<Err, T, T2, T3, T4>(fns : Array<Function>, arg1 : T, arg2 : T2, arg3 : T3, arg4 : T4, callback : AsyncCallback<Err>) : Void {})
	@:overload(function<Err, T, T2, T3>(fns : Array<Function>, arg1 : T, arg2 : T2, arg3 : T3, callback : AsyncCallback<Err>) : Void {})
	@:overload(function<Err, T, T2>(fns : Array<Function>, arg1 : T, arg2 : T2, callback : AsyncCallback<Err>) : Void {})
	public static function applyEach<Err, T>(fns : Array<Function>, arg1 : T, callback : AsyncCallback<Err>) : Void;

	@:overload(function(fns : Array<Function>) : Function {})
	@:overload(function<Err, T, T2, T3, T4>(fns : Array<Function>, arg1 : T, arg2 : T2, arg3 : T3, arg4 : T4, callback : AsyncCallback<Err>) : Void {})
	@:overload(function<Err, T, T2, T3>(fns : Array<Function>, arg1 : T, arg2 : T2, arg3 : T3, callback : AsyncCallback<Err>) : Void {})
	@:overload(function<Err, T, T2>(fns : Array<Function>, arg1 : T, arg2 : T2, callback : AsyncCallback<Err>) : Void {})
	public static function applyEachSeries<Err, T>(fns : Array<Function>, arg1 : T, callback : AsyncCallback<Err>) : Void;

	// queue
	// priorityQueue
	public static function cargo<Err, T>(worker: AsyncMapCallback<Err, T>, payload: Int) : AsyncCargoObject<Err, T>;

	public static function auto<Err, T>(tasks: DynamicAccess<AsyncTask<Err, T>>, ?concurrency : Int, ?callback : AsyncMapCallback<Err, DynamicAccess<T>>) : Void;
	public static function autoInject<Err>(tasks: DynamicAccess<Dynamic<Function>>, ?callback : AsyncMapCallback<Err, DynamicAccess<Dynamic>>) : Void;

	@:overload(function<Err, T>(opts : {times: Int, interval: Int}, task : AsyncMapCallback<Err, T> -> Void, ?callback : AsyncMapCallback<Err, T>) : Void {})
	public static function retry<Err, T>(times : Int, task : AsyncMapCallback<Err, T> -> Void, ?callback : AsyncMapCallback<Err, T>) : Void;

	public static function iterator(tasks : Array<Void -> Void>) : Void -> (Void -> Void);

	// apply: Use Haxe's bind instead

	public static function nextTick(callback : Void -> Void) : Void;

	public static function times<Err, T1, T2>(times : Int, iterator : Int -> AsyncMapCallback<Err, T2> -> Void, ?callback : AsyncMapCallback<Err, Array<T2>>) : Void;
	public static function timesSeries<Err, T1, T2>(times : Int, iterator : Int -> AsyncMapCallback<Err, T2> -> Void, ?callback : AsyncMapCallback<Err, Array<T2>>) : Void;
	public static function timesLimit<Err, T1, T2>(times : Int, limit : Int, iterator : Int -> AsyncMapCallback<Err, T2> -> Void, ?callback : AsyncMapCallback<Err, Array<T2>>) : Void;

	// memoize
	// unmemoize
	// ensureAsync

	public static function constant<T>(value : T) : Void -> T;

	public static function asyncify(fn : Function) : Function;

	@:overload(function<Err, T, T2, T3, T4, T5>(fn : T2 -> T3 -> T4 -> T5 -> AsyncMapCallback<Err, T> -> Void, arg1 : T2, arg2 : T3, arg3 : T4, arg4 : T5) : Void {})
	@:overload(function<Err, T, T2, T3, T4>(fn : T2 -> T3 -> T4 -> AsyncMapCallback<Err, T> -> Void, arg1 : T2, arg2 : T3, arg3 : T4) : Void {})
	@:overload(function<Err, T, T2, T3>(fn : T2 -> T3 -> AsyncMapCallback<Err, T> -> Void, arg1 : T2, arg2 : T3) : Void {})
	public static function log<T, T2, Err>(fn : T2 -> AsyncMapCallback<Err, T> -> Void, arg1 : T2) : Void;

	@:overload(function<Err, T, T2, T3, T4, T5>(fn : T2 -> T3 -> T4 -> T5 -> AsyncMapCallback<Err, T> -> Void, arg1 : T2, arg2 : T3, arg3 : T4, arg4 : T5) : Void {})
	@:overload(function<Err, T, T2, T3, T4>(fn : T2 -> T3 -> T4 -> AsyncMapCallback<Err, T> -> Void, arg1 : T2, arg2 : T3, arg3 : T4) : Void {})
	@:overload(function<Err, T, T2, T3>(fn : T2 -> T3 -> AsyncMapCallback<Err, T> -> Void, arg1 : T2, arg2 : T3) : Void {})
	public static function dir<T, T2, Err>(fn : T2 -> AsyncMapCallback<Err, T> -> Void, arg1 : T2) : Void;

	public static function noConflict() : Class<Async>;
}

extern class AsyncCargoObject<Err, T> {

  var payload: Int;

  var saturated: Void -> Void;
  var empty: Void -> Void;
  var drain: Void -> Void;

  function length(): Int;

  function push(task: T, ?callback: AsyncCallback<Err>): Void;

  function idle(): Bool;

  function pause(): Void;
  function resume(): Void;

  function kill(): Void;
}
