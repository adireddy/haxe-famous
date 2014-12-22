package famous.core;

@:native("famous.core.View")
extern class View {

	/**
     * Useful for quickly creating elements within applications
     *   with large event systems.  Consists of a RenderNode paired with
     *   an input EventHandler and an output EventHandler.
     *   Meant to be extended by the developer.
     *
     * @class View
     * @uses EventHandler
     * @uses OptionsManager
     * @uses RenderNode
     * @constructor
     */
	function new(options:Dynamic);

	/**
     * Look up options value by key
     * @method getOptions
     *
     * @param {string} key key
     * @return {Object} associated object
     */
	function getOptions(key:String):Dynamic;

	/*
     *  Set internal options.
     *  No defaults options are set in View.
     *
     *  @method setOptions
     *  @param {Object} options
     */
	function setOptions(options:Dynamic):Void;

	/**
     * Add a child renderable to the view.
     *   Note: This is meant to be used by an inheriting class
     *   rather than from outside the prototype chain.
     *
     * @method add
     * @return {RenderNode}
     * @protected
     */
	function add():RenderNode;

	/**
     * Return size of contained element.
     *
     * @method getSize
     * @return {Array.Number} [width, height]
     */
	function getSize():Array<Float>;
}