package com.example.flutterapp

import androidx.annotation.NonNull
import androidx.core.content.ContextCompat
import io.flutter.embedding.android.DrawableSplashScreen
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.SplashScreen
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant

/**
 * @ClassName SplashActivity
 * @Description TODO
 * @Author Mr.wang
 * @Date 2020-05-01 20:03
 * @Version 1.0
 */
class SplashActivity : FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)
    }
    override fun provideSplashScreen(): SplashScreen? {
        // Load the splash Drawable.
        val splash = ContextCompat.getDrawable(this,R.drawable.launch)

        // Construct a DrawableSplashScreen with the loaded splash Drawable and
        // return it.
        return splash?.let { DrawableSplashScreen(it) }
    }
}