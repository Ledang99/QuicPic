package com.alensw.cloud.sync;

import android.annotation.TargetApi;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.alensw.p023b.p033j.C0727c;
import com.alensw.p023b.p033j.C0728d;
import java.util.Map;

/* loaded from: classes.dex */
public class Provider extends ContentProvider {

    /* renamed from: a */
    private static final UriMatcher f3270a = new UriMatcher(-1);

    /* renamed from: b */
    private final C0955w f3271b = new C0955w();

    /* renamed from: c */
    private final C0953u f3272c = new C0953u();

    /* renamed from: d */
    private boolean f3273d = false;

    static {
        f3270a.addURI("com.alensw.PicFolder.cloud.sync", "task", 1);
        f3270a.addURI("com.alensw.PicFolder.cloud.sync", "task/*", 2);
        f3270a.addURI("com.alensw.PicFolder.cloud.sync", "status", 3);
        f3270a.addURI("com.alensw.PicFolder.cloud.sync", "status/*", 4);
    }

    /* renamed from: a */
    private synchronized void m3402a() {
        if (!this.f3273d) {
            Context context = getContext();
            this.f3271b.m3462b(context);
            this.f3272c.m3454a(context);
            Log.d("SyncProvider", "Tasks loaded " + this.f3271b.m2613c());
            this.f3273d = true;
        }
    }

    /* renamed from: a */
    private synchronized void m3403a(String str) {
        if (this.f3271b.m2614c(str) != null) {
            this.f3271b.m2620h();
        }
        if (this.f3272c.m2614c(str) != null) {
            this.f3272c.m2620h();
        }
        C0939g.m3433b(getContext(), str);
    }

    /* renamed from: a */
    private synchronized void m3404a(String str, C0952t c0952t, boolean z) {
        this.f3272c.m2606a(str, c0952t);
        if (z) {
            this.f3272c.m2620h();
        }
    }

    /* renamed from: a */
    private synchronized void m3405a(String str, C0954v c0954v) {
        this.f3271b.m2606a(str, c0954v);
        this.f3271b.m2620h();
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        m3402a();
        switch (f3270a.match(uri)) {
            case 2:
                m3403a(uri.getLastPathSegment());
                return 0;
            default:
                throw new UnsupportedOperationException("Unknown uri: " + uri);
        }
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        switch (f3270a.match(uri)) {
            case 1:
            case 2:
                return "vnd.android.cursor.dir/vnd.syncadapter.task";
            case 3:
            case 4:
                return "vnd.android.cursor.item/vnd.syncadapter.status";
            default:
                throw new UnsupportedOperationException("Unknown uri: " + uri);
        }
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        m3402a();
        switch (f3270a.match(uri)) {
            case 1:
                String asString = contentValues.getAsString("task_id");
                C0954v c0954v = (C0954v) this.f3271b.m2610b(asString);
                if (c0954v == null) {
                    c0954v = new C0954v();
                }
                c0954v.f3344c = contentValues.getAsString("task_name");
                c0954v.f3345d = contentValues.getAsString("dir_local");
                c0954v.f3346e = contentValues.getAsString("dir_remote");
                c0954v.f3347f = contentValues.getAsInteger("disabled").intValue() != 0;
                m3405a(asString, c0954v);
                return C0937e.m3423a(asString);
            default:
                throw new UnsupportedOperationException("Insert not supported on URI: " + uri);
        }
    }

    @Override // android.content.ContentProvider
    @TargetApi(8)
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        m3402a();
        int match = f3270a.match(uri);
        C0727c c0727c = new C0727c(strArr);
        switch (match) {
            case 1:
                for (Map.Entry entry : this.f3271b.m2618f()) {
                    C0728d m2932a = c0727c.m2932a();
                    C0954v c0954v = (C0954v) entry.getValue();
                    m2932a.m2933a("task_id", (String) entry.getKey());
                    m2932a.m2933a("task_name", c0954v.f3344c);
                    m2932a.m2933a("dir_local", c0954v.f3345d);
                    m2932a.m2933a("dir_remote", c0954v.f3346e);
                    m2932a.m2933a("disabled", Integer.valueOf(c0954v.f3347f ? 1 : 0));
                }
                return c0727c;
            case 2:
            default:
                throw new UnsupportedOperationException("Unknown uri: " + uri);
            case 3:
                for (Map.Entry entry2 : this.f3272c.m2618f()) {
                    String str3 = (String) entry2.getKey();
                    if (this.f3271b.m2609a(str3)) {
                        C0728d m2932a2 = c0727c.m2932a();
                        C0952t c0952t = (C0952t) entry2.getValue();
                        m2932a2.m2933a("task_id", str3);
                        m2932a2.m2933a("state", Integer.valueOf(c0952t.f3332a));
                        m2932a2.m2933a("total_files", Integer.valueOf(c0952t.f3333b));
                        m2932a2.m2933a("synced_files", Integer.valueOf(c0952t.f3334c));
                        m2932a2.m2933a("sync_time", Long.valueOf(c0952t.f3335d));
                        m2932a2.m2933a("duration", Long.valueOf(c0952t.f3336e));
                        m2932a2.m2933a("total_size", Long.valueOf(c0952t.f3337f));
                        m2932a2.m2933a("io_exceptions", Integer.valueOf(c0952t.f3338g));
                        m2932a2.m2933a("auth_exceptions", Integer.valueOf(c0952t.f3339h));
                        m2932a2.m2933a("fatal_exceptions", Integer.valueOf(c0952t.f3340i));
                        m2932a2.m2933a("fetch_state", Integer.valueOf(c0952t.f3341j));
                        m2932a2.m2933a("folder_time", Integer.valueOf(c0952t.f3342k));
                        m2932a2.m2933a("folder_hash", c0952t.f3343l);
                    }
                }
                return c0727c;
            case 4:
                String lastPathSegment = uri.getLastPathSegment();
                C0952t c0952t2 = (C0952t) this.f3272c.m2610b(lastPathSegment);
                if (c0952t2 != null) {
                    C0728d m2932a3 = c0727c.m2932a();
                    m2932a3.m2933a("task_id", lastPathSegment);
                    m2932a3.m2933a("state", Integer.valueOf(c0952t2.f3332a));
                    m2932a3.m2933a("total_files", Integer.valueOf(c0952t2.f3333b));
                    m2932a3.m2933a("synced_files", Integer.valueOf(c0952t2.f3334c));
                    m2932a3.m2933a("sync_time", Long.valueOf(c0952t2.f3335d));
                    m2932a3.m2933a("duration", Long.valueOf(c0952t2.f3336e));
                    m2932a3.m2933a("total_size", Long.valueOf(c0952t2.f3337f));
                    m2932a3.m2933a("io_exceptions", Integer.valueOf(c0952t2.f3338g));
                    m2932a3.m2933a("auth_exceptions", Integer.valueOf(c0952t2.f3339h));
                    m2932a3.m2933a("fatal_exceptions", Integer.valueOf(c0952t2.f3340i));
                    m2932a3.m2933a("fetch_state", Integer.valueOf(c0952t2.f3341j));
                    m2932a3.m2933a("folder_time", Integer.valueOf(c0952t2.f3342k));
                    m2932a3.m2933a("folder_hash", c0952t2.f3343l);
                }
                return c0727c;
        }
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        m3402a();
        switch (f3270a.match(uri)) {
            case 4:
                String lastPathSegment = uri.getLastPathSegment();
                C0952t c0952t = (C0952t) this.f3272c.m2610b(lastPathSegment);
                if (c0952t == null) {
                    c0952t = new C0952t();
                }
                c0952t.f3332a = contentValues.getAsInteger("state").intValue();
                Integer asInteger = contentValues.getAsInteger("total_files");
                if (asInteger != null) {
                    c0952t.f3333b = asInteger.intValue();
                    c0952t.f3334c = contentValues.getAsInteger("synced_files").intValue();
                    c0952t.f3335d = contentValues.getAsLong("sync_time").longValue();
                    c0952t.f3336e = contentValues.getAsLong("duration").longValue();
                    c0952t.f3337f = contentValues.getAsLong("total_size").longValue();
                    c0952t.f3338g = contentValues.getAsInteger("io_exceptions").intValue();
                    c0952t.f3339h = contentValues.getAsInteger("auth_exceptions").intValue();
                    c0952t.f3340i = contentValues.getAsInteger("fatal_exceptions").intValue();
                    c0952t.f3341j = contentValues.getAsInteger("fetch_state").intValue();
                    c0952t.f3342k = contentValues.getAsInteger("folder_time").intValue();
                    c0952t.f3343l = contentValues.getAsString("folder_hash");
                }
                m3404a(lastPathSegment, c0952t, asInteger != null);
                getContext().getContentResolver().notifyChange(uri, (ContentObserver) null, false);
                return 1;
            default:
                throw new UnsupportedOperationException("Unknown uri: " + uri);
        }
    }
}
