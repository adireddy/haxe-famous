(function () { "use strict";
var samples = {};
samples.famous = {};
samples.famous.Main = function() {
	this._initialTime = new Date();
	var _g = this;
	this._mainContext = famous.core.Engine.createContext();
	this._logo = new famous.surfaces.ImageSurface({ size : [200,200], content : "http://code.famo.us/assets/famous_logo.png", classes : ["double-sided"]});
	this._centerSpinModifier = new famous.core.Modifier({ origin : [0.5,0.5], align : [0.5,0.5], transform : function() {
		return famous.core.Transform.rotateY(.002 * (new Date().getTime() - _g._initialTime.getTime()));
	}});
	this._mainContext.add(this._centerSpinModifier).add(this._logo);
};
samples.famous.Main.main = function() {
	new samples.famous.Main();
};
samples.famous.Main.main();
})();
