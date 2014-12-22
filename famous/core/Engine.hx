package famous.core;

import js.html.Node;

@:native("famous.core.Engine")
extern class Engine {
	/**
     * The singleton object initiated upon process
     *   startup which manages all active Context instances, runs
     *   the render dispatch loop, and acts as a listener and dispatcher
     *   for events.  All methods are therefore static.
     *
     *   On static initialization, window.requestAnimationFrame is called with
     *     the event loop function.
     *
     *   Note: Any window in which Engine runs will prevent default
     *     scrolling behavior on the 'touchmove' event.
     *
     * @static
     * @class Engine
     */

	/**
     * Creates a new Context for rendering and event handling with
     *    provided document element as top of each tree. This will be tracked by the
     *    process-wide Engine.
     *
     * @static
     * @method createContext
     *
     * @param {Node} [el] will be top of Famo.us document element tree
     * @return {Context} new Context within el
     */
	static function createContext(?el:Node):Context;

	/**
     * Add renderables to this Context's render tree.
     *
     * @method add
     *
     * @param {Object} obj renderable object
     * @return {RenderNode} RenderNode wrapping this object, if not already a RenderNode
     */
	static function add(obj:Dynamic):Dynamic;
}