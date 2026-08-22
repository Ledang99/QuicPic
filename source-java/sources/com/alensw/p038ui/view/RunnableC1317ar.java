package com.alensw.p038ui.view;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.os.Handler;
import android.preference.ListPreference;
import android.view.View;
import android.widget.CheckedTextView;
import android.widget.ListView;
import com.alensw.PicFolder.R;
import com.alensw.p038ui.activity.ActivityC1109ao;
import com.alensw.p038ui.p039a.AlertDialogC1086u;

/* renamed from: com.alensw.ui.view.ar */
/* loaded from: classes.dex */
final class RunnableC1317ar implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ListPreference f4547a;

    /* renamed from: b */
    final /* synthetic */ boolean f4548b;

    /* renamed from: c */
    final /* synthetic */ Handler f4549c;

    RunnableC1317ar(ListPreference listPreference, boolean z, Handler handler) {
        this.f4547a = listPreference;
        this.f4548b = z;
        this.f4549c = handler;
    }

    @Override // java.lang.Runnable
    public void run() {
        ListView listView;
        Dialog dialog = this.f4547a.getDialog();
        if (dialog == null) {
            this.f4549c.postDelayed(this, 16L);
            return;
        }
        Context context = this.f4547a.getContext();
        AlertDialogC1086u.m3745a(context, dialog);
        if (!(dialog instanceof AlertDialog) || (listView = ((AlertDialog) dialog).getListView()) == null) {
            return;
        }
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.check_box_size);
        int m3794b = ActivityC1109ao.m3794b(context, R.attr.colorMenuDrawable);
        for (int childCount = listView.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = listView.getChildAt(childCount);
            if (childAt instanceof CheckedTextView) {
                ModernListPreference.m4301a((CheckedTextView) childAt, dimensionPixelSize, m3794b, this.f4548b);
            }
        }
        listView.setDivider(null);
        listView.setOnHierarchyChangeListener(new ViewGroupOnHierarchyChangeListenerC1318as(this, dimensionPixelSize, m3794b));
    }
}
