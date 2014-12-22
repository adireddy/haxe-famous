(function () { "use strict";
var samples = {};
samples.helloworld = {};
samples.helloworld.Main = function() {
	this._mainContext = famous.core.Engine.createContext();
	var surfaceProperties = { };
	surfaceProperties.backgroundColor = "#FF0000";
	surfaceProperties.textAlign = "center";
	surfaceProperties.padding = "5px";
	surfaceProperties.border = "2px solid #666666";
	surfaceProperties.marginTop = "50px";
	surfaceProperties.marginLeft = "50px";
	surfaceProperties.color = "#FFFFFF";
	var surfaceOptions = { };
	surfaceOptions.content = "<h3>Hi!</h3><p>I'm a surface!<br>I live inside a context.</p><p>You can add <b>HTML</b> content to me and style me with <b>CSS!</b></p>";
	surfaceOptions.size = [200,200];
	surfaceOptions.properties = surfaceProperties;
	var firstSurface = new famous.core.Surface(surfaceOptions);
	this._mainContext.add(firstSurface);
};
samples.helloworld.Main.main = function() {
	new samples.helloworld.Main();
};
samples.helloworld.Main.main();
})();
