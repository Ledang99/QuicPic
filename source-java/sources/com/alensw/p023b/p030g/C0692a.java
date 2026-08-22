package com.alensw.p023b.p030g;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.p043b.p044a.C1387b;
import com.p043b.p044a.C1397l;
import java.util.ArrayList;

/* renamed from: com.alensw.b.g.a */
/* loaded from: classes.dex */
public class C0692a extends BaseAdapter {

    /* renamed from: i */
    public static final int[] f2613i = {R.attr.state_checked};

    /* renamed from: j */
    public static final int[] f2614j = new int[0];

    /* renamed from: a */
    protected final int f2615a;

    /* renamed from: b */
    protected final int f2616b;

    /* renamed from: c */
    protected final int f2617c;

    /* renamed from: d */
    protected final boolean f2618d;

    /* renamed from: e */
    protected final Context f2619e;

    /* renamed from: f */
    protected boolean f2620f;

    /* renamed from: g */
    protected int f2621g = 0;

    /* renamed from: h */
    protected ArrayList f2622h;

    public C0692a(Context context, int i) {
        boolean z = false;
        Resources resources = context.getResources();
        this.f2619e = context;
        this.f2615a = resources.getDimensionPixelSize(com.alensw.PicFolder.R.dimen.check_box_size);
        this.f2616b = i;
        this.f2617c = resources.getColor(com.alensw.PicFolder.R.color.material_warning);
        if (Build.VERSION.SDK_INT >= 17 && (resources.getConfiguration().screenLayout & 192) == 128) {
            z = true;
        }
        this.f2618d = z;
    }

    /* renamed from: a */
    public static Drawable m2731a(Resources resources, int i, int i2, boolean z) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        C1397l m4499a = C1387b.m4499a(resources, z ? com.alensw.PicFolder.R.raw.ic_button_radio_on : com.alensw.PicFolder.R.raw.ic_button_check_on, i2, i);
        C1397l m4499a2 = C1387b.m4499a(resources, z ? com.alensw.PicFolder.R.raw.ic_button_radio_off : com.alensw.PicFolder.R.raw.ic_button_check_off, i2, i);
        stateListDrawable.addState(f2613i, m4499a);
        stateListDrawable.addState(f2614j, m4499a2);
        return stateListDrawable;
    }

    /* renamed from: a */
    public static int[] m2732a(ListAdapter listAdapter) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        View view = null;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < count; i3++) {
            view = listAdapter.getView(i3, view, null);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i2 = Math.max(view.getMeasuredWidth(), i2);
            i += view.getMeasuredHeight();
        }
        return new int[]{i2, i};
    }

    /* renamed from: a */
    public void m2733a(MenuC0693b menuC0693b) {
        int size = menuC0693b.size();
        if (this.f2622h == null) {
            this.f2622h = new ArrayList(size);
        } else {
            this.f2622h.clear();
        }
        for (int i = 0; i < size; i++) {
            MenuItemC0703l menuItemC0703l = (MenuItemC0703l) menuC0693b.getItem(i);
            if (menuItemC0703l.isVisible()) {
                this.f2622h.add(menuItemC0703l);
            }
        }
        this.f2620f = menuC0693b.m2750a();
    }

    /* renamed from: a */
    public int[] m2734a() {
        Resources resources = this.f2619e.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(com.alensw.PicFolder.R.dimen.menu_min_width);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(com.alensw.PicFolder.R.dimen.menu_max_width);
        int[] m2732a = m2732a(this);
        m2732a[0] = Math.min(Math.max(m2732a[0], dimensionPixelSize), dimensionPixelSize2);
        return m2732a;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f2622h.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f2622h.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return ((MenuItemC0703l) this.f2622h.get(i)).getItemId();
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        LinearLayout linearLayout;
        if (view == null) {
            LinearLayout linearLayout2 = (LinearLayout) View.inflate(this.f2619e, com.alensw.PicFolder.R.layout.menu_item, null);
            if (this.f2618d) {
                int childCount = linearLayout2.getChildCount();
                for (int i2 = 0; i2 < childCount / 2; i2++) {
                    linearLayout2.bringChildToFront(linearLayout2.getChildAt(i2));
                }
                ((TextView) linearLayout2.findViewById(com.alensw.PicFolder.R.id.title)).setGravity(21);
            }
            if (this.f2621g == 0) {
                this.f2621g = ((TextView) linearLayout2.findViewById(com.alensw.PicFolder.R.id.title)).getTextColors().getDefaultColor();
                linearLayout = linearLayout2;
            } else {
                linearLayout = linearLayout2;
            }
        } else {
            linearLayout = (LinearLayout) view;
        }
        ImageView imageView = (ImageView) linearLayout.findViewById(com.alensw.PicFolder.R.id.icon);
        TextView textView = (TextView) linearLayout.findViewById(com.alensw.PicFolder.R.id.title);
        CompoundButton compoundButton = (CompoundButton) linearLayout.findViewById(com.alensw.PicFolder.R.id.check);
        MenuItemC0703l menuItemC0703l = (MenuItemC0703l) this.f2622h.get(i);
        boolean isEnabled = menuItemC0703l.isEnabled();
        imageView.setVisibility(this.f2620f ? 0 : 8);
        if (this.f2620f) {
            imageView.setImageDrawable(menuItemC0703l.getIcon());
        }
        menuItemC0703l.m2760a();
        int m2762b = menuItemC0703l.m2762b();
        if ((m2762b & 32) != 0) {
            textView.setTextColor(this.f2617c);
        } else if (isEnabled) {
            textView.setTextColor(this.f2621g);
        } else {
            textView.setTextColor((this.f2621g & 16777215) | Integer.MIN_VALUE);
        }
        textView.setText(menuItemC0703l.getTitle());
        if (menuItemC0703l.isCheckable()) {
            boolean isChecked = menuItemC0703l.isChecked();
            boolean z = (m2762b & 16) != 0;
            compoundButton.setVisibility(0);
            compoundButton.setChecked(isChecked);
            compoundButton.setButtonDrawable(m2731a(this.f2619e.getResources(), this.f2615a, this.f2616b, z));
        } else {
            compoundButton.setVisibility(8);
        }
        return linearLayout;
    }
}
