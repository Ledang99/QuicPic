package com.alensw.cloud.sync;

import android.content.ContentResolver;
import android.content.res.Resources;
import android.net.Uri;
import android.text.format.DateUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alensw.PicFolder.CloudProvider;
import com.alensw.PicFolder.QuickApp;
import com.alensw.PicFolder.R;
import com.alensw.cloud.C0879e;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p023b.p035l.C0742b;
import java.util.ArrayList;

/* renamed from: com.alensw.cloud.sync.o */
/* loaded from: classes.dex */
class C0947o extends BaseAdapter {

    /* renamed from: a */
    final /* synthetic */ SyncSettings f3326a;

    C0947o(SyncSettings syncSettings) {
        this.f3326a = syncSettings;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList arrayList;
        arrayList = this.f3326a.f3286j;
        return arrayList.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        ArrayList arrayList;
        arrayList = this.f3326a.f3286j;
        return arrayList.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        ArrayList arrayList;
        C0951s c0951s;
        int i2;
        int i3;
        int i4;
        Resources resources = this.f3326a.getResources();
        if (view == null) {
            LinearLayout linearLayout = (LinearLayout) View.inflate(this.f3326a, R.layout.folder_item, null);
            ImageView imageView = (ImageView) View.inflate(this.f3326a, R.layout.action_button, null);
            imageView.setId(R.id.upload);
            i4 = this.f3326a.f3280d;
            imageView.setImageDrawable(C0742b.m2966a(resources, R.raw.ic_menu_upload, i4));
            imageView.setOnClickListener(new ViewOnClickListenerC0948p(this));
            linearLayout.addView(imageView);
            linearLayout.setDescendantFocusability(393216);
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            if (layoutParams instanceof LinearLayout.LayoutParams) {
                ((LinearLayout.LayoutParams) layoutParams).gravity = 16;
            }
            view = linearLayout;
        }
        ImageView imageView2 = (ImageView) view.findViewById(R.id.icon);
        TextView textView = (TextView) view.findViewById(R.id.title);
        TextView textView2 = (TextView) view.findViewById(R.id.summary);
        ImageView imageView3 = (ImageView) view.findViewById(R.id.upload);
        arrayList = this.f3326a.f3286j;
        C0951s c0951s2 = (C0951s) arrayList.get(i);
        c0951s = this.f3326a.f3285i;
        if (c0951s2 == c0951s) {
            textView.setText(resources.getText(R.string.add));
            textView2.setVisibility(8);
            imageView3.setVisibility(8);
            imageView2.setImageDrawable(c0951s2.f3331b);
        } else {
            Uri parse = Uri.parse(c0951s2.f3346e);
            if (c0951s2.f3331b == null) {
                try {
                    int i5 = C0879e.m3314a(CloudProvider.m1952e(C0725a.m2916b(parse))).f3349b;
                    i2 = this.f3326a.f3280d;
                    c0951s2.f3331b = C0742b.m2966a(resources, i5, i2);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            imageView2.setImageDrawable(c0951s2.f3331b);
            ContentResolver contentResolver = this.f3326a.getContentResolver();
            String string = QuickApp.f2073p.m2327c(c0951s2.f3345d) == 2 ? this.f3326a.getString(R.string.camera) : C0742b.m2992b(c0951s2.f3345d);
            if (c0951s2.f3330a == null) {
                c0951s2.f3330a = C0725a.m2919c(contentResolver, parse);
            }
            textView.setText(string + " -> " + ((c0951s2.f3330a == null || c0951s2.f3330a.length() <= 0) ? "/" : c0951s2.f3330a));
            C0952t m3418a = C0936d.m3418a(contentResolver, c0951s2.f3344c);
            String str = " ";
            i3 = this.f3326a.f3280d;
            if (m3418a != null) {
                switch (m3418a.f3332a) {
                    case 0:
                        str = resources.getString(R.string.cloud_backup_last_time, DateUtils.getRelativeTimeSpanString(m3418a.f3335d));
                        if (!m3418a.m3451a()) {
                            i3 = this.f3326a.f3279c;
                            break;
                        } else {
                            i3 = this.f3326a.f3280d;
                            break;
                        }
                    case 1:
                    case 2:
                        str = resources.getString(R.string.uploading) + (char) 8230;
                        break;
                }
            }
            textView2.setText(str);
            textView2.setTextColor(i3);
            textView2.setVisibility(0);
            imageView3.setTag(c0951s2.f3344c);
            imageView3.setVisibility(0);
        }
        return view;
    }
}
