package openfl.events;


class SecurityErrorEvent extends ErrorEvent {
	
	
	static public var SECURITY_ERROR = "securityError";
	
	
	public function new (type:String, bubbles:Bool = false, cancelable:Bool = false, text:String = "", id:Int = 0) {
		
		super (type, bubbles, cancelable, text, id);
		
	}
	
	
	public override function clone ():Event {
		
		var event = new SecurityErrorEvent (type, bubbles, cancelable, text, errorID);
		event.target = target;
		event.currentTarget = currentTarget;
		#if !openfl_legacy
		event.eventPhase = eventPhase;
		#end
		return event;
		
	}
	
	
	public override function toString ():String {
		
		return __formatToString ("SecurityErrorEvent",  [ "type", "bubbles", "cancelable", "text", "errorID" ]);
		
	}
	
	
}