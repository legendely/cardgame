package src;
import openfl.display.Sprite;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.Assets;
import openfl.events.MouseEvent;

class Start extends Sprite{

	public var startBool : Bool = false;
	var startButtonData:BitmapData;
	var startButton:Bitmap;
	
	public function new(){
		super();
	}
	
	public function createStartButton() {
		// adds the picture to this object
		startButtonData = Assets.getBitmapData("img/start.jpg");
		startButton = new Bitmap(startButtonData);
		addChild(startButton);
	}
	
	public function start(e:MouseEvent):Void{
		// setting start true and deletes the button
		startBool = true;
		deleteStartButton();
	}
	
	public function getStartBool(){
		return startBool;
	}
	
	public function deleteStartButton() {
		// deletes startbutton	
		removeChild(startButton);
	}
}