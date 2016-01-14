package;

import openfl.Lib;
import src.Card;
import openfl.display.Sprite;
import openfl.events.MouseEvent;
import src.Start;

class Main extends Sprite{
	
	public function new() {
		super();
		var box : Sprite = new Sprite();
		addChild(box);
		
		var cardControler : CardControler = new CardControler();
		var playerControler : PlayerControler = new PlayerControler();
		var startButton : Start = new Start();
		var cardMaker : Cardmaker = new Cardmaker();
		var cardArray1 : Array<Card> = new Array();
		var cardArray2 : Array<Card> = new Array();
		
		//adds actionlistner and adds it to box;
		startButton.addEventListener(MouseEvent.CLICK, startButton.start);
		startButton.createStartButton();
		box.addChild(startButton);
		
		//if (startButton.startBool == true){
		// makes cards and puts the cards in arrays
		cardMaker.makeCards();
		cardArray1 = cardMaker.getArrayCards1();
		cardArray2 = cardMaker.getArrayCards2();
		
		box.addEventListener(MouseEvent.CLICK, cardControler.clickedSomewhere);
		// adds all the cards created by cardmaker to box;
		for (i in 0...cardArray1.length) {
			box.addChild(cardArray1[i]);
			box.addChild(cardArray2[i]);
		}
		
		
		//}
	}
}