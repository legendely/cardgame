package;

import src.Card;
import openfl.events.MouseEvent;

class CardControler{
	public var sameCards : Bool;
	public var amountOfClicks: Int;

	public function new(){
	}
	
	public function compareCards(cardArray1:Array<Card>, cardArray2:Array<Card>) {
	checkAmountOfClicks(cardArray1,cardArray2);
		if (amountOfClicks == 2){
			for (i in 0...cardArray1.length){
				for (p in 0...cardArray2.length){
					if (cardArray1[i].value == cardArray2[p].value && cardArray1[i].active == true && cardArray2[p].active == true){
						sameCards == true; 
					}
				}
			}
		}
		else {
			sameCards == false;
		}
	}
		
	public function checkAmountOfClicks(cardArray1:Array<Card>,cardArray2:Array<Card>){
		for (i in 0...cardArray1.length){
			if (cardArray1[i].active == true){
				amountOfClicks++;
			}
			if (cardArray2[i].active == true){
				amountOfClicks++;
			}
		}
	}
	
	public function clickedSomewhere(e:MouseEvent):Void {
		
	}
	
}