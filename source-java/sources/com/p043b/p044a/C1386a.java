package com.p043b.p044a;

import org.apache.http.HttpStatus;

/* renamed from: com.b.a.a */
/* loaded from: classes.dex */
public class C1386a {

    /* renamed from: e */
    private static final double[] f4880e = new double[128];

    /* renamed from: a */
    public int f4881a;

    /* renamed from: b */
    private final CharSequence f4882b;

    /* renamed from: c */
    private final int f4883c;

    /* renamed from: d */
    private char f4884d;

    static {
        for (int i = 0; i < f4880e.length; i++) {
            f4880e[i] = Math.pow(10.0d, i);
        }
    }

    public C1386a(CharSequence charSequence, int i) {
        this.f4882b = charSequence;
        this.f4881a = i;
        this.f4883c = charSequence.length();
        this.f4884d = charSequence.charAt(i);
    }

    /* renamed from: a */
    public static float m4489a(int i, int i2) {
        if (i2 < -125 || i == 0) {
            return 0.0f;
        }
        if (i2 >= 128) {
            return i > 0 ? Float.POSITIVE_INFINITY : Float.NEGATIVE_INFINITY;
        }
        if (i2 == 0) {
            return i;
        }
        if (i >= 67108864) {
            i++;
        }
        return (float) (i2 > 0 ? i * f4880e[i2] : i / f4880e[-i2]);
    }

    /* renamed from: a */
    private void m4490a(char c) {
        throw new RuntimeException("Unexpected char '" + c + "'.");
    }

    /* renamed from: f */
    private char m4491f() {
        if (this.f4881a < this.f4883c) {
            this.f4881a++;
        }
        if (this.f4881a == this.f4883c) {
            return (char) 0;
        }
        return this.f4882b.charAt(this.f4881a);
    }

    /* renamed from: a */
    public void m4492a() {
        while (this.f4881a < this.f4883c && Character.isWhitespace(this.f4882b.charAt(this.f4881a))) {
            m4494c();
        }
    }

    /* renamed from: b */
    public void m4493b() {
        while (this.f4881a < this.f4883c) {
            switch (this.f4882b.charAt(this.f4881a)) {
                case '\t':
                case '\n':
                case ' ':
                case ',':
                    m4494c();
                default:
                    return;
            }
        }
    }

    /* renamed from: c */
    public void m4494c() {
        this.f4884d = m4491f();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0098, code lost:
    
        r6 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00fc, code lost:
    
        r1 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0064, code lost:
    
        r6 = r5;
        r5 = r4;
        r4 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[LOOP:1: B:26:0x0080->B:32:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d2 A[PHI: r2
      0x00d2: PHI (r2v1 boolean) = (r2v0 boolean), (r2v2 boolean) binds: [B:45:0x00b3, B:50:0x00c7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:87:? A[LOOP:5: B:81:0x004e->B:87:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0068  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public float m4495d() {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        boolean z2;
        int i5;
        int i6;
        int i7;
        boolean z3 = true;
        int i8 = 0;
        switch (this.f4884d) {
            case '+':
                z = true;
                this.f4884d = m4491f();
                break;
            case ',':
            default:
                z = true;
                break;
            case '-':
                z = false;
                this.f4884d = m4491f();
                break;
        }
        switch (this.f4884d) {
            case '.':
                i = 0;
                z2 = false;
                i4 = 0;
                i3 = 0;
                if (this.f4884d == '.') {
                    this.f4884d = m4491f();
                    switch (this.f4884d) {
                        case '0':
                            if (i4 == 0) {
                                while (true) {
                                    this.f4884d = m4491f();
                                    i--;
                                    switch (this.f4884d) {
                                        case '0':
                                        case '1':
                                        case '2':
                                        case '3':
                                        case '4':
                                        case '5':
                                        case '6':
                                        case '7':
                                        case '8':
                                        case '9':
                                            i6 = i4;
                                            i7 = i3;
                                            break;
                                        default:
                                            if (!z2) {
                                                break;
                                            }
                                            break;
                                    }
                                }
                                while (true) {
                                    if (i6 < 9) {
                                        i6++;
                                        i7 = (i7 * 10) + (this.f4884d - '0');
                                        i--;
                                    }
                                    this.f4884d = m4491f();
                                    switch (this.f4884d) {
                                    }
                                }
                            }
                            break;
                        case '1':
                        case '2':
                        case '3':
                        case '4':
                        case '5':
                        case '6':
                        case '7':
                        case '8':
                        case '9':
                            i6 = i4;
                            i7 = i3;
                            while (true) {
                                if (i6 < 9) {
                                }
                                this.f4884d = m4491f();
                                switch (this.f4884d) {
                                }
                            }
                            break;
                        default:
                            if (!z2) {
                                m4490a(this.f4884d);
                                break;
                            }
                            break;
                    }
                }
                switch (this.f4884d) {
                    case 'E':
                    case HttpStatus.SC_SWITCHING_PROTOCOLS /* 101 */:
                        this.f4884d = m4491f();
                        switch (this.f4884d) {
                            case '+':
                                this.f4884d = m4491f();
                                switch (this.f4884d) {
                                    case '0':
                                    case '1':
                                    case '2':
                                    case '3':
                                    case '4':
                                    case '5':
                                    case '6':
                                    case '7':
                                    case '8':
                                    case '9':
                                        switch (this.f4884d) {
                                            case '0':
                                                while (true) {
                                                    this.f4884d = m4491f();
                                                    switch (this.f4884d) {
                                                        case '1':
                                                        case '2':
                                                        case '3':
                                                        case '4':
                                                        case '5':
                                                        case '6':
                                                        case '7':
                                                        case '8':
                                                        case '9':
                                                            i5 = 0;
                                                            break;
                                                    }
                                                }
                                                break;
                                            case '1':
                                            case '2':
                                            case '3':
                                            case '4':
                                            case '5':
                                            case '6':
                                            case '7':
                                            case '8':
                                            case '9':
                                                i5 = 0;
                                                while (true) {
                                                    if (i8 < 3) {
                                                        i8++;
                                                        i5 = (i5 * 10) + (this.f4884d - '0');
                                                    }
                                                    this.f4884d = m4491f();
                                                    switch (this.f4884d) {
                                                    }
                                                }
                                                break;
                                        }
                                    default:
                                        m4490a(this.f4884d);
                                        break;
                                }
                            case ',':
                            case '.':
                            case '/':
                            default:
                                m4490a(this.f4884d);
                                break;
                            case '-':
                                z3 = false;
                                this.f4884d = m4491f();
                                switch (this.f4884d) {
                                }
                            case '0':
                            case '1':
                            case '2':
                            case '3':
                            case '4':
                            case '5':
                            case '6':
                            case '7':
                            case '8':
                            case '9':
                                break;
                        }
                }
                if (!z3) {
                    i8 = -i8;
                }
                int i9 = i8 + i;
                if (!z) {
                    i3 = -i3;
                }
                break;
            case '0':
                while (true) {
                    this.f4884d = m4491f();
                    switch (this.f4884d) {
                        case '.':
                        case 'E':
                        case HttpStatus.SC_SWITCHING_PROTOCOLS /* 101 */:
                            i = 0;
                            z2 = true;
                            i4 = 0;
                            i3 = 0;
                            break;
                        case '0':
                        case '1':
                        case '2':
                        case '3':
                        case '4':
                        case '5':
                        case '6':
                        case '7':
                        case '8':
                        case '9':
                            break;
                    }
                }
                i = 0;
                i2 = 0;
                int i10 = 0;
                while (true) {
                    if (i2 >= 9) {
                        i2++;
                        i10 = (i10 * 10) + (this.f4884d - '0');
                    } else {
                        i++;
                    }
                    this.f4884d = m4491f();
                    switch (this.f4884d) {
                    }
                    if (this.f4884d == '.') {
                    }
                    switch (this.f4884d) {
                        case 'E':
                        case HttpStatus.SC_SWITCHING_PROTOCOLS /* 101 */:
                            break;
                    }
                    if (!z3) {
                    }
                    int i92 = i8 + i;
                    if (!z) {
                    }
                    break;
                }
                break;
            case '1':
            case '2':
            case '3':
            case '4':
            case '5':
            case '6':
            case '7':
            case '8':
            case '9':
                i = 0;
                i2 = 0;
                int i102 = 0;
                while (true) {
                    if (i2 >= 9) {
                    }
                    this.f4884d = m4491f();
                    switch (this.f4884d) {
                    }
                    if (this.f4884d == '.') {
                    }
                    switch (this.f4884d) {
                        case 'E':
                        case HttpStatus.SC_SWITCHING_PROTOCOLS /* 101 */:
                            break;
                    }
                    if (!z3) {
                    }
                    int i922 = i8 + i;
                    if (!z) {
                    }
                    break;
                }
                break;
        }
        return 0.0f;
    }

    /* renamed from: e */
    public float m4496e() {
        m4492a();
        float m4495d = m4495d();
        m4493b();
        return m4495d;
    }
}
