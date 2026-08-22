package com.alensw.p023b.p035l;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import com.alensw.PicFolder.R;

/* renamed from: com.alensw.b.l.a */
/* loaded from: classes.dex */
public class C0741a {
    /* renamed from: a */
    public static void m2955a(Context context, int i) {
        try {
            ((NotificationManager) context.getSystemService("notification")).cancel(i);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: a */
    public static void m2956a(Context context, int i, boolean z, int i2, int i3, int i4, CharSequence charSequence, PendingIntent pendingIntent) {
        Bitmap bitmap = null;
        if (i3 != 0 && Build.VERSION.SDK_INT >= 11) {
            try {
                bitmap = ((BitmapDrawable) context.getResources().getDrawable(R.drawable.ic_about).mutate()).getBitmap();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        m2957a(context, i, z, i2, bitmap, context.getString(i4), charSequence, pendingIntent);
    }

    @TargetApi(11)
    /* renamed from: a */
    public static void m2957a(Context context, int i, boolean z, int i2, Bitmap bitmap, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent) {
        Notification notification;
        if (Build.VERSION.SDK_INT >= 11) {
            Notification.Builder builder = new Notification.Builder(context);
            builder.setSmallIcon(i2);
            builder.setLargeIcon(bitmap);
            builder.setContentTitle(charSequence);
            builder.setContentText(charSequence2);
            builder.setTicker(charSequence2);
            builder.setOnlyAlertOnce(true);
            builder.setAutoCancel(z);
            builder.setOngoing(pendingIntent != null);
            builder.setContentIntent(pendingIntent);
            notification = Build.VERSION.SDK_INT >= 16 ? builder.build() : builder.getNotification();
        } else {
            Notification notification2 = new Notification();
            notification2.icon = i2;
            notification2.flags = 8;
            if (z) {
                notification2.flags |= 16;
            }
            if (pendingIntent != null) {
                notification2.flags |= 2;
            }
            notification2.tickerText = charSequence2;
            if (pendingIntent == null) {
                pendingIntent = PendingIntent.getBroadcast(context, 0, new Intent(), 0);
            }
            notification2.setLatestEventInfo(context, charSequence, charSequence2, pendingIntent);
            notification = notification2;
        }
        try {
            ((NotificationManager) context.getSystemService("notification")).notify(i, notification);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
