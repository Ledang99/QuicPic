package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0681h;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;
import java.net.HttpURLConnection;
import org.json.JSONObject;

/* renamed from: com.alensw.cloud.a.r */
/* loaded from: classes.dex */
class C0851r extends C0811by {

    /* renamed from: a */
    final /* synthetic */ ContentValues f3107a;

    /* renamed from: b */
    final /* synthetic */ StringBuilder f3108b;

    /* renamed from: c */
    final /* synthetic */ C0681h f3109c;

    /* renamed from: d */
    final /* synthetic */ String[] f3110d;

    /* renamed from: e */
    final /* synthetic */ C0847n f3111e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0851r(C0847n c0847n, int i, InterfaceC0679f interfaceC0679f, ContentValues contentValues, StringBuilder sb, C0681h c0681h, String[] strArr) {
        super(c0847n, i, interfaceC0679f);
        this.f3111e = c0847n;
        this.f3107a = contentValues;
        this.f3108b = sb;
        this.f3109c = c0681h;
        this.f3110d = strArr;
    }

    @Override // com.alensw.cloud.p036a.C0811by, com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2685a(int i, String str) {
        if (i == 409) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if ("item_name_in_use".equals(jSONObject.getString("code"))) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("context_info").getJSONObject("conflicts");
                    this.f3110d[0] = jSONObject2.getString("id");
                    this.f3110d[1] = jSONObject2.getString("sha1");
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
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("entries".equals(mo1619d) && abstractC0518h.mo1650c() == EnumC0522l.START_ARRAY) {
                while (abstractC0518h.mo1643a() != EnumC0522l.END_ARRAY) {
                    this.f3111e.m3262a(abstractC0518h, this.f3107a);
                }
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        C0675b.m2675a(httpURLConnection, "form-data", this.f2569i, new C0681h(this.f3108b.toString(), "Content-Disposition", "form-data; name=\"attributes\""), this.f3109c);
    }
}
