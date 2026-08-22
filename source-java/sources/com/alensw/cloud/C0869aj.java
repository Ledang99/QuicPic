package com.alensw.cloud;

import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.alensw.PicFolder.R;
import com.alensw.p038ui.view.AbstractC1381z;
import java.util.ArrayList;

/* renamed from: com.alensw.cloud.aj */
/* loaded from: classes.dex */
class C0869aj extends AbstractC1381z {

    /* renamed from: a */
    final /* synthetic */ UrlTaskActivity f3145a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0869aj(UrlTaskActivity urlTaskActivity, int i, int i2) {
        super(i, i2);
        this.f3145a = urlTaskActivity;
    }

    @Override // com.alensw.p038ui.view.AbstractC1381z
    /* renamed from: a */
    public Uri mo3286a(int i, View view) {
        ArrayList arrayList;
        C0870ak c0870ak = (C0870ak) view.getTag();
        arrayList = this.f3145a.f2868g;
        C0863ad c0863ad = (C0863ad) arrayList.get(i);
        int i2 = c0863ad.f3140d;
        c0870ak.f3146a.setTextColor(i2 == 4 ? this.f3145a.f2863b : this.f3145a.f3746Y);
        boolean z = i2 == 1;
        c0870ak.f3147b.setVisibility(z ? 0 : 4);
        c0870ak.f3147b.setTag(c0863ad);
        if (z) {
            c0870ak.f3147b.setIndeterminate(c0863ad.f3139c == 0);
            c0870ak.f3147b.setProgress(c0863ad.f3139c);
        }
        c0870ak.f3148c.setTag(c0863ad);
        c0870ak.f3148c.setImageDrawable(i2 == 4 ? this.f3145a.f2865d : this.f3145a.f2864c);
        return c0863ad.f3137a;
    }

    @Override // com.alensw.p038ui.view.AbstractC1381z
    /* renamed from: a */
    public View mo3287a(int i, ViewGroup viewGroup) {
        View.OnClickListener onClickListener;
        View inflate = this.f3145a.getLayoutInflater().inflate(R.layout.upload_list_item, viewGroup, false);
        C0870ak c0870ak = new C0870ak(null);
        c0870ak.f3146a = (TextView) inflate.findViewById(R.id.title);
        c0870ak.f3147b = (ProgressBar) inflate.findViewById(R.id.progress);
        c0870ak.f3147b.setMax(100);
        c0870ak.f3148c = (ImageView) inflate.findViewById(R.id.action);
        ImageView imageView = c0870ak.f3148c;
        onClickListener = this.f3145a.f2871j;
        imageView.setOnClickListener(onClickListener);
        inflate.setTag(c0870ak);
        return inflate;
    }

    @Override // android.widget.Adapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public C0863ad getItem(int i) {
        ArrayList arrayList;
        arrayList = this.f3145a.f2868g;
        return (C0863ad) arrayList.get(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList arrayList;
        arrayList = this.f3145a.f2868g;
        return arrayList.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }
}
