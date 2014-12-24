package famous.views;

import famous.core.RenderNode;
import famous.core.OptionsManager;

@:native("famous.views.HeaderFooterLayout")
extern class HeaderFooterLayout {

	/**
     * A layout which will arrange three renderables into a header and footer area of defined size,
      and a content area of flexible size.
     * @class HeaderFooterLayout
     * @constructor
     * @param {Options} [options] An object of configurable options.
     * @param {Float} [options.direction=HeaderFooterLayout.DIRECTION_Y] A direction of HeaderFooterLayout.DIRECTION_X
     * lays your HeaderFooterLayout instance horizontally, and a direction of HeaderFooterLayout.DIRECTION_Y
     * lays it out vertically.
     * @param {Float} [options.headerSize=undefined]  The amount of pixels allocated to the header node
     * in the HeaderFooterLayout instance's direction.
     * @param {Float} [options.footerSize=undefined] The amount of pixels allocated to the footer node
     * in the HeaderFooterLayout instance's direction.
     */
	function new(options:HeaderFooterLayoutOptions);

	/**
     * Patches the HeaderFooterLayout instance's options with the passed-in ones.
     *
     * @method setOptions
     * @param {Options} options An object of configurable options for the HeaderFooterLayout instance.
     */
	function setOptions(options:HeaderFooterLayoutOptions):OptionsManager;

	var header:RenderNode;
	var footer:RenderNode;
	var content:RenderNode;
}

typedef HeaderFooterLayoutOptions = {
	@:optional var direction:Int;
	@:optional var headerSize:Float;
	@:optional var footerSize:Float;
	@:optional var defaultHeaderSize:Float;
	@:optional var defaultFooterSize:Float;
}