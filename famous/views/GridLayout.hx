package famous.views;

import famous.core.OptionsManager;

@:native("famous.views.GridLayout")
extern class GridLayout {

	/**
     * A layout which divides a context into several evenly-sized grid cells.
     *   If dimensions are provided, the grid is evenly subdivided with children
     *   cells representing their own context, otherwise the cellSize property is used to compute
     *   dimensions so that items of cellSize will fit.
     * @class GridLayout
     * @constructor
     * @param {Options} [options] An object of configurable options.
     * @param {Array.Number} [options.dimensions=[1, 1]] A two value array which specifies the amount of columns
     * and rows in your Gridlayout instance.
     * @param {Array.Number} [options.gutterSize=[0, 0]] A two-value array which specifies size of the
     * horizontal and vertical gutters between items in the grid layout.
     * @param {Transition} [options.transition=false] The transiton that controls the Gridlayout instance's reflow.
     */
	function new(options:GridLayoutOptions);

	/**
     * Patches the GridLayout instance's options with the passed-in ones.
     *
     * @method setOptions
     * @param {Options} options An object of configurable options for the GridLayout instance.
     */
	function setOptions(options:GridLayoutOptions):OptionsManager;

	/**
     * Sets the collection of renderables under the Gridlayout instance's control.
     *
     * @method sequenceFrom
     * @param {Array|ViewSequence} sequence Either an array of renderables or a Famous viewSequence.
     */
	function sequenceFrom(sequence:Dynamic):Void;

	/**
     * Returns the size of the grid layout.
     *
     * @method getSize
     * @return {Array} Total size of the grid layout.
     */
	function getSize():Array<Float>;
}

typedef GridLayoutOptions = {
	@:optional var dimensions:Array<Float>;
	@:optional var gutterSize:Array<Float>;
	@:optional var transition:Bool;
}