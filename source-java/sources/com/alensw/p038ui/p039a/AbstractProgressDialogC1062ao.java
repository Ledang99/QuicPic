package com.alensw.p038ui.p039a;

import android.R;
import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Build;
import android.os.Bundle;
import com.alensw.p023b.p034k.C0730a;

/* renamed from: com.alensw.ui.a.ao */
/* loaded from: classes.dex */
public abstract class AbstractProgressDialogC1062ao extends ProgressDialog {

    /* renamed from: d */
    public static final C0730a f3641d = new C0730a(1, 2, 8, 10);

    /* renamed from: a */
    private final Activity f3642a;

    public AbstractProgressDialogC1062ao(Activity activity, String str, int i) {
        super(activity, AlertDialogC1086u.m3743a(activity));
        this.f3642a = activity;
        setCanceledOnTouchOutside(false);
        boolean z = i > 0;
        setCancelable(z);
        setIndeterminate(z ? false : true);
        if (!z) {
            setMessage(str);
            return;
        }
        setMax(i);
        setProgressStyle(1);
        setButton(-2, activity.getString(R.string.cancel), new DialogInterfaceOnClickListenerC1063ap(this));
        setTitle(str);
    }

    /* renamed from: a */
    protected abstract void mo3653a();

    /* renamed from: a */
    protected void m3730a(String str) {
        this.f3642a.runOnUiThread(new RunnableC1066as(this, str));
    }

    /* renamed from: b */
    protected void mo3654b() {
    }

    /* renamed from: c */
    public void m3731c() {
        if (C1071f.m3741a(this)) {
            f3641d.m2936a(new C1064aq(this));
        }
    }

    /* renamed from: d */
    protected boolean m3732d() {
        if (!isShowing()) {
            return false;
        }
        incrementProgressBy(1);
        return true;
    }

    @Override // android.app.ProgressDialog, android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT < 21) {
            AlertDialogC1086u.m3745a(this.f3642a, this);
        }
    }
}
