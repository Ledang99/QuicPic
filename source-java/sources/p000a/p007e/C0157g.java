package p000a.p007e;

/* renamed from: a.e.g */
/* loaded from: classes.dex */
public class C0157g {

    /* renamed from: a */
    byte[] f734a;

    /* renamed from: b */
    int f735b;

    /* renamed from: c */
    int f736c;

    public C0157g() {
    }

    public C0157g(byte[] bArr) {
        m387a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public void m387a(byte[] bArr, int i, int i2) {
        this.f734a = new byte[256];
        this.f735b = 0;
        while (this.f735b < 256) {
            this.f734a[this.f735b] = (byte) this.f735b;
            this.f735b++;
        }
        this.f736c = 0;
        this.f735b = 0;
        while (this.f735b < 256) {
            this.f736c = (this.f736c + bArr[(this.f735b % i2) + i] + this.f734a[this.f735b]) & 255;
            byte b2 = this.f734a[this.f735b];
            this.f734a[this.f735b] = this.f734a[this.f736c];
            this.f734a[this.f736c] = b2;
            this.f735b++;
        }
        this.f736c = 0;
        this.f735b = 0;
    }

    /* renamed from: a */
    public void m388a(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        int i4 = i + i2;
        while (i < i4) {
            this.f735b = (this.f735b + 1) & 255;
            this.f736c = (this.f736c + this.f734a[this.f735b]) & 255;
            byte b2 = this.f734a[this.f735b];
            this.f734a[this.f735b] = this.f734a[this.f736c];
            this.f734a[this.f736c] = b2;
            bArr2[i3] = (byte) (bArr[i] ^ this.f734a[(this.f734a[this.f735b] + this.f734a[this.f736c]) & 255]);
            i3++;
            i++;
        }
    }
}
