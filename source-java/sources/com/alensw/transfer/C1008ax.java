package com.alensw.transfer;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.alensw.PicFolder.R;
import com.alensw.transfer.p037a.C0984t;
import java.util.ArrayList;

/* renamed from: com.alensw.transfer.ax */
/* loaded from: classes.dex */
class C1008ax extends BaseAdapter {

    /* renamed from: a */
    final /* synthetic */ C0987ac f3528a;

    private C1008ax(C0987ac c0987ac) {
        this.f3528a = c0987ac;
    }

    /* synthetic */ C1008ax(C0987ac c0987ac, ViewOnClickListenerC0988ad viewOnClickListenerC0988ad) {
        this(c0987ac);
    }

    @Override // android.widget.Adapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public C0984t getItem(int i) {
        ArrayList arrayList;
        arrayList = this.f3528a.f3485o;
        return (C0984t) arrayList.get(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList arrayList;
        arrayList = this.f3528a.f3485o;
        return arrayList.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        Drawable drawable;
        TransferService transferService;
        TransferService transferService2;
        if (view == null) {
            view = View.inflate(this.f3528a.m3531g(), R.layout.folder_item, null);
            view.findViewById(R.id.icon).setPadding(0, 0, 0, 0);
        }
        String m3611a = getItem(i).m3611a();
        ImageView imageView = (ImageView) view.findViewById(R.id.icon);
        drawable = this.f3528a.f3477g;
        imageView.setImageDrawable(drawable);
        ((TextView) view.findViewById(R.id.title)).setText(m3611a);
        TextView textView = (TextView) view.findViewById(R.id.summary);
        transferService = this.f3528a.f3476f;
        if (transferService != null) {
            transferService2 = this.f3528a.f3476f;
            textView.setText(transferService2.m3504a(m3611a) != null ? R.string.sending_files : R.string.click_to_send);
        } else {
            textView.setText((CharSequence) null);
        }
        return view;
    }
}
