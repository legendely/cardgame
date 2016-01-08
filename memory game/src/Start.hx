package src;
import openfl.display.Sprite;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.Assets;
import openfl.events.MouseEvent;

class Start extends Sprite{

	var startBool : Bool = false;
	
	public function new(){
		super();
	}
	
	public function createStartButton() {
		var startButtonData:BitmapData = Assets.getBitmapData("img/start.jpg");
		var startButton:Bitmap = new Bitmap(startButtonData);
		addChild(startButton);
	}
	
	public function start(e:MouseEvent):Void{
		startBool = true;
	}
	
	public function getStartBool(){
		return startBool;
	}
}