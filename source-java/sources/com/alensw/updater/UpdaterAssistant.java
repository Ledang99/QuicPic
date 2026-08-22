package com.alensw.updater;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Base64;
import android.widget.Toast;
import com.alensw.PicFolder.R;

/* loaded from: classes.dex */
public class UpdaterAssistant {
    protected String Updates = "a[[[[b[HR0cHM6[[[[b[Ly9yY[[[[b[XcuZ2l0[[[[b[aHVidXNl[[[[b[cmNvbnRlbnQuY29tL1[[[[b[dTVH[[[[b[hkYS9RUC1H[[[[b[YWxsZXJ5LVJlbGVhc2VzL21[[[[b[hc3Rlci9PVEElMjB1cGRhd[[[[b[GVyL3Vw[[[[b[ZGF0ZXIuanNvbg";

    /* renamed from: c */
    Context f4877c;
    boolean showToast;

    public UpdaterAssistant(Context context, boolean z) {
        this.f4877c = context;
        this.showToast = z;
    }

    private boolean isNetworkAvailable() {
        boolean z = false;
        boolean z2 = false;
        for (NetworkInfo networkInfo : ((ConnectivityManager) this.f4877c.getSystemService("connectivity")).getAllNetworkInfo()) {
            if (networkInfo.getTypeName().equalsIgnoreCase("WIFI") && networkInfo.isConnected()) {
                z2 = true;
            }
            if (networkInfo.getTypeName().equalsIgnoreCase("MOBILE") && networkInfo.isConnected()) {
                z = true;
            }
        }
        return z2 || z;
    }

    public void checkForUpdates() {
        if (isNetworkAvailable()) {
            try {
                new UpdaterEngine(this.f4877c, getCurrentChannel(), this.showToast).execute(new String(Base64.decode(this.Updates.replace("[[[[b[", ""), 0), "UTF-8"));
            } catch (Exception e) {
            }
        } else if (this.showToast) {
            Toast.makeText(this.f4877c, R.string.update_no_internet, 0).show();
        }
    }

    public String getCurrentChannel() {
        return this.f4877c.getSharedPreferences("com.alensw.PicFolder_preferences", 0).getString("channel", null);
    }
}
