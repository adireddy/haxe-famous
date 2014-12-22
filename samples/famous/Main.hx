package samples.famous;

import famous.core.Context;
import famous.core.Transform;
import famous.core.Modifier;
import famous.surfaces.ImageSurface;
import famous.core.Engine;

class Main {

	var _mainContext:Context;
	var _logo:ImageSurface;
	var _centerSpinModifier:Modifier;

	var _initialTime:Date = Date.now();

	public function new() {
		_mainContext = Engine.createContext();
		_logo = new ImageSurface({
		size: [200, 200],
		content: "http://code.famo.us/assets/famous_logo.png",
		classes: ["double-sided"]
		});

		_centerSpinModifier = new Modifier({
		origin: [0.5, 0.5],
		align: [0.5, 0.5],
		transform : function () {
			return Transform.rotateY(.002 * (Date.now().getTime() - _initialTime.getTime()));
		}
		});

		_mainContext.add(_centerSpinModifier).add(_logo);
	}

	public static function main() {
		new Main();
	}
}