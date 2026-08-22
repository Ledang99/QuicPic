package com.alensw.p038ui.activity;

import android.R;
import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.preference.PreferenceManager;
import android.provider.DocumentsContract;
import android.provider.Settings;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.documentfile.provider.DocumentFile;
import com.alensw.PicFolder.CropActivity;
import com.alensw.PicFolder.FileProvider;
import com.alensw.PicFolder.GalleryActivity;
import com.alensw.PicFolder.PlayerActivity;
import com.alensw.PicFolder.QuickApp;
import com.alensw.jni.JniUtils;
import com.alensw.p022a.C0613ba;
import com.alensw.p022a.C0621c;
import com.alensw.p022a.C0623e;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.AlertDialogC1086u;
import com.alensw.p038ui.p039a.C1071f;
import com.alensw.p038ui.view.AbstractC1357cd;
import com.p043b.p044a.C1387b;
import com.p043b.p044a.C1389d;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;

/* renamed from: com.alensw.ui.activity.p */
/* loaded from: classes.dex */
public class ActivityC1147p extends ActivityC1109ao implements Handler.Callback {

    /* renamed from: D */
    public static Uri f3827D;

    /* renamed from: E */
    public static Uri f3828E;

    /* renamed from: A */
    protected Handler f3829A;

    /* renamed from: B */
    protected int f3830B;

    /* renamed from: C */
    protected AbstractC1357cd f3831C;

    /* renamed from: b */
    public static int m3849b(Intent intent) {
        String action = intent.getAction();
        if (!"android.intent.action.PICK".equals(action) && !"android.intent.action.GET_CONTENT".equals(action)) {
            if ("android.intent.action.SET_WALLPAPER".equals(action)) {
                return 1;
            }
            return "com.alensw.PicFolder.action.PICK_MULTIPLE".equals(action) ? 5 : 0;
        }
        String type = intent.getType();
        if ("video/*".equals(type) || "vnd.android.cursor.dir/video".equals(type)) {
            return 2;
        }
        if ("vnd.android.document/directory".equals(type)) {
            return 3;
        }
        return "*/*".equals(type) ? 4 : 1;
    }

    private void onActivityResult__$prependPatch(int i, int i2, Intent intent) {
        if (i2 == -1 && i == 205452) {
            DocumentFile.fromTreeUri(getApplicationContext(), intent.getData()).createFile("image/jpeg", "!qpicfake.jpg");
        }
    }

    private void onActivityResult__$prependSource(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 4 && i2 == -1) {
            try {
                Uri data = intent.getData();
                String treeDocumentId = DocumentsContract.getTreeDocumentId(data);
                int lastIndexOf = treeDocumentId.lastIndexOf(58);
                if (lastIndexOf == -1) {
                    lastIndexOf = treeDocumentId.length();
                }
                C0621c.f2400a = treeDocumentId.substring(0, lastIndexOf);
                PreferenceManager.getDefaultSharedPreferences(this).edit().putString("external_sd_uuid", C0621c.f2400a).commit();
                getContentResolver().takePersistableUriPermission(data, intent.getFlags() & 3);
            } catch (Throwable th) {
                C0742b.m2977a(this, th);
            }
        }
    }

    /* renamed from: a */
    public Drawable m3850a(int i, long j, long j2, String str) {
        String str2;
        String string;
        try {
            InputStream openRawResource = getResources().openRawResource(i);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(4096);
            byte[] bArr = new byte[4096];
            while (true) {
                int read = openRawResource.read(bArr);
                if (read <= 0) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
            String byteArrayOutputStream2 = byteArrayOutputStream.toString();
            try {
                Resources resources = createPackageContext("com.android.documentsui", 0).getResources();
                String string2 = resources.getString(resources.getIdentifier("title_open", "string", "com.android.documentsui"));
                if (string2 != null) {
                    byteArrayOutputStream2 = byteArrayOutputStream2.replace("Open from", string2);
                }
                String string3 = resources.getString(resources.getIdentifier("root_recent", "string", "com.android.documentsui"));
                if (string3 != null) {
                    byteArrayOutputStream2 = byteArrayOutputStream2.replace("Recent", string3);
                }
                String string4 = resources.getString(resources.getIdentifier("menu_select", "string", "com.android.documentsui"));
                if (string4 != null) {
                    CharSequence[] charSequenceArr = new CharSequence[1];
                    charSequenceArr[0] = str != null ? str : "SD card";
                    byteArrayOutputStream2 = byteArrayOutputStream2.replace("SELECT 'SD card'", TextUtils.expandTemplate(string4, charSequenceArr));
                }
                if (str != null) {
                    byteArrayOutputStream2 = byteArrayOutputStream2.replace("SD card", str);
                }
                str2 = (j <= 0 || (string = resources.getString(resources.getIdentifier("root_available_bytes", "string", "com.android.documentsui"), Formatter.formatFileSize(this, j))) == null) ? byteArrayOutputStream2 : byteArrayOutputStream2.replace("00GB", string);
                if (j2 > 0) {
                    try {
                        String string5 = resources.getString(resources.getIdentifier("root_available_bytes", "string", "com.android.documentsui"), Formatter.formatFileSize(this, j2));
                        if (string5 != null) {
                            str2 = str2.replace("??GB", string5);
                        }
                    } catch (Throwable th) {
                        byteArrayOutputStream2 = str2;
                        th = th;
                        th.printStackTrace();
                        str2 = byteArrayOutputStream2;
                        return C1389d.m4511a(str2).m4504a();
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
            return C1389d.m4511a(str2).m4504a();
        } catch (Throwable th3) {
            return C1387b.m4497a(getResources(), i);
        }
    }

    /* renamed from: a */
    public void m3851a(int i) {
        boolean z = false;
        if (i == 4 && Build.VERSION.SDK_INT >= 11 && Settings.System.getInt(getContentResolver(), "accelerometer_rotation", 0) == 0) {
            z = true;
        }
        if (z && this.f3831C == null) {
            this.f3831C = new C1152u(this, this);
            this.f3831C.m4407a();
        } else if (!z && this.f3831C != null) {
            this.f3831C.m4408b();
            this.f3831C = null;
        }
        setRequestedOrientation(i);
    }

    /* renamed from: a */
    public boolean mo1980a(Intent intent) {
        String action = intent.getAction();
        C0613ba c0613ba = QuickApp.f2076s;
        if ("android.intent.action.SEND".equals(action)) {
            Uri uri = (Uri) intent.getParcelableExtra("android.intent.extra.STREAM");
            if (uri != null && "file".equals(uri.getScheme())) {
                String path = uri.getPath();
                Uri m2285b = c0613ba.m2285b(path, intent.getType().startsWith("video/") ? 'V' : 'I');
                if (m2285b == null) {
                    m2285b = FileProvider.m1982a(path);
                }
                intent.putExtra("android.intent.extra.STREAM", m2285b);
            }
        } else if ("android.intent.action.SEND_MULTIPLE".equals(action) && intent.hasExtra("multiple_files")) {
            ArrayList<? extends Parcelable> parcelableArrayListExtra = intent.getParcelableArrayListExtra("android.intent.extra.STREAM");
            ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("multiple_files");
            ArrayList<Integer> integerArrayListExtra = intent.getIntegerArrayListExtra("multiple_types");
            int size = parcelableArrayListExtra.size();
            for (int i = 0; i < size; i++) {
                String str = stringArrayListExtra.get(i);
                Uri m2285b2 = c0613ba.m2285b(str, (char) integerArrayListExtra.get(i).intValue());
                parcelableArrayListExtra.set(i, m2285b2 == null ? FileProvider.m1982a(str) : m2285b2);
            }
            intent.putParcelableArrayListExtra("android.intent.extra.STREAM", parcelableArrayListExtra);
        }
        return false;
    }

    /* renamed from: a */
    public boolean m3852a(String str) {
        if (str == null || str.startsWith(C0623e.f2410b + File.separatorChar)) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            Uri m2335a = C0621c.m2335a(str);
            if (m2335a != null && checkCallingOrSelfUriPermission(m2335a, 2) == 0) {
                return true;
            }
            m3853b(str);
            return true;
        }
        if (Build.VERSION.SDK_INT < 19) {
            return false;
        }
        AlertDialog m3734a = C1071f.m3734a((Context) this, R.string.dialog_alert_title, (Object) getString(com.alensw.PicFolder.R.string.no_write_sd_permission));
        m3734a.setButton(-1, getString(R.string.ok), new DialogInterfaceOnClickListenerC1149r(this));
        m3734a.setButton(-2, getString(com.alensw.PicFolder.R.string.details), new DialogInterfaceOnClickListenerC1150s(this));
        C1071f.m3741a(m3734a);
        return true;
    }

    /* renamed from: b */
    public void m3853b(String str) {
        AlertDialogC1086u m3744a;
        if (Build.VERSION.SDK_INT < 21 || (m3744a = AlertDialogC1086u.m3744a(this, R.string.dialog_alert_title, com.alensw.PicFolder.R.layout.sd_permission)) == null) {
            return;
        }
        ((ImageView) m3744a.findViewById(com.alensw.PicFolder.R.id.image)).setImageDrawable(m3850a(com.alensw.PicFolder.R.raw.sd_steps, JniUtils.fuGetAvailBytes(C0623e.f2410b), JniUtils.fuGetAvailBytes(str), QuickApp.f2073p.m2330f(str)));
        m3744a.setButton(-1, getString(R.string.ok), new DialogInterfaceOnClickListenerC1151t(this));
        C1071f.m3741a(m3744a);
    }

    /* renamed from: g */
    public int m3854g() {
        return (this.f3742U & 16777215) | (-805306368);
    }

    public boolean handleMessage(Message message) {
        return false;
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        onActivityResult__$prependPatch(i, i2, intent);
        onActivityResult__$prependSource(i, i2, intent);
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    @TargetApi(14)
    public void onCreate(Bundle bundle) {
        this.f3829A = new Handler(this);
        this.f3734M = true;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.f3735N = defaultSharedPreferences.getBoolean("split_bar", this.f3735N) || (this instanceof CropActivity);
        if (defaultSharedPreferences.getBoolean("hide_status_bar", false)) {
            getWindow().addFlags(1024);
        }
        if (Build.VERSION.SDK_INT >= 14) {
            getWindow().setUiOptions(this.f3735N ? 1 : 0, 1);
        }
        super.onCreate(bundle);
        this.f3830B = getResources().getConfiguration().orientation;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        if (Build.VERSION.SDK_INT >= 11 || i != 0 || this.f3732K == null) {
            return super.onMenuOpened(i, menu);
        }
        this.f3732K.m4323a(this.f3730I);
        return false;
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onPause() {
        super.onPause();
        if (this.f3831C != null) {
            this.f3831C.m4408b();
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onResume() {
        if (this.f3831C != null) {
            this.f3831C.m4407a();
        }
        super.onResume();
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onStart() {
        int i;
        boolean z;
        boolean z2 = true;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        int i2 = this instanceof PlayerActivity ? -1 : defaultSharedPreferences.getInt("main_theme", 0);
        if (this.f3741T != i2) {
            this.f3741T = i2;
            z = true;
        } else if ((this.f3741T == -3 || this.f3741T == -2) && this.f3743V != (i = defaultSharedPreferences.getInt("actionbar_color", this.f3743V))) {
            this.f3743V = i;
            z = true;
        } else {
            z = false;
        }
        this.f3739R = defaultSharedPreferences.getBoolean("auto_black_bkgnd", false);
        boolean z3 = defaultSharedPreferences.getBoolean("split_bar", this.f3735N) || (this instanceof CropActivity);
        if (this.f3735N != z3) {
            this.f3735N = z3;
        } else {
            z2 = z;
        }
        super.onStart();
        if (z2) {
            this.f3829A.post(new RunnableC1148q(this));
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onStop() {
        super.onStop();
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        if (this.f3734M) {
            if (Build.VERSION.SDK_INT == 19) {
                getWindow().addFlags(201326592);
            } else if (Build.VERSION.SDK_INT >= 21) {
                getWindow().addFlags(Integer.MIN_VALUE);
            }
        }
        if (!(this instanceof GalleryActivity)) {
            m3820g(true);
        }
        m3804a((ViewGroup) this.f3730I.findViewById(com.alensw.PicFolder.R.id.bottom_bar));
    }
}
