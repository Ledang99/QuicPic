package com.alensw.p038ui.view;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Messenger;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.alensw.PicFolder.GalleryActivity;
import com.alensw.PicFolder.R;
import com.alensw.bean.CommonRoot;
import com.alensw.bean.MediaStoreRoot;
import com.alensw.cloud.C0860aa;
import com.alensw.cloud.C0879e;
import com.alensw.cloud.C0961x;
import com.alensw.cloud.CloudConfigActivity;
import com.alensw.cloud.EnumC0963z;
import com.alensw.cloud.oauth.ActivityC0907e;
import com.alensw.cloud.oauth.C0889a;
import com.alensw.p023b.p030g.MenuC0693b;
import com.alensw.p023b.p030g.MenuItemC0703l;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.activity.ActivityC1109ao;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;
import java.util.ArrayList;

/* renamed from: com.alensw.ui.view.bc */
/* loaded from: classes.dex */
public class C1329bc extends BaseAdapter {

    /* renamed from: a */
    public static final String f4574a = "0@" + EnumC0963z.DISCOVERY.toString().toLowerCase();

    /* renamed from: b */
    public static final int[][] f4575b = {new int[]{R.id.camera, R.raw.ic_menu_camera, R.string.camera}, new int[]{R.id.transfer, R.raw.logo_transfer, R.string.transfer}, new int[]{R.id.settings, R.raw.logo_settings, R.string.settings}};

    /* renamed from: d */
    private final GalleryActivity f4577d;

    /* renamed from: e */
    private final ListView f4578e;

    /* renamed from: f */
    private final int f4579f;

    /* renamed from: g */
    private final int f4580g;

    /* renamed from: h */
    private final Drawable f4581h;

    /* renamed from: i */
    private final CommonRoot f4582i;

    /* renamed from: j */
    private final CommonRoot f4583j;

    /* renamed from: c */
    public int f4576c = -1;

    /* renamed from: k */
    private final ArrayList f4584k = new ArrayList(8);

    public C1329bc(GalleryActivity galleryActivity, ListView listView) {
        this.f4577d = galleryActivity;
        this.f4578e = listView;
        Resources resources = this.f4577d.getResources();
        this.f4579f = ActivityC1109ao.m3794b(galleryActivity, android.R.attr.textColorSecondary);
        this.f4580g = resources.getDimensionPixelSize(R.dimen.folder_item_size);
        this.f4581h = resources.getDrawable(R.drawable.circle_indictor);
        this.f4582i = new CommonRoot(resources.getString(R.string.local_albums), "*/*", 0);
        this.f4582i.f2812l = R.raw.logo_gallery;
        this.f4582i.f2814n = "folders";
        this.f4583j = new MediaStoreRoot(resources.getString(R.string.local_moments), "*/*");
        this.f4583j.f2812l = R.raw.logo_moments;
        this.f4583j.f2814n = "moments";
    }

    /* renamed from: a */
    public static String m4363a(CommonRoot commonRoot) {
        if (commonRoot == null) {
            return null;
        }
        if (commonRoot.f2814n != null) {
            return commonRoot.f2814n.substring(commonRoot.f2814n.indexOf("@") + 1);
        }
        if (commonRoot.f2811k != null) {
            return commonRoot.f2811k.toString().toLowerCase();
        }
        switch (commonRoot.f2812l) {
            case R.raw.logo_cloud_upload /* 2131034142 */:
                return "CloudBackup";
            case R.raw.logo_discovery /* 2131034143 */:
                return "Discovery";
            case R.raw.logo_gallery /* 2131034146 */:
                return "Gallery";
            case R.raw.logo_moments /* 2131034149 */:
                return "Moments";
            case R.raw.logo_settings /* 2131034155 */:
                return "Settings";
            case R.raw.logo_transfer /* 2131034156 */:
                return "Transfer";
            case R.raw.add_2 /* 2131034159 */:
                return "AddCloud";
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m4366b(CommonRoot commonRoot) {
        this.f4577d.startActivity(CloudConfigActivity.m3094a(this.f4577d, commonRoot.mo3052k(), commonRoot.f2814n, new Messenger(new Handler(new C1334bh(this)))));
    }

    /* renamed from: b */
    public static boolean m4367b(String str) {
        return str != null && ("folders".equals(str) || "moments".equals(str) || f4574a.equals(str));
    }

    /* renamed from: a */
    public CommonRoot m4370a(String str) {
        if ("moments".equals(str)) {
            this.f4576c = 1;
            return this.f4583j;
        }
        this.f4576c = 0;
        return this.f4582i;
    }

    /* renamed from: a */
    public void m4371a() {
        if (this.f4584k.isEmpty()) {
            m4374a(this.f4584k);
            m4378b(null, false);
        }
    }

    /* renamed from: a */
    public void m4372a(int i) {
        if (this.f4576c != i) {
            this.f4576c = i;
            notifyDataSetChanged();
        }
    }

    /* renamed from: a */
    public void m4373a(EnumC0963z enumC0963z, int i) {
        if (i != 0) {
            ActivityC0907e.m3396a(this.f4577d, new HandlerC1337bk(this, Looper.getMainLooper()), enumC0963z);
            return;
        }
        C0889a c0889a = new C0889a();
        c0889a.f3190a = enumC0963z;
        c0889a.f3192c = "";
        c0889a.f3191b = "";
        String m3348a = c0889a.m3348a();
        this.f4577d.getContentResolver().insert(C0725a.m2910a("com.alensw.PicFolder.CloudProvider", m3348a), c0889a.m3351b());
        m4378b(m3348a, false);
    }

    /* renamed from: a */
    public void m4374a(ArrayList arrayList) {
        arrayList.add(0, this.f4582i);
        arrayList.add(1, this.f4583j);
        for (int[] iArr : f4575b) {
            CommonRoot commonRoot = new CommonRoot(this.f4577d.getString(iArr[2]), null, 0);
            commonRoot.f2812l = iArr[1];
            arrayList.add(commonRoot);
        }
    }

    /* renamed from: a */
    public boolean m4375a(AdapterView adapterView, View view, int i, long j) {
        CommonRoot m4382c = m4382c(i);
        if (m4382c != null) {
            if (m4382c.f2811k == null) {
                int[][] iArr = f4575b;
                int length = iArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    int[] iArr2 = iArr[i2];
                    if (m4382c.f2812l == iArr2[1]) {
                        this.f4577d.onOptionsItemSelected(new MenuItemC0703l(null, this.f4577d, 0, iArr2[0], null));
                        break;
                    }
                    i2++;
                }
            } else {
                m4373a(m4382c.f2811k, m4382c.f2813m);
            }
        }
        return true;
    }

    /* renamed from: a */
    public boolean m4376a(String str, boolean z) {
        m4371a();
        int size = this.f4584k.size();
        for (int i = 0; i < size; i++) {
            CommonRoot commonRoot = (CommonRoot) this.f4584k.get(i);
            if (commonRoot.f2814n != null && commonRoot.f2814n.equals(str)) {
                this.f4578e.performItemClick(this.f4578e, i, getItemId(i));
                if (z) {
                    m4366b(commonRoot);
                }
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public void m4377b() {
        C0879e.m3315a(this.f4577d, null, new C1336bj(this));
    }

    /* renamed from: b */
    public void m4378b(String str, boolean z) {
        AbstractProgressDialogC1062ao.f3641d.m2936a(new C1332bf(this, this.f4577d.getContentResolver(), this.f4577d.getResources(), str, z));
    }

    /* renamed from: b */
    public void m4379b(ArrayList arrayList) {
        if (PreferenceManager.getDefaultSharedPreferences(this.f4577d).getBoolean("five00px_removed", false)) {
            return;
        }
        Resources resources = this.f4577d.getResources();
        C0961x m3314a = C0879e.m3314a(EnumC0963z.FIVE00PX);
        CommonRoot commonRoot = new CommonRoot(resources.getString(m3314a.f3350c), null, 0);
        commonRoot.f2811k = m3314a.f3348a;
        commonRoot.f2813m = m3314a.f3352e;
        commonRoot.f2812l = m3314a.f3349b;
        if (commonRoot.f2812l != 0) {
            commonRoot.f2816p = C0742b.m2966a(resources, commonRoot.f2812l, this.f4579f);
        }
        arrayList.add(commonRoot);
    }

    /* renamed from: b */
    public boolean m4380b(int i) {
        CommonRoot m4382c = m4382c(i);
        if (m4382c == null) {
            return false;
        }
        if (m4382c.f2811k == EnumC0963z.FIVE00PX) {
            PreferenceManager.getDefaultSharedPreferences(this.f4577d).edit().putBoolean("five00px_removed", true).commit();
        }
        new ProgressDialogC1338bl(this, this.f4577d, this.f4577d.getString(R.string.delete), 0, C0725a.m2910a(m4382c.mo3021i().getAuthority(), m4382c.f2814n), new C0860aa(this.f4577d, m4382c.f2814n), i).m3731c();
        return true;
    }

    /* renamed from: b */
    public boolean m4381b(AdapterView adapterView, View view, int i, long j) {
        CommonRoot m4382c = m4382c(i);
        if (m4382c == null) {
            return true;
        }
        if (!C0725a.m2924d(m4382c.mo3021i())) {
            return false;
        }
        MenuItemOnMenuItemClickListenerC1335bi menuItemOnMenuItemClickListenerC1335bi = new MenuItemOnMenuItemClickListenerC1335bi(this, i);
        MenuC0693b menuC0693b = new MenuC0693b(this.f4577d);
        ((MenuItemC0703l) menuC0693b.add(0, R.id.configure, 0, R.string.included_folders)).setOnMenuItemClickListener(menuItemOnMenuItemClickListenerC1335bi);
        ((MenuItemC0703l) menuC0693b.add(0, R.id.delete, 0, R.string.delete)).m2759a(32).setOnMenuItemClickListener(menuItemOnMenuItemClickListenerC1335bi);
        menuC0693b.m2747a(view);
        return true;
    }

    /* renamed from: c */
    public CommonRoot m4382c(int i) {
        if (i < 0 || i >= this.f4584k.size()) {
            return null;
        }
        return (CommonRoot) this.f4584k.get(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f4584k.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f4584k.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C1339bm c1339bm;
        C1330bd c1330bd = null;
        CommonRoot commonRoot = (CommonRoot) getItem(i);
        if (view == null) {
            C1339bm c1339bm2 = new C1339bm(this, c1330bd);
            view = View.inflate(this.f4577d, R.layout.folder_item, null);
            c1339bm2.f4605a = (TextView) view.findViewById(R.id.title);
            c1339bm2.f4606b = (TextView) view.findViewById(R.id.summary);
            c1339bm2.f4607c = (ImageView) view.findViewById(R.id.icon);
            view.setTag(c1339bm2);
            c1339bm = c1339bm2;
        } else {
            c1339bm = (C1339bm) view.getTag();
        }
        if (c1339bm.f4608d != commonRoot) {
            c1339bm.f4608d = commonRoot;
            c1339bm.f4605a.setText(commonRoot.m3012a());
            String str = commonRoot.f2815o;
            c1339bm.f4606b.setText(str);
            c1339bm.f4606b.setVisibility((str == null || str.length() <= 0) ? 8 : 0);
            if (commonRoot.f2816p == null) {
                commonRoot.f2816p = C0742b.m2966a(this.f4577d.getResources(), commonRoot.f2812l, this.f4579f);
            }
            c1339bm.f4607c.setImageDrawable(commonRoot.f2816p);
        }
        c1339bm.f4607c.setBackgroundDrawable(i == this.f4576c ? this.f4581h : null);
        view.setMinimumHeight(commonRoot.f2814n != null ? this.f4580g : 0);
        return view;
    }
}
