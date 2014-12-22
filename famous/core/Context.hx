package famous.core;

import js.html.Node;

@:native("famous.core.Context")
extern class Context {

	/**
     * The top-level container for a Famous-renderable piece of the document.
     *   It is directly updated by the process-wide Engine object, and manages one
     *   render tree root, which can contain other renderables.
     *
     * @class Context
     * @constructor
     * @private
     * @param {Node} container Element in which content will be inserted
     */
	function new(container:Node);

	/**
     * Add renderables to this Context's render tree.
     *
     * @method add
     *
     * @param {Object} obj renderable object
     * @return {RenderNode} RenderNode wrapping this object, if not already a RenderNode
     */
	function add(obj:Dynamic):RenderNode;

	/**
     * Move this Context to another containing document element.
     *
     * @method migrate
     *
     * @param {Node} container Element to which content will be migrated
     */
	function migrate(container:Node):Void;

	/**
     * Gets viewport size for Context.
     *
     * @method getSize
     *
     * @return {Array<Float>} viewport size as [width, height]
     */
	function getSize():Array<Float>;

	/**
     * Sets viewport size for Context.
     *
     * @method setSize
     *
     * @param {Array<Float>} size [width, height].  If unspecified, use size of root document element.
     */
	function setSize(size:Array<Float>):Void;

	/**
     * Commit this Context's content changes to the document.
     *
     * @private
     * @method update
     * @param {Object} contextParameters engine commit specification
     */
	function update(contextParameters:Dynamic):Void;

	/**
     * Get current perspective of this context in pixels.
     *
     * @method getPerspective
     * @return {Float} depth perspective in pixels
     */
	function getPerspective():Float;

	/**
     * Set current perspective of this context in pixels.
     *
     * @method setPerspective
     * @param {Float} perspective in pixels
     * @param {Object} [transition] Transitionable object for applying the change
     * @param {function(Object)} callback function called on completion of transition
     */
	function setPerspective(perspective:Float, ?transition:Dynamic, ?callback:Dynamic -> Void):Void;

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
	function emit(type:String, event:Dynamic):Dynamic;

	/**
     * Bind a callback function to an event type handled by this object.
     *
     * @method "on"
     *
     * @param {string} type event type key (for example, 'click')
     * @param {function(string, Object)} handler callback
     * @return {EventHandler} this
     */
	function on(type:String, handler:String -> Dynamic -> Void):Dynamic;

	/**
     * Unbind an event by type and handler.
     *   This undoes the work of "on".
     *
     * @method removeListener
     *
     * @param {string} type event type key (for example, 'click')
     * @param {function} handler function object to remove
     * @return {EventHandler} internal event handler object (for chaining)
     */
	function removeListener(type:String, handler:Dynamic):Dynamic;

	/**
     * Add event handler object to set of downstream handlers.
     *
     * @method pipe
     *
     * @param {EventHandler} target event handler target object
     * @return {EventHandler} passed event handler
     */
	function pipe(target:Dynamic):Dynamic;

	/**
     * Remove handler object from set of downstream handlers.
     *   Undoes work of "pipe".
     *
     * @method unpipe
     *
     * @param {EventHandler} target target handler object
     * @return {EventHandler} provided target
     */
	function unpipe(target:Dynamic):Dynamic;
}