package flash.media;
#if (flash || display)


@:final extern class ID3Info implements Dynamic {
	var album : String;
	var artist : String;
	var comment : String;
	var genre : String;
	var songName : String;
	var track : String;
	var year : String;
	function new() : Void;
}


#else
typedef ID3Info = nme.media.ID3Info;
#end