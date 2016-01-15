package;

import openfl.Lib;
import openfl.display.Sprite;
import openfl.events.MouseEvent;
import src.Card;
import src.Start;
import src.Cardmaker;
import src.PlayerControler;
import src.CardControler;

class Main extends Sprite{
	
	public function new() {
		super();
		var box : Sprite = new Sprite();
		addChild(box);

		var startButton : Start = new Start();
		startButton.createStartButton();
		box.addChild(startButton);
	}
}