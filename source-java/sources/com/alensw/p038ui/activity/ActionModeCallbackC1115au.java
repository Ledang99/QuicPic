package com.alensw.p038ui.activity;

import android.os.Build;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;

/* renamed from: com.alensw.ui.activity.au */
/* loaded from: classes.dex */
class ActionModeCallbackC1115au implements ActionMode.Callback {

    /* renamed from: a */
    final /* synthetic */ ActivityC1109ao f3766a;

    ActionModeCallbackC1115au(ActivityC1109ao activityC1109ao) {
        this.f3766a = activityC1109ao;
    }

    @Override // android.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return this.f3766a.onOptionsItemSelected(menuItem);
    }

    @Override // android.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        if (Build.VERSION.SDK_INT < 21) {
            this.f3766a.m3823i();
        }
        return this.f3766a.mo3811c(menu);
    }

    @Override // android.view.ActionMode.Callback
    public void onDestroyActionMode(ActionMode actionMode) {
        ActionMode actionMode2;
        actionMode2 = this.f3766a.f3751c;
        if (actionMode2 == actionMode) {
            this.f3766a.f3751c = null;
        }
        this.f3766a.mo3833r();
    }

    @Override // android.view.ActionMode.Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return this.f3766a.mo3814d(menu);
    }
}
