package com.example.simple_baby_tracker

import android.appwidget.AppWidgetManager
import android.content.Context
import android.content.SharedPreferences
import android.net.Uri
import android.widget.RemoteViews
import es.antonborri.home_widget.HomeWidgetBackgroundIntent
import es.antonborri.home_widget.HomeWidgetLaunchIntent
import es.antonborri.home_widget.HomeWidgetProvider

/**
 * Home-screen widget: baby name, "last feed / diaper / sleep" status, and
 * three quick-log buttons.
 *
 * Every button tap is a broadcast handled by home_widget's
 * HomeWidgetBackgroundReceiver, which runs `widgetBackgroundCallback` in
 * lib/services/widget_callback.dart in a headless Flutter engine — so logging
 * reuses the app's own Storage/TimerService code, with no data logic
 * duplicated here. This class only renders the strings that Dart pushed.
 *
 * Keys read from [widgetData] must match lib/services/widget_service.dart.
 */
class BabyTrackerWidgetProvider : HomeWidgetProvider() {
    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray,
        widgetData: SharedPreferences,
    ) {
        appWidgetIds.forEach { widgetId ->
            val views = RemoteViews(context.packageName, R.layout.widget_baby_tracker).apply {
                setTextViewText(R.id.widget_name, widgetData.getString("baby_name", "Baby"))
                setTextViewText(R.id.widget_avatar, widgetData.getString("baby_initials", "B"))
                setTextViewText(R.id.widget_feed_status, widgetData.getString("feed_status", "—"))
                setTextViewText(R.id.widget_diaper_status, widgetData.getString("diaper_status", "—"))
                setTextViewText(R.id.widget_sleep_status, widgetData.getString("sleep_status", "—"))
                setTextViewText(R.id.btn_feed, widgetData.getString("feed_button", "Feed"))
                setTextViewText(R.id.btn_diaper, widgetData.getString("diaper_button", "Diaper"))
                setTextViewText(R.id.btn_sleep, widgetData.getString("sleep_button", "Sleep"))

                // Tapping the header (avatar + name) opens the app.
                setOnClickPendingIntent(
                    R.id.widget_header,
                    HomeWidgetLaunchIntent.getActivity(context, MainActivity::class.java),
                )
                setOnClickPendingIntent(
                    R.id.btn_feed,
                    HomeWidgetBackgroundIntent.getBroadcast(context, Uri.parse("babytracker://feed_toggle")),
                )
                setOnClickPendingIntent(
                    R.id.btn_diaper,
                    HomeWidgetBackgroundIntent.getBroadcast(context, Uri.parse("babytracker://diaper")),
                )
                setOnClickPendingIntent(
                    R.id.btn_sleep,
                    HomeWidgetBackgroundIntent.getBroadcast(context, Uri.parse("babytracker://sleep_toggle")),
                )
            }
            appWidgetManager.updateAppWidget(widgetId, views)
        }
    }
}
