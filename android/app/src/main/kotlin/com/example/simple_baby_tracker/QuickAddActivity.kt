package com.example.simple_baby_tracker

import android.content.Intent
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.FlutterActivityLaunchConfigs.BackgroundMode
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

/**
 * The widget's "+" popup: a see-through activity that floats the add-entry
 * menu (and then the chosen form) over the home screen, without bringing up
 * the app itself.
 *
 * It runs `quickAddMain()` from lib/main.dart in its own Flutter engine,
 * so all saving goes through the app's normal Dart code. It lives in its own
 * task (see AndroidManifest.xml), so closing it drops straight back to the
 * home screen instead of revealing the app if that was open in the background.
 */
class QuickAddActivity : FlutterActivity() {
    override fun getDartEntrypointFunctionName(): String = "quickAddMain"

    override fun getBackgroundMode(): BackgroundMode = BackgroundMode.transparent

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "babytracker/quick_add")
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "openApp" -> {
                        startActivity(
                            Intent(this, MainActivity::class.java)
                                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK),
                        )
                        finish()
                        result.success(null)
                    }
                    else -> result.notImplemented()
                }
            }
    }
}
