package extension.wakeLock;

#if (openfl < "4.0.0")
import openfl.utils.JNI;
#else
import lime.system.JNI;
#end

class WakeLock{
	
	public static var allowScreenTimeout(default, set):Bool=true;	
	#if android
	public static var setKeepScreenOn:Void->Void = JNI.createStaticMethod("wakelock/AndroidWakeLock", "SetKeepScreenOn", "()V");
	public static var setKeepScreenAuto:Void->Void = JNI.createStaticMethod("wakelock/AndroidWakeLock", "SetKeepScreenAuto", "()V");
	#else
	public static var setKeepScreenOn:Void->Void= function(){};
	public static var setKeepScreenAuto:Void->Void= function(){};
	#end

	private static function set_allowScreenTimeout(value:Bool):Bool{
		allowScreenTimeout = value;
		if(value) setKeepScreenAuto();
		else setKeepScreenOn();
		return true;
	}
}
