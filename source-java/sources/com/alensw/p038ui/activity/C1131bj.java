package com.alensw.p038ui.activity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.view.View;
import android.widget.AdapterView;
import java.util.ArrayList;

/* renamed from: com.alensw.ui.activity.bj */
/* loaded from: classes.dex */
class C1131bj implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ SelectThemeActivity f3800a;

    C1131bj(SelectThemeActivity selectThemeActivity) {
        this.f3800a = selectThemeActivity;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        ArrayList arrayList;
        arrayList = this.f3800a.f3694g;
        C1133bl c1133bl = (C1133bl) arrayList.get(i);
        boolean z = (c1133bl.f3802a == this.f3800a.f3741T && c1133bl.f3804c == this.f3800a.f3743V) ? false : true;
        if (z) {
            SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(this.f3800a).edit();
            edit.putInt("main_theme", c1133bl.f3802a);
            edit.putInt("actionbar_color", c1133bl.f3804c);
            edit.commit();
        }
        this.f3800a.setResult(z ? -1 : 0, new Intent());
        this.f3800a.finish();
    }
}
