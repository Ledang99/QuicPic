package com.alensw.p038ui.p041c;

import android.os.Handler;
import com.alensw.PicFolder.R;
import com.alensw.bean.CommonFile;
import com.alensw.bean.CommonFolder;
import com.alensw.p022a.InterfaceC0611az;

/* renamed from: com.alensw.ui.c.aj */
/* loaded from: classes.dex */
class C1169aj implements InterfaceC0611az {

    /* renamed from: a */
    final /* synthetic */ C1290z f3871a;

    /* renamed from: b */
    private final CommonFile f3872b;

    C1169aj(C1290z c1290z) {
        this.f3871a = c1290z;
        this.f3872b = this.f3871a.f4304y != null ? this.f3871a.f4304y.m3027a(this.f3871a.f4304y.f2807k) : null;
    }

    @Override // com.alensw.p022a.InterfaceC0611az
    /* renamed from: a */
    public void mo2260a(CommonFolder commonFolder, boolean z) {
        Runnable runnable;
        Runnable runnable2;
        if (!z) {
            mo2261b(null, true);
            return;
        }
        Handler handler = this.f3871a.f3851b;
        runnable = this.f3871a.f4282T;
        handler.removeCallbacks(runnable);
        Handler handler2 = this.f3871a.f3851b;
        runnable2 = this.f3871a.f4282T;
        handler2.postDelayed(runnable2, 50L);
    }

    @Override // com.alensw.p022a.InterfaceC0611az
    /* renamed from: b */
    public void mo2261b(CommonFolder commonFolder, boolean z) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6 = null;
        this.f3871a.f4275M = null;
        if (this.f3871a.f4087H == 0) {
            return;
        }
        if (commonFolder != null) {
            this.f3871a.f4304y.m3032a(commonFolder, true);
        }
        Float f = (Float) C1290z.f4272z.remove(this.f3871a.f4304y.mo3021i());
        if (f != null) {
            this.f3871a.f4285f.setScrollPos(f.floatValue());
        }
        if (this.f3872b != null && !this.f3872b.equals(this.f3871a.f4304y.m3027a(this.f3871a.f4304y.f2807k))) {
            this.f3871a.f4304y.f2807k = this.f3871a.f4304y.m3025a(this.f3872b);
        }
        if (this.f3871a.f4304y.f2807k != -1) {
            this.f3871a.f4285f.m4264c(this.f3871a.f4304y.f2807k);
        }
        this.f3871a.f4285f.requestLayout();
        this.f3871a.m4190m();
        if (z) {
            this.f3871a.m4029c(false);
            if (this.f3871a.f4304y.m3046n()) {
                this.f3871a.f4285f.setEmptyText(this.f3871a.m4032g(R.string.no_picture_in_album));
                if (this.f3871a.f4293n) {
                    str = this.f3871a.f4273B;
                    if (str != null) {
                        str2 = this.f3871a.f4273B;
                        if (str2.endsWith("@baidu")) {
                            str5 = this.f3871a.m4032g(R.string.cloud_baidu);
                            str6 = "/我的应用数据/quickpic";
                            str4 = "pan.baidu.com";
                        } else {
                            str3 = this.f3871a.f4273B;
                            if (str3.endsWith("@yun360")) {
                                str5 = this.f3871a.m4032g(R.string.cloud_360);
                                str6 = "/我的应用数据/快图浏览";
                                str4 = "yunpan.360.cn";
                            } else {
                                str4 = null;
                                str5 = null;
                            }
                        }
                        if (str5 != null) {
                            this.f3871a.m4182a((CharSequence) String.format("%s限制只允许浏览“%s”内的文件，请上传图片或去 %s 将其它目录的图片移动到此处。", str5, str6, "http://" + str4));
                        }
                    }
                }
            }
        }
    }
}
