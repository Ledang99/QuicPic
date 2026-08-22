package com.alensw.p038ui.p041c;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Intent;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.nfc.NfcAdapter;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.widget.Toast;
import com.alensw.p038ui.activity.ActivityC1147p;
import com.alensw.p038ui.view.C1347bu;
import com.alensw.p038ui.view.ContainerLayout;
import com.alensw.p038ui.view.InterpolatorC1356cc;
import java.util.Iterator;
import java.util.Stack;
import org.apache.http.HttpStatus;

@SuppressLint({"Registered"})
/* renamed from: com.alensw.ui.c.cx */
/* loaded from: classes.dex */
public class ActivityC1237cx extends ActivityC1147p {

    /* renamed from: e */
    private ContainerLayout f4102e;

    /* renamed from: a */
    protected int f4098a = 0;

    /* renamed from: b */
    protected int f4099b = HttpStatus.SC_BAD_REQUEST;

    /* renamed from: c */
    protected float f4100c = 1.0f;

    /* renamed from: d */
    protected final Rect f4101d = new Rect();

    /* renamed from: f */
    private final Stack f4103f = new Stack();

    /* renamed from: a */
    public Animation m4036a(boolean z, boolean z2, RectF rectF, RectF rectF2) {
        C1347bu c1347bu = new C1347bu(z, z2, rectF, rectF2);
        c1347bu.setDuration(m4039b(z));
        c1347bu.setInterpolator(m4046j(z));
        return c1347bu;
    }

    /* renamed from: a */
    public C1234cu m4037a(Class cls, Intent intent, Bundle bundle) {
        try {
            C1234cu c1234cu = (C1234cu) cls.newInstance();
            c1234cu.f4082C = this;
            c1234cu.f4084E = intent;
            c1234cu.m4030e(1);
            c1234cu.mo3865a(bundle);
            m4040b(c1234cu);
            return c1234cu;
        } catch (Throwable th) {
            th.printStackTrace();
            Toast.makeText(this, "create failed: " + th, 1).show();
            return null;
        }
    }

    /* renamed from: a */
    public void mo1991a(Rect rect) {
        super.m3800a(this.f4101d, rect);
    }

    @TargetApi(11)
    /* renamed from: a */
    protected void mo1993a(C1234cu c1234cu) {
        if (c1234cu != null) {
            setTitle(c1234cu.f4085F);
            m3806a(c1234cu.f4086G);
            m3824i(c1234cu.f4089J);
        }
        if (this.f4098a >= 2) {
            invalidateOptionsMenu();
        }
        int m4043d = m4043d();
        m3820g(m4043d > 1);
        m3822h(m4043d > 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0070  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m4038a(C1234cu c1234cu, boolean z) {
        RectF rectF;
        long mo3860a;
        C1234cu m4041c = m4041c();
        if (c1234cu == null) {
            c1234cu = m4041c;
        }
        if (c1234cu == null || !this.f4103f.remove(c1234cu)) {
            return false;
        }
        boolean z2 = m4041c == c1234cu;
        C1234cu m4041c2 = m4041c();
        c1234cu.f4088I = true;
        c1234cu.m4030e(1);
        if (z2) {
            mo1993a(m4041c2);
        }
        if (m4041c2 != null) {
            m4041c2.mo3971b(c1234cu.f4084E);
            m4041c2.m4030e(2);
            m4041c2.f4083D.setVisibility(0);
            if (z) {
                rectF = m4041c2.mo3978h();
                mo3860a = rectF == null ? c1234cu.mo3860a(false, rectF) : 0L;
                if (m4041c2 != null && mo3860a > 0 && f3726G) {
                    AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                    alphaAnimation.setDuration(mo3860a);
                    m4041c2.f4083D.startAnimation(alphaAnimation);
                }
                this.f4102e.postDelayed(new RunnableC1239cz(this, c1234cu, m4041c2), Math.max(mo3860a, 0L));
                return true;
            }
        }
        rectF = null;
        if (rectF == null) {
        }
        if (m4041c2 != null) {
            AlphaAnimation alphaAnimation2 = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation2.setDuration(mo3860a);
            m4041c2.f4083D.startAnimation(alphaAnimation2);
        }
        this.f4102e.postDelayed(new RunnableC1239cz(this, c1234cu, m4041c2), Math.max(mo3860a, 0L));
        return true;
    }

    /* renamed from: a_ */
    protected ViewGroup mo1995a_() {
        ContainerLayout containerLayout = new ContainerLayout(this);
        setContentView(containerLayout);
        return containerLayout;
    }

    /* renamed from: b */
    public long m4039b(boolean z) {
        return (long) ((z ? 1.0f : 0.8f) * this.f4100c * this.f4099b);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m4040b(C1234cu c1234cu) {
        int i;
        long j;
        RectF rectF = null;
        C1234cu m4041c = m4041c();
        if (m4041c != null) {
            i = this.f4102e.indexOfChild(m4041c.f4083D) + 1;
            rectF = m4041c.mo3978h();
            m4041c.m4030e(1);
            m4041c.f4083D.setVisibility(4);
        } else {
            i = 0;
        }
        this.f4103f.push(c1234cu);
        this.f4102e.addView(c1234cu.f4083D, i);
        c1234cu.f4083D.setVisibility(0);
        mo1993a(c1234cu);
        if (this.f4098a == 3) {
            c1234cu.m4030e(2);
            if (m4041c != null && rectF != null) {
                j = c1234cu.mo3860a(true, rectF);
                if (m4041c == null) {
                    if (j > 0 && f3726G) {
                        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                        alphaAnimation.setDuration((3 * j) / 4);
                        m4041c.f4083D.startAnimation(alphaAnimation);
                    }
                    if (rectF != null) {
                        this.f4102e.postDelayed(new RunnableC1238cy(this, m4041c), Math.max(j, 0L));
                        return;
                    }
                    return;
                }
                return;
            }
        }
        j = 0;
        if (m4041c == null) {
        }
    }

    /* renamed from: c */
    public C1234cu m4041c() {
        if (this.f4103f.size() > 0) {
            return (C1234cu) this.f4103f.peek();
        }
        return null;
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao
    /* renamed from: c */
    protected boolean mo3811c(Menu menu) {
        C1234cu m4041c = m4041c();
        if (m4041c != null) {
            return m4041c.mo3973c(menu);
        }
        return false;
    }

    /* renamed from: c */
    public boolean m4042c(C1234cu c1234cu) {
        return m4038a(c1234cu, true);
    }

    /* renamed from: d */
    public int m4043d() {
        return this.f4103f.size();
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao
    /* renamed from: d */
    protected boolean mo3814d(Menu menu) {
        C1234cu m4041c = m4041c();
        if (m4041c != null) {
            return m4041c.mo3975d(menu);
        }
        return false;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        C1234cu m4041c = m4041c();
        if (m4041c == null || !m4041c.mo3944a(keyEvent, false)) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    @TargetApi(11)
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        C1234cu m4041c = m4041c();
        if (m4041c == null || !m4041c.mo3944a(keyEvent, true)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        C1234cu m4041c = m4041c();
        if (m4041c == null || !m4041c.mo3947a(motionEvent)) {
            return super.dispatchTouchEvent(motionEvent);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public void m4044e() {
        for (int size = this.f4103f.size() - 1; size >= 0; size--) {
            m4038a((C1234cu) null, false);
        }
    }

    /* renamed from: f */
    public Uri[] m4045f() {
        C1234cu m4041c = m4041c();
        if (m4041c != null) {
            return m4041c.mo3953j();
        }
        return null;
    }

    /* renamed from: j */
    public Interpolator m4046j(boolean z) {
        return new InterpolatorC1356cc();
    }

    @Override // com.alensw.p038ui.activity.ActivityC1147p, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        C1234cu m4041c = m4041c();
        if (m4041c != null) {
            m4041c.mo3940a(i, i2, intent);
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onBackPressed() {
        C1234cu m4041c = m4041c();
        if (m4041c == null || m4041c.mo4003f()) {
            if (m4043d() <= 1 || m3832q()) {
                super.onBackPressed();
            } else {
                m4042c((C1234cu) null);
            }
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1147p, com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    @TargetApi(16)
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f4098a = 1;
        this.f4099b = Math.max(getResources().getInteger(R.integer.config_mediumAnimTime), HttpStatus.SC_BAD_REQUEST);
        this.f4100c = Settings.System.getFloat(getContentResolver(), Build.VERSION.SDK_INT >= 17 ? "transition_animation_scale" : "transition_animation_scale", 1.0f);
        ViewGroup mo1995a_ = mo1995a_();
        if (mo1995a_ instanceof ContainerLayout) {
            this.f4102e = (ContainerLayout) mo1995a_;
        } else {
            this.f4102e = (ContainerLayout) mo1995a_.getChildAt(0);
        }
        this.f4102e.setOnInsetsListener(new C1241da(this));
        if (Build.VERSION.SDK_INT < 11 && bundle == null) {
            bundle = (Bundle) getIntent().getParcelableExtra("activity_extras");
        }
        if (bundle != null) {
            ClassLoader classLoader = getClassLoader();
            int i = bundle.getInt("iteraction_count");
            for (int i2 = 0; i2 < i; i2++) {
                try {
                    Class<?> loadClass = classLoader.loadClass(bundle.getString("iteraction_class_" + i2));
                    Intent intent = (Intent) bundle.getParcelable("iteraction_intent_" + i2);
                    intent.setExtrasClassLoader(classLoader);
                    m4037a(loadClass, intent, bundle.getBundle("iteraction_state_" + i2));
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        if (Build.VERSION.SDK_INT >= 16) {
            try {
                NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter(this);
                if (defaultAdapter != null) {
                    defaultAdapter.setBeamPushUrisCallback(new C1242db(this), this);
                }
            } catch (Throwable th2) {
            }
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        boolean onCreateOptionsMenu = super.onCreateOptionsMenu(menu);
        C1234cu m4041c = m4041c();
        return m4041c != null ? m4041c.mo3945a(menu) : onCreateOptionsMenu;
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f4098a = 0;
        while (this.f4103f.size() > 0) {
            ((C1234cu) this.f4103f.pop()).m4030e(0);
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1147p, android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        C1234cu m4041c = m4041c();
        if (m4041c == null || m4041c.mo3943a(i, menu)) {
            return super.onMenuOpened(i, menu);
        }
        return false;
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        C1234cu m4041c = m4041c();
        if (m4041c == null || !m4041c.mo3946a(menuItem)) {
            return super.onOptionsItemSelected(menuItem);
        }
        return true;
    }

    @Override // android.app.Activity
    public void onOptionsMenuClosed(Menu menu) {
        super.onOptionsMenuClosed(menu);
        C1234cu m4041c = m4041c();
        if (m4041c != null) {
            m4041c.mo3951e(menu);
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1147p, com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f4098a = 2;
        C1234cu m4041c = m4041c();
        if (m4041c != null) {
            m4041c.m4030e(1);
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        boolean onPrepareOptionsMenu = super.onPrepareOptionsMenu(menu);
        C1234cu m4041c = m4041c();
        return m4041c != null ? m4041c.mo3950b(menu) : onPrepareOptionsMenu;
    }

    @Override // com.alensw.p038ui.activity.ActivityC1147p, com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f4098a = 3;
        C1234cu m4041c = m4041c();
        if (m4041c != null) {
            m4041c.m4030e(2);
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        int i = 0;
        Iterator it = this.f4103f.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                bundle.putInt("iteraction_count", i2);
                return;
            }
            C1234cu c1234cu = (C1234cu) it.next();
            Bundle bundle2 = new Bundle();
            c1234cu.mo3949b(bundle2);
            bundle.putString("iteraction_class_" + i2, c1234cu.getClass().getName());
            bundle.putParcelable("iteraction_intent_" + i2, c1234cu.f4084E);
            bundle.putBundle("iteraction_state_" + i2, bundle2);
            i = i2 + 1;
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1147p, com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onStart() {
        super.onStart();
        this.f4098a = 2;
    }

    @Override // com.alensw.p038ui.activity.ActivityC1147p, com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onStop() {
        super.onStop();
        this.f4098a = 1;
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao
    /* renamed from: r */
    protected void mo3833r() {
        C1234cu m4041c = m4041c();
        if (m4041c != null) {
            m4041c.mo3980k();
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void recreate() {
        super.recreate();
    }
}
