package com.alensw.p038ui.p041c;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.alensw.PicFolder.R;
import com.alensw.bean.CommonFile;
import com.alensw.bean.CommonFolder;
import com.alensw.bean.CommonRoot;
import com.alensw.cloud.C0860aa;
import com.alensw.cloud.C0879e;
import com.alensw.cloud.EnumC0963z;
import com.alensw.cloud.oauth.ActivityC0907e;
import com.alensw.p022a.C0607av;
import com.alensw.p022a.InterfaceC0611az;
import com.alensw.p023b.p030g.MenuItemC0703l;
import com.alensw.p023b.p034k.C0733d;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;
import com.alensw.p038ui.p039a.C1071f;
import java.util.Set;

/* renamed from: com.alensw.ui.c.p */
/* loaded from: classes.dex */
public class C1280p extends C1159a {

    /* renamed from: g */
    private boolean f4236g;

    /* renamed from: h */
    private int[] f4237h;

    /* renamed from: i */
    private int f4238i;

    /* renamed from: j */
    private Drawable f4239j;

    /* renamed from: k */
    private MenuItem f4240k;

    /* renamed from: l */
    private ListView f4241l;

    /* renamed from: o */
    private C0733d f4244o;

    /* renamed from: p */
    private Set f4245p;

    /* renamed from: m */
    private final Handler f4242m = new Handler(Looper.myLooper());

    /* renamed from: n */
    private final CommonFolder f4243n = new CommonFolder("", 0, 0, 0, null);

    /* renamed from: q */
    private CommonFolder f4246q = new CommonFolder("roots", 0, 0, 0, null);

    /* renamed from: r */
    private final Rect f4247r = new Rect();

    /* renamed from: s */
    private CommonFolder f4248s = this.f4246q;

    /* renamed from: f */
    protected final BaseAdapter f4235f = new C1287w(this);

    /* renamed from: t */
    private final AdapterView.OnItemClickListener f4249t = new C1288x(this);

    /* renamed from: u */
    private final InterfaceC0611az f4250u = new C1289y(this);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4144a(EnumC0963z enumC0963z, int i) {
        if (i != 0) {
            ActivityC0907e.m3396a(this.f4082C, new HandlerC1281q(this, Looper.getMainLooper()), enumC0963z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public void m4153f(String str) {
        new ProgressDialogC1285u(this, this.f4082C, m4032g(R.string.add), 0, this.f4082C.getContentResolver(), this.f4246q.mo3021i(), str).m3731c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public void m4158l() {
    }

    /* renamed from: m */
    private void m4159m() {
        C1071f.m3740a(this.f4082C, R.string.new_folder, "", (CharSequence) null, new C1284t(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public void m4160n() {
        BaseAdapter m3313a = C0879e.m3313a(this.f4082C, this.f4237h);
        this.f4241l.setAdapter((ListAdapter) m3313a);
        this.f4241l.setOnItemClickListener(new C1286v(this, m3313a));
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public void mo3939a(int i, int i2, int i3, int i4) {
        super.mo3939a(i, i2, i3, i4);
        this.f4082C.mo1991a(this.f4247r);
        this.f4241l.setPadding(this.f4247r.left, this.f4247r.top, this.f4247r.right, this.f4247r.bottom);
    }

    @Override // com.alensw.p038ui.p041c.C1159a, com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public void mo3865a(Bundle bundle) {
        super.mo3865a(bundle);
        super.m4033h(R.layout.list_view);
        this.f4238i = m4024F().getDimensionPixelSize(R.dimen.menu_material_icon_size);
        this.f4241l = (ListView) m4031f(R.id.list);
        String stringExtra = this.f4084E.getStringExtra("QuickPic.title");
        if (stringExtra == null) {
            stringExtra = m4032g(R.string.upload_to_cloud);
        }
        m4027b((CharSequence) stringExtra);
        this.f4237h = this.f4084E.getIntArrayExtra("QuickPic.catalogs");
        if (this.f4237h == null) {
            this.f4237h = new int[]{1, 2};
        }
        String stringExtra2 = this.f4084E.getStringExtra("QuickPic.root_id");
        this.f4236g = stringExtra2 != null;
        m4162a(stringExtra2, stringExtra2 == null);
    }

    /* renamed from: a */
    public void m4161a(CommonFile commonFile, boolean z) {
        CommonFolder commonFolder = this.f4246q;
        if (commonFile instanceof CommonRoot) {
            CommonRoot commonRoot = (CommonRoot) commonFile;
            this.f4246q = commonRoot.mo3052k();
            this.f4245p = C0860aa.m3276a(this.f4082C, commonRoot.f2814n);
        } else if (commonFile instanceof CommonFolder) {
            this.f4246q = (CommonFolder) commonFile;
        }
        if (z) {
            this.f4246q.m3029a(0, commonFolder);
        }
        this.f4235f.notifyDataSetChanged();
        m4158l();
        if (this.f4246q != this.f4243n) {
            m4163e_();
        }
    }

    /* renamed from: a */
    public void m4162a(String str, boolean z) {
        AbstractProgressDialogC1062ao.f3641d.m2936a(new C1282r(this, this.f4082C.getContentResolver(), str, z));
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public boolean mo3945a(Menu menu) {
        MenuItem add = menu.add(0, R.id.add, 0, R.string.add);
        MenuItemC0703l.m2754a(this.f4082C, add);
        m3868a(add, 2);
        this.f4240k = menu.add(0, R.id.done, 0, android.R.string.ok);
        MenuItemC0703l.m2754a(this.f4082C, this.f4240k);
        m3868a(this.f4240k, 2);
        return true;
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public boolean mo3946a(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.done /* 2131296265 */:
                if (!Uri.EMPTY.equals(this.f4246q.mo3021i()) && (this.f4246q.m3015c() & 2) != 0) {
                    m3863a(this.f4246q.mo3021i());
                }
                return true;
            case R.id.add /* 2131296320 */:
                if (this.f4246q != this.f4243n) {
                    m4159m();
                } else if (!this.f4236g) {
                    m4160n();
                }
                return true;
            default:
                return super.mo3946a(menuItem);
        }
    }

    /* renamed from: e_ */
    public void m4163e_() {
        if (this.f4246q != this.f4243n) {
            if (this.f4244o == null || !this.f4246q.equals(this.f4248s)) {
                if (this.f4244o != null) {
                    this.f4244o.cancel(true);
                }
                m4029c(true);
                this.f4248s = this.f4246q;
                this.f4244o = C1290z.f4271A.m2936a(new C0607av(this.f4082C.getContentResolver(), this.f4246q, true, this.f4245p, this.f4242m, this.f4250u));
            }
        }
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: f */
    public boolean mo4003f() {
        if (this.f4241l.getAdapter() == this.f4235f) {
            if (this.f4246q.m3047o() >= 1 && this.f4246q != this.f4243n) {
                m4161a(this.f4246q.m3027a(0), false);
                return false;
            }
        } else if (this.f4243n.m3047o() > 0) {
            this.f4241l.setAdapter((ListAdapter) this.f4235f);
            this.f4241l.setOnItemClickListener(this.f4249t);
            return false;
        }
        m4164f_();
        return true;
    }

    /* renamed from: f_ */
    public void m4164f_() {
        if (this.f4244o != null) {
            this.f4244o.cancel(false);
            this.f4244o = null;
        }
        if (Uri.EMPTY.equals(this.f4246q.mo3021i())) {
            return;
        }
        this.f4246q.mo3037b(this.f4082C.getContentResolver());
    }
}
