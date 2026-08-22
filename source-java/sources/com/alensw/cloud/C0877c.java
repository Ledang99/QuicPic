package com.alensw.cloud;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.alensw.PicFolder.R;
import com.alensw.bean.CommonFile;
import com.alensw.bean.CommonFolder;
import com.alensw.p023b.p030g.C0692a;
import com.p043b.p044a.C1387b;

/* renamed from: com.alensw.cloud.c */
/* loaded from: classes.dex */
class C0877c extends BaseAdapter {

    /* renamed from: a */
    final /* synthetic */ CloudConfigActivity f3165a;

    C0877c(CloudConfigActivity cloudConfigActivity) {
        this.f3165a = cloudConfigActivity;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        CommonFolder commonFolder;
        CommonFolder commonFolder2;
        commonFolder = this.f3165a.f2857j;
        if (commonFolder == null) {
            return 0;
        }
        commonFolder2 = this.f3165a.f2857j;
        return commonFolder2.m3047o();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        CommonFolder commonFolder;
        commonFolder = this.f3165a.f2857j;
        return commonFolder.m3027a(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C0878d c0878d;
        CommonFolder commonFolder;
        String m3097a;
        C0860aa c0860aa;
        if (view == null || view.getTag() == null) {
            view = View.inflate(this.f3165a, R.layout.menu_item, null);
            ImageView imageView = (ImageView) view.findViewById(R.id.icon);
            TextView textView = (TextView) view.findViewById(R.id.title);
            CheckBox checkBox = (CheckBox) view.findViewById(R.id.check);
            C0878d c0878d2 = new C0878d(this.f3165a);
            c0878d2.f3166a = textView;
            c0878d2.f3167b = imageView;
            c0878d2.f3168c = checkBox;
            view.setTag(c0878d2);
            imageView.setVisibility(0);
            checkBox.setVisibility(0);
            if (Build.VERSION.SDK_INT < 21) {
                checkBox.setButtonDrawable(C0692a.m2731a(this.f3165a.getResources(), this.f3165a.f2851d, this.f3165a.f2850c, false));
            }
            c0878d = c0878d2;
        } else {
            c0878d = (C0878d) view.getTag();
        }
        commonFolder = this.f3165a.f2857j;
        CommonFile m3027a = commonFolder.m3027a(i);
        m3097a = this.f3165a.m3097a(i);
        if (this.f3165a.f2852e == null) {
            this.f3165a.f2852e = C1387b.m4499a(this.f3165a.getResources(), R.raw.ic_menu_folder, (c0878d.f3166a.getTextColors().getDefaultColor() & 16777215) | (-1073741824), this.f3165a.f2849b);
        }
        c0878d.f3167b.setImageDrawable(this.f3165a.f2852e);
        c0878d.f3166a.setText(m3027a.m3012a());
        CheckBox checkBox2 = c0878d.f3168c;
        c0860aa = this.f3165a.f2860m;
        checkBox2.setChecked(!c0860aa.m2609a(m3097a));
        return view;
    }
}
