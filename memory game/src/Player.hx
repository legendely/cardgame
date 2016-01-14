package;
import openfl.events.MouseEvent;
/**
 * ...
 * @author Marcel Stoepker
 */
class Player
{
	public var points : Int;
	public var hisTurn : Bool;
	public var amountOfClicks: Int;
	
	public function new(turn:Bool){

	}
	
	public function addPlayerClick(e:MouseEvent):Void {
		amountOfClicks++;
	}
	
	
	public function getHisTurn():Bool{
		return hisTurn;
	}
	
	public function setHisturn(){
		hisTurn = true;
	}
}