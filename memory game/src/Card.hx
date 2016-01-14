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
	public var value:Int;
	var imageName:String;
	public var active:Bool;

	public function new(v:Int,iname:String){
		super();
		value = v;
		imageName = iname; 
		this.addEventListener( "click", makeActionTrue);
	}

	public function makeActionTrue(e:MouseEvent):Void {
		// when a card is clicked this function will display the card again
		active = true;
		displayCard();
	}

	public function displayCard() {
		//adds pictures accoring to the state of the object.
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