package openfl.events;


class ProgressEvent extends Event {
	
	
	public static var PROGRESS = "progress";
	public static var SOCKET_DATA = "socketData";
	
	public var bytesLoaded:Float;
	public var bytesTotal:Float;
	
	
	public function new (type:String, bubbles:Bool = false, cancelable:Bool = false, bytesLoaded:Float = 0, bytesTotal:Float = 0) {
		
		super (type, bubbles, cancelable);
		
		this.bytesLoaded = bytesLoaded;
		this.bytesTotal = bytesTotal;
		
	}
	
	
	public override function clone ():Event {
		
		var event = new ProgressEvent (type, bubbles, cancelable, bytesLoaded, bytesTotal);
		event.target = target;
		event.currentTarget = currentTarget;
		#if !openfl_legacy
		event.eventPhase = eventPhase;
		#end
		return event;
		
	}
	
	
	public override function toString ():String {
		
		return __formatToString ("ProgressEvent",  [ "type", "bubbles", "cancelable", "bytesLoaded", "bytesTotal" ]);
		
	}
	
	
}