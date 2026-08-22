package com.alensw.p038ui.p041c;

import android.app.Activity;
import android.net.Uri;
import android.text.format.Formatter;
import com.alensw.PicFolder.QuickApp;
import com.alensw.bean.CommonFile;
import com.alensw.jni.JniUtils;
import com.alensw.p022a.C0613ba;
import com.alensw.p022a.C0615bc;
import com.alensw.p022a.C0622d;
import com.alensw.p022a.C0623e;
import com.alensw.p023b.p026c.C0662f;
import com.alensw.p023b.p029f.C0688a;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.p023b.p029f.EnumC0689b;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* renamed from: com.alensw.ui.c.d */
/* loaded from: classes.dex */
class ProgressDialogC1240d extends AbstractProgressDialogC1062ao {

    /* renamed from: a */
    final /* synthetic */ File f4109a;

    /* renamed from: b */
    final /* synthetic */ C0613ba f4110b;

    /* renamed from: c */
    final /* synthetic */ C0615bc f4111c;

    /* renamed from: e */
    final /* synthetic */ HashSet f4112e;

    /* renamed from: f */
    final /* synthetic */ ArrayList f4113f;

    /* renamed from: g */
    final /* synthetic */ ArrayList f4114g;

    /* renamed from: h */
    final /* synthetic */ C1213c f4115h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressDialogC1240d(C1213c c1213c, Activity activity, String str, int i, File file, C0613ba c0613ba, C0615bc c0615bc, HashSet hashSet, ArrayList arrayList, ArrayList arrayList2) {
        super(activity, str, i);
        this.f4115h = c1213c;
        this.f4109a = file;
        this.f4110b = c0613ba;
        this.f4111c = c0615bc;
        this.f4112e = hashSet;
        this.f4113f = arrayList;
        this.f4114g = arrayList2;
    }

    /* renamed from: a */
    private boolean m4047a(File file, long j) {
        long fuGetAvailBytes = JniUtils.fuGetAvailBytes(file.getPath());
        if (fuGetAvailBytes > 4194304 + j) {
            return true;
        }
        m3730a("Low available space: " + Formatter.formatFileSize(this.f4115h.f4043f.f4082C, fuGetAvailBytes));
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0068 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x000e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0105  */
    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void mo3653a() {
        char c;
        String str;
        String m2351a;
        Uri fromFile;
        boolean z;
        C0623e.m2355a(this.f4109a);
        Iterator it = this.f4115h.f4041d.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (next instanceof C0622d) {
                C0622d c0622d = (C0622d) next;
                c = c0622d.f2405c;
                str = c0622d.f2404b;
                m2351a = c0622d.m2351a();
                fromFile = Uri.fromFile(new File(m2351a));
            } else if (next instanceof CommonFile) {
                CommonFile commonFile = (CommonFile) next;
                String m3012a = commonFile.m3012a();
                c = commonFile.m3020h();
                if (C0690c.m2721a(m3012a) == 0) {
                    m3012a = C0690c.m2723a(m3012a, commonFile.m3014b());
                }
                String mo3022j = commonFile.mo3022j();
                fromFile = commonFile.mo3021i();
                str = m3012a;
                m2351a = mo3022j;
            } else {
                continue;
            }
            File file = new File(this.f4109a, str);
            if (m2351a == null || !m2351a.equalsIgnoreCase(file.getPath())) {
                File m2969a = file.exists() ? C0742b.m2969a(file, (String) null) : file;
                if (this.f4115h.f4039b) {
                    try {
                        C0662f m2590a = C0662f.m2590a(this.f4115h.f4042e, fromFile);
                        if (!m4047a(this.f4109a, m2590a.m2598e())) {
                            return;
                        }
                        z = C0742b.m2981a(m2590a, m2969a);
                        try {
                            m2590a.m2601h();
                        } catch (Throwable th) {
                            th = th;
                            th.printStackTrace();
                            if (z) {
                            }
                            C0688a.m2715a(this.f4115h.f4043f.f4082C, this.f4115h.f4039b ? EnumC0689b.CopyFile : EnumC0689b.MoveFile, c == 'V' ? "video" : "image");
                            if (!m3732d()) {
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        z = false;
                    }
                } else {
                    try {
                        File file2 = new File(m2351a);
                        boolean renameTo = file2.renameTo(m2969a);
                        if (!renameTo) {
                            try {
                                if (!m4047a(this.f4109a, file2.length())) {
                                    return;
                                }
                                renameTo = C0742b.m2983a(file2, m2969a);
                                if (renameTo) {
                                    C0742b.m2999c(file2);
                                }
                            } catch (Throwable th3) {
                                z = renameTo;
                                th = th3;
                                th.printStackTrace();
                                if (z) {
                                    this.f4110b.m2282a(m2351a, c, false);
                                    this.f4111c.m2309a(m2351a);
                                }
                                if (z) {
                                }
                                C0688a.m2715a(this.f4115h.f4043f.f4082C, this.f4115h.f4039b ? EnumC0689b.CopyFile : EnumC0689b.MoveFile, c == 'V' ? "video" : "image");
                                if (!m3732d()) {
                                }
                            }
                        }
                        z = renameTo;
                    } catch (Throwable th4) {
                        th = th4;
                        z = false;
                    }
                    if (z && m2351a != null) {
                        this.f4110b.m2282a(m2351a, c, false);
                        this.f4111c.m2309a(m2351a);
                    }
                }
                if (z) {
                    this.f4112e.add(next);
                    this.f4113f.add(m2969a.getName());
                } else if (m2351a != null) {
                    this.f4114g.add(m2351a);
                }
                C0688a.m2715a(this.f4115h.f4043f.f4082C, this.f4115h.f4039b ? EnumC0689b.CopyFile : EnumC0689b.MoveFile, c == 'V' ? "video" : "image");
                if (!m3732d()) {
                    return;
                }
            }
        }
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: b */
    protected void mo3654b() {
        this.f4115h.f4038a.mo3890a(this.f4115h.f4039b, this.f4112e);
        String path = this.f4109a.getPath();
        C0623e m2495a = QuickApp.f2072o.m2495a(this.f4115h.f4043f.f4082C, Uri.fromFile(this.f4109a));
        if (m2495a != null) {
            QuickApp.f2072o.m2497a(m2495a, true);
        }
        if (this.f4113f.size() > 0) {
            QuickApp.f2076s.m2281a(path, this.f4113f);
            QuickApp.f2081x = false;
            QuickApp.f2074q.m2451a(4, path, null);
            return;
        }
        this.f4114g.add(0, path);
        Iterator it = this.f4114g.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (!str.startsWith(C0623e.f2410b + File.separatorChar)) {
                this.f4115h.f4043f.m3879a(str);
                return;
            }
        }
    }
}
