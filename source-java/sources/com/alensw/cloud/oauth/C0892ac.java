package com.alensw.cloud.oauth;

import android.net.Uri;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0680g;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.C0480b;
import com.p014a.p015a.p016a.EnumC0522l;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

/* renamed from: com.alensw.cloud.oauth.ac */
/* loaded from: classes.dex */
class C0892ac extends C0680g {

    /* renamed from: a */
    final /* synthetic */ Map f3211a;

    /* renamed from: b */
    final /* synthetic */ AbstractC0891ab f3212b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0892ac(AbstractC0891ab abstractC0891ab, InterfaceC0679f interfaceC0679f, Map map) {
        super(interfaceC0679f);
        this.f3212b = abstractC0891ab;
        this.f3211a = map;
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2685a(int i, String str) {
        this.f3212b.mo3352a(i, str);
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2687a(int i, String str, String str2, long j, InputStream inputStream) {
        C0480b c0480b;
        if (!(this.f3212b.mo3354b() == 0 ? str.endsWith("json") : this.f3212b.mo3354b() == 2)) {
            for (String str3 : C0675b.m2656a(inputStream, str2, this.f2569i).split("&")) {
                int indexOf = str3.indexOf(61);
                if (indexOf > 0) {
                    this.f3211a.put(Uri.decode(str3.substring(0, indexOf)), Uri.decode(str3.substring(indexOf + 1)));
                }
            }
            return;
        }
        c0480b = AbstractC0891ab.f3200o;
        AbstractC0518h m1660a = c0480b.m1660a(inputStream);
        try {
            if (m1660a.mo1643a() != EnumC0522l.START_OBJECT) {
                throw new IOException("Not json object");
            }
            while (m1660a.mo1643a() != EnumC0522l.END_OBJECT) {
                String mo1619d = m1660a.mo1619d();
                m1660a.mo1643a();
                this.f3211a.put(mo1619d, m1660a.mo1757p());
            }
        } finally {
            m1660a.close();
        }
    }
}
