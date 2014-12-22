package famous.core;

@:native("famous.core.EventEmitter")
extern class EventEmitter {

	/**
     * EventEmitter represents a channel for events.
     *
     * @class EventEmitter
     * @constructor
     */
	function new();

	/**
     * Trigger an event, sending to all downstream handlers
     *   listening for provided 'type' key.
     *
     * @method emit
     *
     * @param {string} type event type key (for example, 'click')
     * @param {Object} event event data
     * @return {EventHandler} this
     */
	function emit(type:String, event:Dynamic):EventHandler;

	/**
     * Bind a callback function to an event type handled by this object.
     *
     * @method "on"
     *
     * @param {string} type event type key (for example, 'click')
     * @param {function(string, Object)} handler callback
     * @return {EventHandler} this
     */
	function on(type:String, handler:String -> Dynamic -> Void):EventHandler;

	/**
     * Alias for "on".
     * @method addListener
     */
	function addListener(type:String, handler:String -> Dynamic -> Void):EventHandler;

	/**
     * Unbind an event by type and handler.
     *   This undoes the work of "on".
     *
     * @method removeListener
     *
     * @param {string} type event type key (for example, 'click')
     * @param {function} handler function object to remove
     * @return {EventEmitter} this
     */
	function removeListener(type:String, handler:Dynamic):EventEmitter;

	/**
     * Call event handlers with this set to owner.
     *
     * @method bindThis
     *
     * @param {Object} owner object this EventEmitter belongs to
     */
	function bindThis(owner:Dynamic):Void;
}