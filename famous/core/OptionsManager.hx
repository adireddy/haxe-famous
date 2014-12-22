package famous.core;

@:native("famous.core.OptionsManager")
extern class OptionsManager {

	/**
     *  A collection of methods for setting options which can be extended
     *  onto other classes.
     *
     *
     *  **** WARNING ****
     *  You can only pass through objects that will compile into valid JSON.
     *
     *  Valid options:
     *      Strings,
     *      Arrays,
     *      Objects,
     *      Numbers,
     *      Nested Objects,
     *      Nested Arrays.
     *
     *    This excludes:
     *        Document Fragments,
     *        Functions
     * @class OptionsManager
     * @constructor
     * @param {Object} value options dictionary
     */
	function new(value:Dynamic);

	/**
     * Create options manager from source dictionary with arguments overriden by patch dictionary.
     *
     * @static
     * @method OptionsManager.patch
     *
     * @param {Object} source source arguments
     * @param {...Object} data argument additions and overwrites
     * @return {Object} source object
     */
	static function patchObject(source:Dynamic, data:Dynamic):Dynamic;

	/**
     * Create OptionsManager from source with arguments overriden by patches.
     *   Triggers 'change' event on this object's event handler if the state of
     *   the OptionsManager changes as a result.
     *
     * @method patch
     *
     * @param {...Object} arguments list of patch objects
     * @return {OptionsManager} this
     */
	function patch():OptionsManager;

}