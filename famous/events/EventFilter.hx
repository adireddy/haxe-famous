package famous.events;

import famous.core.EventHandler;

@:native("famous.events.EventFilter")
extern class EventFilter {

	/**
     * EventFilter regulates the broadcasting of events based on
     *  a specified condition function of standard event type: function(type, data).
     *
     * @class EventFilter
     * @constructor
     *
     * @param {function} condition function to determine whether or not
     *    events are emitted.
     */
	function new(condition:Void -> Void);

	/**
     * If filter condition is met, trigger an event, sending to all downstream handlers
     *   listening for provided 'type' key.
     *
     * @method emit
     *
     * @param {string} type event type key (for example, 'click')
     * @param {Object} data event data
     * @return {EventHandler} this
     */
	function emit(type:String, data:Dynamic):EventHandler;

	/**
     * An alias of emit. Trigger determines whether to send
     *  events based on the return value of it's condition function
     *  when passed the event type and associated data.
     *
     * @method trigger
     * @param {string} type name of the event
     * @param {object} data associated data
     */
	function trigger(type:String, data:Dynamic):EventHandler;
}