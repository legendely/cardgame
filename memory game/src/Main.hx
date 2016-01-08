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
		var startButton : Start = new Start();
		var cardMaker : Cardmaker = new Cardmaker();
		//var player1 : Player = new Player("player1",true);
		//var player2 : Player = new Player("player2", false);
		var cardArray1 : Array<Card> = new Array();
		var cardArray2 : Array<Card> = new Array();
		
		//startButton.addEventListener(MouseEvent.CLICK, startButton.start);
		//startButton.createStartButton();
		//box.addChild(startButton);
		
		// gets the cards from the array and adds them to box.
		cardMaker.makeCards();
		cardArray1 = cardMaker.getArrayCards1();
		cardArray2 = cardMaker.getArrayCards2();
		
		for (i in 0...cardArray1.length) {
			cardArray1[i].addEventListener(MouseEvent.CLICK, cardArray1[i].makeActionTrue);
			cardArray2[i].addEventListener(MouseEvent.CLICK, cardArray2[i].makeActionTrue);
			box.addChild(cardArray1[i]);
			box.addChild(cardArray2[i]);
		}
	}
	
	public function fisherYatesShuffle(myArray:Array<Int>):Array<Int> {
	
			var i:Int = myArray.length, j:Int, k:Int;
			while (i > 0){
			j = Std.random(i);
			k = myArray[--i];
			myArray[i] = myArray[j];
			myArray[j] = k;
			}
			return myArray;
	}
}