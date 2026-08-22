package com.alensw.PicFolder;

import android.database.Cursor;
import android.database.CursorWrapper;
import android.os.Bundle;

/* renamed from: com.alensw.PicFolder.f */
/* loaded from: classes.dex */
class C0564f extends CursorWrapper {

    /* renamed from: a */
    private final String f2179a;

    /* renamed from: b */
    private final int f2180b;

    /* renamed from: c */
    private final int f2181c;

    /* renamed from: d */
    private final int f2182d;

    /* renamed from: e */
    private final int f2183e;

    /* renamed from: f */
    private Bundle f2184f;

    public C0564f(Cursor cursor, String str) {
        super(cursor);
        this.f2179a = str;
        this.f2180b = cursor.getColumnIndex("document_id");
        this.f2181c = cursor.getColumnIndex("parent_id");
        this.f2182d = cursor.getColumnIndex("last_modified");
        this.f2183e = cursor.getColumnIndex("datetaken");
    }

    /* renamed from: a */
    public void m2093a(boolean z) {
        getExtras().putBoolean("loading", z);
    }

    @Override // android.database.CursorWrapper, android.database.Cursor
    public Bundle getExtras() {
        if (this.f2184f == null) {
            this.f2184f = new Bundle();
        }
        return this.f2184f;
    }

    @Override // android.database.CursorWrapper, android.database.Cursor
    public long getLong(int i) {
        long j = super.getLong(i);
        return (i == this.f2182d || i == this.f2183e) ? j * 1000 : j;
    }

    @Override // android.database.CursorWrapper, android.database.Cursor
    public String getString(int i) {
        String m1951d;
        String string = super.getString(i);
        if (i != this.f2180b && i != this.f2181c) {
            return string;
        }
        if (string == null) {
            return this.f2179a;
        }
        m1951d = CloudProvider.m1951d(this.f2179a, string);
        return m1951d;
    }
}
