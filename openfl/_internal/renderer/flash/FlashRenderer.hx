package openfl._internal.renderer.flash;


import openfl.display.Stage;
import openfl.events.Event;
import openfl.display.DisplayObject;
import openfl.utils.Dictionary;
import openfl.Lib;


class FlashRenderer {
	
	
	private static var instances:Dictionary<IDisplayObject, Bool>;
	
	
	public static function register (renderObject:IDisplayObject):Void {
		
		if (instances == null) {
			
			instances = new Dictionary (true);
			
			Lib.current.stage.addEventListener (Event.ENTER_FRAME, render);
			
		}
		
		instances[renderObject] = true;
		
	}
	
	
	private static function render (_):Void {
		
		for (instance in instances) {
			
			instance.__renderFlash ();
			
		}
		
	}
	
	
}


interface IDisplayObject {
	
	
	public function __renderFlash ():Void;
	
	
}