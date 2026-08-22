package com.alensw.p023b.p032i;

import android.graphics.Bitmap;
import com.alensw.p023b.p031h.C0706b;

/* renamed from: com.alensw.b.i.a */
/* loaded from: classes.dex */
public class C0722a extends C0724c {

    /* renamed from: a */
    private final int f2748a;

    /* renamed from: b */
    private final int f2749b;

    /* renamed from: c */
    private final Bitmap.Config f2750c;

    public C0722a(int i, int i2, int i3, Bitmap.Config config) {
        super(i);
        this.f2748a = i2;
        this.f2749b = i3;
        this.f2750c = config;
    }

    /* renamed from: a */
    public Bitmap m2895a(int i, int i2, Bitmap.Config config) {
        Bitmap bitmap = null;
        if (i == this.f2748a && i2 == this.f2749b && config == this.f2750c) {
            synchronized (this) {
                bitmap = (Bitmap) super.m2906a();
            }
        }
        return bitmap == null ? C0706b.m2773a(this.f2748a, this.f2749b, this.f2750c) : bitmap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alensw.p023b.p032i.C0724c
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo2897a(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // com.alensw.p023b.p032i.C0724c
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void mo2899b(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        if (bitmap.getWidth() != this.f2748a || bitmap.getHeight() != this.f2749b) {
            bitmap.recycle();
        } else {
            synchronized (this) {
                super.mo2899b((Object) bitmap);
            }
        }
    }
}
