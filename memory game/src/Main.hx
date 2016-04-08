package;

import openfl.Lib;
import openfl.display.Sprite;
import openfl.events.MouseEvent;
import openfl.Assets;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import src.Card;
import src.Start;
import src.Cardmaker;
import src.PlayerControler;
import src.CardControler;

class Main extends Sprite{
	var box : Sprite;
	var backGroundData:BitmapData; 
	var backGround:Bitmap;
	
	public function new() {
		super();
		backGroundData = Assets.getBitmapData("img/background.jpg");
		backGround = new Bitmap( backGroundData );
		addChild(backGround);
		box = new Sprite();
		addChild(box);

		var startButton : Start = new Start();
		startButton.createStartButton();
		box.addChild(startButton);
	}
	
	public function endGame(){
		box.removeChild(box);
	}
}