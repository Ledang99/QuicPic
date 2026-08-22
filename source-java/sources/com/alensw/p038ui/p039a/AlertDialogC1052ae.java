package com.alensw.p038ui.p039a;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;
import com.alensw.PicFolder.QuickApp;
import com.alensw.PicFolder.R;
import com.alensw.p022a.C0623e;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.activity.ActivityC1109ao;
import com.alensw.p038ui.activity.ActivityC1147p;
import com.alensw.p038ui.view.PathBar;
import com.p043b.p044a.C1387b;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import org.apache.http.util.LangUtils;

/* renamed from: com.alensw.ui.a.ae */
/* loaded from: classes.dex */
public class AlertDialogC1052ae extends AlertDialogC1086u {

    /* renamed from: m */
    public static final Comparator f3619m = new C1053af();

    /* renamed from: c */
    protected final PathBar f3620c;

    /* renamed from: d */
    protected final ListView f3621d;

    /* renamed from: e */
    protected final Drawable f3622e;

    /* renamed from: f */
    protected final boolean f3623f;

    /* renamed from: g */
    protected final boolean f3624g;

    /* renamed from: h */
    protected final int f3625h;

    /* renamed from: i */
    protected final int f3626i;

    /* renamed from: j */
    protected final int f3627j;

    /* renamed from: k */
    protected C0623e f3628k;

    /* renamed from: l */
    protected C0623e f3629l;

    /* renamed from: n */
    protected BaseAdapter f3630n;

    @TargetApi(LangUtils.HASH_SEED)
    public AlertDialogC1052ae(Context context, int i, File file, InterfaceC1061an interfaceC1061an) {
        super(context);
        this.f3630n = new C1060am(this);
        super.setTitle(R.string.select_a_folder);
        super.m3748a(R.layout.path_dlg);
        getWindow().addFlags(132096);
        Resources resources = context.getResources();
        this.f3625h = resources.getDimensionPixelSize(R.dimen.menu_material_icon_size);
        this.f3627j = resources.getDimensionPixelSize(R.dimen.button_padding);
        this.f3626i = this.f3625h + (this.f3627j * 2);
        this.f3622e = C1387b.m4499a(resources, R.raw.folder_2, ActivityC1109ao.m3794b(this.f3673a, android.R.attr.textColorSecondary), this.f3625h);
        this.f3623f = (i & 1) != 0;
        this.f3624g = (i & 2) != 0;
        file = (file == null || !file.exists()) ? Environment.getExternalStorageDirectory() : file;
        this.f3628k = new C0623e(file, 0);
        this.f3628k.f2424h = new ArrayList(128);
        File parentFile = this.f3628k.getParentFile();
        this.f3629l = parentFile != null ? new C0623e(parentFile, 0) : null;
        this.f3620c = (PathBar) findViewById(R.id.path);
        this.f3620c.setPath(file);
        this.f3620c.setOnClickListener(new ViewOnClickListenerC1054ag(this));
        this.f3621d = (ListView) findViewById(R.id.list);
        this.f3621d.setAdapter((ListAdapter) this.f3630n);
        this.f3621d.setScrollbarFadingEnabled(true);
        this.f3621d.setOnItemClickListener(new C1055ah(this));
        super.setButton(-1, context.getString(android.R.string.ok), new DialogInterfaceOnClickListenerC1056ai(this, interfaceC1061an));
        super.setButton(-2, context.getString(android.R.string.cancel), new DialogInterfaceOnClickListenerC1057aj(this));
        if (this.f3624g) {
            super.setButton(-3, context.getString(R.string.new_folder), new DialogInterfaceOnClickListenerC1058ak(this, context, interfaceC1061an));
        }
    }

    /* renamed from: a */
    public static void m3724a(Context context, int i, File file, InterfaceC1061an interfaceC1061an) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.alensw.PicFolder_preferences", 0);
        if ((Build.VERSION.SDK_INT >= 30 ? sharedPreferences.getBoolean("external_files", true) : sharedPreferences.getBoolean("external_files", false)) && i == 2) {
            setupSaf(context);
        } else {
            new AlertDialogC1052ae(context, i, file, interfaceC1061an).show();
        }
    }

    static void setupSaf(Context context) {
        ((Activity) context).startActivityForResult(new Intent("android.intent.action.OPEN_DOCUMENT_TREE"), 205452);
    }

    /* renamed from: a */
    protected File m3725a(String str) {
        File path = this.f3620c.getPath();
        File file = new File(path, str);
        int m2962a = C0742b.m2962a(this.f3628k.f2424h, file, f3619m);
        if (m2962a >= 0) {
            return (File) this.f3628k.f2424h.get(m2962a);
        }
        if (file.exists() || C0742b.m2982a(file)) {
            return file;
        }
        Context context = this.f3673a;
        if (!(context instanceof ActivityC1147p) || !((ActivityC1147p) context).m3852a(path.getPath())) {
            Toast.makeText(context, "Create folder '" + str + "' failed!", 1).show();
        }
        return null;
    }

    /* renamed from: a */
    protected void m3726a(File file) {
        boolean z = false;
        this.f3628k = new C0623e(file, 0);
        if (QuickApp.f2074q.m2448a(this.f3628k, this.f3623f) > 0) {
            C0742b.m2988a((List) this.f3628k.f2424h, f3619m);
        }
        File parentFile = file.getParentFile();
        if (parentFile != null) {
            this.f3629l = new C0623e(parentFile, 0);
            this.f3628k.f2424h.add(0, this.f3629l);
        } else {
            this.f3629l = null;
        }
        this.f3630n.notifyDataSetChanged();
        if (this.f3624g) {
            String path = file.getPath();
            if ((file.canWrite() || QuickApp.f2073p.m2326b(path)) && !QuickApp.f2073p.m2331g(path)) {
                z = true;
            }
            getButton(-1).setEnabled(z);
            getButton(-3).setEnabled(z);
        }
    }

    @Override // com.alensw.p038ui.p039a.AlertDialogC1086u, android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m3726a(this.f3620c.getPath());
    }
}
