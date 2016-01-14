package;
import openfl.display.Sprite;
/**
 * ...
 * @author Marcel Stoepker
 */
class PlayerControler{
	
	public var player1:Player = new Player(false);
	public var player2:Player = new Player(false); 
	public var playerturn:String;
	
	public function new(){
	}
	
	public function turnCheck() {
		//checks who's turn it is
		if (player1.getHisTurn()==true){
			playerturn = "player1";
		}else{
			playerturn = "player2";
		}
	}
	
	public function changePlayerTurn() {
		// changes playerturn
		turnCheck();
		if (playerturn == "player1"){
			player1.hisTurn = false;
			player2.hisTurn = true;
		}else if (playerturn == "player2"){
			player1.hisTurn = true;
			player2.hisTurn = false;
		}
	}
	
	public function addPointsToPlayer(){
	
	}
}