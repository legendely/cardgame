package src;

import openfl.Assets;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;
import openfl.events.MouseEvent;
/**
 * ...
 * @author Marcel Stoepker
 */
class Card extends Sprite {
	// vars
	var value:Int;
	var imageName:String;
	var active:Bool;
	var sameId : Bool;

	

	public function new(v:Int,iname:String){
			super();
			value = v;
			imageName = iname; 
			// addEventListener(MouseEvent.CLICK, this.makeActionTrue);
			this.addEventListener( "click", makeActionTrue);
	}

	
	public function makeActionTrue(e:MouseEvent):Void{
		active = true;
		displayCard();
	}

	public function displayCard(){
		if (active == true){
			var cardData:BitmapData = Assets.getBitmapData( imageName );
			var card:Bitmap = new Bitmap( cardData );
			addChild(card);
		}else {
			var cardData:BitmapData = Assets.getBitmapData("img/cards/kaartback.jpg");
			var card:Bitmap = new Bitmap( cardData );
			addChild(card);
		}	
	}
}