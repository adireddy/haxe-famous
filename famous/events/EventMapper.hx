package famous.events;

import famous.core.EventHandler;

@:native("famous.events.EventMapper")
extern class EventMapper {

	/**
     * EventMapper routes events to various event destinations
     *  based on custom logic.  The function signature is arbitrary.
     *
     * @class EventMapper
     * @constructor
     *
     * @param {function} mappingFunction function to determine where
     *  events are routed to.
     */
	function new(mappingFunction:Void -> Void);

	/**
     * Trigger an event, sending to all mapped downstream handlers
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
     * Alias of emit.
     * @method trigger
     */
	function trigger(type:String, data:Dynamic):EventHandler;
}