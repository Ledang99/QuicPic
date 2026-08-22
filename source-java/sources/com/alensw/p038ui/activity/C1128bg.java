package com.alensw.p038ui.activity;

import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.alensw.PicFolder.R;

/* renamed from: com.alensw.ui.activity.bg */
/* loaded from: classes.dex */
class C1128bg extends BaseAdapter {

    /* renamed from: a */
    final /* synthetic */ LayoutInflater f3795a;

    /* renamed from: b */
    final /* synthetic */ Drawable f3796b;

    /* renamed from: c */
    final /* synthetic */ PathListActivity f3797c;

    C1128bg(PathListActivity pathListActivity, LayoutInflater layoutInflater, Drawable drawable) {
        this.f3797c = pathListActivity;
        this.f3795a = layoutInflater;
        this.f3796b = drawable;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f3797c.f3682a.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f3795a.inflate(R.layout.text_button, (ViewGroup) null);
            ImageView imageView = (ImageView) view.findViewById(R.id.icon);
            imageView.setImageDrawable(this.f3796b);
            imageView.setOnClickListener(this.f3797c.f3687f);
        }
        String str = (String) this.f3797c.f3682a.get(i);
        TextView textView = (TextView) view.findViewById(R.id.title);
        ImageView imageView2 = (ImageView) view.findViewById(R.id.icon);
        textView.setText(str);
        imageView2.setTag(str);
        return view;
    }
}
