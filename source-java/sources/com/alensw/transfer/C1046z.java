package com.alensw.transfer;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.alensw.PicFolder.R;
import java.util.ArrayList;

/* renamed from: com.alensw.transfer.z */
/* loaded from: classes.dex */
class C1046z extends BaseAdapter {

    /* renamed from: a */
    final /* synthetic */ C1039s f3609a;

    private C1046z(C1039s c1039s) {
        this.f3609a = c1039s;
    }

    /* synthetic */ C1046z(C1039s c1039s, C1040t c1040t) {
        this(c1039s);
    }

    @Override // android.widget.Adapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public C1024d getItem(int i) {
        ArrayList arrayList;
        arrayList = this.f3609a.f3591b;
        return (C1024d) arrayList.get(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList arrayList;
        arrayList = this.f3609a.f3591b;
        return arrayList.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C0986ab c0986ab;
        Drawable drawable;
        InterfaceC1025e interfaceC1025e;
        if (view == null) {
            view = this.f3609a.m3531g().getLayoutInflater().inflate(R.layout.transfer_list_item, viewGroup, false);
            TextView textView = (TextView) view.findViewById(R.id.sender);
            TextView textView2 = (TextView) view.findViewById(R.id.content);
            ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.progress);
            ImageView imageView = (ImageView) view.findViewById(R.id.cancel);
            C0986ab c0986ab2 = new C0986ab(this.f3609a, null);
            c0986ab2.f3466a = textView;
            c0986ab2.f3467b = textView2;
            c0986ab2.f3468c = progressBar;
            c0986ab2.f3469d = imageView;
            view.setTag(c0986ab2);
            c0986ab = c0986ab2;
        } else {
            c0986ab = (C0986ab) view.getTag();
        }
        c0986ab.f3469d.setVisibility(0);
        ImageView imageView2 = c0986ab.f3469d;
        drawable = this.f3609a.f3592c;
        imageView2.setImageDrawable(drawable);
        C1024d item = getItem(i);
        interfaceC1025e = this.f3609a.f3598i;
        item.m3672a(interfaceC1025e);
        view.setTag(R.id.session_tag_key, item);
        boolean m3678b = item.m3678b();
        c0986ab.f3467b.setText(String.format(this.f3609a.m3531g().getString(R.string.total_files), Integer.valueOf(item.m3688j().size())));
        c0986ab.f3469d.setOnClickListener(new ViewOnClickListenerC0985aa(this, item));
        if (m3678b) {
            c0986ab.f3466a.setText(String.format(this.f3609a.m3531g().getString(R.string.send_to), item.m3680c()));
        } else {
            c0986ab.f3466a.setText(String.format(this.f3609a.m3531g().getString(R.string.receive_from), item.m3680c()));
        }
        this.f3609a.m3707a(item, c0986ab);
        return view;
    }
}
