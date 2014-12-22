package famous.core;

import js.html.Node;

@:native("famous.core.ElementOutput")
extern class ElementOutput {

	/**
     * A base class for viewable content and event
     *   targets inside a Famo.us application, containing a renderable document
     *   fragment. Like an HTML div, it can accept internal markup,
     *   properties, classes, and handle events.
     *
     * @class ElementOutput
     * @constructor
     *
     * @param {Node} element document parent of this container
     */
	function new(container:Node);

	/**
     * Bind a callback function to an event type handled by this object.
     *
     * @method "on"
     *
     * @param {String} type event type key (for example, 'click')
     * @param {function(string, Object)} fn handler callback
     * @return {EventHandler} this
     */
	function on(type:String, fn:Dynamic):EventHandler;

	/**
     * Unbind an event by type and handler.
     *   This undoes the work of "on"
     *
     * @method removeListener
     * @param {String} type event type key (for example, 'click')
     * @param {function(string, Object)} fn handler
     */
	function removeListener(type:String, fn:Dynamic):Void;

	/**
     * Trigger an event, sending to all downstream handlers
     *   listening for provided 'type' key.
     *
     * @method emit
     *
     * @param {String} type event type key (for example, 'click')
     * @param {Object} [event] event data
     * @return {EventHandler} this
     */
	function emit(type:String, ?event:Dynamic):EventHandler;

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
     *   Undoes work of "pipe"
     *
     * @method unpipe
     *
     * @param {EventHandler} target target handler object
     * @return {EventHandler} provided target
     */
	function unpipe(target:EventHandler):EventHandler;
}