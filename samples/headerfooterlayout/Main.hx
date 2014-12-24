package samples.headerfooterlayout;

import famous.views.HeaderFooterLayout;
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

		var layout = new HeaderFooterLayout({ headerSize: 100, footerSize: 50});

		layout.header.add(new Surface({
		content: "Header",
		properties: {
		backgroundColor: 'gray',
		lineHeight: "100px",
		textAlign: "center"
		}
		}));

		layout.content.add(new Surface({
		content: "Content",
		properties: {
		backgroundColor: '#fa5c4f',
		lineHeight: '400px',
		textAlign: "center"
		}
		}));

		layout.footer.add(new Surface({
		content: "Footer",
		properties: {
		backgroundColor: 'gray',
		lineHeight: "50px",
		textAlign: "center"
		}
		}));

		_mainContext.add(layout);
	}

	public static function main() {
		new Main();
	}
}