(function () { "use strict";
var samples = {};
samples.animation = {};
samples.animation.Main = function() {
	this._mainContext = famous.core.Engine.createContext();
	var surface1Properties = { };
	surface1Properties.backgroundColor = "#FA5C4F";
	surface1Properties.color = "#FFFFFF";
	surface1Properties.textAlign = "center";
	var surface1Options = { };
	surface1Options.size = [100,100];
	surface1Options.properties = surface1Properties;
	this._surface = new famous.core.Surface(surface1Options);
	this._stateModifier = new famous.modifiers.StateModifier({ origin : [0.5,0], align : [0.5,0]});
	this._mainContext.add(this._stateModifier).add(this._surface);
	this._stateModifier.setTransform(famous.core.Transform.translate(0,300,0),{ duration : 1500, curve : famous.transitions.Easing.inExpo});
	this._stateModifier.setTransform(famous.core.Transform.translate(100,300,0),{ duration : 800, curve : famous.transitions.Easing.outElastic},$bind(this,this._finished));
	this._surface.on("click",$bind(this,this._stop));
};
samples.animation.Main.main = function() {
	new samples.animation.Main();
};
samples.animation.Main.prototype = {
	_finished: function() {
		this._surface.setContent("finished");
	}
	,_stop: function() {
		this._stateModifier.halt();
		this._surface.setContent("halted");
	}
};
var $_, $fid = 0;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $fid++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = function(){ return f.method.apply(f.scope, arguments); }; f.scope = o; f.method = m; o.hx__closures__[m.__id__] = f; } return f; }
samples.animation.Main.main();
})();
