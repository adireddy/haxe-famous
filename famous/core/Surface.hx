package famous.core;

@:native("famous.core.Surface")
extern class Surface extends ElementOutput {

	/**
     * A base class for viewable content and event
     *   targets inside a Famo.us application, containing a renderable document
     *   fragment. Like an HTML div, it can accept internal markup,
     *   properties, classes, and handle events.
     *
     * @class Surface
     * @constructor
     *
     * @param {Object} [options] default option overrides
     * @param {Array.Number} [options.size] [width, height] in pixels
     * @param {Array.string} [options.classes] CSS classes to set on target div
     * @param {Array} [options.properties] string dictionary of CSS properties to set on target div
     * @param {Array} [options.attributes] string dictionary of HTML attributes to set on target div
     * @param {string} [options.content] inner (HTML) content of surface
     */
	function new(?options:SurfaceOptions);

	/**
     * Set HTML attributes on this Surface. Note that this will cause
     *    dirtying and thus re-rendering, even if values do not change.
     *
     * @method setAttributes
    * @param {Object} attributes property dictionary of "key" => "value"
     */
	function setAttributes(attributes:SurfaceAttributes):Void;

	/**
     * Get HTML attributes on this Surface.
     *
     * @method getAttributes
     *
     * @return {Object} Dictionary of this Surface's attributes.
     */
	function getAttributes():SurfaceAttributes;

	/**
     * Set CSS-style properties on this Surface. Note that this will cause
     *    dirtying and thus re-rendering, even if values do not change.
     *
     * @method setProperties
     * @chainable
     * @param {Object} properties property dictionary of "key" => "value"
     */
	function setProperties(attributes:SurfaceProperties):Surface;

	/**
     * Get CSS-style properties on this Surface.
     *
     * @method getProperties
     *
     * @return {Object} Dictionary of this Surface's properties.
     */
	function getProperties():SurfaceProperties;

	/**
     * Add CSS-style class to the list of classes on this Surface. Note
     *   this will map directly to the HTML property of the actual
     *   corresponding rendered <div>.
     *
     * @method addClass
     * @chainable
     * @param {string} className name of class to add
     */
	function addClass(className:String):Surface;

	/**
     * Remove CSS-style class from the list of classes on this Surface.
     *   Note this will map directly to the HTML property of the actual
     *   corresponding rendered <div>.
     *
     * @method removeClass
     * @chainable
     * @param {string} className name of class to remove
     */
	function removeClass(className:String):Surface;

	/**
     * Toggle CSS-style class from the list of classes on this Surface.
     *   Note this will map directly to the HTML property of the actual
     *   corresponding rendered <div>.
     *
     * @method toggleClass
     * @param {string} className name of class to toggle
     */
	function toggleClass(className:String):Void;

	/**
     * Reset class list to provided dictionary.
     * @method setClasses
     * @chainable
     * @param {Array.string} classList
     */
	function setClasses(classList:Array<String>):Surface;

	/**
     * Get array of CSS-style classes attached to this div.
     *
     * @method getClasslist
     * @return {Array.string} array of class names
     */
	function getClasslist():Array<String>;

	/**
     * Set or overwrite inner (HTML) content of this surface. Note that this
     *    causes a re-rendering if the content has changed.
     *
     * @method setContent
     * @chainable
     * @param {string|Document Fragment} content HTML content
     */
	function setContent(content:String):Surface;

	/**
     * Return inner (HTML) content of this surface.
     *
     * @method getContent
     *
     * @return {string} inner (HTML) content
     */
	function getContent():String;

	/**
     * Set options for this surface
     *
     * @method setOptions
     * @chainable
     * @param {Object} [options] overrides for default options.  See constructor.
     */
	function setOptions(options:SurfaceOptions):Surface;

	/**
     *  Get the x and y dimensions of the surface.
     *
     * @method getSize
     * @return {Array<Float>} [x,y] size of surface
     */
	function getSize():Array<Float>;

	/**
     * Set x and y dimensions of the surface.
     *
     * @method setSize
     * @chainable
     * @param {Array<Float>} size as [width, height]
     */
	function setSize(size:Array<Float>):Surface;
}

typedef SurfaceOptions = {
	@:optional var size:Array<Float>;
	@:optional var classes:Array<String>;
	@:optional var properties:SurfaceProperties;
	@:optional var attributes:SurfaceAttributes;
	@:optional var content:String;
}

typedef SurfaceProperties = {
	@:optional var color:String;
	@:optional var backgroundColor:String;
	@:optional var textAlign:String;
	@:optional var padding:String;
	@:optional var border:String;
	@:optional var borderRadius:String;
	@:optional var marginTop:String;
	@:optional var marginLeft:String;
}

typedef SurfaceAttributes = {

}