package com.alensw.PicFolder;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Parcelable;
import android.os.StrictMode;
import android.preference.PreferenceManager;
import android.support.p009a.p010a.C0158a;
import android.support.v4.widget.DrawerLayout;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.core.app.ActivityCompat;
import com.alensw.bean.CommonFile;
import com.alensw.bean.CommonFolder;
import com.alensw.bean.CommonRoot;
import com.alensw.bean.DocumentFile;
import com.alensw.bean.DocumentFolder;
import com.alensw.bean.UriFile;
import com.alensw.cloud.sync.SyncSettings;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.activity.ActivityC1147p;
import com.alensw.p038ui.activity.C1094a;
import com.alensw.p038ui.activity.MainPreference;
import com.alensw.p038ui.p039a.AlertDialogC1089x;
import com.alensw.p038ui.p039a.C1047a;
import com.alensw.p038ui.p041c.ActivityC1237cx;
import com.alensw.p038ui.p041c.C1192bf;
import com.alensw.p038ui.p041c.C1212bz;
import com.alensw.p038ui.p041c.C1234cu;
import com.alensw.p038ui.p041c.C1256dp;
import com.alensw.p038ui.p041c.C1290z;
import com.alensw.p038ui.view.C1329bc;
import com.alensw.transfer.TransferActivity;
import com.alensw.updater.UpdaterAssistant;
import java.io.File;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class GalleryActivity extends ActivityC1237cx {

    /* renamed from: e */
    private DrawerLayout f1998e;

    /* renamed from: f */
    private ViewGroup f1999f;

    /* renamed from: g */
    private ListView f2000g;

    /* renamed from: h */
    private C0158a f2001h;

    /* renamed from: i */
    private C1329bc f2002i;

    /* renamed from: j */
    private int f2003j;

    /* renamed from: a */
    public static Intent m1984a(String str, Uri uri, Intent intent) {
        Intent intent2 = new Intent(str, uri);
        if (intent != null) {
            intent2.putExtras(intent);
        }
        return intent2;
    }

    /* renamed from: c */
    private void m1988c(ViewGroup viewGroup) {
        this.f1998e = (DrawerLayout) viewGroup.findViewById(R.id.drawer_layout);
        this.f1999f = (ViewGroup) this.f1998e.findViewById(R.id.drawer_panel);
        this.f2000g = (ListView) this.f1999f.findViewById(R.id.drawer_list);
        this.f2001h = new C0533ag(this, this, this.f1998e, Integer.valueOf(this.f3745X), R.string.app_name, R.string.app_name);
        this.f1998e.setDrawerListener(this.f2001h);
        if (this.f3741T == 0) {
            this.f1998e.setScrimColor(m3854g());
        }
        this.f1999f.setOnClickListener(new ViewOnClickListenerC0534ah(this));
        this.f2002i = new C1329bc(this, this.f2000g);
        this.f2000g.setAdapter((ListAdapter) this.f2002i);
        this.f2000g.setClipToPadding(this.f3741T != 0);
        if (this.f3741T != 0) {
            this.f2000g.setBackgroundColor(this.f3742U);
        }
        this.f2000g.setOnItemClickListener(new C0535ai(this));
        this.f2000g.setOnItemLongClickListener(new C0537ak(this));
    }

    @TargetApi(8)
    private void onCreate__$appendPatch(Bundle bundle) {
        StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder().build());
        Log.i("create data folder", "creating");
        File file = new File(getExternalFilesDir(null) + "");
        if (!file.exists()) {
            file.mkdirs();
        }
        Log.i("create data folder", "success");
    }

    @TargetApi(8)
    private void onCreate__$appendPatch2(Bundle bundle) {
        Log.i("sqlitedatabase", "start");
        File file = new File(getExternalFilesDir(null) + "");
        if (!file.exists()) {
            file.mkdirs();
        }
        Log.i("sqlitedatabase", "finished");
    }

    private void onCreate__$appendPatch3(Bundle bundle) {
        if (getCurrentChannel() == null) {
            writeUpdateChannelPreference("stable");
            writeUpdatesOnStartup(false);
        }
        if (getStartupUpdates()) {
            new UpdaterAssistant(this, false).checkForUpdates();
        }
    }

    private void onCreate__$appendPatch4(Bundle bundle) {
        if (Build.VERSION.SDK_INT < 30 || Environment.isExternalStorageManager()) {
            return;
        }
        Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
        intent.setData(Uri.parse("package:com.alensw.PicFolder"));
        startActivity(intent);
    }

    private void onCreate__$appendPatch5(Bundle bundle) {
    }

    private void onCreate__$appendPatch6(Bundle bundle) {
        Log.d("DXP", "It works!");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008c  */
    @TargetApi(19)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void onCreate__$appendSource(Bundle bundle) {
        Uri uri;
        String string;
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.f2003j = m3849b(intent);
        if (bundle != null) {
            this.f2002i.f4576c = bundle.getInt("current_root");
        }
        if (m4043d() > 0) {
            return;
        }
        Uri data = intent.getData();
        boolean z = data == null;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        if (z && defaultSharedPreferences.getBoolean("open_last_folder", false) && (string = defaultSharedPreferences.getString("last_folder", null)) != null) {
            File file = new File(string);
            if (file.exists()) {
                uri = Uri.fromFile(file);
                RunnableC0528ab runnableC0528ab = new RunnableC0528ab(this);
                if (this.f2003j == 0) {
                    m4037a(C1212bz.class, intent, (Bundle) null);
                    if (uri == null) {
                        if (this.f2003j == 1) {
                            uri = ActivityC1147p.f3827D;
                        } else if (this.f2003j == 2) {
                            uri = ActivityC1147p.f3828E;
                        }
                    }
                    if (uri == null || !"file".equals(uri.getScheme())) {
                        return;
                    }
                    m4037a(C1192bf.class, m1984a(intent.getAction(), uri, intent), (Bundle) null);
                    return;
                }
                if (uri == null) {
                    if (intent.hasExtra("QuickPic.folder")) {
                        CommonFolder commonFolder = (CommonFolder) intent.getParcelableExtra("QuickPic.folder");
                        if (commonFolder != null) {
                            m4037a(C1290z.class, C1290z.m4168a(commonFolder, true, (String) null), (Bundle) null);
                            return;
                        }
                        return;
                    }
                    CommonRoot m4370a = this.f2002i.m4370a(defaultSharedPreferences.getString("last_drive", ""));
                    if ("folders".equals(m4370a.f2814n)) {
                        m4037a(C1212bz.class, new Intent(), (Bundle) null);
                    } else {
                        m4037a(C1290z.class, C1290z.m4168a(m4370a.mo3052k(), true, m4370a.f2814n), (Bundle) null);
                    }
                    if ("zh".equals(getResources().getConfiguration().locale.getLanguage())) {
                        C1047a.m3720a(this, defaultSharedPreferences);
                        return;
                    }
                    return;
                }
                String m2277a = QuickApp.f2076s.m2277a(uri);
                if (m2277a != null) {
                    File file2 = new File(m2277a);
                    RunnableC0529ac runnableC0529ac = new RunnableC0529ac(this, z, intent, file2.isDirectory(), file2);
                    if (C0742b.m3009h(m2277a)) {
                        AlertDialogC1089x.m3749a(this, "protect_hidden", runnableC0529ac, runnableC0528ab);
                        return;
                    } else {
                        runnableC0529ac.run();
                        return;
                    }
                }
                if (!C0725a.m2924d(uri)) {
                    m4037a(C1256dp.class, intent, (Bundle) null);
                    return;
                }
                CommonFile m3074a = UriFile.m3074a(uri);
                if ((m3074a instanceof DocumentFile) && "vnd.android.document/directory".equals(m3074a.m3014b())) {
                    RunnableC0530ad runnableC0530ad = new RunnableC0530ad(this, C1290z.m4168a((CommonFolder) new DocumentFolder(m3074a, uri.getAuthority(), ((DocumentFile) m3074a).m3053k()), false, (String) null));
                    if (C0725a.m2920c(uri)) {
                        AlertDialogC1089x.m3749a(this, "protect_cloud", runnableC0530ad, runnableC0528ab);
                        return;
                    } else {
                        runnableC0530ad.run();
                        return;
                    }
                }
                return;
            }
        }
        uri = data;
        RunnableC0528ab runnableC0528ab2 = new RunnableC0528ab(this);
        if (this.f2003j == 0) {
        }
    }

    @TargetApi(8)
    private void onCreate__$appendSource2(Bundle bundle) {
        onCreate__$appendSource(bundle);
        onCreate__$appendPatch(bundle);
        isStoragePermissionGranted();
    }

    @TargetApi(8)
    private void onCreate__$appendSource3(Bundle bundle) {
        onCreate__$appendSource2(bundle);
        onCreate__$appendPatch2(bundle);
    }

    private void onCreate__$appendSource4(Bundle bundle) {
        onCreate__$appendSource3(bundle);
        onCreate__$appendPatch3(bundle);
    }

    private void onCreate__$appendSource5(Bundle bundle) {
        onCreate__$appendSource4(bundle);
        onCreate__$appendPatch4(bundle);
    }

    private void onCreate__$appendSource6(Bundle bundle) {
        onCreate__$appendSource5(bundle);
        onCreate__$appendPatch5(bundle);
    }

    @Override // com.alensw.p038ui.p041c.ActivityC1237cx
    /* renamed from: a */
    public void mo1991a(Rect rect) {
        super.mo1991a(rect);
        if (this.f1999f != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1999f.getLayoutParams();
            marginLayoutParams.topMargin = rect.top;
            marginLayoutParams.bottomMargin = rect.bottom;
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao
    /* renamed from: a */
    public void mo1992a(MenuItem menuItem, int i) {
        if (QuickApp.f2062e) {
            i = 0;
        }
        super.mo1992a(menuItem, i);
    }

    @Override // com.alensw.p038ui.p041c.ActivityC1237cx
    /* renamed from: a */
    protected void mo1993a(C1234cu c1234cu) {
        super.mo1993a(c1234cu);
        m3820g(true);
        m3822h(true);
        if (this.f2003j != 0 || this.f2001h == null) {
            return;
        }
        boolean m404b = this.f2001h.m404b();
        boolean z = m4043d() <= 1 && !(c1234cu instanceof C1256dp);
        this.f2001h.m401a(z);
        if (z == m404b || this.f4098a != 3) {
            return;
        }
        new C0532af(this, this.f3730I, m4046j(!z), z).m4402a(Math.max(m4039b(z ? false : true), 300L), true);
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao
    /* renamed from: a */
    public void mo1994a(boolean z) {
        if (this.f2003j == 0) {
            this.f1998e.m512a(z ? 0 : 1, 3);
        }
        super.mo1994a(z);
    }

    @Override // com.alensw.p038ui.p041c.ActivityC1237cx
    /* renamed from: a_ */
    protected ViewGroup mo1995a_() {
        ViewGroup viewGroup = (ViewGroup) View.inflate(this, R.layout.main, null);
        setContentView(viewGroup);
        m1988c(viewGroup);
        return viewGroup;
    }

    /* renamed from: b */
    public Handler m1996b() {
        return this.f3829A;
    }

    public String getCurrentChannel() {
        return getSharedPreferences("com.alensw.PicFolder_preferences", 0).getString("channel", null);
    }

    public boolean getStartupUpdates() {
        return getSharedPreferences("com.alensw.PicFolder_preferences", 0).getBoolean("updates_on_startup", true);
    }

    public boolean isStoragePermissionGranted() {
        if (Build.VERSION.SDK_INT >= 23 && checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 1);
        }
        return false;
    }

    @Override // com.alensw.p038ui.p041c.ActivityC1237cx, com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onBackPressed() {
        if (this.f1998e.m524e(3)) {
            this.f1998e.m521d(3);
        } else {
            super.onBackPressed();
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f2001h != null) {
            this.f2001h.m396a(configuration);
        }
    }

    @Override // com.alensw.p038ui.p041c.ActivityC1237cx, com.alensw.p038ui.activity.ActivityC1147p, com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onCreate(Bundle bundle) {
        onCreate__$appendSource6(bundle);
        onCreate__$appendPatch6(bundle);
    }

    @Override // com.alensw.p038ui.p041c.ActivityC1237cx, com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (this.f2001h.m402a(menuItem)) {
            return true;
        }
        if (this.f1998e.m524e(3)) {
            this.f1998e.m521d(3);
        }
        switch (menuItem.getItemId()) {
            case R.id.add_cloud /* 2131296256 */:
                if (this.f2002i == null) {
                    return true;
                }
                this.f2002i.m4377b();
                return true;
            case R.id.cloud_backup /* 2131296257 */:
                C1094a.m3781a(this, new Intent(this, (Class<?>) SyncSettings.class));
                return true;
            case R.id.transfer /* 2131296342 */:
                Intent intent = new Intent();
                Uri[] f = m4045f();
                if (f != null && f.length > 0) {
                    ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                    for (Uri uri : f) {
                        arrayList.add(uri);
                    }
                    intent.setAction("android.intent.action.SEND_MULTIPLE");
                    intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
                }
                intent.setFlags(67108864);
                intent.setComponent(new ComponentName(this, (Class<?>) TransferActivity.class));
                C1094a.m3781a(this, intent);
                return true;
            case R.id.settings /* 2131296343 */:
                C1094a.m3781a(this, new Intent(this, (Class<?>) MainPreference.class));
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        if (this.f2003j != 0) {
            this.f2001h.m401a(false);
            this.f1998e.m512a(1, 3);
            return;
        }
        this.f2001h.m393a();
        this.f2001h.m401a(m4043d() <= 1 && !(m4041c() instanceof C1256dp));
        this.f1998e.m512a(0, 3);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        if (defaultSharedPreferences.getInt("drawer_shown", 0) != QuickApp.f2068k) {
            C0742b.m2978a(defaultSharedPreferences.edit().putInt("drawer_shown", QuickApp.f2068k));
            this.f1998e.postDelayed(new RunnableC0531ae(this), 300L);
        }
    }

    @Override // com.alensw.p038ui.p041c.ActivityC1237cx, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.f2002i != null) {
            bundle.putInt("current_root", this.f2002i.f4576c);
        }
    }

    @Override // com.alensw.p038ui.p041c.ActivityC1237cx, com.alensw.p038ui.activity.ActivityC1147p, com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onStop() {
        super.onStop();
        QuickApp.f2082y = "";
    }

    public void writeUpdateChannelPreference(String str) {
        SharedPreferences.Editor edit = getSharedPreferences("com.alensw.PicFolder_preferences", 0).edit();
        edit.putString("channel", str);
        edit.apply();
    }

    public void writeUpdatesOnStartup(boolean z) {
        SharedPreferences.Editor edit = getSharedPreferences("com.alensw.PicFolder_preferences", 0).edit();
        edit.putBoolean("updates_on_startup", z);
        edit.apply();
    }
}
