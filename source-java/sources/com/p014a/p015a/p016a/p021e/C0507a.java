package com.p014a.p015a.p016a.p021e;

import java.lang.reflect.Array;

/* renamed from: com.a.a.a.e.a */
/* loaded from: classes.dex */
public class C0507a {
    /* renamed from: a */
    public static char[] m1867a(char[] cArr, int i) {
        return m1868a(cArr, 0, i);
    }

    /* renamed from: a */
    public static char[] m1868a(char[] cArr, int i, int i2) {
        int i3 = i2 - i;
        int min = Math.min(i3, cArr.length - i);
        char[] cArr2 = new char[i3];
        System.arraycopy(cArr, i, cArr2, 0, min);
        return cArr2;
    }

    /* renamed from: a */
    public static int[] m1869a(int[] iArr, int i) {
        return m1870a(iArr, 0, i);
    }

    /* renamed from: a */
    public static int[] m1870a(int[] iArr, int i, int i2) {
        int i3 = i2 - i;
        int min = Math.min(i3, iArr.length - i);
        int[] iArr2 = new int[i3];
        System.arraycopy(iArr, i, iArr2, 0, min);
        return iArr2;
    }

    /* renamed from: a */
    public static Object[] m1871a(Object[] objArr, int i) {
        return m1872a(objArr, 0, i);
    }

    /* renamed from: a */
    public static Object[] m1872a(Object[] objArr, int i, int i2) {
        int i3 = i2 - i;
        int min = Math.min(i3, objArr.length - i);
        Object[] objArr2 = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i3);
        System.arraycopy(objArr, i, objArr2, 0, min);
        return objArr2;
    }
}
