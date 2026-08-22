package com.alensw.cloud.p036a;

import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0681h;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p035l.C0742b;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

/* renamed from: com.alensw.cloud.a.ab */
/* loaded from: classes.dex */
class C0761ab extends C0811by {

    /* renamed from: a */
    final /* synthetic */ TreeMap f2888a;

    /* renamed from: b */
    final /* synthetic */ C0682i f2889b;

    /* renamed from: c */
    final /* synthetic */ String[] f2890c;

    /* renamed from: d */
    final /* synthetic */ C0760aa f2891d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0761ab(C0760aa c0760aa, int i, InterfaceC0679f interfaceC0679f, TreeMap treeMap, C0682i c0682i, String[] strArr) {
        super(c0760aa, i, interfaceC0679f);
        this.f2891d = c0760aa;
        this.f2888a = treeMap;
        this.f2889b = c0682i;
        this.f2890c = strArr;
    }

    @Override // com.alensw.cloud.p036a.C0811by, com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2687a(int i, String str, String str2, long j, InputStream inputStream) {
        XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
        newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
        newPullParser.setInput(inputStream, null);
        String str3 = "";
        String str4 = "";
        String str5 = "";
        while (newPullParser.next() != 3) {
            try {
                if (newPullParser.getEventType() == 2) {
                    String name = newPullParser.getName();
                    if ("rsp".equals(name)) {
                        str4 = newPullParser.getAttributeValue(null, "stat");
                    } else if ("photoid".equals(name)) {
                        if (newPullParser.next() == 4) {
                            this.f2890c[0] = newPullParser.getText();
                        }
                    } else if ("err".equals(name)) {
                        str3 = newPullParser.getAttributeValue(null, "msg");
                        str5 = newPullParser.getAttributeValue(null, "code");
                    }
                }
            } catch (Exception e) {
            }
        }
        this.f2891d.m3159a(str4, C0742b.m2960a(str5, 0), str3);
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : this.f2888a.entrySet()) {
            arrayList.add(new C0681h(entry.getValue(), "Content-Disposition", "form-data; name=\"" + ((String) entry.getKey()) + "\""));
        }
        arrayList.add(new C0681h(this.f2889b.f2578e, "Content-Disposition", "form-data; name=\"photo\"; filename=\"photo\"", "Content-Type", this.f2889b.f2576c));
        C0675b.m2674a(httpURLConnection, "form-data", this.f2569i, arrayList);
    }
}
