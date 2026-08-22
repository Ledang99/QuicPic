package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import java.net.HttpURLConnection;
import org.json.JSONObject;

/* renamed from: com.alensw.cloud.a.q */
/* loaded from: classes.dex */
class C0850q extends C0811by {

    /* renamed from: a */
    final /* synthetic */ ContentValues f3104a;

    /* renamed from: b */
    final /* synthetic */ StringBuilder f3105b;

    /* renamed from: c */
    final /* synthetic */ C0847n f3106c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0850q(C0847n c0847n, int i, InterfaceC0679f interfaceC0679f, ContentValues contentValues, StringBuilder sb) {
        super(c0847n, i, interfaceC0679f);
        this.f3106c = c0847n;
        this.f3104a = contentValues;
        this.f3105b = sb;
    }

    @Override // com.alensw.cloud.p036a.C0811by, com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2685a(int i, String str) {
        if (i == 409) {
            try {
                if ("item_name_in_use".equals(new JSONObject(str).getString("code"))) {
                    return;
                }
            } catch (Exception e) {
            }
        }
        super.mo2685a(i, str);
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        abstractC0518h.mo1643a();
        this.f3106c.m3262a(abstractC0518h, this.f3104a);
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        C0675b.m2677a(httpURLConnection, "application/json; charset=utf-8", this.f3105b.toString());
    }
}
