package src;

import openfl.Assets;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;
import CardCompare;
import Cardmaker;
import openfl.events.MouseEvent;
/**
 * ...
 * @author Marcel Stoepker
 */
class Card extends Sprite {
	// vars
	var value:Int;
	var imageName:String;
	var status:Int;
	var sameId : Bool;
	var compare : CardCompare;
	var maker : Cardmaker;

	

	public function new(v:Int, iname:String, m:Cardmaker) {	
			super();
			maker = m;
			status = 0;
			value = v;
			imageName = iname; 
			addEventListener(MouseEvent.CLICK, this.handleClick);
			//this.addEventListener( "click", handleClick());
	}

	
	public function handleClick(e:MouseEvent):Void{
		if (status == 0) {
			compare.addInplay(this);
			setStatus(1);
		} else if (status == 1){
			if(compare.compareCards(this)){
				setStatus(2);
			} else {
				setStatus(0);
			}
		}
		if(compare.amountInPlay() > 1){
			var cards : Array<Card> = maker.getAllCards();
			for (i in 0...cards.length) {
				var inPlay : Array<Card> = compare.getInPlay();
				for(i in 0... inPlay.length){
					if (cards[i].getValue() == inPlay[i].getValue()) {
						cards[i].setStatus(2);
					} else {
						cards[i].setStatus(0);
					}
				}
			}
		}
		maker.displayCards();
	}

	public function displayCard(){
		if (status == 2) {
			var cardData:BitmapData = Assets.getBitmapData( "img/cards/outofplay.jpg" );
			var card:Bitmap = new Bitmap( cardData );
			addChild(card);  
		}	else if (status == 1) {
			compare.addInplay(this);
			var cardData:BitmapData = Assets.getBitmapData( imageName );
			var card:Bitmap = new Bitmap( cardData );
			addChild(card);
		} else if (status == 0) {
			var cardData:BitmapData = Assets.getBitmapData("img/cards/kaartback.jpg");
			var card:Bitmap = new Bitmap( cardData );
			addChild(card);
		}	
	}
	
	public function getValue(){
		return value;
	}
	
	public function setStatus(s: Int){
		status = s;
	}
	
	public function getStatus(){
		return status;
	}
	
	public function setCompare(com:CardCompare){
		compare = com;
	}
}