package openfl.events; #if (display || !flash)


import openfl.display.InteractiveObject;


extern class ContextMenuEvent extends Event {
	
	
	public static var MENU_ITEM_SELECT:String;
	public static var MENU_SELECT:String;
	
	public var contextMenuOwner:InteractiveObject;
	
	#if flash
	@:noCompletion @:dox(hide) @:require(flash10) public var isMouseTargetInaccessible:Bool;
	#end
	
	public var mouseTarget:InteractiveObject;
	
	
	public function new (type:String, bubbles:Bool = false, cancelable:Bool = false, mouseTarget:InteractiveObject = null, contextMenuOwner:InteractiveObject = null);
	
	
}


#else
typedef ContextMenuEvent = flash.events.ContextMenuEvent;
#end