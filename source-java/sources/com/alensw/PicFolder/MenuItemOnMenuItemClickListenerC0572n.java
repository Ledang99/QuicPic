package com.alensw.PicFolder;

import android.view.MenuItem;
import com.alensw.p038ui.p039a.C1071f;
import java.util.ArrayList;

/* renamed from: com.alensw.PicFolder.n */
/* loaded from: classes.dex */
class MenuItemOnMenuItemClickListenerC0572n implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a */
    final /* synthetic */ ArrayList f2203a;

    /* renamed from: b */
    final /* synthetic */ ArrayList f2204b;

    /* renamed from: c */
    final /* synthetic */ CropActivity f2205c;

    MenuItemOnMenuItemClickListenerC0572n(CropActivity cropActivity, ArrayList arrayList, ArrayList arrayList2) {
        this.f2205c = cropActivity;
        this.f2203a = arrayList;
        this.f2204b = arrayList2;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0039  */
    @Override // android.view.MenuItem.OnMenuItemClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onMenuItemClick(MenuItem menuItem) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int itemId = menuItem.getItemId();
        if (itemId < 1000 || itemId >= 2000) {
            if (itemId >= 2000) {
                int i9 = itemId - 2000;
                if (i9 < 0 || i9 >= this.f2204b.size()) {
                    CropActivity cropActivity = this.f2205c;
                    i5 = this.f2205c.f1988j;
                    i6 = this.f2205c.f1989k;
                    C1071f.m3738a(cropActivity, R.string.pic_resolution, " x ", i5, i6, new C0574p(this));
                } else {
                    long longValue = ((Long) this.f2204b.get(i9)).longValue();
                    i4 = (int) (longValue & 2147483647L);
                    i3 = (int) ((longValue >> 32) & 2147483647L);
                    i = 0;
                    i2 = 0;
                }
            } else {
                i = 0;
                i2 = 0;
                i3 = 0;
                i4 = 0;
            }
            this.f2205c.m1979a(itemId != 999, i4, i3, i2, i, true);
        } else {
            int i10 = itemId - 1000;
            if (i10 < 0 || i10 >= this.f2203a.size()) {
                CropActivity cropActivity2 = this.f2205c;
                i7 = this.f2205c.f1990l;
                i8 = this.f2205c.f1991m;
                C1071f.m3738a(cropActivity2, R.string.ratio, " : ", i7, i8, new C0573o(this));
            } else {
                long longValue2 = ((Long) this.f2203a.get(i10)).longValue();
                i2 = (int) (longValue2 & 2147483647L);
                i = (int) ((longValue2 >> 32) & 2147483647L);
                i3 = 0;
                i4 = 0;
                this.f2205c.m1979a(itemId != 999, i4, i3, i2, i, true);
            }
        }
        return true;
    }
}
