(function () { "use strict";
var samples = {};
samples.headerfooterlayout = {};
samples.headerfooterlayout.Main = function() {
	this._mainContext = famous.core.Engine.createContext();
	var layout = new famous.views.HeaderFooterLayout({ headerSize : 100, footerSize : 50});
	layout.header.add(new famous.core.Surface({ content : "Header", properties : { backgroundColor : "gray", lineHeight : "100px", textAlign : "center"}}));
	layout.content.add(new famous.core.Surface({ content : "Content", properties : { backgroundColor : "#fa5c4f", lineHeight : "400px", textAlign : "center"}}));
	layout.footer.add(new famous.core.Surface({ content : "Footer", properties : { backgroundColor : "gray", lineHeight : "50px", textAlign : "center"}}));
	this._mainContext.add(layout);
};
samples.headerfooterlayout.Main.main = function() {
	new samples.headerfooterlayout.Main();
};
samples.headerfooterlayout.Main.main();
})();
