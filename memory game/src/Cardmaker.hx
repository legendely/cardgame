package src;

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
			arrayX[i] = i * 100 + 100;
		}
	
		//makes new cards and cords, puts them in an Array
		arrayX = fisherYatesShuffle(arrayX);
		for (i in 0...10) {
				card1 = new Card(i + 1, "img/cards/kaart" + (i+1) + ".jpg",i);
				card1.displayCard();
				card1.x = arrayX[i];
				card1.y = 300;
				arrayCards1[i] = card1;
		}
		arrayX = fisherYatesShuffle(arrayX);
		for (i in 0...10){
			card2 = new Card(i + 1, "img/cards/kaart" + (i+1) + ".jpg",i+10);
				card2.displayCard();
				card2.x = arrayX[i];
				card2.y = 150;
				arrayCards2[i] = card2;
		}			
	}

	
	public function fisherYatesShuffle(myArray:Array<Int>):Array<Int> {
			// function to shuffle an array.
			var i:Int = myArray.length, j:Int, k:Int;
			while (i > 0){
			j = Std.random(i);
			k = myArray[--i];
			myArray[i] = myArray[j];
			myArray[j] = k;
			}
			return myArray;
	}
	
	//getters
	public function getArrayCards1(){
		return arrayCards1;
	}
	
	public function getArrayCards2(){
		return arrayCards2;
	}
}