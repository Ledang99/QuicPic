package com.alensw.p023b.p033j;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.content.pm.ProviderInfo;
import android.content.res.AssetFileDescriptor;
import android.database.ContentObserver;
import android.database.Cursor;
import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.FileNotFoundException;
import java.util.List;
import org.apache.commons.logging.impl.SimpleLog;

/* renamed from: com.alensw.b.j.b */
/* loaded from: classes.dex */
public abstract class AbstractC0726b extends ContentProvider {

    /* renamed from: a */
    private String f2758a;

    /* renamed from: b */
    private UriMatcher f2759b;

    /* renamed from: a */
    public AssetFileDescriptor mo1955a(String str, Point point, CancellationSignal cancellationSignal) {
        throw new UnsupportedOperationException("Thumbnails not supported");
    }

    /* renamed from: a */
    public abstract Cursor mo1956a(String str, String[] strArr, String str2, String[] strArr2);

    /* renamed from: a */
    public abstract Cursor mo1957a(String str, String[] strArr, String str2, String[] strArr2, String str3);

    /* renamed from: a */
    public abstract Cursor mo1958a(String[] strArr);

    /* renamed from: a */
    public abstract ParcelFileDescriptor mo1959a(String str, String str2, CancellationSignal cancellationSignal);

    /* renamed from: a */
    public String mo1960a(String str, String str2, String str3) {
        throw new UnsupportedOperationException("Create not supported");
    }

    /* renamed from: a */
    public abstract void mo1961a(String str, ContentValues contentValues);

    /* renamed from: a */
    public abstract boolean mo1965a(String str);

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        this.f2758a = providerInfo.authority;
        this.f2759b = new UriMatcher(-1);
        this.f2759b.addURI(this.f2758a, "root", 1);
        this.f2759b.addURI(this.f2758a, "root/*", 2);
        this.f2759b.addURI(this.f2758a, "root/*/recent", 3);
        this.f2759b.addURI(this.f2758a, "root/*/search", 4);
        this.f2759b.addURI(this.f2758a, "document/*", 5);
        this.f2759b.addURI(this.f2758a, "document/*/children", 6);
        super.attachInfo(context, providerInfo);
    }

    /* renamed from: b */
    public abstract void mo1967b(String str);

    /* renamed from: b */
    public void mo1968b(String str, String str2, String str3) {
        throw new UnsupportedOperationException("moveDocument not supported");
    }

    /* renamed from: c */
    public void mo1969c(String str) {
        throw new UnsupportedOperationException("Delete not supported");
    }

    @Override // android.content.ContentProvider
    public Bundle call(String str, String str2, Bundle bundle) {
        Context context = getContext();
        if (!str.startsWith("android:")) {
            return super.call(str, str2, bundle);
        }
        String string = bundle.getString("document_id");
        Uri m2918c = C0725a.m2918c(this.f2758a, string);
        Bundle bundle2 = new Bundle();
        try {
            if ("android:createDocument".equals(str)) {
                bundle2.putString("document_id", mo1960a(string, bundle.getString("mime_type"), bundle.getString("_display_name")));
                return bundle2;
            }
            if ("android:deleteDocument".equals(str)) {
                mo1969c(string);
                context.revokeUriPermission(m2918c, 67);
                return bundle2;
            }
            if (!"android:moveDocument".equals(str)) {
                throw new UnsupportedOperationException("Method not supported " + str);
            }
            mo1968b(string, bundle.getString("src_uri"), bundle.getString("dst_uri"));
            return bundle2;
        } catch (FileNotFoundException e) {
            throw new IllegalStateException("Failed call " + str, e);
        }
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        List<String> pathSegments;
        try {
            pathSegments = uri.getPathSegments();
        } catch (Throwable th) {
            Log.w("DocumentsProvider", "Failed delete", th);
        }
        if (pathSegments.size() < 2) {
            throw new IllegalArgumentException("Invalid uri");
        }
        if ("document".equals(pathSegments.get(0))) {
            mo1969c(pathSegments.get(1));
            return 1;
        }
        if ("quickpic.account".equals(pathSegments.get(0))) {
            return mo1965a(pathSegments.get(1)) ? 1 : 0;
        }
        return 0;
    }

    /* renamed from: f */
    public String m2926f(String str) {
        String str2 = null;
        Cursor mo1956a = mo1956a(str, null, null, null);
        try {
            if (mo1956a.moveToFirst()) {
                str2 = mo1956a.getString(mo1956a.getColumnIndexOrThrow("mime_type"));
            } else if (mo1956a != null) {
                mo1956a.close();
            }
            return str2;
        } finally {
            if (mo1956a != null) {
                mo1956a.close();
            }
        }
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        try {
            switch (this.f2759b.match(uri)) {
                case 2:
                    return "vnd.android.document/root";
                case 3:
                case 4:
                default:
                    return null;
                case 5:
                    return m2926f(C0725a.m2916b(uri));
            }
        } catch (FileNotFoundException e) {
            Log.w("DocumentsProvider", "Failed during getType", e);
            return null;
        }
        Log.w("DocumentsProvider", "Failed during getType", e);
        return null;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        List<String> pathSegments;
        try {
            pathSegments = uri.getPathSegments();
        } catch (Throwable th) {
            Log.w("DocumentsProvider", "Failed insert", th);
        }
        if (pathSegments.size() < 2) {
            throw new IllegalArgumentException("Invalid uri");
        }
        if ("document".equals(pathSegments.get(0))) {
            return C0725a.m2918c(uri.getAuthority(), mo1960a(pathSegments.get(1), contentValues.getAsString("mime_type"), contentValues.getAsString("_display_name")));
        }
        if ("quickpic.account".equals(pathSegments.get(0))) {
            mo1961a(pathSegments.get(1), contentValues);
            getContext().getContentResolver().notifyChange(uri, (ContentObserver) null, false);
            return uri;
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public AssetFileDescriptor openAssetFile(Uri uri, String str) {
        int i = 0;
        try {
            i = Integer.valueOf(uri.getQueryParameter("thumbnail_size")).intValue();
        } catch (Throwable th) {
        }
        if (i <= 0) {
            return super.openAssetFile(uri, str);
        }
        return mo1955a(C0725a.m2916b(uri), new Point(i, i), (CancellationSignal) null);
    }

    @Override // android.content.ContentProvider
    public final ParcelFileDescriptor openFile(Uri uri, String str) {
        return mo1959a(C0725a.m2916b(uri), str, (CancellationSignal) null);
    }

    @Override // android.content.ContentProvider
    public final ParcelFileDescriptor openFile(Uri uri, String str, CancellationSignal cancellationSignal) {
        return mo1959a(C0725a.m2916b(uri), str, cancellationSignal);
    }

    @Override // android.content.ContentProvider
    public final AssetFileDescriptor openTypedAssetFile(Uri uri, String str, Bundle bundle) {
        if (bundle == null || !bundle.containsKey("thumbnail_size")) {
            return super.openTypedAssetFile(uri, str, bundle);
        }
        return mo1955a(C0725a.m2916b(uri), (Point) bundle.getParcelable("thumbnail_size"), (CancellationSignal) null);
    }

    @Override // android.content.ContentProvider
    public final AssetFileDescriptor openTypedAssetFile(Uri uri, String str, Bundle bundle, CancellationSignal cancellationSignal) {
        if (bundle == null || !bundle.containsKey("thumbnail_size")) {
            return super.openTypedAssetFile(uri, str, bundle, cancellationSignal);
        }
        return mo1955a(C0725a.m2916b(uri), (Point) bundle.getParcelable("thumbnail_size"), cancellationSignal);
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        if (uri.getQueryParameter("quickpic.cancel") != null) {
            mo1967b(uri.getPath());
            return null;
        }
        try {
            switch (this.f2759b.match(uri)) {
                case 1:
                    return mo1958a(strArr);
                case 2:
                case 3:
                case 4:
                default:
                    throw new UnsupportedOperationException("Unsupported Uri " + uri);
                case 5:
                    return mo1956a(C0725a.m2916b(uri), strArr, str, strArr2);
                case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                    return mo1957a(C0725a.m2916b(uri), strArr, str, strArr2, str2);
            }
        } catch (FileNotFoundException e) {
            Log.w("DocumentsProvider", "Failed during query", e);
            return null;
        }
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        List<String> pathSegments;
        try {
            pathSegments = uri.getPathSegments();
        } catch (Throwable th) {
            Log.w("DocumentsProvider", "Failed update", th);
        }
        if (pathSegments.size() < 2) {
            throw new IllegalArgumentException("Invalid uri");
        }
        if ("document".equals(pathSegments.get(0))) {
            mo1968b(pathSegments.get(1), contentValues.getAsString("src_uri"), contentValues.getAsString("dst_uri"));
            return 1;
        }
        return 0;
    }
}
