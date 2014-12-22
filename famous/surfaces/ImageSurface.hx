package famous.surfaces;

import famous.core.Surface;

@:native("famous.surfaces.ImageSurface")
extern class ImageSurface extends Surface {

	/**
     * A surface containing image content.
     *   This extends the Surface class.
     *
     * @class ImageSurface
     *
     * @extends Surface
     * @constructor
     * @param {Object} [options] overrides of default options
     */
	function new(?options:Dynamic);
}