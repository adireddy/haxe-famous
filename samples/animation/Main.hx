package samples.animation;

import famous.transitions.Easing;
import famous.core.Transform;
import famous.modifiers.StateModifier;
import famous.core.RenderNode;
import famous.core.Context;
import famous.core.Surface;
import famous.core.Engine;

class Main {

	var _mainContext:Context;
	var _surface:Surface;
	var _stateModifier:StateModifier;

	public function new() {
		_mainContext = Engine.createContext();

		var surface1Properties:SurfaceProperties = {};
		surface1Properties.backgroundColor = "#FA5C4F";
		surface1Properties.color = "#FFFFFF";
		surface1Properties.textAlign = "center";

		var surface1Options:SurfaceOptions = {};
		surface1Options.size = [100, 100];
		surface1Options.properties = surface1Properties;

		_surface = new Surface(surface1Options);

		_stateModifier = new StateModifier({ origin: [0.5, 0], align: [0.5, 0] });

		_mainContext.add(_stateModifier).add(_surface);

		/*stateModifier.setTransform(
			Transform.translate(100, 300, 0),
			{ duration : 2000, curve: Easing.inOutBack }
		);*/

		_stateModifier.setTransform(
			Transform.translate(0, 300, 0),
			{ duration : 1500, curve: Easing.inExpo }
		);

		_stateModifier.setTransform(
			Transform.translate(100, 300, 0),
			{ duration : 800, curve: Easing.outElastic }, _finished
		);

		_surface.on("click", _stop);
	}

	function _finished() {
		_surface.setContent("finished");
	}

	function _stop() {
		_stateModifier.halt();
		_surface.setContent("halted");
	}

	public static function main() {
		new Main();
	}
}