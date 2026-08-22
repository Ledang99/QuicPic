package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0681h;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;
import java.net.HttpURLConnection;
import org.json.JSONObject;

/* renamed from: com.alensw.cloud.a.f */
/* loaded from: classes.dex */
class C0839f extends C0811by {

    /* renamed from: a */
    final /* synthetic */ ContentValues f3079a;

    /* renamed from: b */
    final /* synthetic */ StringBuilder f3080b;

    /* renamed from: c */
    final /* synthetic */ C0681h f3081c;

    /* renamed from: d */
    final /* synthetic */ String[] f3082d;

    /* renamed from: e */
    final /* synthetic */ C0759a f3083e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0839f(C0759a c0759a, int i, InterfaceC0679f interfaceC0679f, ContentValues contentValues, StringBuilder sb, C0681h c0681h, String[] strArr) {
        super(c0759a, i, interfaceC0679f);
        this.f3083e = c0759a;
        this.f3079a = contentValues;
        this.f3080b = sb;
        this.f3081c = c0681h;
        this.f3082d = strArr;
    }

    @Override // com.alensw.cloud.p036a.C0811by, com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2685a(int i, String str) {
        if (i == 409) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if ("NAME_ALREADY_EXISTS".equals(jSONObject.getString("code"))) {
                    this.f3082d[0] = jSONObject.getJSONObject("info").getString("nodeId");
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
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        this.f3083e.m3137a(abstractC0518h, this.f3079a);
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        C0675b.m2675a(httpURLConnection, "form-data", this.f2569i, new C0681h(this.f3080b.toString(), "Content-Disposition", "form-data; name=\"metadata\""), this.f3081c);
    }
}
