package famous.events;

import famous.core.EventHandler;

@:native("famous.events.EventArbiter")
extern class EventArbiter {

	/**
     * A switch which wraps several event destinations and
     *  redirects received events to at most one of them.
     *  Setting the 'mode' of the object dictates which one
     *  of these destinations will receive events.
     *
     * @class EventArbiter
     * @constructor
     *
     * @param {Number | string} startMode initial setting of switch,
     */
	function new(startMode:String);

	/**
     * Set switch to this mode, passing events to the corresponding
     *   EventHandler.  If mode has changed, emits 'change' event,
     *   emits 'unpipe' event to the old mode's handler, and emits 'pipe'
     *   event to the new mode's handler.
     *
     * @method setMode
     *
     * @param {string | number} mode indicating which event handler to send to.
     */
	function setMode(mode:String):Void;

	/**
     * Return the existing EventHandler corresponding to this
     *   mode, creating one if it doesn't exist.
     *
     * @method forMode
     *
     * @param {string | number} mode mode to which this eventHandler corresponds
     *
     * @return {EventHandler} eventHandler corresponding to this mode
     */
	function forMode(mode:String):EventHandler;

	/**
     * Trigger an event, sending to currently selected handler, if
     *   it is listening for provided 'type' key.
     *
     * @method emit
     *
     * @param {string} eventType event type key (for example, 'click')
     * @param {Object} event event data
     * @return {EventHandler} this
     */
	function emit(eventType:String, event:Dynamic):EventHandler;
}