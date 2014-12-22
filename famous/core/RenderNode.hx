package famous.core;

@:native("famous.core.RenderNode")
extern class RenderNode {

	/**
     * A wrapper for inserting a renderable component (like a Modifer or
     *   Surface) into the render tree.
     *
     * @class RenderNode
     * @constructor
     *
     * @param {Object} object Target renderable component
     */
	function new(object:Dynamic);

	/**
     * Append a renderable to the list of this node's children.
     *   This produces a new RenderNode in the tree.
     *   Note: Does not double-wrap if child is a RenderNode already.
     *
     * @method add
     * @param {Object} child renderable object
     * @return {RenderNode} new render node wrapping child
     */
	function add(child:Dynamic):RenderNode;

	/**
     * Return the single wrapped object.  Returns null if this node has multiple child nodes.
     *
     * @method get
     *
     * @return {Ojbect} contained renderable object
     */
	function get():Dynamic;

	/**
     * Overwrite the list of children to contain the single provided object
     *
     * @method set
     * @param {Object} child renderable object
     * @return {RenderNode} this render node, or child if it is a RenderNode
     */
	function set(child:Dynamic):RenderNode;

	/**
     * Get render size of contained object.
     *
     * @method getSize
     * @return {Array.Float} size of this or size of single child.
     */
	function getSize():Array<Float>;
}