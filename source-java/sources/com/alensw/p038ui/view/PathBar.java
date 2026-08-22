package com.alensw.p038ui.view;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.activity.ActivityC1109ao;
import java.io.File;

/* loaded from: classes.dex */
public class PathBar extends HorizontalScrollView {

    /* renamed from: a */
    public static final File f4451a = new File(File.separator);

    /* renamed from: b */
    private File f4452b;

    /* renamed from: c */
    private View.OnClickListener f4453c;

    /* renamed from: d */
    private final int f4454d;

    /* renamed from: e */
    private final int f4455e;

    /* renamed from: f */
    private final int f4456f;

    /* renamed from: g */
    private final LinearLayout f4457g;

    /* renamed from: h */
    private final LinearLayout.LayoutParams f4458h;

    /* renamed from: i */
    private final View.OnClickListener f4459i;

    public PathBar(Context context) {
        this(context, null);
    }

    public PathBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4452b = f4451a;
        this.f4458h = new LinearLayout.LayoutParams(-2, -1);
        this.f4459i = new ViewOnClickListenerC1325az(this);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f4454d = (int) (displayMetrics.density * 8.0f);
        this.f4455e = (Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) * 3) / 4;
        this.f4456f = ActivityC1109ao.m3794b(context, R.attr.textColorPrimary);
        this.f4457g = new LinearLayout(context);
        this.f4457g.setGravity(16);
        addView(this.f4457g);
        setHorizontalScrollBarEnabled(false);
        setPath(f4451a);
    }

    /* renamed from: a */
    private TextView m4307a(int i) {
        TextView m4309a = m4309a(">", i);
        m4309a.setClickable(false);
        m4309a.setFocusable(false);
        return m4309a;
    }

    /* renamed from: a */
    private TextView m4308a(File file, int i) {
        TextView m4309a = m4309a(file.equals(f4451a) ? "root" : file.getName(), i);
        m4309a.setTag(file);
        return m4309a;
    }

    /* renamed from: a */
    private TextView m4309a(String str, int i) {
        TextView textView = (TextView) View.inflate(getContext(), com.alensw.PicFolder.R.layout.action_text_hide, null);
        textView.setMinWidth(this.f4454d);
        textView.setMaxWidth(this.f4455e);
        textView.setText(str);
        textView.setTextColor(this.f4456f);
        this.f4457g.addView(textView, i, this.f4458h);
        return textView;
    }

    public File getPath() {
        return this.f4452b;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f4453c = onClickListener;
    }

    public void setPath(File file) {
        if (file == null) {
            return;
        }
        int childCount = this.f4457g.getChildCount();
        if (!this.f4452b.equals(file) || childCount <= 0) {
            String path = file.getPath();
            if (!this.f4452b.getPath().startsWith(C0742b.m3006e(path)) || childCount <= 0) {
                this.f4457g.removeAllViews();
                for (File parentFile = file.getParentFile(); parentFile != null; parentFile = parentFile.getParentFile()) {
                    boolean equals = parentFile.equals(f4451a);
                    TextView m4308a = m4308a(parentFile, 0);
                    m4308a.setPaintFlags(m4308a.getPaintFlags() | 8);
                    m4308a.setOnClickListener(this.f4459i);
                    if (!equals) {
                        m4307a(0);
                    }
                }
                if (!f4451a.equals(file)) {
                    m4307a(-1);
                }
                m4308a(file, -1);
            } else {
                int length = path.length();
                int i = childCount - 1;
                while (i >= 0) {
                    Object tag = this.f4457g.getChildAt(i).getTag();
                    if (tag != null && ((File) tag).getPath().length() <= length) {
                        break;
                    }
                    this.f4457g.removeViewAt(i);
                    i--;
                }
                TextView textView = (TextView) this.f4457g.getChildAt(i);
                if (textView != null) {
                    textView.setPaintFlags(textView.getPaintFlags() & (-9));
                    textView.setOnClickListener(null);
                }
            }
            this.f4452b = file;
            post(new RunnableC1327ba(this));
        }
    }
}
