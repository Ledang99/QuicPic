package com.alensw.PicFolder;

import android.preference.PreferenceManager;
import android.support.v4.widget.DrawerLayout;
import android.view.View;
import android.widget.AdapterView;
import com.alensw.bean.CommonRoot;
import com.alensw.p023b.p029f.C0688a;
import com.alensw.p023b.p029f.EnumC0689b;
import com.alensw.p038ui.p039a.AlertDialogC1089x;
import com.alensw.p038ui.view.C1329bc;

/* renamed from: com.alensw.PicFolder.ai */
/* loaded from: classes.dex */
class C0535ai implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ GalleryActivity f2115a;

    C0535ai(GalleryActivity galleryActivity) {
        this.f2115a = galleryActivity;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        DrawerLayout drawerLayout;
        C1329bc c1329bc;
        C1329bc c1329bc2;
        drawerLayout = this.f2115a.f1998e;
        drawerLayout.m521d(3);
        c1329bc = this.f2115a.f2002i;
        CommonRoot m4382c = c1329bc.m4382c(i);
        if (m4382c == null) {
            return;
        }
        if (m4382c.f2814n != null) {
            boolean m4367b = C1329bc.m4367b(m4382c.f2814n);
            RunnableC0536aj runnableC0536aj = new RunnableC0536aj(this, i, m4382c);
            if (m4367b) {
                PreferenceManager.getDefaultSharedPreferences(this.f2115a).edit().putString("last_drive", m4382c.f2814n).commit();
                runnableC0536aj.run();
            } else {
                AlertDialogC1089x.m3749a(this.f2115a, "protect_cloud", runnableC0536aj, null);
            }
        } else {
            c1329bc2 = this.f2115a.f2002i;
            c1329bc2.m4375a(adapterView, view, i, j);
        }
        String m4363a = C1329bc.m4363a(m4382c);
        if (m4363a != null) {
            C0688a.m2715a(this.f2115a, EnumC0689b.ClickDrawer, m4363a);
        }
    }
}
