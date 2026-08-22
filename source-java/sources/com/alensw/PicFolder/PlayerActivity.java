package com.alensw.PicFolder;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Message;
import android.preference.PreferenceManager;
import android.support.p009a.p010a.C0170m;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.VideoView;
import com.alensw.p023b.p026c.C0660d;
import com.alensw.p023b.p030g.MenuC0693b;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.activity.ActivityC1147p;
import com.alensw.p038ui.p041c.C1246df;
import com.alensw.p038ui.p042d.C1292b;
import com.alensw.p038ui.p042d.C1294d;
import com.alensw.p038ui.p042d.C1297g;
import com.p043b.p044a.C1387b;
import org.apache.http.HttpStatus;
import org.apache.http.protocol.HttpRequestExecutor;

/* loaded from: classes.dex */
public class PlayerActivity extends ActivityC1147p {

    /* renamed from: a */
    protected ViewGroup f2004a;

    /* renamed from: ac */
    private int f2006ac;

    /* renamed from: ad */
    private Drawable f2007ad;

    /* renamed from: ae */
    private Drawable f2008ae;

    /* renamed from: b */
    protected ImageView f2011b;

    /* renamed from: c */
    protected VolumeBar f2012c;

    /* renamed from: d */
    protected SeekBar f2013d;

    /* renamed from: e */
    protected TextView f2014e;

    /* renamed from: f */
    protected TextView f2015f;

    /* renamed from: g */
    protected ViewGroup f2016g;

    /* renamed from: h */
    protected ImageView f2017h;

    /* renamed from: i */
    protected ImageView f2018i;

    /* renamed from: j */
    protected PlayerView f2019j;

    /* renamed from: k */
    protected VideoView f2020k;

    /* renamed from: l */
    protected MediaPlayer f2021l;

    /* renamed from: m */
    protected MenuItem f2022m;

    /* renamed from: n */
    protected int f2023n;

    /* renamed from: o */
    protected int f2024o;

    /* renamed from: p */
    protected boolean f2025p;

    /* renamed from: q */
    protected boolean f2026q;

    /* renamed from: r */
    protected boolean f2027r;

    /* renamed from: s */
    protected boolean f2028s;

    /* renamed from: t */
    protected AudioManager f2029t;

    /* renamed from: u */
    protected MediaPlayer.TrackInfo[] f2030u;

    /* renamed from: v */
    protected BroadcastReceiver f2031v;

    /* renamed from: w */
    protected final C1292b f2032w = new C1292b();

    /* renamed from: x */
    protected final C0660d f2033x = new C0660d(16);

    /* renamed from: y */
    protected final ViewTreeObserver.OnGlobalLayoutListener f2034y = new ViewTreeObserverOnGlobalLayoutListenerC0538al(this);

    /* renamed from: z */
    protected final SeekBar.OnSeekBarChangeListener f2035z = new C0539am(this);

    /* renamed from: ab */
    private boolean f2005ab = true;

    /* renamed from: af */
    private final Rect f2009af = new Rect();

    /* renamed from: ag */
    private final Rect f2010ag = new Rect();

    /* renamed from: a */
    public void m2007a(Rect rect) {
        if (this.f2010ag.equals(rect)) {
            return;
        }
        this.f2010ag.set(rect);
        m2014f();
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao
    /* renamed from: a */
    public void mo1994a(boolean z) {
        super.mo1994a(z);
        int i = z ? 0 : 4;
        if (this.f2004a.getVisibility() != i && !z) {
            if (!f3726G) {
                this.f2004a.setVisibility(8);
            }
            this.f2004a.setVisibility(i);
            this.f2004a.startAnimation(m3810c(z));
        }
        if (this.f2016g.getVisibility() != i) {
            this.f2016g.setVisibility(i);
            this.f2016g.startAnimation(m3810c(z));
        }
        if (z) {
            this.f3829A.sendEmptyMessage(100);
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao
    /* renamed from: a */
    public boolean mo2008a() {
        return super.mo2008a() || this.f2004a.getVisibility() == 0;
    }

    /* renamed from: b */
    protected int m2009b(boolean z) {
        int duration = this.f2020k.getDuration();
        if (this.f2006ac != duration) {
            this.f2006ac = duration;
            this.f2014e.setText(C0742b.m2970a(duration));
        }
        long max = this.f2013d.getMax();
        int currentPosition = this.f2020k.getCurrentPosition();
        if (duration > 0 && !this.f2027r) {
            this.f2013d.setProgress((int) ((currentPosition * max) / duration));
        }
        this.f2013d.setSecondaryProgress((int) ((max * this.f2020k.getBufferPercentage()) / 100));
        if (z && !this.f2027r) {
            String str = "";
            if (this.f2028s && duration > 0) {
                currentPosition = duration - currentPosition;
                str = "-";
            }
            this.f2015f.setText(str + C0742b.m2970a(currentPosition));
        }
        return currentPosition;
    }

    /* renamed from: b */
    protected void m2010b() {
        ImageView imageView = (ImageView) this.f2016g.findViewById(R.id.rewind);
        imageView.setOnClickListener(this.f3747Z);
        m3792a(imageView, new C1297g(3), -855638017);
        C1294d.m4210a(imageView);
        ImageView imageView2 = (ImageView) this.f2016g.findViewById(R.id.forward);
        imageView2.setOnClickListener(this.f3747Z);
        m3792a(imageView2, new C1297g(2), -855638017);
        C1294d.m4210a(imageView2);
    }

    /* renamed from: c */
    protected void m2011c() {
        if (this.f2018i.getVisibility() == 0) {
            this.f2018i.setVisibility(8);
            this.f2018i.startAnimation(m3810c(false));
        }
    }

    /* renamed from: d */
    protected void m2012d() {
        m3792a(this.f2017h, new C1297g(!this.f2020k.isPlaying() ? 0 : 1), -855638017);
    }

    /* renamed from: e */
    protected void m2013e() {
        boolean z = this.f2012c.getProgress() > 0;
        Drawable drawable = z ? this.f2007ad : this.f2008ae;
        if (drawable == null) {
            drawable = C0742b.m2968a(getResources(), z ? "ic_volume_small" : "ic_volume_off_small");
            if (drawable == null) {
                drawable = new ColorDrawable(0);
            }
            if (z) {
                this.f2007ad = drawable;
            } else {
                this.f2008ae = drawable;
            }
        }
        if (drawable != this.f2011b.getDrawable()) {
            this.f2011b.setImageDrawable(drawable);
        }
    }

    /* renamed from: f */
    protected void m2014f() {
        m3800a(this.f2010ag, this.f2009af);
        this.f3733L.setPadding(this.f2009af.left, 0, this.f2009af.right, this.f2009af.bottom);
    }

    @Override // com.alensw.p038ui.activity.ActivityC1147p, android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case HttpStatus.SC_CONTINUE /* 100 */:
                this.f3829A.sendEmptyMessageDelayed(100, 1000 - (m2009b(this.f3733L.getVisibility() == 0) % 1000));
            default:
                return true;
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1147p, com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    @TargetApi(19)
    public void onCreate(Bundle bundle) {
        int intValue;
        super.onCreate(bundle);
        super.setContentView(R.layout.player);
        Intent intent = getIntent();
        Uri data = intent.getData();
        if (data == null) {
            finish();
            return;
        }
        Resources resources = getResources();
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        if (!m3816e(QuickApp.f2061d || defaultSharedPreferences.getBoolean("auto_hide_navigate_bar", false))) {
            getWindow().addFlags(1024);
        }
        setTitle(R.string.loading);
        m3824i(true);
        this.f3730I.getViewTreeObserver().addOnGlobalLayoutListener(this.f2034y);
        this.f2023n = intent.getIntExtra("android.intent.extra.screenOrientation", C0742b.m2960a(defaultSharedPreferences.getString("screen_orientation", "-1"), -1));
        if (this.f2023n != -2) {
            m3851a(this.f2023n);
        }
        this.f2026q = intent.getBooleanExtra("android.intent.extra.finishOnCompletion", true);
        this.f2029t = (AudioManager) getSystemService("audio");
        this.f2004a = (ViewGroup) this.f3730I.findViewById(R.id.volume_bar);
        this.f2011b = (ImageView) this.f2004a.findViewById(R.id.vol_icon);
        this.f2012c = (VolumeBar) this.f2004a.findViewById(R.id.volume);
        this.f2012c.setMax(this.f2029t.getStreamMaxVolume(3));
        this.f2012c.setProgress(this.f2029t.getStreamVolume(3));
        this.f2016g = (ViewGroup) this.f3730I.findViewById(R.id.play_bar);
        this.f2017h = (ImageView) this.f2016g.findViewById(R.id.play);
        this.f2017h.setOnClickListener(this.f3747Z);
        C1294d.m4210a(this.f2017h);
        m2010b();
        this.f2018i = (ImageView) this.f2016g.findViewById(R.id.replay);
        this.f2013d = (SeekBar) this.f3733L.findViewById(R.id.seek);
        this.f2013d.setMax(QuickApp.f2063f);
        this.f2013d.setProgress(0);
        this.f2013d.setOnSeekBarChangeListener(this.f2035z);
        float f = getResources().getDisplayMetrics().density;
        this.f2014e = (TextView) this.f3733L.findViewById(R.id.duration);
        this.f2014e.setTextColor(-855638017);
        this.f2014e.setShadowLayer(f / 2.0f, f / 4.0f, f / 4.0f, -16777216);
        this.f2015f = (TextView) this.f3733L.findViewById(R.id.time);
        this.f2015f.setTextColor(-855638017);
        this.f2015f.setShadowLayer(f / 2.0f, f / 4.0f, f / 4.0f, -16777216);
        this.f2015f.setOnClickListener(new ViewOnClickListenerC0540an(this));
        this.f2019j = (PlayerView) this.f3730I.findViewById(R.id.player);
        this.f2019j.m2031a(this.f2013d, this.f2012c, this.f2035z);
        this.f2019j.m2030a(new C0541ao(this, data));
        this.f2020k = this.f2019j.m2028a();
        this.f2020k.setOnCompletionListener(new C0544ar(this));
        this.f2020k.setOnErrorListener(new C0545as(this, data));
        if (!f3727H) {
            this.f2031v = new C0546at(this);
            registerReceiver(this.f2031v, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        }
        m2012d();
        this.f2033x.m2608a(C0742b.m2990b(this, "video_bookmark"));
        if (bundle == null || !bundle.containsKey("cur_pos")) {
            Integer num = (Integer) this.f2033x.m2610b(data.toString());
            intValue = num != null ? num.intValue() : 0;
            if (intValue > 0) {
                this.f2018i.setImageDrawable(C1387b.m4499a(resources, R.raw.ic_menu_retry, -855638017, resources.getDimensionPixelSize(R.dimen.menu_material_icon_size)));
                this.f2018i.setVisibility(0);
                this.f2018i.setOnClickListener(new ViewOnClickListenerC0547au(this));
            }
        } else {
            intValue = bundle.getInt("cur_pos", 0);
        }
        this.f2019j.m2029a(intent, intValue);
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    @TargetApi(11)
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuC0693b.m2735a(this, R.menu.player, menu);
        boolean z = this.f2030u != null && this.f2024o > 1;
        MenuItem findItem = menu.findItem(R.id.tracks);
        m3803a(findItem, z);
        if (z) {
            C0170m c0170m = new C0170m(this);
            c0170m.m416a(this.f3745X);
            findItem.setIcon(c0170m);
        }
        m3801a(menu, R.id.share, 2);
        mo1992a(menu.findItem(R.id.rotation), 2);
        this.f2022m = menu.findItem(R.id.battery);
        if (f3727H) {
            m3803a(this.f2022m, false);
        } else {
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.menu_material_icon_size);
            this.f2022m.setIcon(C1294d.m4209a(this.f2032w, dimensionPixelSize, dimensionPixelSize, this.f3745X));
            mo1992a(this.f2022m, 2);
        }
        return true;
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.f2031v != null) {
            unregisterReceiver(this.f2031v);
            this.f2031v = null;
        }
        if (this.f3730I != null) {
            this.f3730I.getViewTreeObserver().removeGlobalOnLayoutListener(this.f2034y);
        }
        if (this.f2019j != null) {
            this.f2019j.m2032b();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        switch (i) {
            case 24:
            case 25:
                this.f2029t.adjustVolume(i == 25 ? -1 : 1, 0);
                m3836u();
                if (this.f2004a.getVisibility() != 0) {
                    if (!f3726G) {
                        this.f2004a.setVisibility(8);
                    }
                    this.f2004a.setVisibility(0);
                    this.f2004a.startAnimation(m3810c(true));
                }
                this.f2012c.setProgress(this.f2029t.getStreamVolume(3));
                m2013e();
                m3817f(1500);
                return true;
            default:
                return super.onKeyDown(i, keyEvent);
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        switch (itemId) {
            case R.id.share /* 2131296266 */:
                Intent intent = getIntent();
                new C1246df(this, intent.getData(), 'V', intent.getType(), null).m4076a(findViewById(itemId));
                return true;
            case R.id.rewind /* 2131296297 */:
            case R.id.forward /* 2131296299 */:
                this.f2020k.seekTo((itemId == R.id.forward ? 10000 : -10000) + this.f2020k.getCurrentPosition());
                m2009b(true);
                m3817f(HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE);
                return true;
            case R.id.play /* 2131296298 */:
                if (this.f2020k.isPlaying()) {
                    this.f2020k.pause();
                    this.f3829A.removeMessages(100);
                    m3836u();
                } else {
                    this.f2020k.start();
                    this.f3829A.sendEmptyMessage(100);
                    mo1994a(false);
                }
                m2012d();
                return true;
            case R.id.tracks /* 2131296365 */:
                if (this.f2030u == null || this.f2024o <= 1) {
                    return true;
                }
                MenuC0693b.m2736a(this, findViewById(itemId), new C0548av(this));
                return true;
            case R.id.rotation /* 2131296366 */:
                m3851a(getRequestedOrientation() == 0 ? 1 : 0);
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1147p, com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onPause() {
        Uri data = getIntent().getData();
        if (data != null) {
            String uri = data.toString();
            int currentPosition = this.f2020k.getCurrentPosition();
            if (this.f2025p || currentPosition <= 5000 || currentPosition + 5000 >= this.f2020k.getDuration() || this.f2020k.getDuration() <= 60000) {
                this.f2033x.m2614c(uri);
            } else {
                this.f2033x.m2606a(uri, Integer.valueOf(currentPosition));
            }
            this.f2033x.m2620h();
        }
        this.f2019j.m2033c();
        super.onPause();
    }

    @Override // com.alensw.p038ui.activity.ActivityC1147p, com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onResume() {
        if (this.f2005ab) {
            this.f2019j.m2034d();
        }
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        if (this.f2025p) {
            bundle.remove("cur_pos");
        } else {
            bundle.putInt("cur_pos", this.f2020k.getCurrentPosition());
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        if (!this.f2005ab && z) {
            this.f2019j.m2034d();
        }
        this.f2005ab = z;
        super.onWindowFocusChanged(z);
    }
}
