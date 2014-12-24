package famous.views;

import famous.core.OptionsManager;

@:native("famous.views.DrawerLayout")
extern class DrawerLayout {

	/**
     * A layout which will arrange two renderables: a featured content, and a
     *   concealed drawer. The drawer can be revealed from any side of the
     *   content (left, top, right, bottom) by dragging the content.
     *
     *   A @link{Sync} must be piped in to recieve user input.
     *
     *   Events:
     *     broadcasts: 'open', 'close'
     *     listens to: 'update', 'end'
     *
     * @class DrawerLayout
     *
     * @constructor
     *
     * @param [options] {Object}                                An object of configurable options
     * @param [options.side=DrawerLayout.SIDES.LEFT] {Number}   The side of the content the drawer is placed.
     *                                                          Choice of DrawerLayout.SIDES.LEFT/RIGHT/TOP/BOTTOM
     * @param [options.drawerLength=0] {Number}                 The default length of the drawer
     * @param [options.velocityThreshold=0] {Number}            The velocity threshold to trigger a toggle
     * @param [options.positionThreshold=0] {Number}            The position threshold to trigger a toggle
     * @param [options.transition=true] {Boolean|Object}        The toggle transition
     */
	function new(options:DrawerLayoutOptions);

	/**
     * Patches the DrawerLayout instance's options with the passed-in ones.
     *
     * @method setOptions
     * @param options {Object} options
     */
	function setOptions(options:DrawerLayoutOptions):OptionsManager;

	/**
     * Reveals the drawer with a transition
     *   Emits an 'open' event when an opening transition has been committed to.
     *
     * @method open
     * @param [transition] {Boolean|Object} transition definition
     * @param [callback] {Function}         callback
     */
	function open(?transition:Dynamic, ?callback:Dynamic):Void;

	/**
     * Conceals the drawer with a transition
     *   Emits a 'close' event when an closing transition has been committed to.
     *
     * @method close
     * @param [transition] {Boolean|Object} transition definition
     * @param [callback] {Function}         callback
     */
	function close(?transition:Dynamic, ?callback:Dynamic):Void;

	/**
     * Sets the position in pixels for the content's displacement
     *
     * @method setPosition
     * @param position {Number}             position
     * @param [transition] {Boolean|Object} transition definition
     * @param [callback] {Function}         callback
     */
	function setPosition(position:Int, ?transition:Dynamic, ?callback:Dynamic):Void;

	/**
     * Gets the position in pixels for the content's displacement
     *
     * @method getPosition
     * @return position {Number} position
     */
	function getPosition():Int;

	/**
     * Sets the progress (between 0 and 1) for the content's displacement
     *
     * @method setProgress
     * @param progress {Number}             position
     * @param [transition] {Boolean|Object} transition definition
     * @param [callback] {Function}         callback
     */
	function setProgress(position:Int, ?transition:Dynamic, ?callback:Dynamic):Void;

	/**
     * Gets the progress (between 0 and 1) for the content's displacement
     *
     * @method getProgress
     * @return position {Number} position
     */
	function getProgress():Int;

	/**
     * Toggles between open and closed states
     *
     * @method toggle
     * @param [transition] {Boolean|Object} transition definition
     */
	function toggle(transition:Dynamic):Void;

	/**
     * Resets to last state of being open or closed
     *
     * @method reset
     * @param [transition] {Boolean|Object} transition definition
     */
	function reset(?transition:Dynamic):Void;

	/**
     * Returns if drawer is committed to being open or closed
     *
     * @method isOpen
     * @return {Boolean}
     */
	function isOpen(transition):Bool;
}

typedef DrawerLayoutOptions = {
	@:optional var side:Int;
	@:optional var drawerLength:Int;
	@:optional var velocityThreshold:Int;
	@:optional var positionThreshold:Int;
	@:optional var transition:Bool;
}