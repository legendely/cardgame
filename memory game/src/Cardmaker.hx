package;

import openfl.Assets;
import openfl.events.MouseEvent;
import openfl.display.Sprite;
import openfl.Lib;
import src.Card;

class Cardmaker {	
	var card1 : Card;
	var card2 : Card;
	var arrayPath : Array<String> = new Array();
	var arrayY : Array<Int> = new Array();
	var arrayX : Array<Int> = new Array();
	public var arrayCards1 : Array<Card> = new Array();
	public var arrayCards2 : Array<Card> = new Array();
	
		
	public function new(){
		
	}
	
	public function makeCards(){
		// fills array with x coridinates
		// fills array with the locations of the pictures of the cards
		
		for (i in 0...10) {
			// +1 is because of the card names start with 1 and not 0.
			arrayX[i] = i*100+100;
		}
	

		
		
		//makes new cards and cords, puts them in an Array	
		for (i in 0...10) {
				card1 = new Card((i + 1), "img/cards/kaart" + (i+1) + ".jpg", this);
				card1.x = arrayX[i];
				card1.y = 100;
				arrayCards1[i] = card1;
	
				card2 = new Card((i + 1), "img/cards/kaart" + (i+1) + ".jpg", this);
				card2.x = arrayX[i];
				card2.y = 200;
				arrayCards2[i] = card2;
		}
		var cardCompare : CardCompare = new CardCompare();
		for (i in 0...10) {
			arrayCards1[i].setCompare(cardCompare);
			arrayCards2[i].setCompare(cardCompare);
		}
		displayCards();
	}
	
	public function displayCards(){
		for(i in 0...arrayCards1.length){
			arrayCards1[i].displayCard();
		}
		
		for(i in 0...arrayCards2.length){
			arrayCards2[i].displayCard();
		}
	}
	
	public function getArrayCards1(){
		return arrayCards1;
	}
	
	public function getArrayCards2(){
		return arrayCards2;
	}
	
	public function getAllCards(){
		return arrayCards1.concat(arrayCards2);
	}
}