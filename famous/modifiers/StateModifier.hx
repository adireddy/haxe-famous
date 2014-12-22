package famous.modifiers;

import famous.core.Transform;

@:native("famous.modifiers.StateModifier")
extern class StateModifier {

	/**
     *  A collection of visual changes to be
     *    applied to another renderable component, strongly coupled with the state that defines
     *    those changes. This collection includes a
     *    transform matrix, an opacity constant, a size, an origin specifier, and an alignment specifier.
     *    StateModifier objects can be added to any RenderNode or object
     *    capable of displaying renderables.  The StateModifier's children and descendants
     *    are transformed by the amounts specified in the modifier's properties.
     *
     * @class StateModifier
     * @constructor
     * @param {Object} [options] overrides of default options
     * @param {Transform} [options.transform] affine transformation matrix
     * @param {Float} [options.opacity]
     * @param {Array.Float} [options.origin] origin adjustment
     * @param {Array.Float} [options.align] align adjustment
     * @param {Array.Float} [options.size] size to apply to descendants
     * @param {Array.Float} [options.proportions] proportions to apply to descendants
     */
	function new(options:StateModifierOptions);

		/**
     * Set the transform matrix of this modifier, either statically or
     *   through a provided Transitionable.
     *
     * @method setTransform
     *
     * @param {Transform} transform Transform to transition to.
     * @param {Transitionable} transition object of type {duration: number, curve:
     *    f[0,1] -> [0,1] or name}. If transition is omitted, change will be
     *    instantaneous.
     * @param {Function} [callback] callback to call after transition completes
     * @return {StateModifier} this
     */
	function setTransform(transform:Transform, transition:Dynamic, ?callback:Void -> Void):StateModifier;

	/**
     * Set the opacity of this modifier, either statically or
     *   through a provided Transitionable.
     *
     * @method setOpacity
     *
     * @param {Float} opacity Opacity value to transition to.
     * @param {Transitionable} transition object of type {duration: number, curve:
     *    f[0,1] -> [0,1] or name}. If transition is omitted, change will be
     *    instantaneous.
     * @param {Function} callback callback to call after transition completes
     * @return {StateModifier} this
     */
	function setOpacity(opacity:Float, transition:Dynamic, ?callback:Void -> Void):StateModifier;

	/**
     * Set the origin of this modifier, either statically or
     *   through a provided Transitionable.
     *
     * @method setOrigin
     *
     * @param {Array.Number} origin two element array with values between 0 and 1.
     * @param {Transitionable} transition object of type {duration: number, curve:
     *    f[0,1] -> [0,1] or name}. If transition is omitted, change will be
     *    instantaneous.
     * @param {Function} callback callback to call after transition completes
     * @return {StateModifier} this
     */
	function setOrigin(origin:Array<Float>, transition:Dynamic, ?callback:Void -> Void):StateModifier;

	/**
     * Set the alignment of this modifier, either statically or
     *   through a provided Transitionable.
     *
     * @method setAlign
     *
     * @param {Array.Float} align two element array with values between 0 and 1.
     * @param {Transitionable} transition object of type {duration: number, curve:
     *    f[0,1] -> [0,1] or name}. If transition is omitted, change will be
     *    instantaneous.
     * @param {Function} callback callback to call after transition completes
     * @return {StateModifier} this
     */
	function setAlign(align:Array<Float>, transition:Dynamic, ?callback:Void -> Void):StateModifier;

	/**
     * Set the size of this modifier, either statically or
     *   through a provided Transitionable.
     *
     * @method setSize
     *
     * @param {Array.Float} size two element array of [width, height]
     * @param {Transitionable} transition object of type {duration: number, curve:
     *    f[0,1] -> [0,1] or name}. If transition is omitted, change will be
     *    instantaneous.
     * @param {Function} callback callback to call after transition completes
     * @return {StateModifier} this
     */
	function setSize(size:Array<Float>, transition:Dynamic, ?callback:Void -> Void):StateModifier;

	/**
     * Set the proportions of this modifier, either statically or
     *   through a provided Transitionable.
     *
     * @method setProportions
     *
     * @param {Array.Float} proportions two element array with values between 0 and 1.
     * @param {Transitionable} transition Valid transitionable object
     * @param {Function} callback callback to call after transition completes
     * @return {StateModifier} this
     */
	function setProportions(proportions:Array<Float>, transition:Dynamic, ?callback:Void -> Void):StateModifier;

	/**
     * Stop the transition.
     *
     * @method halt
     */
	function halt():Void;

	/**
     * Get the current state of the transform matrix component.
     *
     * @method getTransform
     * @return {Object} transform provider object
     */
	function getTransform():Dynamic;

	/**
     * Get the destination state of the transform component.
     *
     * @method getFinalTransform
     * @return {Transform} transform matrix
     */
	function getFinalTransform():Transform;

	/**
     * Get the current state of the opacity component.
     *
     * @method getOpacity
     * @return {Object} opacity provider object
     */
	function getOpacity():Dynamic;

	/**
     * Get the current state of the origin component.
     *
     * @method getOrigin
     * @return {Object} origin provider object
     */
	function getOrigin():Dynamic;

	/**
     * Get the current state of the align component.
     *
     * @method getAlign
     * @return {Object} align provider object
     */
	function getAlign():Dynamic;

	/**
     * Get the current state of the size component.
     *
     * @method getSize
     * @return {Object} size provider object
     */
	function getSize():Dynamic;

	/**
     * Get the current state of the propportions component.
     *
     * @method getProportions
     * @return {Object} size provider object
     */
	function getProportions():Dynamic;
}

typedef StateModifierOptions = {
	@:optional var transform:Transform;
	@:optional var opacity:Float;
	@:optional var origin:Array<Float>;
	@:optional var align:Array<Float>;
	@:optional var size:Array<Float>;
	@:optional var proportions:Array<Float>;
}