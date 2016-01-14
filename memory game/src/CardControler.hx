package;

import src.Card;
/**
 * ...
 * @author Marcel Stoepker
 */
class CardControler{
	public var sameCards : Bool;
	public var amountOfClicks: Int;
	
	public function new(){
		
	}
	
	public function compareCards(card1:Card,card2:Card):Bool {
		if (card1.value == card2.value){
			sameCards = true;
		}else if (card1.value != card2.value){
			sameCards = false;
		}
		return sameCards;
	}
	
	public function checkAmountOfClicks(){
		
	}
}