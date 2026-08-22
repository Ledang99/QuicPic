package com.alensw.cloud.p036a;

import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0680g;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.C0517g;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.ProtocolException;
import javax.net.ssl.HttpsURLConnection;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.alensw.cloud.a.by */
/* loaded from: classes.dex */
public class C0811by extends C0680g {

    /* renamed from: a */
    private final String f3013a;

    /* renamed from: g */
    protected final int f3014g;

    /* renamed from: h */
    final /* synthetic */ AbstractC0808bv f3015h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0811by(AbstractC0808bv abstractC0808bv, int i, InterfaceC0679f interfaceC0679f) {
        super(interfaceC0679f, i != 0);
        this.f3015h = abstractC0808bv;
        this.f3014g = i;
        this.f3013a = null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0811by(AbstractC0808bv abstractC0808bv, String str, InterfaceC0679f interfaceC0679f) {
        super(interfaceC0679f, false);
        this.f3015h = abstractC0808bv;
        this.f3014g = 0;
        this.f3013a = str;
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2685a(int i, String str) {
        this.f3015h.mo3147a(i, str);
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2687a(int i, String str, String str2, long j, InputStream inputStream) {
        FileOutputStream fileOutputStream;
        if (this.f3014g == 1) {
            AbstractC0518h m1660a = AbstractC0808bv.m3239f().m1660a(inputStream);
            try {
                try {
                    mo3155a(m1660a);
                    return;
                } finally {
                    m1660a.close();
                }
            } catch (C0517g e) {
                e.printStackTrace();
                throw new ProtocolException(e.getMessage());
            }
        }
        if (this.f3014g == 2) {
            XmlPullParser newPullParser = AbstractC0808bv.m3240g().newPullParser();
            try {
                try {
                    newPullParser.setInput(inputStream, str2);
                    mo3212a(newPullParser);
                    return;
                } catch (XmlPullParserException e2) {
                    e2.printStackTrace();
                    throw new ProtocolException(e2.getMessage());
                }
            } finally {
                C0675b.m2665a(inputStream);
            }
        }
        if (this.f3013a == null) {
            super.mo2687a(i, str, str2, j, inputStream);
            return;
        }
        try {
            fileOutputStream = new FileOutputStream(this.f3013a);
            try {
                C0675b.m2652a(inputStream, fileOutputStream, j, this.f2569i);
                C0675b.m2665a(fileOutputStream);
            } catch (Throwable th) {
                th = th;
                C0675b.m2665a(fileOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
        }
    }

    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2690a(HttpsURLConnection httpsURLConnection) {
        this.f3015h.mo3211a(httpsURLConnection);
    }

    /* renamed from: a */
    protected void mo3212a(XmlPullParser xmlPullParser) {
    }
}
