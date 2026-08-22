package com.alensw.cloud;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.widget.BaseAdapter;
import com.alensw.p038ui.activity.ActivityC1109ao;
import com.alensw.p038ui.p039a.C1071f;
import java.util.ArrayList;
import java.util.Arrays;

/* renamed from: com.alensw.cloud.e */
/* loaded from: classes.dex */
public class C0879e {

    /* renamed from: a */
    private static final C0961x[] f3170a = {new C0880f(), new C0929p(), new C0930q(), new C0931r(), new C0932s(), new C0957t(), new C0958u(), new C0959v(), new C0960w(), new C0881g(), new C0882h(), new C0883i(), new C0884j(), new k(), new C0885l()};

    /* renamed from: a */
    public static BaseAdapter m3313a(Context context, int[] iArr) {
        Resources resources = context.getResources();
        int m3794b = ActivityC1109ao.m3794b(context, R.attr.textColorPrimary);
        int m3794b2 = ActivityC1109ao.m3794b(context, R.attr.textColorSecondary);
        int dimensionPixelSize = resources.getDimensionPixelSize(com.alensw.PicFolder.R.dimen.button_padding);
        int i = dimensionPixelSize * 2;
        int dimensionPixelSize2 = resources.getDimensionPixelSize(com.alensw.PicFolder.R.dimen.button_height) - i;
        ArrayList arrayList = new ArrayList(f3170a.length);
        int i2 = -1;
        for (C0961x c0961x : m3317a(resources)) {
            if (iArr == null || m3316a(iArr, c0961x.f3351d)) {
                if (i2 != c0961x.f3351d) {
                    i2 = c0961x.f3351d;
                    C0961x c0961x2 = new C0961x();
                    switch (c0961x.f3351d) {
                        case 1:
                            c0961x2.f3350c = com.alensw.PicFolder.R.string.cloud_catalog_album;
                            break;
                        case 2:
                            c0961x2.f3350c = com.alensw.PicFolder.R.string.cloud_catalog_drive;
                            break;
                        case 3:
                            c0961x2.f3350c = com.alensw.PicFolder.R.string.cloud_catalog_subscription;
                            break;
                    }
                    arrayList.add(c0961x2);
                }
                arrayList.add(c0961x);
            }
        }
        return new C0887n(arrayList, context, i, dimensionPixelSize, m3794b2, m3794b, resources, dimensionPixelSize2);
    }

    /* renamed from: a */
    public static synchronized C0961x m3314a(EnumC0963z enumC0963z) {
        C0961x c0961x;
        synchronized (C0879e.class) {
            C0961x[] c0961xArr = f3170a;
            int length = c0961xArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    c0961x = null;
                    break;
                }
                c0961x = c0961xArr[i];
                if (c0961x.f3348a == enumC0963z) {
                    break;
                }
                i++;
            }
        }
        return c0961x;
    }

    /* renamed from: a */
    public static void m3315a(Context context, int[] iArr, InterfaceC0962y interfaceC0962y) {
        BaseAdapter m3313a = m3313a(context, iArr);
        C1071f.m3741a(C1071f.m3735a(context, com.alensw.PicFolder.R.string.add, m3313a, new DialogInterfaceOnClickListenerC0888o(interfaceC0962y, m3313a)));
    }

    /* renamed from: a */
    public static boolean m3316a(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static synchronized C0961x[] m3317a(Resources resources) {
        C0961x[] c0961xArr;
        synchronized (C0879e.class) {
            Arrays.sort(f3170a, new C0886m(resources));
            c0961xArr = f3170a;
        }
        return c0961xArr;
    }
}
