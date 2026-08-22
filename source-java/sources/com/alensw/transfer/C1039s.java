package com.alensw.transfer;

import android.app.Activity;
import android.app.Service;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.alensw.PicFolder.GalleryActivity;
import com.alensw.PicFolder.R;
import com.alensw.bean.LocalFolder;
import com.alensw.jni.JniUtils;
import com.alensw.p023b.p026c.C0658b;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.p038ui.activity.ActivityC1109ao;
import com.alensw.p038ui.activity.C1094a;
import com.p043b.p044a.C1387b;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;

/* renamed from: com.alensw.transfer.s */
/* loaded from: classes.dex */
public class C1039s extends C0964a {

    /* renamed from: c */
    private Drawable f3592c;

    /* renamed from: d */
    private ListView f3593d;

    /* renamed from: e */
    private int f3594e;

    /* renamed from: f */
    private int f3595f;

    /* renamed from: g */
    private boolean f3596g;

    /* renamed from: h */
    private File f3597h;

    /* renamed from: a */
    private final C1046z f3590a = new C1046z(this, null);

    /* renamed from: b */
    private final ArrayList f3591b = new ArrayList();

    /* renamed from: i */
    private final InterfaceC1025e f3598i = new C1041u(this);

    /* renamed from: j */
    private final InterfaceC1021bj f3599j = new C1044x(this);

    /* renamed from: k */
    private Comparator f3600k = new C1045y(this);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public int m3705a(C1024d c1024d) {
        int childCount = this.f3593d.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.f3593d.getChildAt(i);
            if (childAt != null && c1024d.equals((C1024d) childAt.getTag(R.id.session_tag_key))) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3707a(C1024d c1024d, C0986ab c0986ab) {
        boolean m3678b = c1024d.m3678b();
        int m3694p = c1024d.m3694p();
        ProgressBar progressBar = c0986ab.f3468c;
        ImageView imageView = c0986ab.f3469d;
        TextView textView = c0986ab.f3467b;
        TextView textView2 = c0986ab.f3466a;
        switch (m3694p) {
            case 0:
                progressBar.setVisibility(0);
                progressBar.setProgress(0);
                textView.setTextColor(this.f3595f);
                textView2.setTextColor(this.f3595f);
                imageView.setVisibility(m3678b ? 4 : 0);
                break;
            case 1:
                progressBar.setVisibility(0);
                float m3695q = c1024d.m3695q();
                textView.setTextColor(this.f3595f);
                textView2.setTextColor(this.f3595f);
                if (m3695q == 0.0f) {
                    progressBar.setProgress(0);
                } else {
                    progressBar.setIndeterminate(false);
                    progressBar.setProgress((int) (m3695q * 100.0f));
                }
                imageView.setVisibility(m3678b ? 4 : 0);
                break;
            case 2:
                imageView.setVisibility(4);
                progressBar.setVisibility(0);
                progressBar.setProgress(100);
                textView.setTextColor(this.f3595f);
                textView2.setTextColor(this.f3595f);
                break;
            case 3:
                imageView.setVisibility(4);
                progressBar.setVisibility(0);
                progressBar.setProgress(100);
                textView.setTextColor(this.f3594e);
                textView2.setTextColor(this.f3594e);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m3712b(C1024d c1024d) {
        if (this.f3597h == null) {
            this.f3597h = new File(C0658b.m2562a(), "QP Transfer");
        }
        LocalFolder localFolder = new LocalFolder(this.f3597h.getPath(), this.f3597h.getName(), 50, 0L, 0L);
        for (C1026f c1026f : c1024d.m3688j()) {
            String lastPathSegment = c1026f.f3571e.getLastPathSegment();
            localFolder.m3059a(C0690c.m2721a(lastPathSegment), JniUtils.fuGetFileTime(c1026f.f3571e.getPath()), lastPathSegment);
        }
        Activity g = m3531g();
        Intent intent = new Intent(g, (Class<?>) GalleryActivity.class);
        intent.putExtra("QuickPic.folder", localFolder);
        C1094a.m3781a(g, intent);
    }

    @Override // com.alensw.transfer.C0964a
    /* renamed from: a */
    public View mo3517a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(R.layout.list_view, viewGroup, false);
        TextView textView = (TextView) inflate.findViewById(R.id.empty);
        textView.setText(R.string.transfer_list_empty);
        this.f3593d = (ListView) inflate.findViewById(R.id.list);
        this.f3593d.setEmptyView(textView);
        return inflate;
    }

    @Override // com.alensw.transfer.C0964a
    /* renamed from: a */
    public void mo3520a(Activity activity) {
        super.mo3520a(activity);
        Resources resources = activity.getResources();
        this.f3592c = C1387b.m4498a(resources, R.raw.ic_menu_cancel, ActivityC1109ao.m3794b(activity, R.attr.colorMenuDrawable));
        this.f3594e = resources.getColor(R.color.material_warning);
        this.f3595f = ((ActivityC1109ao) activity).f3746Y;
        this.f3593d.setAdapter((ListAdapter) this.f3590a);
        this.f3593d.setDivider(null);
        this.f3593d.setOnItemClickListener(new C1040t(this));
    }

    @Override // com.alensw.transfer.C0964a
    /* renamed from: a */
    public void mo3522a(Service service) {
        if (service instanceof TransferService) {
            this.f3596g = true;
            this.f3597h = ((TransferService) service).m3505a();
            ((TransferService) service).m3508a(this.f3599j);
        }
    }

    @Override // com.alensw.transfer.C0964a
    /* renamed from: b */
    public void mo3526b(Service service) {
        if (service instanceof TransferService) {
            this.f3596g = false;
            ((TransferService) service).m3511b(this.f3599j);
        }
    }

    @Override // com.alensw.transfer.C0964a
    /* renamed from: e */
    public void mo3529e() {
        if (this.f3596g) {
            Iterator it = this.f3591b.iterator();
            while (it.hasNext()) {
                ((C1024d) it.next()).m3689k();
            }
        }
        super.mo3529e();
    }
}
