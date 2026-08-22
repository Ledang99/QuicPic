package com.alensw.p038ui.p039a;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.view.View;
import android.widget.Toast;
import com.alensw.PicFolder.QuickApp;
import com.alensw.PicFolder.R;
import com.alensw.p038ui.view.PasswordView;

/* renamed from: com.alensw.ui.a.x */
/* loaded from: classes.dex */
public class AlertDialogC1089x extends AlertDialogC1086u {
    public AlertDialogC1089x(Context context, String str, boolean z, InterfaceC1051ad interfaceC1051ad, Runnable runnable) {
        super(context);
        super.setTitle(str);
        super.m3748a(R.layout.password);
        PasswordView passwordView = (PasswordView) this.f3674b;
        passwordView.setPatternMode(z);
        passwordView.setInputListener(new C1090y(this, interfaceC1051ad));
        if (runnable != null) {
            super.setOnCancelListener(new DialogInterfaceOnCancelListenerC1091z(this, runnable));
        }
    }

    /* renamed from: a */
    public static void m3749a(Context context, String str, Runnable runnable, Runnable runnable2) {
        m3750a(context, "password", str, runnable, runnable2);
    }

    /* renamed from: a */
    public static void m3750a(Context context, String str, String str2, Runnable runnable, Runnable runnable2) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        boolean equals = "password".equals(str);
        boolean z = defaultSharedPreferences.getBoolean(str2, false);
        String string = defaultSharedPreferences.getString(str, "");
        if (!z || string.length() == 0 || (equals && string.equals(QuickApp.f2082y))) {
            runnable.run();
        } else {
            new AlertDialogC1089x(context, context.getString(R.string.password_input), Character.isDigit(string.charAt(0)) ? false : true, new C1050ac(string, equals, runnable, runnable2), runnable2).show();
        }
    }

    /* renamed from: a */
    public static void m3751a(Context context, boolean z, InterfaceC1051ad interfaceC1051ad) {
        new AlertDialogC1089x(context, context.getString(R.string.password_setup), z, new C1048aa(context, z, interfaceC1051ad), null).show();
    }

    /* renamed from: a */
    public static void m3752a(View view) {
        Toast.makeText(view.getContext(), R.string.password_invalid, 0).show();
        view.performHapticFeedback(1, 3);
    }
}
