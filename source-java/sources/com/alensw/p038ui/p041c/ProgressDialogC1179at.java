package com.alensw.p038ui.p041c;

import android.app.Activity;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p038ui.activity.C1094a;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;
import com.alensw.transfer.TransferService;

/* renamed from: com.alensw.ui.c.at */
/* loaded from: classes.dex */
final class ProgressDialogC1179at extends AbstractProgressDialogC1062ao {

    /* renamed from: a */
    final /* synthetic */ Uri f3937a;

    /* renamed from: b */
    final /* synthetic */ Activity f3938b;

    /* renamed from: c */
    final /* synthetic */ String f3939c;

    /* renamed from: e */
    private Uri f3940e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressDialogC1179at(Activity activity, String str, int i, Uri uri, Activity activity2, String str2) {
        super(activity, str, i);
        this.f3937a = uri;
        this.f3938b = activity2;
        this.f3939c = str2;
        this.f3940e = this.f3937a;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x006c  */
    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void mo3653a() {
        Cursor cursor;
        Cursor cursor2 = null;
        try {
            try {
                cursor = this.f3938b.getContentResolver().query(this.f3937a, new String[]{"sharable_url"}, null, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            Uri parse = Uri.parse(cursor.getString(0));
                            String[] m2925e = C0725a.m2925e(parse);
                            if (m2925e == null || m2925e.length < 2 || m2925e[1] == null) {
                                this.f3940e = parse;
                            } else {
                                Intent intent = new Intent(this.f3938b, (Class<?>) TransferService.class);
                                intent.setAction("android.intent.action.VIEW");
                                intent.setDataAndType(this.f3937a, this.f3939c);
                                this.f3938b.startService(intent);
                                this.f3940e = null;
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        th.printStackTrace();
                        if (cursor != null) {
                            cursor.close();
                            return;
                        }
                        return;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: b */
    protected void mo3654b() {
        if (this.f3940e != null) {
            C1094a.m3776a(this.f3938b, this.f3940e, this.f3939c);
        }
    }
}
