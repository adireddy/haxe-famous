package famous.inputs;

@:native("famous.events.Accumulator")
extern class Accumulator {

	/**
     * Accumulates differentials of event sources that emit a `delta`
     *  attribute taking a Number or Array of Number types. The accumulated
     *  value is stored in a getter/setter.
     *
     * @class Accumulator
     * @constructor
     * @param value {Number|Array|Transitionable}   Initializing value
     * @param [eventName='update'] {String}         Name of update event
     */
	function new(value:Dynamic, ?eventName:String);

	/**
     * Basic getter
     *
     * @method get
     * @return {Number|Array} current value
     */
	function get():Dynamic;

	/**
     * Basic setter
     *
     * @method set
     * @param value {Number|Array} new value
     */
	function set(value:Dynamic):Void;
}