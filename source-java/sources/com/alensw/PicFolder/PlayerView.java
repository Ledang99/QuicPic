package com.alensw.PicFolder;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.SeekBar;
import android.widget.VideoView;
import com.alensw.p038ui.view.InterpolatorC1356cc;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.apache.http.protocol.HttpRequestExecutor;

@SuppressLint({"Instantiatable"})
/* loaded from: classes.dex */
class PlayerView extends FrameLayout {

    /* renamed from: a */
    protected final GestureDetector.OnGestureListener f2036a;

    /* renamed from: b */
    private int f2037b;

    /* renamed from: c */
    private int f2038c;

    /* renamed from: d */
    private int f2039d;

    /* renamed from: e */
    private int f2040e;

    /* renamed from: f */
    private boolean f2041f;

    /* renamed from: g */
    private boolean f2042g;

    /* renamed from: h */
    private SeekBar f2043h;

    /* renamed from: i */
    private SeekBar f2044i;

    /* renamed from: j */
    private SeekBar.OnSeekBarChangeListener f2045j;

    /* renamed from: k */
    private final Handler f2046k;

    /* renamed from: l */
    private final VideoView f2047l;

    /* renamed from: m */
    private final GestureDetector f2048m;

    /* renamed from: n */
    private int f2049n;

    /* renamed from: o */
    private int f2050o;

    /* renamed from: p */
    private float f2051p;

    /* renamed from: q */
    private float[] f2052q;

    public PlayerView(Context context) {
        this(context, null);
    }

    @TargetApi(8)
    public PlayerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2049n = 0;
        this.f2036a = new C0550ax(this);
        this.f2050o = 0;
        this.f2051p = 1.0f;
        this.f2052q = new float[3];
        this.f2046k = new Handler();
        this.f2048m = new GestureDetector(context, this.f2036a, this.f2046k);
        this.f2047l = new VideoView(context);
        addView(this.f2047l, new FrameLayout.LayoutParams(-1, -1, 17));
        this.f2037b = (int) (getResources().getDisplayMetrics().density * 16.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public void m2025f() {
        float[] m2035e = m2035e();
        float f = this.f2051p;
        for (int i = 0; i < 3; i++) {
            this.f2050o = (this.f2050o + 1) % 3;
            f = m2035e[this.f2050o];
            if (Math.abs(f - this.f2051p) > 0.05f) {
                break;
            }
        }
        if (f == this.f2051p) {
            return;
        }
        float f2 = this.f2051p;
        new C0552az(this, this.f2047l, new InterpolatorC1356cc(), f2, f - f2, f).m4402a(QuickApp.f2066i, true);
    }

    /* renamed from: a */
    public final VideoView m2028a() {
        return this.f2047l;
    }

    /* renamed from: a */
    public void m2029a(Intent intent, int i) {
        try {
            Uri data = intent.getData();
            Bundle bundleExtra = intent.getBundleExtra("com.android.browser.headers");
            if (bundleExtra != null) {
                try {
                    Method declaredMethod = this.f2047l.getClass().getDeclaredMethod("setVideoURI", Uri.class, Map.class);
                    Set<String> keySet = bundleExtra.keySet();
                    HashMap hashMap = new HashMap(keySet.size());
                    for (String str : keySet) {
                        hashMap.put(str, bundleExtra.getString(str));
                    }
                    declaredMethod.invoke(this.f2047l, data, hashMap);
                } catch (Throwable th) {
                    this.f2047l.setVideoURI(data);
                }
            } else {
                this.f2047l.setVideoURI(data);
            }
            if (i != 0) {
                this.f2047l.seekTo(i);
            }
            this.f2047l.requestFocus();
            this.f2047l.start();
        } catch (Throwable th2) {
        }
    }

    /* renamed from: a */
    public void m2030a(MediaPlayer.OnPreparedListener onPreparedListener) {
        this.f2047l.setOnPreparedListener(new C0551ay(this, onPreparedListener));
    }

    /* renamed from: a */
    public void m2031a(SeekBar seekBar, SeekBar seekBar2, SeekBar.OnSeekBarChangeListener onSeekBarChangeListener) {
        this.f2043h = seekBar;
        this.f2044i = seekBar2;
        this.f2045j = onSeekBarChangeListener;
    }

    /* renamed from: b */
    public void m2032b() {
        try {
            if (this.f2047l != null) {
                this.f2047l.stopPlayback();
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: c */
    public void m2033c() {
        try {
            this.f2041f = true;
            this.f2040e = this.f2047l.getCurrentPosition();
            if (Build.VERSION.SDK_INT >= 8) {
                this.f2047l.suspend();
            } else {
                this.f2042g = this.f2047l.isPlaying();
                if (this.f2042g) {
                    this.f2047l.pause();
                }
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: d */
    public void m2034d() {
        if (this.f2041f) {
            try {
                if (Build.VERSION.SDK_INT >= 8) {
                    this.f2047l.seekTo(this.f2040e);
                    this.f2047l.resume();
                    return;
                }
                if (this.f2042g) {
                    this.f2047l.start();
                }
                if (this.f2040e != 0) {
                    this.f2047l.seekTo(this.f2040e);
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: e */
    public float[] m2035e() {
        float width = getWidth();
        float height = getHeight();
        float f = this.f2038c > 0 ? width / this.f2038c : 1.0f;
        float f2 = this.f2039d > 0 ? height / this.f2039d : 1.0f;
        this.f2052q[0] = Math.min(f, f2);
        this.f2052q[1] = Math.max(f, f2);
        this.f2052q[2] = 1.0f;
        return this.f2052q;
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        boolean fitSystemWindows = super.fitSystemWindows(rect);
        ((PlayerActivity) getContext()).m2007a(rect);
        return fitSystemWindows;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f2050o == 0 && this.f2051p == this.f2052q[0]) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int i5 = i3 - i;
        int i6 = i4 - i2;
        if (i5 > 0 && i6 > 0 && this.f2038c > 0 && this.f2039d > 0) {
            int round = Math.round(this.f2038c * this.f2051p);
            int round2 = Math.round(this.f2039d * this.f2051p);
            i += (i5 - round) / 2;
            i2 += (i6 - round2) / 2;
            i3 = i + round;
            i4 = i2 + round2;
        }
        this.f2047l.layout(i, i2, i3, i4);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        if (i <= 0 || i2 <= 0 || this.f2038c <= 0 || this.f2039d <= 0) {
            return;
        }
        this.f2050o = 0;
        this.f2051p = m2035e()[this.f2050o];
        requestLayout();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction() & 255) {
            case 1:
                if (this.f2049n != 0 && this.f2045j != null) {
                    SeekBar seekBar = this.f2049n == 1 ? this.f2043h : this.f2044i;
                    this.f2049n = 0;
                    this.f2045j.onStopTrackingTouch(seekBar);
                    break;
                } else {
                    ((PlayerActivity) getContext()).m3817f(HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE);
                    break;
                }
                break;
        }
        return this.f2048m.onTouchEvent(motionEvent);
    }
}
