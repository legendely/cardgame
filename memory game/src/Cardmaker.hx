package;

import openfl.Assets;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.events.MouseEvent;
import openfl.display.Sprite;
import openfl.Lib;
import src.Card;

class Cardmaker {	
	var card : Card;
	var arrayPath : Array<String> = new Array();
	var arrayY : Array<Int> = new Array();
	var arrayX : Array<Int> = new Array();
	public var arrayCards : Array<Card> = new Array();
	var box : Sprite = new Sprite();
	
		
	public function new(){
		
	}
	
	public function makeCards(){
		// fills array with x coridinates
		// fills array with the locations of the pictures of the cards
		for (p in 0...2){
			for (i in 0...10) {
				// +1 is because of the card names start with 1 and not 0.
				arrayPath[i] = "img/cards/kaart" + i+1 + ".jpg";
			}
			for (i in 0...10){
				arrayX[i] = i*100+100;
			}
		}
		
		for (i in 0...2){
			arrayY[i] = i * 120;
		}
		
		//makes new cards and cords, puts them in an Array	
		for (i in 1...arrayPath.length) {
			if (i >= (arrayPath.length/2)){
				card = new Card(i, arrayPath[i]);
				card.displayCard();
				card.x = arrayX[i];
				card.y = arrayY[2];
				arrayCards[i] = card;
				
			}else {
				card = new Card(i, arrayPath[i]);
				card.displayCard();
				card.x = arrayX[i];
				card.y = arrayY[1];
				arrayCards[i] = card;
			}
			

			//card2.addEventListener(MouseEvent.CLICK, card2.makeActionTrue);
			//card2.addEventListener(MouseEvent.CLICK, player1.addPlayerClick);
			//card2.addEventListener(MouseEvent.CLICK, card2.checkCardid);
			
			//card1.addEventListener(MouseEvent.CLICK, card1.makeActionTrue);
			//card1.addEventListener(MouseEvent.CLICK, player1.addPlayerClick);
			//card1.addEventListener(MouseEvent.CLICK, card1.checkCardid);
			

		}
	}
	
	public function getArrayCards(){
		return arrayCards;
	}
}