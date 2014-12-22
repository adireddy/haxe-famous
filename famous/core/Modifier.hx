package famous.core;

@:native("famous.core.Modifier")
extern class Modifier {

	/**
     *
     *  A collection of visual changes to be
     *    applied to another renderable component. This collection includes a
     *    transform matrix, an opacity constant, a size, an origin specifier.
     *    Modifier objects can be added to any RenderNode or object
     *    capable of displaying renderables.  The Modifier's children and descendants
     *    are transformed by the amounts specified in the Modifier's properties.
     *
     * @class Modifier
     * @constructor
     * @param {Object} [options] overrides of default options
     * @param {Transform} [options.transform] affine transformation matrix
     * @param {Float} [options.opacity]
     * @param {Array.Float} [options.origin] origin adjustment
     * @param {Array.Float} [options.size] size to apply to descendants
     */
	function new(options:ModifierOptions);

	/**
     * Function, object, or static transform matrix which provides the transform.
     *   This is evaluated on every tick of the engine.
     *
     * @method transformFrom
     *
     * @param {Object} transform transform provider object
     * @return {Modifier} this
     */
	function transformFrom(transform:Dynamic):Modifier;

	/**
     * Set function, object, or number to provide opacity, in range [0,1].
     *
     * @method opacityFrom
     *
     * @param {Object} opacity provider object
     * @return {Modifier} this
     */
	function opacityFrom(opacity:Dynamic):Modifier;

	/**
     * Set function, object, or numerical array to provide origin, as [x,y],
     *   where x and y are in the range [0,1].
     *
     * @method originFrom
     *
     * @param {Object} origin provider object
     * @return {Modifier} this
     */
	function originFrom(origin:Dynamic):Modifier;

	/**
     * Set function, object, or numerical array to provide align, as [x,y],
     *   where x and y are in the range [0,1].
     *
     * @method alignFrom
     *
     * @param {Object} align provider object
     * @return {Modifier} this
     */
	function alignFrom(align:Dynamic):Modifier;

	/**
     * Set function, object, or numerical array to provide size, as [width, height].
     *
     * @method sizeFrom
     *
     * @param {Object} size provider object
     * @return {Modifier} this
     */
	function sizeFrom(size:Dynamic):Modifier;

	/**
     * Set function, object, or numerical array to provide proportions, as [percent of width, percent of height].
     *
     * @method proportionsFrom
     *
     * @param {Object} proportions provider object
     * @return {Modifier} this
     */
	function proportionsFrom(proportions:Dynamic):Modifier;
}

typedef ModifierOptions = {
	@:optional var transform:Void -> Transform;
	@:optional var align:Array<Float>;
	@:optional var opacity:Float;
	@:optional var origin:Array<Float>;
	@:optional var size:Array<Float>;
}