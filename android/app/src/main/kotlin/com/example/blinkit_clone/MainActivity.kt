package com.example.blinkit_clone

import android.os.Build
import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            val display = display
            display?.let {
                // Find the display mode with the highest refresh rate
                val maxMode = it.supportedModes.maxByOrNull { mode -> mode.refreshRate }
                maxMode?.let { mode ->
                    val lp = window.attributes
                    lp.preferredDisplayModeId = mode.modeId
                    window.attributes = lp
                }
            }
        }
    }
}
