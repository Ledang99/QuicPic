package com.alensw.p023b.p025b;

import java.text.Collator;
import java.util.Comparator;

/* renamed from: com.alensw.b.b.c */
/* loaded from: classes.dex */
public class C0656c implements Comparator {

    /* renamed from: a */
    private final Collator f2528a = Collator.getInstance();

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(String str, String str2) {
        int compare = this.f2528a.compare(str, str2);
        return (compare != 0 || str == null) ? compare : str.compareTo(str2);
    }
}
