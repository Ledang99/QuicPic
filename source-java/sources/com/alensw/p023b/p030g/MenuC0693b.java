package com.alensw.p023b.p030g;

import android.annotation.TargetApi;
import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListPopupWindow;
import android.widget.ListView;
import android.widget.PopupWindow;
import com.alensw.PicFolder.R;
import com.alensw.p038ui.activity.ActivityC1109ao;
import com.alensw.p038ui.p039a.C1071f;
import com.alensw.p038ui.p042d.C1294d;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.alensw.b.g.b */
/* loaded from: classes.dex */
public class MenuC0693b implements Menu {

    /* renamed from: a */
    public final int f2623a;

    /* renamed from: b */
    public final int f2624b;

    /* renamed from: c */
    public final int f2625c;

    /* renamed from: d */
    protected final Context f2626d;

    /* renamed from: e */
    protected final ArrayList f2627e = new ArrayList(8);

    /* renamed from: f */
    private boolean f2628f;

    public MenuC0693b(Context context) {
        this.f2626d = context;
        Resources resources = context.getResources();
        Resources.Theme theme = context.getTheme();
        TypedValue typedValue = new TypedValue();
        theme.resolveAttribute(R.attr.colorActionIcon, typedValue, true);
        this.f2623a = resources.getColor(typedValue.resourceId);
        theme.resolveAttribute(R.attr.colorMenuIcon, typedValue, true);
        this.f2624b = resources.getColor(typedValue.resourceId);
        this.f2625c = resources.getDimensionPixelSize(R.dimen.menu_material_icon_size);
    }

    /* renamed from: a */
    public static void m2735a(Context context, int i, Menu menu) {
        try {
            ((Activity) context).getMenuInflater().inflate(i, menu);
            if (Build.VERSION.SDK_INT >= 11) {
                int m3794b = ActivityC1109ao.m3794b(context, R.attr.colorActionIcon);
                int m3793b = ActivityC1109ao.m3793b(context);
                int size = menu.size();
                for (int i2 = 0; i2 < size; i2++) {
                    MenuItem item = menu.getItem(i2);
                    if (item.getIcon() == null) {
                        MenuItemC0703l.m2755a(context, item, m3794b, m3793b);
                    }
                }
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public static void m2736a(Context context, View view, InterfaceC0702k interfaceC0702k) {
        MenuC0693b menuC0693b = new MenuC0693b(context);
        if (interfaceC0702k.mo2078a(menuC0693b, view)) {
            menuC0693b.m2747a(view);
        }
    }

    /* renamed from: a */
    private static void m2737a(Context context, C0692a c0692a, View view, InterfaceC0701j interfaceC0701j) {
        try {
            if (Build.VERSION.SDK_INT >= 11) {
                m2741b(context, c0692a, view, interfaceC0701j);
            } else {
                m2744c(context, c0692a, view, interfaceC0701j);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    private SubMenu m2740b(int i, int i2, int i3, CharSequence charSequence) {
        MenuItemC0703l m2746a = m2746a(i, i2, i3, charSequence);
        SubMenuC0704m subMenuC0704m = new SubMenuC0704m(this.f2626d, m2746a);
        m2746a.m2761a(subMenuC0704m);
        subMenuC0704m.m2749a(this.f2628f);
        return subMenuC0704m;
    }

    @TargetApi(11)
    /* renamed from: b */
    private static void m2741b(Context context, C0692a c0692a, View view, InterfaceC0701j interfaceC0701j) {
        ActionBar actionBar;
        Rect rect = new Rect();
        view.getWindowVisibleDisplayFrame(rect);
        int height = (!(context instanceof Activity) || (actionBar = ((Activity) context).getActionBar()) == null) ? 0 : actionBar.getHeight();
        int height2 = rect.height();
        if (height2 > rect.width()) {
            height2 -= (height * 3) / 2;
        }
        int[] m2734a = c0692a.m2734a();
        ListPopupWindow listPopupWindow = new ListPopupWindow(context, null, Build.VERSION.SDK_INT >= 21 ? android.R.attr.actionOverflowMenuStyle : android.R.attr.popupMenuStyle);
        listPopupWindow.setAdapter(c0692a);
        listPopupWindow.setAnchorView(view);
        listPopupWindow.setContentWidth(m2734a[0]);
        if (m2734a[1] > height2) {
            listPopupWindow.setHeight(height2);
        }
        listPopupWindow.setInputMethodMode(2);
        listPopupWindow.setModal(true);
        listPopupWindow.setOnItemClickListener(new C0697f(c0692a, listPopupWindow, m2734a, height2, interfaceC0701j));
        int width = view.getWidth();
        int width2 = listPopupWindow.getWidth();
        if (width > width2) {
            View rootView = view.getRootView();
            listPopupWindow.setHorizontalOffset(rootView.getWidth() <= rootView.getHeight() ? (width - width2) / 2 : 0);
        }
        listPopupWindow.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m2742b(Context context, C0692a c0692a, CharSequence charSequence, InterfaceC0701j interfaceC0701j) {
        AlertDialog m3735a = C1071f.m3735a(context, 0, c0692a, new DialogInterfaceOnClickListenerC0696e(c0692a, context, interfaceC0701j));
        if (m3735a == null) {
            return;
        }
        if (charSequence != null) {
            m3735a.setTitle(charSequence);
        }
        C1071f.m3741a(m3735a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m2743b(PopupWindow popupWindow, View view, int i, int i2) {
        popupWindow.getContentView().post(new RunnableC0700i(popupWindow, i));
        if (view.getHeight() >= i2) {
            popupWindow.showAtLocation(view, 1, 0, view.getBottom());
        } else if (view.isShown()) {
            popupWindow.showAsDropDown(view);
        } else {
            View rootView = view.getRootView();
            popupWindow.showAtLocation(rootView, 1, 0, rootView.getBottom());
        }
    }

    /* renamed from: c */
    private static void m2744c(Context context, C0692a c0692a, View view, InterfaceC0701j interfaceC0701j) {
        Resources resources = context.getResources();
        int round = Math.round(resources.getDisplayMetrics().density * 6.0f);
        Drawable m4207a = C1294d.m4207a(ActivityC1109ao.m3794b(context, R.attr.colorDialog), round);
        ListView listView = new ListView(context);
        listView.setAdapter((ListAdapter) c0692a);
        listView.setDivider(null);
        PopupWindow popupWindow = new PopupWindow(context);
        popupWindow.setAnimationStyle(android.R.style.Animation.Dialog);
        popupWindow.setBackgroundDrawable(m4207a);
        popupWindow.setContentView(listView);
        popupWindow.setFocusable(true);
        popupWindow.setTouchable(true);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setInputMethodMode(2);
        int[] m2734a = c0692a.m2734a();
        int i = (resources.getDisplayMetrics().heightPixels * 3) / 4;
        popupWindow.setHeight(Math.min(m2734a[1] + (listView.getDividerHeight() * (c0692a.getCount() - 1)), i) + (round * 2));
        popupWindow.setWindowLayoutMode(0, -2);
        listView.setScrollbarFadingEnabled(true);
        listView.setOnItemClickListener(new C0698g(c0692a, popupWindow, view, round, i, interfaceC0701j));
        listView.setOnKeyListener(new ViewOnKeyListenerC0699h(popupWindow));
        m2743b(popupWindow, view, m2734a[0] + (round * 2), i);
    }

    /* renamed from: a */
    public int m2745a(int i) {
        int size = this.f2627e.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (((MenuItemC0703l) this.f2627e.get(i2)).getItemId() == i) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public MenuItemC0703l m2746a(int i, int i2, int i3, CharSequence charSequence) {
        MenuItemC0703l menuItemC0703l = new MenuItemC0703l(this, this.f2626d, i, i2, charSequence);
        this.f2627e.add(menuItemC0703l);
        return menuItemC0703l;
    }

    @TargetApi(13)
    /* renamed from: a */
    public void m2747a(View view) {
        if (view == null) {
            m2748a((CharSequence) null);
        } else {
            m2737a(this.f2626d, mo2751b(), view, new C0694c(this));
        }
    }

    /* renamed from: a */
    public void m2748a(CharSequence charSequence) {
        m2742b(this.f2626d, mo2751b(), charSequence, new C0695d(this));
    }

    /* renamed from: a */
    public void m2749a(boolean z) {
        this.f2628f = z;
    }

    /* renamed from: a */
    public boolean m2750a() {
        return this.f2628f;
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return m2746a(0, 0, 0, this.f2626d.getString(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return m2746a(i, i2, i3, this.f2626d.getString(i4));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return m2746a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return m2746a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        return 0;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return m2740b(0, 0, 0, this.f2626d.getText(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return m2740b(i, i2, i3, this.f2626d.getText(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        return m2740b(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return m2740b(0, 0, 0, charSequence);
    }

    /* renamed from: b */
    public C0692a mo2751b() {
        C0692a c0692a = new C0692a(this.f2626d, this.f2624b);
        c0692a.m2733a(this);
        return c0692a;
    }

    /* renamed from: b */
    public void m2752b(int i) {
        if (i < 0 || i >= this.f2627e.size()) {
            return;
        }
        this.f2627e.remove(i);
    }

    @Override // android.view.Menu
    public void clear() {
        this.f2627e.clear();
    }

    @Override // android.view.Menu
    public void close() {
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        MenuItem findItem;
        Iterator it = this.f2627e.iterator();
        while (it.hasNext()) {
            MenuItemC0703l menuItemC0703l = (MenuItemC0703l) it.next();
            if (menuItemC0703l.getItemId() == i) {
                return menuItemC0703l;
            }
            if (menuItemC0703l.hasSubMenu() && (findItem = menuItemC0703l.getSubMenu().findItem(i)) != null) {
                return findItem;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return (MenuItem) this.f2627e.get(i);
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        Iterator it = this.f2627e.iterator();
        while (it.hasNext()) {
            if (((MenuItemC0703l) it.next()).isVisible()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return false;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return false;
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        return false;
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        for (int size = this.f2627e.size() - 1; size >= 0; size--) {
            if (((MenuItemC0703l) this.f2627e.get(size)).getGroupId() == i) {
                m2752b(size);
            }
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        m2752b(m2745a(i));
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        int i2 = (z ? 1 : 0) | (z2 ? 16 : 0);
        Iterator it = this.f2627e.iterator();
        while (it.hasNext()) {
            MenuItemC0703l menuItemC0703l = (MenuItemC0703l) it.next();
            if (menuItemC0703l.getGroupId() == i) {
                menuItemC0703l.m2759a(i2);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        Iterator it = this.f2627e.iterator();
        while (it.hasNext()) {
            MenuItemC0703l menuItemC0703l = (MenuItemC0703l) it.next();
            if (menuItemC0703l.getGroupId() == i) {
                menuItemC0703l.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        Iterator it = this.f2627e.iterator();
        while (it.hasNext()) {
            MenuItemC0703l menuItemC0703l = (MenuItemC0703l) it.next();
            if (menuItemC0703l.getGroupId() == i) {
                menuItemC0703l.setVisible(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
    }

    @Override // android.view.Menu
    public int size() {
        return this.f2627e.size();
    }
}
