package io.sens.sens

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent

class YourBroadcastReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        if (Intent.ACTION_BOOT_COMPLETED == intent.action) {
            val serviceIntent = Intent(context, ForegroundService::class.java)
            context.startForegroundService(serviceIntent)
        }
    }
}