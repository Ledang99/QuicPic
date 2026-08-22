package com.alensw.p038ui.view;

import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.alensw.PicFolder.QuickApp;
import com.alensw.bean.CommonFile;
import com.alensw.bean.UriFile;
import com.alensw.p022a.InterfaceC0595aj;
import com.alensw.p023b.p031h.C0712h;
import java.util.HashMap;
import java.util.Iterator;

/* renamed from: com.alensw.ui.view.z */
/* loaded from: classes.dex */
public abstract class AbstractC1381z extends BaseAdapter {

    /* renamed from: a */
    private final int f4873a;

    /* renamed from: b */
    private final int f4874b;

    /* renamed from: c */
    private final HashMap f4875c = new HashMap(256);

    /* renamed from: d */
    private final HashMap f4876d = new HashMap(64);

    public AbstractC1381z(int i, int i2) {
        this.f4873a = i;
        this.f4874b = i2;
    }

    /* renamed from: a */
    public static void m4486a(ImageView imageView, C0712h c0712h) {
        if (c0712h != null) {
            c0712h.mo2865l();
        }
        Object tag = imageView.getTag();
        if (tag != null && (tag instanceof C0712h)) {
            ((C0712h) tag).m2866m();
        }
        imageView.setTag(c0712h);
        imageView.setImageBitmap((c0712h == null || !c0712h.m2854j()) ? null : c0712h.m2848d());
    }

    /* renamed from: a */
    public abstract Uri mo3286a(int i, View view);

    /* renamed from: a */
    public abstract View mo3287a(int i, ViewGroup viewGroup);

    /* renamed from: a */
    public ImageView m4487a(Uri uri) {
        return (ImageView) this.f4876d.get(uri);
    }

    /* renamed from: a */
    public void m4488a() {
        Iterator it = this.f4876d.values().iterator();
        while (it.hasNext()) {
            m4486a((ImageView) it.next(), (C0712h) null);
        }
        this.f4876d.clear();
        this.f4875c.clear();
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = mo3287a(i, viewGroup);
        }
        ImageView imageView = (ImageView) view.findViewById(this.f4873a);
        TextView textView = (TextView) view.findViewById(this.f4874b);
        Uri mo3286a = mo3286a(i, view);
        if (mo3286a == null) {
            if (imageView != null) {
                m4486a(imageView, (C0712h) null);
            }
            if (textView != null) {
                textView.setText((CharSequence) null);
            }
        } else {
            CommonFile commonFile = (CommonFile) this.f4875c.get(mo3286a);
            if (commonFile == null) {
                commonFile = UriFile.m3074a(mo3286a);
                this.f4875c.put(mo3286a, commonFile);
            }
            CommonFile commonFile2 = commonFile;
            if (imageView != null) {
                this.f4876d.put(mo3286a, imageView);
                C0712h c0712h = (C0712h) QuickApp.f2080w.m2521b(commonFile2);
                m4486a(imageView, c0712h);
                if (c0712h == null) {
                    QuickApp.f2077t.m2166a(commonFile2, false, (InterfaceC0595aj) new RunnableC1300aa(this, imageView, mo3286a));
                }
            }
            if (textView != null) {
                textView.setText(commonFile2.m3012a());
            }
        }
        return view;
    }
}
