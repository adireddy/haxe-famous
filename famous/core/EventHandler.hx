package famous.core;

@:native("famous.core.EventHandler")
extern class EventHandler extends EventEmitter {

	/**
     * EventHandler forwards received events to a set of provided callback functions.
     * It allows events to be captured, processed, and optionally piped through to other event handlers.
     *
     * @class EventHandler
     * @extends EventEmitter
     * @constructor
     */
	function new();

	/**
     * Assign an event handler to receive an object's input events.
     *
     * @method setInputHandler
     * @static
     *
     * @param {Object} object object to mix trigger, subscribe, and unsubscribe functions into
     * @param {EventHandler} handler assigned event handler
     */
	static function setInputHandler(object:Dynamic, handler:EventHandler):Void;

	/**
     * Assign an event handler to receive an object's output events.
     *
     * @method setOutputHandler
     * @static
     *
     * @param {Object} object object to mix pipe, unpipe, on, addListener, and removeListener functions into
     * @param {EventHandler} handler assigned event handler
     */
	static function setOutputHandler(object:Dynamic, handler:EventHandler):Void;

	/**
     * Add event handler object to set of downstream handlers.
     *
     * @method pipe
     *
     * @param {EventHandler} target event handler target object
     * @return {EventHandler} passed event handler
     */
	function pipe(target:EventHandler):EventHandler;

	/**
     * Remove handler object from set of downstream handlers.
     *   Undoes work of "pipe".
     *
     * @method unpipe
     *
     * @param {EventHandler} target target handler object
     * @return {EventHandler} provided target
     */
	function unpipe(target:EventHandler):EventHandler;

	/**
     * Listen for events from an upstream event handler.
     *
     * @method subscribe
     *
     * @param {EventEmitter} source source emitter object
     * @return {EventHandler} this
     */
	function subscribe(source:EventEmitter):EventHandler;

	/**
     * Stop listening to events from an upstream event handler.
     *
     * @method unsubscribe
     *
     * @param {EventEmitter} source source emitter object
     * @return {EventHandler} this
     */
	function unsubscribe(source:EventEmitter):EventHandler;
}