package com.alensw.p023b.p030g;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import com.alensw.PicFolder.R;
import com.alensw.p038ui.activity.ActivityC1109ao;
import com.p043b.p044a.C1387b;

/* renamed from: com.alensw.b.g.l */
/* loaded from: classes.dex */
public class MenuItemC0703l implements MenuItem {

    /* renamed from: a */
    public static final int[][] f2648a = {new int[]{R.id.add, R.raw.ic_menu_add}, new int[]{R.id.camera, R.raw.ic_menu_camera}, new int[]{R.id.clear, R.raw.ic_menu_cancel}, new int[]{R.id.crop, R.raw.ic_menu_crop}, new int[]{R.id.delete, R.drawable.ic_bar_delete}, new int[]{R.id.done, R.raw.ic_menu_done}, new int[]{R.id.download, R.raw.ic_menu_download}, new int[]{R.id.flip, R.raw.ic_menu_flip}, new int[]{R.id.help, R.drawable.ic_bar_help}, new int[]{R.id.retry, R.raw.ic_menu_retry}, new int[]{R.id.rotate, R.raw.ic_menu_rotate}, new int[]{R.id.rotation, R.raw.ic_menu_rotation}, new int[]{R.id.search, R.raw.ic_menu_search}, new int[]{R.id.select, R.drawable.ic_bar_select}, new int[]{R.id.share, R.drawable.ic_bar_share}, new int[]{R.id.shrink, R.raw.ic_menu_shrink}, new int[]{R.id.slideshow, R.drawable.ic_bar_slideshow}, new int[]{R.id.upload, R.raw.ic_menu_upload}};

    /* renamed from: b */
    public static final SparseIntArray f2649b = new SparseIntArray(f2648a.length);

    /* renamed from: c */
    private final MenuC0693b f2650c;

    /* renamed from: d */
    private final Context f2651d;

    /* renamed from: e */
    private final int f2652e;

    /* renamed from: f */
    private final int f2653f;

    /* renamed from: g */
    private int f2654g;

    /* renamed from: h */
    private CharSequence f2655h;

    /* renamed from: i */
    private Drawable f2656i;

    /* renamed from: j */
    private Object f2657j;

    /* renamed from: k */
    private SubMenu f2658k;

    /* renamed from: l */
    private MenuItem.OnMenuItemClickListener f2659l;

    static {
        for (int[] iArr : f2648a) {
            f2649b.put(iArr[0], iArr[1]);
        }
    }

    public MenuItemC0703l(MenuC0693b menuC0693b, Context context, int i, int i2, CharSequence charSequence) {
        this.f2650c = menuC0693b;
        this.f2651d = context;
        this.f2652e = i;
        this.f2653f = i2;
        this.f2655h = charSequence;
    }

    /* renamed from: a */
    public static Drawable m2754a(Context context, MenuItem menuItem) {
        return m2755a(context, menuItem, ActivityC1109ao.m3794b(context, R.attr.colorActionIcon), context.getResources().getDimensionPixelSize(R.dimen.menu_material_icon_size));
    }

    /* renamed from: a */
    public static Drawable m2755a(Context context, MenuItem menuItem, int i, int i2) {
        int i3 = f2649b.get(menuItem.getItemId());
        Drawable drawable = null;
        if (i3 != 0) {
            Resources resources = context.getResources();
            try {
                drawable = C1387b.m4499a(resources, i3, i, i2);
            } catch (Throwable th) {
                drawable = resources.getDrawable(i3);
            }
            if (drawable != null) {
                menuItem.setIcon(drawable);
            }
        }
        return drawable;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x002a -> B:2:0x002b). Please report as a decompilation issue!!! */
    /* renamed from: a */
    public static Drawable m2756a(Context context, Object obj, int i, int i2) {
        Drawable loadIcon;
        if (obj != null) {
            try {
                if (obj instanceof Integer) {
                    Resources resources = context.getResources();
                    int intValue = ((Integer) obj).intValue();
                    try {
                        loadIcon = C1387b.m4499a(resources, intValue, i, i2);
                    } catch (Throwable th) {
                        loadIcon = resources.getDrawable(intValue);
                    }
                } else if (obj instanceof ResolveInfo) {
                    loadIcon = ((ResolveInfo) obj).loadIcon(context.getPackageManager());
                }
            } catch (Throwable th2) {
            }
            return loadIcon;
        }
        loadIcon = null;
        return loadIcon;
    }

    /* renamed from: a */
    public static MenuItemC0703l m2757a(View view) {
        return new MenuItemC0703l(null, view.getContext(), 0, view.getId(), null);
    }

    /* renamed from: a */
    public MenuItem m2758a(ResolveInfo resolveInfo) {
        this.f2657j = resolveInfo;
        return this;
    }

    /* renamed from: a */
    public MenuItemC0703l m2759a(int i) {
        this.f2654g = i;
        return this;
    }

    /* renamed from: a */
    public void m2760a() {
        if (this.f2657j != null) {
            this.f2656i = null;
        }
    }

    /* renamed from: a */
    protected void m2761a(SubMenu subMenu) {
        this.f2658k = subMenu;
    }

    /* renamed from: b */
    public int m2762b() {
        return this.f2654g;
    }

    /* renamed from: c */
    protected boolean m2763c() {
        return this.f2659l != null && this.f2659l.onMenuItemClick(this);
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        return null;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return (char) 0;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f2652e;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        int i;
        if (this.f2656i != null) {
            return this.f2656i;
        }
        if (this.f2657j == null && (i = f2649b.get(this.f2653f)) != 0) {
            this.f2657j = Integer.valueOf(i);
        }
        if (this.f2657j != null) {
            this.f2656i = m2756a(this.f2651d, this.f2657j, this.f2650c.f2623a, this.f2650c.f2625c);
        }
        return this.f2656i;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return null;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f2653f;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return (char) 0;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return 0;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.f2658k;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f2655h;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return this.f2655h;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f2658k != null;
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.f2654g & 1) == 1;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f2654g & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f2654g & 4) == 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.f2654g & 8) == 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        if (z) {
            this.f2654g |= 1;
        } else {
            this.f2654g &= -2;
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        if (z && this.f2652e != 0 && (this.f2654g & 16) != 0) {
            int size = this.f2650c.size();
            for (int i = 0; i < size; i++) {
                MenuItem item = this.f2650c.getItem(i);
                if (item.getGroupId() == this.f2652e && (item instanceof MenuItemC0703l)) {
                    ((MenuItemC0703l) item).f2654g &= -3;
                }
            }
        }
        if (z) {
            this.f2654g |= 2;
        } else {
            this.f2654g &= -3;
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        if (z) {
            this.f2654g &= -5;
        } else {
            this.f2654g |= 4;
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f2657j = i != 0 ? Integer.valueOf(i) : null;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f2656i = drawable;
        this.f2657j = null;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f2659l = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        return this;
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i) {
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        return null;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        if (i != 0) {
            setTitle(this.f2651d.getString(i));
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f2655h = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        if (z) {
            this.f2654g &= -9;
        } else {
            this.f2654g |= 8;
        }
        return this;
    }
}
