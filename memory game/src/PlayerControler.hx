package src;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;
import openfl.Assets;
import src.Player;

class PlayerControler{
	
	public var player1:Player = new Player(false);
	public var player2:Player = new Player(false);
	public var playerArray:Array<Player> = new Array();
	public var playerturn:String;
	public var winData : BitmapData;
	public var winMap : Bitmap;
	public var playerWin: Bool;
	
	public function new() {
		playerArray.push(player1);
		playerArray.push(player2);
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
	
	public function getPlayerOnTurn():Player{
		var tempvar:Int;
		
		if (player1.hisTurn = true){
			tempvar = 0;
		}else{
			tempvar = 1;
		}
		return playerArray[tempvar];
	}
	
	public function checkPlayerWin(){
		if (player1.points == 5) {
			//endGame();
			playerWin = true;
			 winData = Assets.getBitmapData("img/cards/player1.jpg");
			 winMap = new Bitmap( winData );
		}
		else if (player2.points == 5) {
			//endGame();
			playerWin = true;
			 winData = Assets.getBitmapData("img/cards/player2.jpg");
			 winMap = new Bitmap( winData );
		}
	}
}