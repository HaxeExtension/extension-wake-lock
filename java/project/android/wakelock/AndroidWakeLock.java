package wakelock;

import java.io.IOException;
import java.util.Map;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Build;
import android.os.Handler;
import android.view.Gravity;
import android.view.ViewGroup.LayoutParams;
import android.view.View;
import android.widget.FrameLayout;
import android.util.Log;
import android.app.Activity;
import android.view.WindowManager;
import org.haxe.extension.Extension;



public class AndroidWakeLock {
	
	public static void SetKeepScreenAuto () {
		
		Extension.mainActivity.runOnUiThread(new Runnable() {
			public void run() {
				try{
					Extension.mainActivity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);       		
				}catch(Exception e) {
					Log.i("AWL", "Exception: "+e.toString());
				}
			}
		});	

	}


	public static void SetKeepScreenOn () {
		
		Extension.mainActivity.runOnUiThread(new Runnable() {
			public void run() {
				try{
					Extension.mainActivity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);         		
				}catch(Exception e) {
					Log.i("AWL", "Exception: "+e.toString());
				}
			}
		});	

	}


}
