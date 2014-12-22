package samples.helloworld;

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
		surfaceOptions.content = "<h3>Hi!</h3><p>I'm a surface!<br>I live inside a context.</p><p>You can add <b>HTML</b> content to me and style me with <b>CSS!</b></p>";
		surfaceOptions.size = [200, 200];
		surfaceOptions.properties = surfaceProperties;

		var firstSurface:Surface = new Surface(surfaceOptions);
		//firstSurface.setContent('<h1>HELLO WORLD</h1>');

		_mainContext.add(firstSurface);
	}

	public static function main() {
		new Main();
	}
}