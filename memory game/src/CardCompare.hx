package;
import src.Card;

/**
 * ...
 * @author ...
 */
class CardCompare
{
	var inPlay : Array<Card>;
	public function new() 
	{
		inPlay = new Array<Card>();
	}
	
	public function compareCards(c: Card):Bool{
		for (i in 0...inPlay.length) {
			if (inPlay[i].getValue() == c.getValue()) {
				flushInPlay();
				return true;
			}
		}
		flushInPlay();
		return false;
	}
	
	public function addInplay(c:Card){
		inPlay.push(c);
	}
	
	public function flushInPlay(){
		inPlay = new Array<Card>();
	}
	
	public function amountInPlay(){
		return inPlay.length;
	}
	
	public function getInPlay(){
		return inPlay;
	}
	
}