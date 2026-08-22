package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.alensw.cloud.a.ak */
/* loaded from: classes.dex */
public class C0770ak implements InterfaceC0767ah {

    /* renamed from: a */
    final /* synthetic */ C0764ae f2904a;

    protected C0770ak(C0764ae c0764ae) {
        this.f2904a = c0764ae;
    }

    @Override // com.alensw.cloud.p036a.InterfaceC0767ah
    /* renamed from: a */
    public String mo3162a() {
        return "flickr.photosets.getList";
    }

    @Override // com.alensw.cloud.p036a.InterfaceC0767ah
    /* renamed from: a */
    public boolean mo3163a(AbstractC0518h abstractC0518h, ContentValues contentValues, String str) {
        String str2;
        String str3;
        String str4;
        int max;
        String str5 = null;
        AbstractC0808bv.m3237a(abstractC0518h.mo1650c(), EnumC0522l.START_OBJECT);
        String str6 = null;
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("id".equals(mo1619d)) {
                str3 = abstractC0518h.mo1656f();
            } else {
                if ("title".equals(mo1619d)) {
                    while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
                        String mo1619d2 = abstractC0518h.mo1619d();
                        abstractC0518h.mo1643a();
                        if ("_content".equals(mo1619d2)) {
                            contentValues.put("_display_name", abstractC0518h.mo1656f());
                        } else {
                            abstractC0518h.mo1648b();
                        }
                    }
                } else if ("date_update".equals(mo1619d)) {
                    long m1915m = abstractC0518h.m1915m();
                    contentValues.put("last_modified", Long.valueOf(m1915m));
                    contentValues.put("datetaken", Long.valueOf(m1915m));
                    str3 = str5;
                } else if ("primary_photo_extras".equals(mo1619d)) {
                    HashMap hashMap = new HashMap();
                    HashMap hashMap2 = new HashMap();
                    HashMap hashMap3 = new HashMap();
                    while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
                        String mo1619d3 = abstractC0518h.mo1619d();
                        abstractC0518h.mo1643a();
                        if (mo1619d3 != null && mo1619d3.startsWith("url_")) {
                            hashMap3.put(mo1619d3.substring(mo1619d3.indexOf(95) + 1), abstractC0518h.mo1656f());
                            if ("url_m".equals(mo1619d3)) {
                                str6 = abstractC0518h.mo1656f();
                            }
                        } else if (mo1619d3 != null && mo1619d3.startsWith("width_")) {
                            hashMap.put(mo1619d3.substring(mo1619d3.indexOf(95) + 1), Integer.valueOf(abstractC0518h.m1914l()));
                        } else if (mo1619d3 == null || !mo1619d3.startsWith("height_")) {
                            abstractC0518h.mo1648b();
                        } else {
                            hashMap2.put(mo1619d3.substring(mo1619d3.indexOf(95) + 1), Integer.valueOf(abstractC0518h.m1914l()));
                        }
                    }
                    if (str6 == null) {
                        int i = -1;
                        Iterator it = hashMap3.entrySet().iterator();
                        while (true) {
                            int i2 = i;
                            str4 = str6;
                            if (!it.hasNext()) {
                                break;
                            }
                            String str7 = (String) ((Map.Entry) it.next()).getKey();
                            if ("o".equals(str7) || (max = Math.max(((Integer) hashMap.get(str7)).intValue(), ((Integer) hashMap2.get(str7)).intValue())) <= i2) {
                                i = i2;
                                str6 = str4;
                            } else {
                                str6 = (String) hashMap3.get(str7);
                                i = max;
                            }
                        }
                        str2 = str4;
                    } else {
                        str2 = str6;
                    }
                    str6 = str2;
                    str3 = str5;
                } else {
                    abstractC0518h.mo1648b();
                }
                str3 = str5;
            }
            str5 = str3;
        }
        if (str5 == null || str6 == null) {
            return false;
        }
        contentValues.put("document_id", str + str5 + "/");
        contentValues.put("thumbnail_url", str6);
        contentValues.put("mime_type", "vnd.android.document/directory");
        contentValues.put("flags", Integer.valueOf(this.f2904a.mo3154e() | 2));
        return true;
    }

    @Override // com.alensw.cloud.p036a.InterfaceC0767ah
    /* renamed from: b */
    public String mo3164b() {
        return "photosets";
    }

    @Override // com.alensw.cloud.p036a.InterfaceC0767ah
    /* renamed from: c */
    public String mo3165c() {
        return "photoset";
    }
}
