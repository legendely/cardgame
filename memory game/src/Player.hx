package src;
import openfl.events.MouseEvent;
/**
 * ...
 * @author Marcel Stoepker
 */
class Player
{
	public var points : Int = 0;
	public var hisTurn : Bool;
	
	public function new(turn:Bool){

	}
	
	public function getHisTurn():Bool{
		return hisTurn;
	}
	
	public function setHisturn(){
		hisTurn = true;
	}
}