[![No Maintenance Intended](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)
haxe-famous ![Build Status](https://travis-ci.org/adireddy/haxe-famous.svg?branch=master) [![Built with Grunt](https://cdn.gruntjs.com/builtwith.png)](http://gruntjs.com/)
=========

![haxe famous logo](https://raw.githubusercontent.com/adireddy/haxe-famous/master/logo.png)

Externs of famo.us for Haxe - Create smooth, complex UIs for any screen. Includes an open source 3D layout engine fully integrated with a 3D physics animation engine that can render to DOM, Canvas, or WebGL.

### Installation ###

``coming soon``

### Demos ###

* [Hello World](http://adireddy.github.io/demos/haxe-famous/helloworld.html)
* [Famous](http://adireddy.github.io/demos/haxe-famous/famous.html)
* [Animation](http://adireddy.github.io/demos/haxe-famous/animation.html)
* [Positioning](http://adireddy.github.io/demos/haxe-famous/positioning.html)

Look at the `samples` folder for the source code of above examples.

### Issues ###

Found any bug? Please create a new [issue](https://github.com/adireddy/haxe-famous/issues/new).

### Usage ###

```haxe

package ;

import famous.core.Context;
import famous.core.Surface;
import famous.core.Modifier;
import famous.core.Engine;

class Main {

	var _mainContext:Context;
	var _centerSpinModifier:Modifier;

	var _initialTime:Date = Date.now();

	public function new() {
		_mainContext = Engine.createContext();

		var surfaceProperties:SurfaceProperties = {};
		surfaceProperties.backgroundColor = "#FF0000";
		surfaceProperties.textAlign = "center";
		surfaceProperties.padding = "5px";
		surfaceProperties.border = "2px solid #666666";
		surfaceProperties.marginTop = "50px";
		surfaceProperties.marginLeft = "50px";
		surfaceProperties.color = "#FFFFFF";

		var surfaceOptions:SurfaceOptions = {};
		surfaceOptions.size = [200, 200];
		surfaceOptions.properties = surfaceProperties;

		var firstSurface:Surface = new Surface(surfaceOptions);
		firstSurface.setContent("<h1>HELLO WORLD</h1>");

		_mainContext.add(firstSurface);
	}

	public static function main() {
		new Main();
	}
}
```

### Licensing information ###

<a rel="license" href="http://opensource.org/licenses/MIT">
<img alt="MIT license" height="40" src="http://upload.wikimedia.org/wikipedia/commons/c/c3/License_icon-mit.svg" /></a>

This content is released under the [MIT](http://opensource.org/licenses/MIT) License.

[Famo.us](http://famo.us) client-side development package is licensed under the [Mozilla public license version 2.0](http://www.mozilla.org/MPL/2.0/).

Contact [license@famo.us](mailto:license@famo.us) for further inquiries.
