package openfl.events; #if (display || !flash)


import haxe.io.Error;


extern class AsyncErrorEvent extends ErrorEvent {
	
	
	public static var ASYNC_ERROR:String;
	
	public var error:Error;
	
	
	public function new (type:String, bubbles:Bool = false, cancelable:Bool = false, text:String = "", error:Error = null);
	
	
}


#else
typedef AsyncErrorEvent = flash.events.AsyncErrorEvent;
#end