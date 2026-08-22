package com.alensw.p038ui.view;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;

/* renamed from: com.alensw.ui.view.cd */
/* loaded from: classes.dex */
public abstract class AbstractC1357cd {

    /* renamed from: a */
    private final SensorManager f4681a;

    /* renamed from: b */
    private C1358ce f4682b;

    /* renamed from: c */
    private boolean f4683c;

    /* renamed from: d */
    private final int f4684d;

    /* renamed from: e */
    private final Sensor f4685e;

    /* renamed from: f */
    private int f4686f;

    public AbstractC1357cd(Context context) {
        this(context, 2);
    }

    private AbstractC1357cd(Context context, int i) {
        this.f4686f = -1;
        this.f4684d = i;
        this.f4681a = (SensorManager) context.getSystemService("sensor");
        this.f4685e = this.f4681a.getDefaultSensor(1);
        if (this.f4685e != null) {
            this.f4682b = new C1358ce(this);
        }
    }

    /* renamed from: a */
    public void m4407a() {
        if (this.f4685e == null || this.f4683c) {
            return;
        }
        this.f4681a.registerListener(this.f4682b, this.f4685e, this.f4684d);
        this.f4683c = true;
    }

    /* renamed from: a */
    public abstract void mo3855a(int i);

    /* renamed from: b */
    public void m4408b() {
        if (this.f4685e == null || !this.f4683c) {
            return;
        }
        this.f4681a.unregisterListener(this.f4682b);
        this.f4683c = false;
    }
}
