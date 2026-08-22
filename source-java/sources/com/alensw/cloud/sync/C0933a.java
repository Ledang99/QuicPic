package com.alensw.cloud.sync;

import android.accounts.AbstractAccountAuthenticator;
import android.accounts.Account;
import android.accounts.AccountAuthenticatorResponse;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.alensw.PicFolder.R;
import com.alensw.p023b.p035l.C0742b;

/* renamed from: com.alensw.cloud.sync.a */
/* loaded from: classes.dex */
public class C0933a extends AbstractAccountAuthenticator {

    /* renamed from: a */
    private static Account f3290a;

    /* renamed from: b */
    private Context f3291b;

    public C0933a(Context context) {
        super(context);
        this.f3291b = context;
    }

    /* renamed from: a */
    public static Account m3416a(Context context) {
        if (f3290a == null) {
            SharedPreferences m3471e = C0956x.m3471e(context);
            String string = m3471e.getString("name", null);
            if (string == null) {
                string = context.getString(R.string.cloud_backup);
                SharedPreferences.Editor edit = m3471e.edit();
                edit.putString("name", string);
                C0742b.m2978a(edit);
            }
            f3290a = new Account(string, "com.alensw.PicFolder.cloud.sync");
        }
        return f3290a;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public Bundle addAccount(AccountAuthenticatorResponse accountAuthenticatorResponse, String str, String str2, String[] strArr, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Account m3416a = m3416a(this.f3291b);
        if (C0956x.m3466a(this.f3291b, m3416a)) {
            bundle2.putString("authAccount", m3416a.name);
            bundle2.putString("accountType", "com.alensw.PicFolder.cloud.sync");
            C0956x.m3465a(this.f3291b, C0955w.m3459a(this.f3291b));
            C0956x.m3463a(this.f3291b);
        } else {
            bundle2.putInt("errorCode", 6);
        }
        return bundle2;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public Bundle confirmCredentials(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, Bundle bundle) {
        return null;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public Bundle editProperties(AccountAuthenticatorResponse accountAuthenticatorResponse, String str) {
        throw new UnsupportedOperationException();
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public Bundle getAuthToken(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String str, Bundle bundle) {
        throw new UnsupportedOperationException();
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public String getAuthTokenLabel(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public Bundle hasFeatures(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String[] strArr) {
        throw new UnsupportedOperationException();
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public Bundle updateCredentials(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String str, Bundle bundle) {
        throw new UnsupportedOperationException();
    }
}
