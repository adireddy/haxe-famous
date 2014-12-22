package samples.positioning;

import js.Browser;
import famous.modifiers.StateModifier;
import famous.core.RenderNode;
import famous.core.Context;
import famous.core.Surface;
import famous.core.Engine;

class Main {

	var _mainContext:Context;

	public function new() {
		_mainContext = Engine.createContext();

		// Light Square
		var lightSquareProperties:SurfaceProperties = {};
		lightSquareProperties.backgroundColor = "#AAAAAA";
		lightSquareProperties.color = "#000000";
		lightSquareProperties.textAlign = "center";

		var lightSquareOptions:SurfaceOptions = {};
		lightSquareOptions.content = "Light Square";
		lightSquareOptions.size = [100, 100];
		lightSquareOptions.properties = lightSquareProperties;

		var lightSquare:Surface = new Surface(lightSquareOptions);

		//Dark Square
		var darkSquareProperties:SurfaceProperties = {};
		darkSquareProperties.backgroundColor = "#666666";
		darkSquareProperties.color = "#DDDDDD";
		darkSquareProperties.textAlign = "center";

		var darkSquareOptions:SurfaceOptions = {};
		darkSquareOptions.content = "Dark Square";
		darkSquareOptions.size = [100, 100];
		darkSquareOptions.properties = darkSquareProperties;

		var darkSquare:Surface = new Surface(darkSquareOptions);

		// Center Circle
		var centerCircleProperties:SurfaceProperties = {};
		centerCircleProperties.border = "1px solid #DDDDDD";
		centerCircleProperties.borderRadius = "7px";

		var centerCircleOptions:SurfaceOptions = {};
		centerCircleOptions.size = [15, 15];
		centerCircleOptions.properties = centerCircleProperties;

		var centerCircle:Surface = new Surface(centerCircleOptions);

		var horizontalRule:Surface = new Surface({ size: [Browser.window.innerWidth, 1], properties: { backgroundColor: "#FFFFFF" } });
		var verticalRule = new Surface({ size: [1, Browser.window.innerHeight], properties: { backgroundColor: "#FFFFFF" } });

		var originModifier = new StateModifier({ origin: [0.5, 0.5], align: [0.5, 0.5] });
		var alignModifier = new StateModifier({ align: [0.5, 0.5] });
		var alignOriginModifier = new StateModifier({ align: [0.5, 0.5], origin: [1, 1] });

		_mainContext.add(alignModifier).add(lightSquare);
		_mainContext.add(alignOriginModifier).add(darkSquare);

		var node = _mainContext.add(originModifier);
		node.add(verticalRule);
		node.add(horizontalRule);
		node.add(centerCircle);
	}

	public static function main() {
		new Main();
	}
}