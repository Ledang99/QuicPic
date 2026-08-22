package com.alensw.PicFolder;

import android.app.Activity;
import android.app.WallpaperManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.activity.ActivityC1109ao;
import com.alensw.p038ui.activity.C1094a;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class WallpaperActivity extends ActivityC1109ao {

    /* renamed from: a */
    private ListView f2087a;

    /* renamed from: b */
    private boolean f2088b;

    /* renamed from: c */
    private int f2089c;

    /* renamed from: d */
    private int f2090d;

    /* renamed from: e */
    private int f2091e;

    /* renamed from: f */
    private int f2092f;

    /* renamed from: g */
    private Uri f2093g;

    /* renamed from: h */
    private final Paint f2094h = new Paint(1);

    /* renamed from: i */
    private final RectF f2095i = new RectF();

    /* renamed from: a */
    protected Drawable m2064a(Point point) {
        float f = getResources().getDisplayMetrics().density;
        return new C0560bg(this, (int) (f * 16.0f), point, f * 16.0f, (int) (4.0f * f), (int) (220.0f * f));
    }

    /* renamed from: a */
    protected void m2065a(Intent intent) {
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(new Point(this.f2091e, this.f2092f));
        if (this.f2089c <= 0 || this.f2090d <= 0) {
            int max = Math.max(this.f2091e, this.f2092f);
            arrayList.add(new Point(max, max));
        } else {
            arrayList.add(new Point(this.f2089c, this.f2090d));
        }
        this.f2087a.setAdapter((ListAdapter) new C0558be(this, arrayList));
        this.f2087a.setOnItemClickListener(new C0559bf(this, arrayList, intent));
    }

    /* renamed from: a */
    protected void m2066a(Intent intent, int i, int i2) {
        try {
            WallpaperManager wallpaperManager = WallpaperManager.getInstance(this);
            if (i != wallpaperManager.getDesiredMinimumWidth() || i2 != wallpaperManager.getDesiredMinimumHeight()) {
                wallpaperManager.suggestDesiredDimensions(i, i2);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        intent.putExtra("aspectX", i);
        intent.putExtra("aspectY", i2);
        intent.putExtra("outputX", i);
        intent.putExtra("outputY", i2);
        C1094a.m3781a(this, intent);
        finish();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i2 != -1) {
            setResult(i2);
            finish();
        } else if (i == 1) {
            this.f2093g = intent.getData();
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.list_view);
        m3820g(true);
        this.f2087a = (ListView) findViewById(R.id.list);
        this.f2088b = C0742b.m2989b(this) != 2;
        setRequestedOrientation(this.f2088b ? 1 : 0);
        Point m2965a = C0742b.m2965a(this);
        if (this.f2088b && m2965a.x > m2965a.y) {
            int i = m2965a.x;
            m2965a.x = m2965a.y;
            m2965a.y = i;
        }
        this.f2091e = m2965a.x;
        this.f2092f = m2965a.y;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.f2089c = defaultSharedPreferences.getInt("wallpaper_width", 0);
        this.f2090d = defaultSharedPreferences.getInt("wallpaper_height", 0);
        if (this.f2089c <= 0 || this.f2090d <= 0) {
            WallpaperManager wallpaperManager = WallpaperManager.getInstance(this);
            this.f2089c = wallpaperManager.getDesiredMinimumWidth();
            this.f2090d = wallpaperManager.getDesiredMinimumHeight();
            SharedPreferences.Editor edit = defaultSharedPreferences.edit();
            edit.putInt("wallpaper_width", this.f2089c);
            edit.putInt("wallpaper_height", this.f2090d);
            edit.commit();
        }
        this.f2093g = getIntent().getData();
        if (this.f2093g != null || bundle == null) {
            return;
        }
        this.f2093g = (Uri) bundle.getParcelable("uri");
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onResume() {
        super.onResume();
        Intent intent = new Intent();
        if (this.f2093g == null) {
            intent.setAction("android.intent.action.GET_CONTENT");
            intent.setClass(this, GalleryActivity.class);
            intent.setType("image/*");
            C1094a.m3780a((Activity) this, intent, 1);
            return;
        }
        intent.setAction("android.intent.action.SET_WALLPAPER");
        intent.setData(this.f2093g);
        intent.setClass(this, CropActivity.class);
        intent.putExtras(getIntent());
        intent.putExtra("crop", "true");
        intent.putExtra("noFaceDetection", true);
        intent.putExtra("scale", true);
        intent.putExtra("setWallpaper", true);
        intent.putExtra("set-as-wallpaper", true);
        if (QuickApp.f2059b && this.f2089c > 0 && this.f2090d > 0) {
            m2066a(intent, this.f2089c, this.f2090d);
        } else if (this.f2091e == this.f2089c && this.f2092f == this.f2090d) {
            m2066a(intent, this.f2089c, this.f2090d);
        } else {
            m2065a(intent);
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        if (this.f2093g != null) {
            bundle.putParcelable("uri", this.f2093g);
        }
    }
}
