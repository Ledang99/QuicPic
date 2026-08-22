package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p029f.C0690c;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.alensw.cloud.a.aj */
/* loaded from: classes.dex */
public class C0769aj implements InterfaceC0767ah {

    /* renamed from: b */
    final /* synthetic */ C0764ae f2903b;

    protected C0769aj(C0764ae c0764ae) {
        this.f2903b = c0764ae;
    }

    @Override // com.alensw.cloud.p036a.InterfaceC0767ah
    /* renamed from: a */
    public String mo3162a() {
        return "flickr.people.getPhotos";
    }

    @Override // com.alensw.cloud.p036a.InterfaceC0767ah
    /* renamed from: a */
    public boolean mo3163a(AbstractC0518h abstractC0518h, ContentValues contentValues, String str) {
        String str2;
        String str3;
        int i;
        int i2;
        int i3;
        int intValue;
        int intValue2;
        boolean equals;
        String str4;
        String str5;
        String str6;
        String str7;
        long m3157a;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        String str8 = null;
        String str9 = null;
        String str10 = "";
        String str11 = "";
        AbstractC0808bv.m3237a(abstractC0518h.mo1650c(), EnumC0522l.START_OBJECT);
        boolean z = false;
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("id".equals(mo1619d)) {
                str4 = str11;
                str6 = abstractC0518h.mo1656f();
                equals = z;
                str5 = str10;
                str7 = str8;
            } else if ("owner".equals(mo1619d)) {
                str4 = str11;
                str7 = str8;
                str6 = str9;
                equals = z;
                str5 = abstractC0518h.mo1656f();
            } else if ("secret".equals(mo1619d)) {
                str4 = abstractC0518h.mo1656f();
                str6 = str9;
                equals = z;
                str5 = str10;
                str7 = str8;
            } else if ("title".equals(mo1619d)) {
                contentValues.put("_display_name", abstractC0518h.mo1656f());
                equals = z;
                str4 = str11;
                str5 = str10;
                str6 = str9;
                str7 = str8;
            } else if ("lastupdate".equals(mo1619d)) {
                contentValues.put("last_modified", Long.valueOf(abstractC0518h.m1915m()));
                equals = z;
                str4 = str11;
                str5 = str10;
                str6 = str9;
                str7 = str8;
            } else if ("datetaken".equals(mo1619d)) {
                m3157a = this.f2903b.m3157a(abstractC0518h.mo1656f());
                if (m3157a != 0) {
                    contentValues.put("datetaken", Long.valueOf(m3157a));
                }
                equals = z;
                str4 = str11;
                str5 = str10;
                str6 = str9;
                str7 = str8;
            } else if (mo1619d != null && mo1619d.startsWith("url_")) {
                hashMap.put(mo1619d.substring(mo1619d.indexOf(95) + 1), abstractC0518h.mo1656f());
                if ("url_m".equals(mo1619d)) {
                    str4 = str11;
                    str6 = str9;
                    String str12 = str10;
                    str7 = abstractC0518h.mo1656f();
                    equals = z;
                    str5 = str12;
                }
                equals = z;
                str4 = str11;
                str5 = str10;
                str6 = str9;
                str7 = str8;
            } else if (mo1619d != null && mo1619d.startsWith("width_")) {
                hashMap2.put(mo1619d.substring(mo1619d.indexOf(95) + 1), Integer.valueOf(abstractC0518h.m1914l()));
                equals = z;
                str4 = str11;
                str5 = str10;
                str6 = str9;
                str7 = str8;
            } else if (mo1619d != null && mo1619d.startsWith("height_")) {
                hashMap3.put(mo1619d.substring(mo1619d.indexOf(95) + 1), Integer.valueOf(abstractC0518h.m1914l()));
                equals = z;
                str4 = str11;
                str5 = str10;
                str6 = str9;
                str7 = str8;
            } else if ("latitude".equals(mo1619d) && !"0".equals(abstractC0518h.mo1656f())) {
                contentValues.put("latitude", Double.valueOf(abstractC0518h.m1916n()));
                equals = z;
                str4 = str11;
                str5 = str10;
                str6 = str9;
                str7 = str8;
            } else if ("longitude".equals(mo1619d) && !"0".equals(abstractC0518h.mo1656f())) {
                contentValues.put("longitude", Double.valueOf(abstractC0518h.m1916n()));
                equals = z;
                str4 = str11;
                str5 = str10;
                str6 = str9;
                str7 = str8;
            } else if ("media".equals(mo1619d)) {
                equals = "video".equals(abstractC0518h.mo1656f());
                str4 = str11;
                str5 = str10;
                str6 = str9;
                str7 = str8;
            } else {
                abstractC0518h.mo1648b();
                equals = z;
                str4 = str11;
                str5 = str10;
                str6 = str9;
                str7 = str8;
            }
            str9 = str6;
            str8 = str7;
            str10 = str5;
            str11 = str4;
            z = equals;
        }
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        String str13 = null;
        Iterator it = hashMap.entrySet().iterator();
        while (it.hasNext()) {
            String str14 = (String) ((Map.Entry) it.next()).getKey();
            if ("o".equals(str14) || (i = Math.max((intValue = ((Integer) hashMap2.get(str14)).intValue()), (intValue2 = ((Integer) hashMap3.get(str14)).intValue()))) <= i6) {
                str3 = str13;
                i = i6;
                i2 = i5;
                i3 = i4;
            } else {
                str3 = (String) hashMap.get(str14);
                i2 = intValue2;
                i3 = intValue;
            }
            i5 = i2;
            i4 = i3;
            str13 = str3;
            i6 = i;
        }
        if (str8 == null) {
            str8 = str13;
        }
        if (hashMap.containsKey("o")) {
            i4 = ((Integer) hashMap2.get("o")).intValue();
            i5 = ((Integer) hashMap3.get("o")).intValue();
            str2 = (String) hashMap.get("o");
        } else {
            str2 = str13;
        }
        if (str9 == null || str2 == null) {
            return false;
        }
        if (str8 == null && !z) {
            str8 = str2;
        }
        contentValues.put("document_id", str + str9);
        contentValues.put("width", Integer.valueOf(i4));
        contentValues.put("height", Integer.valueOf(i5));
        contentValues.put("thumbnail_url", str8);
        if (z) {
            contentValues.put("content_url", this.f2903b.m3158a(str10, str9, str11));
            contentValues.put("mime_type", "video/mp4");
        } else {
            contentValues.put("content_url", str2);
            contentValues.put("mime_type", C0690c.m2724b(str2));
        }
        contentValues.put("flags", Integer.valueOf(this.f2903b.mo3153d()));
        if (contentValues.getAsLong("datetaken") == null) {
            contentValues.put("datetaken", contentValues.getAsLong("last_modified"));
        }
        return true;
    }

    @Override // com.alensw.cloud.p036a.InterfaceC0767ah
    /* renamed from: b */
    public String mo3164b() {
        return "photos";
    }

    @Override // com.alensw.cloud.p036a.InterfaceC0767ah
    /* renamed from: c */
    public String mo3165c() {
        return "photo";
    }
}
