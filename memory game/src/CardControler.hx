package src;

import src.Card;
import openfl.events.MouseEvent;

class CardControler{
	public var sameCards : Bool;

	public function new(){
	}
	
	public function compareCards(cardArray1:Array<Card>, cardArray2:Array<Card>) {
		for (i in 0...cardArray1.length){
			for (p in 0...cardArray2.length) {
			
					if (cardArray1[i].value == cardArray2[p].value && cardArray1[i].active == true && cardArray2[p].active == true){
						sameCards = true; 
					}else{
						sameCards = false;
					}
			}
		}
	}
	
	public function setAllCardsFalse(cardArray1:Array<Card>, cardArray2:Array<Card>){
		for (i in 0...cardArray1.length){
			cardArray1[i].active = false;
			cardArray2[i].active = false;
		}
	}
	
	public function displayReset(cardArray1:Array<Card>, cardArray2:Array<Card>){
			for (i in 0...cardArray1.length){
			cardArray1[i].displayCard();
			cardArray2[i].displayCard();
		}	
	}
}