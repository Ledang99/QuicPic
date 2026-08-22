package com.alensw.bean;

import android.database.Cursor;
import android.net.Uri;
import com.alensw.PicFolder.CloudProvider;
import com.alensw.p023b.p033j.C0725a;

/* loaded from: classes.dex */
public class DocumentRoot extends CommonRoot {

    /* renamed from: s */
    public static final String[] f2823s = {"root_id", "document_id", "title", "mime_type", "flags", "icon", "summary"};

    /* renamed from: q */
    protected final String f2824q;

    /* renamed from: r */
    protected final String f2825r;

    public DocumentRoot(String str, String str2, String str3, String str4, int i) {
        super(str3, str4, i);
        this.f2824q = str;
        this.f2825r = str2 == null ? "" : str2;
    }

    /* renamed from: a */
    public static DocumentRoot m3056a(String str, Cursor cursor) {
        String string = cursor.getString(0);
        DocumentRoot documentRoot = new DocumentRoot(str, cursor.getString(1), cursor.getString(2), cursor.getString(3), cursor.getInt(4));
        documentRoot.f2812l = cursor.getInt(5);
        documentRoot.f2814n = string;
        documentRoot.f2815o = cursor.getString(6);
        documentRoot.f2811k = CloudProvider.m1952e(string);
        return documentRoot;
    }

    @Override // com.alensw.bean.CommonFile
    /* renamed from: i */
    public Uri mo3021i() {
        if (this.f2800j == null) {
            this.f2800j = C0725a.m2918c(this.f2824q, this.f2825r);
        }
        return this.f2800j;
    }

    /* renamed from: l */
    public String m3057l() {
        return this.f2825r;
    }

    @Override // com.alensw.bean.CommonRoot
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public DocumentFolder mo3052k() {
        return new DocumentFolder(this.f2824q, this.f2825r, this.f2793c, this.f2795e, this.f2797g, this.f2798h, null);
    }
}
