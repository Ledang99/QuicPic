package com.p014a.p015a.p016a.p018b;

import com.p014a.p015a.p016a.InterfaceC0524n;
import java.io.Serializable;

/* renamed from: com.a.a.a.b.g */
/* loaded from: classes.dex */
public class C0487g implements InterfaceC0524n, Serializable {

    /* renamed from: a */
    protected final String f1775a;

    public C0487g(String str) {
        if (str == null) {
            throw new IllegalStateException("Null String illegal for SerializedString");
        }
        this.f1775a = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        return this.f1775a.equals(((C0487g) obj).f1775a);
    }

    public final int hashCode() {
        return this.f1775a.hashCode();
    }

    public final String toString() {
        return this.f1775a;
    }
}
