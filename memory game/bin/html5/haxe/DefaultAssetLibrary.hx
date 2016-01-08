package;


import haxe.Timer;
import haxe.Unserializer;
import lime.app.Future;
import lime.app.Preloader;
import lime.app.Promise;
import lime.audio.AudioSource;
import lime.audio.openal.AL;
import lime.audio.AudioBuffer;
import lime.graphics.Image;
import lime.net.HTTPRequest;
import lime.system.CFFI;
import lime.text.Font;
import lime.utils.Bytes;
import lime.utils.UInt8Array;
import lime.Assets;

#if sys
import sys.FileSystem;
#end

#if flash
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Loader;
import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.events.ProgressEvent;
import flash.media.Sound;
import flash.net.URLLoader;
import flash.net.URLRequest;
#end


class DefaultAssetLibrary extends AssetLibrary {
	
	
	public var className (default, null) = new Map <String, Dynamic> ();
	public var path (default, null) = new Map <String, String> ();
	public var type (default, null) = new Map <String, AssetType> ();
	
	private var lastModified:Float;
	private var timer:Timer;
	
	
	public function new () {
		
		super ();
		
		#if (openfl && !flash)
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		#end
		
		#if flash
		
		className.set ("img/cards/cards.zip.zip", __ASSET__img_cards_cards_zip_zip);
		type.set ("img/cards/cards.zip.zip", AssetType.BINARY);
		className.set ("img/cards/kaart1.jpg", __ASSET__img_cards_kaart1_jpg);
		type.set ("img/cards/kaart1.jpg", AssetType.IMAGE);
		className.set ("img/cards/kaart10.jpg", __ASSET__img_cards_kaart10_jpg);
		type.set ("img/cards/kaart10.jpg", AssetType.IMAGE);
		className.set ("img/cards/kaart11.jpg", __ASSET__img_cards_kaart11_jpg);
		type.set ("img/cards/kaart11.jpg", AssetType.IMAGE);
		className.set ("img/cards/kaart12.jpg", __ASSET__img_cards_kaart12_jpg);
		type.set ("img/cards/kaart12.jpg", AssetType.IMAGE);
		className.set ("img/cards/kaart13.jpg", __ASSET__img_cards_kaart13_jpg);
		type.set ("img/cards/kaart13.jpg", AssetType.IMAGE);
		className.set ("img/cards/kaart14.jpg", __ASSET__img_cards_kaart14_jpg);
		type.set ("img/cards/kaart14.jpg", AssetType.IMAGE);
		className.set ("img/cards/kaart15.jpg", __ASSET__img_cards_kaart15_jpg);
		type.set ("img/cards/kaart15.jpg", AssetType.IMAGE);
		className.set ("img/cards/kaart16.jpg", __ASSET__img_cards_kaart16_jpg);
		type.set ("img/cards/kaart16.jpg", AssetType.IMAGE);
		className.set ("img/cards/kaart17.jpg", __ASSET__img_cards_kaart17_jpg);
		type.set ("img/cards/kaart17.jpg", AssetType.IMAGE);
		className.set ("img/cards/kaart18.jpg", __ASSET__img_cards_kaart18_jpg);
		type.set ("img/cards/kaart18.jpg", AssetType.IMAGE);
		className.set ("img/cards/kaart19.jpg", __ASSET__img_cards_kaart19_jpg);
		type.set ("img/cards/kaart19.jpg", AssetType.IMAGE);
		className.set ("img/cards/kaart2.jpg", __ASSET__img_cards_kaart2_jpg);
		type.set ("img/cards/kaart2.jpg", AssetType.IMAGE);
		className.set ("img/cards/kaart20.jpg", __ASSET__img_cards_kaart20_jpg);
		type.set ("img/cards/kaart20.jpg", AssetType.IMAGE);
		className.set ("img/cards/kaart3.jpg", __ASSET__img_cards_kaart3_jpg);
		type.set ("img/cards/kaart3.jpg", AssetType.IMAGE);
		className.set ("img/cards/kaart4.jpg", __ASSET__img_cards_kaart4_jpg);
		type.set ("img/cards/kaart4.jpg", AssetType.IMAGE);
		className.set ("img/cards/kaart5.jpg", __ASSET__img_cards_kaart5_jpg);
		type.set ("img/cards/kaart5.jpg", AssetType.IMAGE);
		className.set ("img/cards/kaart6.jpg", __ASSET__img_cards_kaart6_jpg);
		type.set ("img/cards/kaart6.jpg", AssetType.IMAGE);
		className.set ("img/cards/kaart7.jpg", __ASSET__img_cards_kaart7_jpg);
		type.set ("img/cards/kaart7.jpg", AssetType.IMAGE);
		className.set ("img/cards/kaart8.jpg", __ASSET__img_cards_kaart8_jpg);
		type.set ("img/cards/kaart8.jpg", AssetType.IMAGE);
		className.set ("img/cards/kaart9.jpg", __ASSET__img_cards_kaart9_jpg);
		type.set ("img/cards/kaart9.jpg", AssetType.IMAGE);
		className.set ("img/cards/kaartback.jpg", __ASSET__img_cards_kaartback_jpg);
		type.set ("img/cards/kaartback.jpg", AssetType.IMAGE);
		className.set ("img/cards/set.png", __ASSET__img_cards_set_png);
		type.set ("img/cards/set.png", AssetType.IMAGE);
		className.set ("img/openfl.svg", __ASSET__img_openfl_svg);
		type.set ("img/openfl.svg", AssetType.TEXT);
		className.set ("img/start.jpg", __ASSET__img_start_jpg);
		type.set ("img/start.jpg", AssetType.IMAGE);
		
		
		#elseif html5
		
		var id;
		id = "img/cards/cards.zip.zip";
		path.set (id, id);
		
		type.set (id, AssetType.BINARY);
		id = "img/cards/kaart1.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cards/kaart10.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cards/kaart11.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cards/kaart12.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cards/kaart13.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cards/kaart14.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cards/kaart15.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cards/kaart16.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cards/kaart17.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cards/kaart18.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cards/kaart19.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cards/kaart2.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cards/kaart20.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cards/kaart3.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cards/kaart4.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cards/kaart5.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cards/kaart6.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cards/kaart7.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cards/kaart8.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cards/kaart9.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cards/kaartback.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/cards/set.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "img/openfl.svg";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "img/start.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		
		
		var assetsPrefix = null;
		if (ApplicationMain.config != null && Reflect.hasField (ApplicationMain.config, "assetsPrefix")) {
			assetsPrefix = ApplicationMain.config.assetsPrefix;
		}
		if (assetsPrefix != null) {
			for (k in path.keys()) {
				path.set(k, assetsPrefix + path[k]);
			}
		}
		
		#else
		
		#if (windows || mac || linux)
		
		var useManifest = false;
		
		className.set ("img/cards/cards.zip.zip", __ASSET__img_cards_cards_zip_zip);
		type.set ("img/cards/cards.zip.zip", AssetType.BINARY);
		
		className.set ("img/cards/kaart1.jpg", __ASSET__img_cards_kaart1_jpg);
		type.set ("img/cards/kaart1.jpg", AssetType.IMAGE);
		
		className.set ("img/cards/kaart10.jpg", __ASSET__img_cards_kaart10_jpg);
		type.set ("img/cards/kaart10.jpg", AssetType.IMAGE);
		
		className.set ("img/cards/kaart11.jpg", __ASSET__img_cards_kaart11_jpg);
		type.set ("img/cards/kaart11.jpg", AssetType.IMAGE);
		
		className.set ("img/cards/kaart12.jpg", __ASSET__img_cards_kaart12_jpg);
		type.set ("img/cards/kaart12.jpg", AssetType.IMAGE);
		
		className.set ("img/cards/kaart13.jpg", __ASSET__img_cards_kaart13_jpg);
		type.set ("img/cards/kaart13.jpg", AssetType.IMAGE);
		
		className.set ("img/cards/kaart14.jpg", __ASSET__img_cards_kaart14_jpg);
		type.set ("img/cards/kaart14.jpg", AssetType.IMAGE);
		
		className.set ("img/cards/kaart15.jpg", __ASSET__img_cards_kaart15_jpg);
		type.set ("img/cards/kaart15.jpg", AssetType.IMAGE);
		
		className.set ("img/cards/kaart16.jpg", __ASSET__img_cards_kaart16_jpg);
		type.set ("img/cards/kaart16.jpg", AssetType.IMAGE);
		
		className.set ("img/cards/kaart17.jpg", __ASSET__img_cards_kaart17_jpg);
		type.set ("img/cards/kaart17.jpg", AssetType.IMAGE);
		
		className.set ("img/cards/kaart18.jpg", __ASSET__img_cards_kaart18_jpg);
		type.set ("img/cards/kaart18.jpg", AssetType.IMAGE);
		
		className.set ("img/cards/kaart19.jpg", __ASSET__img_cards_kaart19_jpg);
		type.set ("img/cards/kaart19.jpg", AssetType.IMAGE);
		
		className.set ("img/cards/kaart2.jpg", __ASSET__img_cards_kaart2_jpg);
		type.set ("img/cards/kaart2.jpg", AssetType.IMAGE);
		
		className.set ("img/cards/kaart20.jpg", __ASSET__img_cards_kaart20_jpg);
		type.set ("img/cards/kaart20.jpg", AssetType.IMAGE);
		
		className.set ("img/cards/kaart3.jpg", __ASSET__img_cards_kaart3_jpg);
		type.set ("img/cards/kaart3.jpg", AssetType.IMAGE);
		
		className.set ("img/cards/kaart4.jpg", __ASSET__img_cards_kaart4_jpg);
		type.set ("img/cards/kaart4.jpg", AssetType.IMAGE);
		
		className.set ("img/cards/kaart5.jpg", __ASSET__img_cards_kaart5_jpg);
		type.set ("img/cards/kaart5.jpg", AssetType.IMAGE);
		
		className.set ("img/cards/kaart6.jpg", __ASSET__img_cards_kaart6_jpg);
		type.set ("img/cards/kaart6.jpg", AssetType.IMAGE);
		
		className.set ("img/cards/kaart7.jpg", __ASSET__img_cards_kaart7_jpg);
		type.set ("img/cards/kaart7.jpg", AssetType.IMAGE);
		
		className.set ("img/cards/kaart8.jpg", __ASSET__img_cards_kaart8_jpg);
		type.set ("img/cards/kaart8.jpg", AssetType.IMAGE);
		
		className.set ("img/cards/kaart9.jpg", __ASSET__img_cards_kaart9_jpg);
		type.set ("img/cards/kaart9.jpg", AssetType.IMAGE);
		
		className.set ("img/cards/kaartback.jpg", __ASSET__img_cards_kaartback_jpg);
		type.set ("img/cards/kaartback.jpg", AssetType.IMAGE);
		
		className.set ("img/cards/set.png", __ASSET__img_cards_set_png);
		type.set ("img/cards/set.png", AssetType.IMAGE);
		
		className.set ("img/openfl.svg", __ASSET__img_openfl_svg);
		type.set ("img/openfl.svg", AssetType.TEXT);
		
		className.set ("img/start.jpg", __ASSET__img_start_jpg);
		type.set ("img/start.jpg", AssetType.IMAGE);
		
		
		if (useManifest) {
			
			loadManifest ();
			
			if (Sys.args ().indexOf ("-livereload") > -1) {
				
				var path = FileSystem.fullPath ("manifest");
				lastModified = FileSystem.stat (path).mtime.getTime ();
				
				timer = new Timer (2000);
				timer.run = function () {
					
					var modified = FileSystem.stat (path).mtime.getTime ();
					
					if (modified > lastModified) {
						
						lastModified = modified;
						loadManifest ();
						
						onChange.dispatch ();
						
					}
					
				}
				
			}
			
		}
		
		#else
		
		loadManifest ();
		
		#end
		#end
		
	}
	
	
	public override function exists (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var assetType = this.type.get (id);
		
		if (assetType != null) {
			
			if (assetType == requestedType || ((requestedType == SOUND || requestedType == MUSIC) && (assetType == MUSIC || assetType == SOUND))) {
				
				return true;
				
			}
			
			#if flash
			
			if (requestedType == BINARY && (assetType == BINARY || assetType == TEXT || assetType == IMAGE)) {
				
				return true;
				
			} else if (requestedType == TEXT && assetType == BINARY) {
				
				return true;
				
			} else if (requestedType == null || path.exists (id)) {
				
				return true;
				
			}
			
			#else
			
			if (requestedType == BINARY || requestedType == null || (assetType == BINARY && requestedType == TEXT)) {
				
				return true;
				
			}
			
			#end
			
		}
		
		return false;
		
	}
	
	
	public override function getAudioBuffer (id:String):AudioBuffer {
		
		#if flash
		
		var buffer = new AudioBuffer ();
		buffer.src = cast (Type.createInstance (className.get (id), []), Sound);
		return buffer;
		
		#elseif html5
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		if (className.exists(id)) return AudioBuffer.fromBytes (cast (Type.createInstance (className.get (id), []), Bytes));
		else return AudioBuffer.fromFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getBytes (id:String):Bytes {
		
		#if flash
		
		switch (type.get (id)) {
			
			case TEXT, BINARY:
				
				return Bytes.ofData (cast (Type.createInstance (className.get (id), []), flash.utils.ByteArray));
			
			case IMAGE:
				
				var bitmapData = cast (Type.createInstance (className.get (id), []), BitmapData);
				return Bytes.ofData (bitmapData.getPixels (bitmapData.rect));
			
			default:
				
				return null;
			
		}
		
		return cast (Type.createInstance (className.get (id), []), Bytes);
		
		#elseif html5
		
		var loader = Preloader.loaders.get (path.get (id));
		
		if (loader == null) {
			
			return null;
			
		}
		
		var bytes = loader.bytes;
		
		if (bytes != null) {
			
			return bytes;
			
		} else {
			
			return null;
		}
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Bytes);
		else return Bytes.readFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getFont (id:String):Font {
		
		#if flash
		
		var src = Type.createInstance (className.get (id), []);
		
		var font = new Font (src.fontName);
		font.src = src;
		return font;
		
		#elseif html5
		
		return cast (Type.createInstance (className.get (id), []), Font);
		
		#else
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			return cast (Type.createInstance (fontClass, []), Font);
			
		} else {
			
			return Font.fromFile (path.get (id));
			
		}
		
		#end
		
	}
	
	
	public override function getImage (id:String):Image {
		
		#if flash
		
		return Image.fromBitmapData (cast (Type.createInstance (className.get (id), []), BitmapData));
		
		#elseif html5
		
		return Image.fromImageElement (Preloader.images.get (path.get (id)));
		
		#else
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			return cast (Type.createInstance (fontClass, []), Image);
			
		} else {
			
			return Image.fromFile (path.get (id));
			
		}
		
		#end
		
	}
	
	
	/*public override function getMusic (id:String):Dynamic {
		
		#if flash
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif openfl_html5
		
		//var sound = new Sound ();
		//sound.__buffer = true;
		//sound.load (new URLRequest (path.get (id)));
		//return sound;
		return null;
		
		#elseif html5
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		return null;
		//if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Sound);
		//else return new Sound (new URLRequest (path.get (id)), null, true);
		
		#end
		
	}*/
	
	
	public override function getPath (id:String):String {
		
		//#if ios
		
		//return SystemPath.applicationDirectory + "/assets/" + path.get (id);
		
		//#else
		
		return path.get (id);
		
		//#end
		
	}
	
	
	public override function getText (id:String):String {
		
		#if html5
		
		var loader = Preloader.loaders.get (path.get (id));
		
		if (loader == null) {
			
			return null;
			
		}
		
		var bytes = loader.bytes;
		
		if (bytes != null) {
			
			return bytes.getString (0, bytes.length);
			
		} else {
			
			return null;
		}
		
		#else
		
		var bytes = getBytes (id);
		
		if (bytes == null) {
			
			return null;
			
		} else {
			
			return bytes.getString (0, bytes.length);
			
		}
		
		#end
		
	}
	
	
	public override function isLocal (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		
		#if flash
		
		//if (requestedType != AssetType.MUSIC && requestedType != AssetType.SOUND) {
			
			return className.exists (id);
			
		//}
		
		#end
		
		return true;
		
	}
	
	
	public override function list (type:String):Array<String> {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var items = [];
		
		for (id in this.type.keys ()) {
			
			if (requestedType == null || exists (id, type)) {
				
				items.push (id);
				
			}
			
		}
		
		return items;
		
	}
	
	
	public override function loadAudioBuffer (id:String):Future<AudioBuffer> {
		
		var promise = new Promise<AudioBuffer> ();
		
		#if (flash)
		
		if (path.exists (id)) {
			
			var soundLoader = new Sound ();
			soundLoader.addEventListener (Event.COMPLETE, function (event) {
				
				var audioBuffer:AudioBuffer = new AudioBuffer();
				audioBuffer.src = event.currentTarget;
				promise.complete (audioBuffer);
				
			});
			soundLoader.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			soundLoader.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			soundLoader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getAudioBuffer (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<AudioBuffer> (function () return getAudioBuffer (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	public override function loadBytes (id:String):Future<Bytes> {
		
		var promise = new Promise<Bytes> ();
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bytes = Bytes.ofString (event.currentTarget.data);
				promise.complete (bytes);
				
			});
			loader.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			loader.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getBytes (id));
			
		}
		
		#elseif html5
		
		if (path.exists (id)) {
			
			var request = new HTTPRequest ();
			promise.completeWith (request.load (path.get (id) + "?" + Assets.cache.version));
			
		} else {
			
			promise.complete (getBytes (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<Bytes> (function () return getBytes (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	public override function loadImage (id:String):Future<Image> {
		
		var promise = new Promise<Image> ();
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bitmapData = cast (event.currentTarget.content, Bitmap).bitmapData;
				promise.complete (Image.fromBitmapData (bitmapData));
				
			});
			loader.contentLoaderInfo.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			loader.contentLoaderInfo.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getImage (id));
			
		}
		
		#elseif html5
		
		if (path.exists (id)) {
			
			var image = new js.html.Image ();
			image.onload = function (_):Void {
				
				promise.complete (Image.fromImageElement (image));
				
			}
			image.onerror = promise.error;
			image.src = path.get (id) + "?" + Assets.cache.version;
			
		} else {
			
			promise.complete (getImage (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<Image> (function () return getImage (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	#if (!flash && !html5)
	private function loadManifest ():Void {
		
		try {
			
			#if blackberry
			var bytes = Bytes.readFile ("app/native/manifest");
			#elseif tizen
			var bytes = Bytes.readFile ("../res/manifest");
			#elseif emscripten
			var bytes = Bytes.readFile ("assets/manifest");
			#elseif (mac && java)
			var bytes = Bytes.readFile ("../Resources/manifest");
			#elseif (ios || tvos)
			var bytes = Bytes.readFile ("assets/manifest");
			#else
			var bytes = Bytes.readFile ("manifest");
			#end
			
			if (bytes != null) {
				
				if (bytes.length > 0) {
					
					var data = bytes.getString (0, bytes.length);
					
					if (data != null && data.length > 0) {
						
						var manifest:Array<Dynamic> = Unserializer.run (data);
						
						for (asset in manifest) {
							
							if (!className.exists (asset.id)) {
								
								#if (ios || tvos)
								path.set (asset.id, "assets/" + asset.path);
								#else
								path.set (asset.id, asset.path);
								#end
								type.set (asset.id, cast (asset.type, AssetType));
								
							}
							
						}
						
					}
					
				}
				
			} else {
				
				trace ("Warning: Could not load asset manifest (bytes was null)");
				
			}
		
		} catch (e:Dynamic) {
			
			trace ('Warning: Could not load asset manifest (${e})');
			
		}
		
	}
	#end
	
	
	public override function loadText (id:String):Future<String> {
		
		var promise = new Promise<String> ();
		
		#if html5
		
		if (path.exists (id)) {
			
			var request = new HTTPRequest ();
			var future = request.load (path.get (id) + "?" + Assets.cache.version);
			future.onProgress (function (progress) promise.progress (progress));
			future.onError (function (msg) promise.error (msg));
			future.onComplete (function (bytes) promise.complete (bytes.getString (0, bytes.length)));
			
		} else {
			
			promise.complete (getText (id));
			
		}
		
		#else
		
		promise.completeWith (loadBytes (id).then (function (bytes) {
			
			return new Future<String> (function () {
				
				if (bytes == null) {
					
					return null;
					
				} else {
					
					return bytes.getString (0, bytes.length);
					
				}
				
			});
			
		}));
		
		#end
		
		return promise.future;
		
	}
	
	
}


#if !display
#if flash

@:keep @:bind #if display private #end class __ASSET__img_cards_cards_zip_zip extends null { }
@:keep @:bind #if display private #end class __ASSET__img_cards_kaart1_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cards_kaart10_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cards_kaart11_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cards_kaart12_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cards_kaart13_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cards_kaart14_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cards_kaart15_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cards_kaart16_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cards_kaart17_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cards_kaart18_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cards_kaart19_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cards_kaart2_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cards_kaart20_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cards_kaart3_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cards_kaart4_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cards_kaart5_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cards_kaart6_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cards_kaart7_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cards_kaart8_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cards_kaart9_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cards_kaartback_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_cards_set_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_openfl_svg extends null { }
@:keep @:bind #if display private #end class __ASSET__img_start_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }


#elseif html5




























#else



#if (windows || mac || linux || cpp)


@:file("assets/img/cards/cards.zip.zip") #if display private #end class __ASSET__img_cards_cards_zip_zip extends lime.utils.Bytes {}
@:image("assets/img/cards/kaart1.jpg") #if display private #end class __ASSET__img_cards_kaart1_jpg extends lime.graphics.Image {}
@:image("assets/img/cards/kaart10.jpg") #if display private #end class __ASSET__img_cards_kaart10_jpg extends lime.graphics.Image {}
@:image("assets/img/cards/kaart11.jpg") #if display private #end class __ASSET__img_cards_kaart11_jpg extends lime.graphics.Image {}
@:image("assets/img/cards/kaart12.jpg") #if display private #end class __ASSET__img_cards_kaart12_jpg extends lime.graphics.Image {}
@:image("assets/img/cards/kaart13.jpg") #if display private #end class __ASSET__img_cards_kaart13_jpg extends lime.graphics.Image {}
@:image("assets/img/cards/kaart14.jpg") #if display private #end class __ASSET__img_cards_kaart14_jpg extends lime.graphics.Image {}
@:image("assets/img/cards/kaart15.jpg") #if display private #end class __ASSET__img_cards_kaart15_jpg extends lime.graphics.Image {}
@:image("assets/img/cards/kaart16.jpg") #if display private #end class __ASSET__img_cards_kaart16_jpg extends lime.graphics.Image {}
@:image("assets/img/cards/kaart17.jpg") #if display private #end class __ASSET__img_cards_kaart17_jpg extends lime.graphics.Image {}
@:image("assets/img/cards/kaart18.jpg") #if display private #end class __ASSET__img_cards_kaart18_jpg extends lime.graphics.Image {}
@:image("assets/img/cards/kaart19.jpg") #if display private #end class __ASSET__img_cards_kaart19_jpg extends lime.graphics.Image {}
@:image("assets/img/cards/kaart2.jpg") #if display private #end class __ASSET__img_cards_kaart2_jpg extends lime.graphics.Image {}
@:image("assets/img/cards/kaart20.jpg") #if display private #end class __ASSET__img_cards_kaart20_jpg extends lime.graphics.Image {}
@:image("assets/img/cards/kaart3.jpg") #if display private #end class __ASSET__img_cards_kaart3_jpg extends lime.graphics.Image {}
@:image("assets/img/cards/kaart4.jpg") #if display private #end class __ASSET__img_cards_kaart4_jpg extends lime.graphics.Image {}
@:image("assets/img/cards/kaart5.jpg") #if display private #end class __ASSET__img_cards_kaart5_jpg extends lime.graphics.Image {}
@:image("assets/img/cards/kaart6.jpg") #if display private #end class __ASSET__img_cards_kaart6_jpg extends lime.graphics.Image {}
@:image("assets/img/cards/kaart7.jpg") #if display private #end class __ASSET__img_cards_kaart7_jpg extends lime.graphics.Image {}
@:image("assets/img/cards/kaart8.jpg") #if display private #end class __ASSET__img_cards_kaart8_jpg extends lime.graphics.Image {}
@:image("assets/img/cards/kaart9.jpg") #if display private #end class __ASSET__img_cards_kaart9_jpg extends lime.graphics.Image {}
@:image("assets/img/cards/kaartback.jpg") #if display private #end class __ASSET__img_cards_kaartback_jpg extends lime.graphics.Image {}
@:image("assets/img/cards/set.png") #if display private #end class __ASSET__img_cards_set_png extends lime.graphics.Image {}
@:file("assets/img/openfl.svg") #if display private #end class __ASSET__img_openfl_svg extends lime.utils.Bytes {}
@:image("assets/img/start.jpg") #if display private #end class __ASSET__img_start_jpg extends lime.graphics.Image {}



#end
#end

#if (openfl && !flash)

#end

#end