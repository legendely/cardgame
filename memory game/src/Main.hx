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
		var startButton : Start = new Start();
		var cardMaker : Cardmaker = new Cardmaker();
		var player1 : Player = new Player("player1",true);
		var player2 : Player = new Player("player2", false);
		var cardArray : Array<Card> = new Array();
		
		startButton.addEventListener(MouseEvent.CLICK, startButton.start);
		startButton.createStartButton();
		box.addChild(startButton);
		addChild(box);
		
		cardMaker.makeCards();
		cardArray = cardMaker.arrayCards;
		
		for (i in 0...cardArray.length){
			box.addChild(cardArray[i]);
			addChild(box);
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