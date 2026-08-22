package com.alensw.PicFolder;

import android.app.Activity;
import android.support.p009a.p010a.C0158a;
import android.support.v4.widget.DrawerLayout;
import android.view.View;
import android.widget.ListView;
import com.alensw.p023b.p029f.C0688a;
import com.alensw.p023b.p029f.EnumC0689b;
import com.alensw.p038ui.p041c.C1234cu;
import com.alensw.p038ui.view.C1329bc;

/* renamed from: com.alensw.PicFolder.ag */
/* loaded from: classes.dex */
class C0533ag extends C0158a {

    /* renamed from: a */
    final /* synthetic */ GalleryActivity f2113a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0533ag(GalleryActivity galleryActivity, Activity activity, DrawerLayout drawerLayout, Object obj, int i, int i2) {
        super(activity, drawerLayout, obj, i, i2);
        this.f2113a = galleryActivity;
    }

    @Override // android.support.p009a.p010a.C0158a, android.support.v4.widget.InterfaceC0201d
    /* renamed from: a */
    public void mo398a(View view) {
        ListView listView;
        super.mo398a(view);
        this.f2113a.setTitle(R.string.app_name);
        this.f2113a.m3806a((CharSequence) null);
        listView = this.f2113a.f2000g;
        listView.requestFocus();
        C0688a.m2714a(this.f2113a, EnumC0689b.ShowDrawer);
    }

    @Override // android.support.p009a.p010a.C0158a, android.support.v4.widget.InterfaceC0201d
    /* renamed from: a */
    public void mo400a(View view, boolean z, int i) {
        C1329bc c1329bc;
        if (!z || i == 0) {
            return;
        }
        c1329bc = this.f2113a.f2002i;
        c1329bc.m4371a();
    }

    @Override // android.support.p009a.p010a.C0158a, android.support.v4.widget.InterfaceC0201d
    /* renamed from: b */
    public void mo403b(View view) {
        super.mo403b(view);
        C1234cu c = this.f2113a.m4041c();
        if (c != null) {
            this.f2113a.setTitle(c.m4020B());
            this.f2113a.m3806a(c.m4021C());
            c.m4022D().requestFocus();
        }
    }
}
