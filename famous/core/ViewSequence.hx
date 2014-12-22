package famous.core;

@:native("famous.core.View")
extern class ViewSequence {

	/**
     * Helper object used to iterate through items sequentially. Used in
     *   views that deal with layout.  A ViewSequence object conceptually points
     *   to a node in a linked list.
     *
     * @class ViewSequence
     *
     * @constructor
     * @param {Object|Array} options Options object, or content array.
     * @param {Number} [options.index] starting index.
     * @param {Number} [options.array] Array of elements to populate the ViewSequence
     * @param {Object} [options._] Optional backing store (internal
     * @param {Boolean} [options.loop] Whether to wrap when accessing elements just past the end
     *   (or beginning) of the sequence.
     */
	function new(options:Dynamic);

	/**
     * Return ViewSequence node previous to this node in the list, respecting looping if applied.
     *
     * @method getPrevious
     * @return {ViewSequence} previous node.
     */
	function getPrevious():ViewSequence;

	/**
     * Return ViewSequence node next after this node in the list, respecting looping if applied.
     *
     * @method getNext
     * @return {ViewSequence} previous node.
     */
	function getNext():ViewSequence;

	/**
     * Return index of the provided item in the backing array
     *
     * @method indexOf
     * @return {Number} index or -1 if not found
     */
	function indexOf(item:Dynamic):Int;

	/**
     * Return index of this ViewSequence node.
     *
     * @method getIndex
     * @return {Number} index
     */
	function getIndex():Int;

	/**
     * Return printable version of this ViewSequence node.
     *
     * @method toString
     * @return {string} this index as a string
     */
	function toString():String;

	/**
     * Add one or more objects to the beginning of the sequence.
     *
     * @method unshift
     * @param {...Object} value arguments array of objects
     */
	function unshift(value:Dynamic):Void;

	/**
     * Add one or more objects to the end of the sequence.
     *
     * @method push
     * @param {...Object} value arguments array of objects
     */
	function push(value:Dynamic):Void;

	/**
     * Remove objects from the sequence
     *
     * @method splice
     * @param {Number} index starting index for removal
     * @param {Number} howMany how many elements to remove
     * @param {...Object} value arguments array of objects
     */
	function splice(index:Float, howMany:Float):Void;

	/**
     * Exchange this element's sequence position with another's.
     *
     * @method swap
     * @param {ViewSequence} other element to swap with.
     */
	function swap(other:ViewSequence):Void;

	/**
     * Return value of this ViewSequence node.
     *
     * @method get
     * @return {Object} value of thiss
     */
	function get():Dynamic;

	/**
     * Return size of contained element.
     *
     * @method getSize
     * @return {Array.Number} [width, height]
     */
	function getSize():Array<Float>;
}