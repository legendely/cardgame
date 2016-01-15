package src;
import openfl.display.Sprite;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.Assets;
import openfl.events.MouseEvent;

class Start extends Sprite{

	public var cardMaker : Cardmaker = new Cardmaker();
	var cardArray1 : Array<Card> = new Array();
	var cardArray2 : Array<Card> = new Array();
	var playerControler :PlayerControler = new PlayerControler();
	var cardControler : CardControler = new CardControler();
	
	var startButtonData:BitmapData;
	var startButton:Bitmap;
	var tempInt1 : Int;
	var tempInt2 : Int;
	
	public function new(){
		super();
		this.addEventListener( "click", start);
	}
	
	//** start button section **
	public function createStartButton() {
		// adds the picture to this object
		startButtonData = Assets.getBitmapData("img/start.jpg");
		startButton = new Bitmap(startButtonData);
		addChild(startButton);
	}
	
	public function deleteStartButton() {
		// deletes startbutton
		this.removeEventListener("click", start);
		removeChild(startButton);
	}
	//** start button section **
	
	
	public function startCards(){
		// makes cards and puts the cards in arrays
		cardMaker.makeCards();
		cardArray1 = cardMaker.getArrayCards1();
		cardArray2 = cardMaker.getArrayCards2();
		addeventListeners();
		// adds all the cards created by cardmaker to this object;
		for (i in 0...cardArray1.length) {
			this.addChild(cardArray1[i]);
			this.addChild(cardArray2[i]);
		}
		
	}
	
	public function start(e:MouseEvent):Void{
		// setting start true and deletes the button
		deleteStartButton();
		startCards();
		
	}
	
	public function cardDeleter() {
		// will delete the cards where the values are the same
			this.removeChild(cardArray1[tempInt1]);
			this.removeChild(cardArray2[tempInt2]);
	}
	
	public function cardChecker() {
		// gets the values of the place in the array which cards have to be deleted
		// for function cardDeleter().
		for (i in 0...cardArray1.length){
			if (cardArray1[i].active == true){
				tempInt1 = i; 
			}
			if (cardArray2[i].active == true){
				tempInt2 = i;
			}
		}
	}
	
	public function addeventListeners(){
		for (i in 0...cardArray1.length) {
			cardArray1[i].addEventListener("click", cardArray1[i].makeActionTrue);
			cardArray2[i].addEventListener("click", cardArray2[i].makeActionTrue);
		}
	}
	
	public function afterCardsClicked(){
		cardControler.compareCards(cardArray1,cardArray2);
		if (cardControler.sameCards == true){
			playerControler.getPlayerOnTurn().points++;
			playerControler.changePlayerTurn();
			cardDeleter();
			// sets bitmap and bitmapdata if player won.
			playerControler.checkPlayerWin();
			// a player wins
			if (playerControler.playerWin == true){
				playerWins();
			}
			
			cardControler.setAllCardsFalse(cardArray1, cardArray2);
			cardControler.displayReset(cardArray1, cardArray2);
		}
		else{
			playerControler.changePlayerTurn();
			cardControler.setAllCardsFalse(cardArray1, cardArray2);
			cardControler.displayReset(cardArray1, cardArray2);
		}
	}
	
	public function playerWins() {
		this.addChild(playerControler.winMap);
	}
}