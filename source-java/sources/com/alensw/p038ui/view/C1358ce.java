package com.alensw.p038ui.view;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.util.FloatMath;

/* renamed from: com.alensw.ui.view.ce */
/* loaded from: classes.dex */
final class C1358ce implements SensorEventListener {

    /* renamed from: b */
    private static final int[][] f4687b = {new int[]{-25, 70}, new int[]{-25, 65}, new int[]{-25, 60}, new int[]{-25, 65}};

    /* renamed from: a */
    private final AbstractC1357cd f4688a;

    /* renamed from: c */
    private long f4689c;

    /* renamed from: d */
    private float f4690d;

    /* renamed from: e */
    private float f4691e;

    /* renamed from: f */
    private float f4692f;

    /* renamed from: g */
    private int f4693g;

    /* renamed from: h */
    private int f4694h;

    /* renamed from: i */
    private long f4695i;

    /* renamed from: j */
    private long f4696j;

    /* renamed from: k */
    private long f4697k;

    /* renamed from: l */
    private long f4698l;

    /* renamed from: m */
    private float[] f4699m = new float[40];

    /* renamed from: n */
    private long[] f4700n = new long[40];

    /* renamed from: o */
    private int f4701o;

    public C1358ce(AbstractC1357cd abstractC1357cd) {
        this.f4688a = abstractC1357cd;
        m4410a();
    }

    /* renamed from: a */
    private int m4409a(int i) {
        if (i == 0) {
            i = 40;
        }
        int i2 = i - 1;
        if (this.f4700n[i2] != Long.MIN_VALUE) {
            return i2;
        }
        return -1;
    }

    /* renamed from: a */
    private void m4410a() {
        this.f4689c = Long.MIN_VALUE;
        this.f4693g = -1;
        this.f4696j = Long.MIN_VALUE;
        this.f4697k = Long.MIN_VALUE;
        this.f4698l = Long.MIN_VALUE;
        m4416b();
        m4420c();
    }

    /* renamed from: a */
    private void m4411a(long j, float f) {
        this.f4699m[this.f4701o] = f;
        this.f4700n[this.f4701o] = j;
        this.f4701o = (this.f4701o + 1) % 40;
        this.f4700n[this.f4701o] = Long.MIN_VALUE;
    }

    /* renamed from: a */
    private void m4412a(long j, int i) {
        if (this.f4694h != i) {
            this.f4694h = i;
            this.f4695i = j;
        }
    }

    /* renamed from: a */
    private boolean m4413a(float f) {
        return f < 5.80665f || f > 13.80665f;
    }

    /* renamed from: a */
    private boolean m4414a(int i, int i2) {
        return i2 >= f4687b[i][0] && i2 <= f4687b[i][1];
    }

    /* renamed from: a */
    private boolean m4415a(long j) {
        return j >= this.f4695i + 40000000 && j >= this.f4696j + 500000000 && j >= this.f4697k + 300000000 && j >= this.f4698l + 500000000;
    }

    /* renamed from: b */
    private void m4416b() {
        this.f4694h = -1;
        this.f4695i = Long.MIN_VALUE;
    }

    /* renamed from: b */
    private boolean m4417b(int i, int i2) {
        int i3;
        i3 = this.f4688a.f4686f;
        if (i3 >= 0) {
            if (i == i3 || i == (i3 + 1) % 4) {
                int i4 = ((i * 90) - 45) + 22;
                if (i == 0) {
                    if (i2 >= 315 && i2 < i4 + 360) {
                        return false;
                    }
                } else if (i2 < i4) {
                    return false;
                }
            }
            if (i == i3 || i == (i3 + 3) % 4) {
                int i5 = ((i * 90) + 45) - 22;
                if (i == 0) {
                    if (i2 <= 45 && i2 > i5) {
                        return false;
                    }
                } else if (i2 > i5) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: b */
    private boolean m4418b(long j) {
        int i = this.f4701o;
        do {
            i = m4409a(i);
            if (i < 0 || this.f4699m[i] < 75.0f) {
                return false;
            }
        } while (this.f4700n[i] + 1000000000 > j);
        return true;
    }

    /* renamed from: b */
    private boolean m4419b(long j, float f) {
        int i = this.f4701o;
        do {
            i = m4409a(i);
            if (i < 0 || this.f4700n[i] + 300000000 < j) {
                return false;
            }
        } while (this.f4699m[i] + 20.0f > f);
        return true;
    }

    /* renamed from: c */
    private void m4420c() {
        this.f4700n[0] = Long.MIN_VALUE;
        this.f4701o = 1;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        boolean z;
        float f = sensorEvent.values[0];
        float f2 = sensorEvent.values[1];
        float f3 = sensorEvent.values[2];
        long j = sensorEvent.timestamp;
        long j2 = this.f4689c;
        float f4 = (j - j2) * 1.0E-6f;
        if (j < j2 || j > j2 + 1000000000 || (f == 0.0f && f2 == 0.0f && f3 == 0.0f)) {
            m4410a();
            z = true;
        } else {
            float f5 = f4 / (200.0f + f4);
            f = ((f - this.f4690d) * f5) + this.f4690d;
            f2 = ((f2 - this.f4691e) * f5) + this.f4691e;
            f3 = this.f4692f + (f5 * (f3 - this.f4692f));
            z = false;
        }
        this.f4689c = j;
        this.f4690d = f;
        this.f4691e = f2;
        this.f4692f = f3;
        if (!z) {
            float sqrt = FloatMath.sqrt((f * f) + (f2 * f2) + (f3 * f3));
            if (sqrt < 1.0f) {
                m4416b();
            } else {
                if (m4413a(sqrt)) {
                    this.f4698l = j;
                }
                int round = (int) Math.round(Math.asin(f3 / sqrt) * 57.295780181884766d);
                m4411a(j, round);
                if (m4418b(j)) {
                    this.f4696j = j;
                }
                if (m4419b(j, round)) {
                    this.f4697k = j;
                }
                if (Math.abs(round) > 75) {
                    m4416b();
                } else {
                    int round2 = (int) Math.round((-Math.atan2(-f, f2)) * 57.295780181884766d);
                    if (round2 < 0) {
                        round2 += 360;
                    }
                    int i = (round2 + 45) / 90;
                    if (i == 4) {
                        i = 0;
                    }
                    if (m4414a(i, round) && m4417b(i, round2)) {
                        m4412a(j, i);
                    } else {
                        m4416b();
                    }
                }
            }
        }
        int i2 = this.f4693g;
        if (this.f4694h < 0 || m4415a(j)) {
            this.f4693g = this.f4694h;
        }
        if (this.f4693g == i2 || this.f4693g < 0) {
            return;
        }
        this.f4688a.mo3855a(this.f4693g);
    }
}
