package;
import openfl.events.MouseEvent;
/**
 * ...
 * @author Marcel Stoepker
 */
class Player
{
	public var points : Int;
	public var name : String;
	public var hisTurn : Bool;
	public var otherPlayerTurn : Bool;
	public var amountOfClicks: Int;
	
	public function new(name:String,turn:Bool){
		hisTurn = turn;
	}
	
	public function addPlayerClick(e:MouseEvent):Void {
		if (hisTurn == true ){
			amountOfClicks++;
			if (amountOfClicks == 2){
				
			}
		}
	}
	
	public function getHisTurn():Bool{
		return hisTurn;
	}
	
	public function setHisturn(){
		hisTurn = true;
	}
}