package com.alensw.cloud;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.p043b.p044a.C1387b;
import java.util.ArrayList;

/* renamed from: com.alensw.cloud.n */
/* loaded from: classes.dex */
final class C0887n extends BaseAdapter {

    /* renamed from: a */
    final /* synthetic */ ArrayList f3172a;

    /* renamed from: b */
    final /* synthetic */ Context f3173b;

    /* renamed from: c */
    final /* synthetic */ int f3174c;

    /* renamed from: d */
    final /* synthetic */ int f3175d;

    /* renamed from: e */
    final /* synthetic */ int f3176e;

    /* renamed from: f */
    final /* synthetic */ int f3177f;

    /* renamed from: g */
    final /* synthetic */ Resources f3178g;

    /* renamed from: h */
    final /* synthetic */ int f3179h;

    C0887n(ArrayList arrayList, Context context, int i, int i2, int i3, int i4, Resources resources, int i5) {
        this.f3172a = arrayList;
        this.f3173b = context;
        this.f3174c = i;
        this.f3175d = i2;
        this.f3176e = i3;
        this.f3177f = i4;
        this.f3178g = resources;
        this.f3179h = i5;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f3172a.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f3172a.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return ((C0961x) this.f3172a.get(i)).f3351d == 0 ? 0 : 1;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        TextView textView;
        Drawable drawable;
        if (view == null) {
            textView = new TextView(this.f3173b);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setGravity(19);
            textView.setPadding(this.f3174c, this.f3175d, this.f3174c, this.f3175d);
            textView.setSingleLine(true);
        } else {
            textView = (TextView) view;
        }
        C0961x c0961x = (C0961x) this.f3172a.get(i);
        boolean z = c0961x.f3351d == 0;
        textView.setCompoundDrawablePadding(z ? 0 : this.f3174c);
        textView.setTextColor(z ? this.f3176e : this.f3177f);
        textView.setTextSize(z ? 14.0f : 18.0f);
        textView.setText(this.f3178g.getText(c0961x.f3350c));
        if (c0961x.f3349b != 0) {
            try {
                drawable = C1387b.m4499a(this.f3178g, c0961x.f3349b, this.f3176e, this.f3179h);
            } catch (Throwable th) {
                try {
                    drawable = this.f3178g.getDrawable(c0961x.f3349b);
                } catch (Throwable th2) {
                    drawable = null;
                }
            }
        } else {
            drawable = null;
        }
        textView.setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
        return textView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return ((C0961x) this.f3172a.get(i)).f3351d != 0;
    }
}
