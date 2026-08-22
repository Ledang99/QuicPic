package com.alensw.p038ui.p041c;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.alensw.PicFolder.R;
import com.alensw.bean.CommonFile;
import com.alensw.bean.CommonFolder;
import com.alensw.bean.CommonRoot;
import com.alensw.p023b.p035l.C0742b;
import com.p043b.p044a.C1387b;

/* renamed from: com.alensw.ui.c.w */
/* loaded from: classes.dex */
class C1287w extends BaseAdapter {

    /* renamed from: a */
    final /* synthetic */ C1280p f4268a;

    C1287w(C1280p c1280p) {
        this.f4268a = c1280p;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        CommonFolder commonFolder;
        commonFolder = this.f4268a.f4246q;
        return commonFolder.m3047o();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        CommonFolder commonFolder;
        commonFolder = this.f4268a.f4246q;
        return commonFolder.m3027a(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        CommonFolder commonFolder;
        Drawable drawable;
        Drawable drawable2;
        int i2;
        if (view == null) {
            view = View.inflate(this.f4268a.f4082C, R.layout.folder_item, null);
        }
        TextView textView = (TextView) view.findViewById(R.id.title);
        TextView textView2 = (TextView) view.findViewById(R.id.summary);
        ImageView imageView = (ImageView) view.findViewById(R.id.icon);
        commonFolder = this.f4268a.f4246q;
        CommonFile m3027a = commonFolder.m3027a(i);
        if (m3027a instanceof CommonRoot) {
            CommonRoot commonRoot = (CommonRoot) m3027a;
            textView.setText(commonRoot.m3012a());
            textView2.setText(commonRoot.f2815o);
            textView2.setVisibility((commonRoot.f2815o == null || commonRoot.f2815o.length() <= 0) ? 8 : 0);
            imageView.setImageDrawable(C0742b.m2966a(this.f4268a.m4024F(), commonRoot.f2812l, textView2.getTextColors().getDefaultColor()));
        } else {
            textView.setText(i == 0 ? ".." : m3027a.m3012a());
            textView2.setVisibility(8);
            drawable = this.f4268a.f4239j;
            if (drawable == null) {
                C1280p c1280p = this.f4268a;
                Resources F = this.f4268a.m4024F();
                int defaultColor = textView2.getTextColors().getDefaultColor();
                i2 = this.f4268a.f4238i;
                c1280p.f4239j = C1387b.m4499a(F, R.raw.ic_menu_folder, defaultColor, i2);
            }
            drawable2 = this.f4268a.f4239j;
            imageView.setImageDrawable(drawable2);
        }
        return view;
    }
}
