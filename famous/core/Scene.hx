package famous.core;

@:native("famous.core.Scene")
extern class Scene {

	/**
     * Builds and renders a scene graph based on a declarative structure definition.
     * See the Scene examples in the examples distribution (http://github.com/Famous/examples.git).
     *
     * @class Scene
     * @constructor
     * @param {Object|Array|Spec} definition in the format of a render spec.
     */
	function new(definition:Dynamic);

	/**
     * Clone this scene
     *
     * @method create
     * @return {Scene} deep copy of this scene
     */
	function create():Scene;

	/**
     * Builds and renders a scene graph based on a canonical declarative scene definition.
     * See examples/Scene/example.js.
     *
     * @method load
     * @param {Object} definition definition in the format of a render spec.
     */
	function load(definition:Dynamic):Void;

	/**
     * Add renderables to this component's render tree
     *
     * @method add
     *
     * @param {Object} obj renderable object
     * @return {RenderNode} Render wrapping provided object, if not already a RenderNode
     */
	function add(obj:Dynamic):RenderNode;
}