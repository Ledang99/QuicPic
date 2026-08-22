package com.alensw.p038ui.p041c;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.format.Formatter;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import android.widget.Toast;
import com.alensw.PicFolder.FileProvider;
import com.alensw.PicFolder.QuickApp;
import com.alensw.PicFolder.R;
import com.alensw.bean.CommonFile;
import com.alensw.p022a.C0613ba;
import com.alensw.p023b.p026c.C0662f;
import com.alensw.p023b.p027d.C0670f;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.p023b.p031h.C0705a;
import com.alensw.p023b.p031h.C0706b;
import com.alensw.p023b.p031h.C0707c;
import com.alensw.p023b.p031h.C0714j;
import com.alensw.p023b.p031h.C0715k;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.activity.C1094a;
import com.alensw.p038ui.p039a.AlertDialogC1086u;
import com.alensw.p038ui.p039a.C1071f;
import java.io.File;
import java.text.DateFormat;
import java.text.FieldPosition;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.http.message.TokenParser;

/* renamed from: com.alensw.ui.c.df */
/* loaded from: classes.dex */
public class C1246df {

    /* renamed from: a */
    public static final String[] f4128a = {"mime_type", "resolution", "duration", "datetaken"};

    /* renamed from: b */
    private static DateFormat f4129b;

    /* renamed from: c */
    private static DateFormat f4130c;

    /* renamed from: d */
    private final Context f4131d;

    /* renamed from: e */
    private Uri f4132e;

    /* renamed from: f */
    private char f4133f;

    /* renamed from: g */
    private long f4134g;

    /* renamed from: h */
    private long f4135h;

    /* renamed from: i */
    private String f4136i;

    /* renamed from: j */
    private String f4137j;

    /* renamed from: k */
    private C0715k f4138k;

    /* renamed from: l */
    private boolean f4139l;

    /* renamed from: m */
    private boolean f4140m;

    public C1246df(Context context, Uri uri, char c, String str, C0715k c0715k) {
        this.f4131d = context;
        if (f4129b == null) {
            f4129b = android.text.format.DateFormat.getDateFormat(context);
            f4130c = android.text.format.DateFormat.getTimeFormat(context);
        }
        m4075a(uri, c, str, c0715k);
    }

    public C1246df(Context context, CommonFile commonFile, C0715k c0715k) {
        this.f4131d = context;
        if (f4129b == null) {
            f4129b = android.text.format.DateFormat.getDateFormat(context);
            f4130c = android.text.format.DateFormat.getTimeFormat(context);
        }
        m4075a(commonFile.mo3021i(), commonFile.m3020h(), commonFile.m3014b(), c0715k);
        String mo3022j = commonFile.mo3022j();
        if (mo3022j != null) {
            this.f4136i = mo3022j;
        }
    }

    /* renamed from: a */
    public static Uri m4064a(Uri uri, char c) {
        return "file".equals(uri.getScheme()) ? m4065a(uri.getPath(), c) : uri;
    }

    /* renamed from: a */
    public static Uri m4065a(String str, char c) {
        Uri m2285b = QuickApp.f2076s.m2285b(str, c);
        return m2285b == null ? FileProvider.m1982a(str) : m2285b;
    }

    /* renamed from: a */
    private void m4066a(boolean z) {
        if (this.f4133f != 'V') {
            C0662f c0662f = null;
            if (z && (c0662f = m4068c()) != null) {
                this.f4135h = c0662f.m2598e();
                C0707c m2786a = C0707c.m2786a(c0662f, true);
                if (m2786a != null) {
                    m2786a.m2793a(this.f4138k, c0662f.m2599f());
                    m2786a.m2792a();
                }
            }
            if (this.f4138k.f2708a == 0 || this.f4138k.f2709b == 0 || this.f4135h == 0) {
                if (c0662f == null) {
                    c0662f = m4068c();
                }
                if (c0662f != null) {
                    C0705a c0705a = new C0705a();
                    if (C0706b.m2783b(c0662f, c0705a)) {
                        this.f4138k.f2708a = c0705a.outWidth;
                        this.f4138k.f2709b = c0705a.outHeight;
                        this.f4138k.f2719o = c0705a.outMimeType;
                    }
                    this.f4135h = c0662f.m2598e();
                }
            }
            if (this.f4138k.f2714j == 0 && this.f4136i != null) {
                this.f4138k.f2714j = new File(this.f4136i).lastModified();
            }
            if (this.f4138k.f2708a > 0 && this.f4138k.f2709b > 0) {
                this.f4137j = Integer.toString(this.f4138k.f2708a) + "x" + this.f4138k.f2709b + "=" + C0742b.m2991b(this.f4138k.f2708a * this.f4138k.f2709b);
            }
            if (c0662f != null) {
                c0662f.m2601h();
            }
        } else if (this.f4136i != null) {
            String[] m2284a = QuickApp.f2076s.m2284a(this.f4136i, this.f4133f, f4128a);
            if (m2284a != null) {
                this.f4138k.f2719o = m2284a[0];
                this.f4137j = m2284a[1];
                this.f4134g = C0742b.m2964a(m2284a[2], 0L);
                this.f4138k.f2714j = C0742b.m2964a(m2284a[3], 0L);
            }
            this.f4135h = new File(this.f4136i).length();
        }
        if (this.f4138k.f2719o != null || this.f4136i == null) {
            return;
        }
        this.f4138k.f2719o = C0690c.m2722a(this.f4136i, this.f4133f);
    }

    /* renamed from: c */
    private C0662f m4068c() {
        try {
            return C0662f.m2590a(this.f4131d.getContentResolver(), this.f4132e);
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public long m4070d() {
        File file = new File(this.f4136i);
        long lastModified = file.lastModified();
        try {
            if (this.f4133f == 'V' && this.f4138k.f2714j == lastModified) {
                this.f4138k.f2714j = C0742b.m2963a(file, this.f4133f, this.f4138k.f2714j);
            }
            if (file.setLastModified(this.f4138k.f2714j)) {
                lastModified = this.f4138k.f2714j;
            }
        } catch (Throwable th) {
        }
        C0613ba c0613ba = QuickApp.f2076s;
        Integer m2275a = c0613ba.m2275a(this.f4136i, this.f4133f);
        if (m2275a != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("datetaken", Long.valueOf(this.f4138k.f2714j));
            contentValues.put("date_modified", Integer.valueOf((int) (lastModified / 1000)));
            c0613ba.m2272a(C0613ba.m2269a(this.f4133f), contentValues, "_id=" + m2275a, (String[]) null);
        }
        QuickApp.f2075r.m2310a(this.f4136i, (int) (lastModified / 1000));
        return lastModified;
    }

    /* renamed from: a */
    public String m4071a(char c) {
        m4074a();
        StringBuilder sb = new StringBuilder(256);
        if (this.f4137j != null) {
            String str = this.f4137j;
            int lastIndexOf = str.lastIndexOf(61);
            if (lastIndexOf != -1) {
                str = str.substring(0, lastIndexOf);
            }
            sb.append(str);
        }
        if (this.f4134g != 0) {
            sb.append(c).append(C0742b.m2970a(this.f4134g));
        }
        if (this.f4138k.f2718n != null) {
            sb.append(c).append(this.f4138k.f2718n);
        }
        if (this.f4138k.f2714j != 0) {
            sb.append(c).append(m4072a(this.f4138k.f2714j));
        }
        return sb.toString();
    }

    /* renamed from: a */
    public String m4072a(long j) {
        StringBuffer stringBuffer = new StringBuffer();
        FieldPosition fieldPosition = new FieldPosition(0);
        f4129b.format(Long.valueOf(j), stringBuffer, fieldPosition);
        stringBuffer.append(TokenParser.f5042SP);
        return f4130c.format(Long.valueOf(j), stringBuffer, fieldPosition).toString();
    }

    /* renamed from: a */
    public String m4073a(Uri uri) {
        this.f4132e = uri;
        if (C0725a.m2924d(uri)) {
            this.f4136i = C0725a.m2916b(uri);
        }
        if (this.f4136i == null || this.f4136i.length() == 0) {
            this.f4136i = uri.getPath();
        }
        return this.f4136i;
    }

    /* renamed from: a */
    public void m4074a() {
        if (this.f4139l) {
            return;
        }
        m4066a(this.f4140m);
        this.f4139l = true;
    }

    /* renamed from: a */
    public void m4075a(Uri uri, char c, String str, C0715k c0715k) {
        m4073a(uri);
        this.f4133f = c;
        this.f4134g = 0L;
        this.f4135h = 0L;
        this.f4137j = null;
        if (c == 0) {
            if (c0715k != null && c0715k.f2719o != null) {
                this.f4133f = c0715k.f2719o.startsWith("video/") ? 'V' : 'I';
            } else if (this.f4136i != null) {
                this.f4133f = C0690c.m2721a(this.f4136i);
            }
        }
        if (c0715k != null) {
            this.f4138k = new C0715k(c0715k);
        } else {
            this.f4138k = new C0715k();
            this.f4138k.f2719o = str;
        }
        this.f4139l = false;
        this.f4140m = c0715k == null;
    }

    /* renamed from: a */
    public void m4076a(View view) {
        m4074a();
        String str = this.f4138k.f2719o;
        if (str == null || "image/webp".equals(str)) {
            str = "image/*";
        }
        Uri m4064a = m4064a(this.f4132e, this.f4133f);
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(str);
        intent.addFlags(1);
        intent.putExtra("android.intent.extra.STREAM", m4064a);
        C1094a.m3769a(this.f4131d, intent, R.string.share, view, new C1254dn(this));
    }

    /* renamed from: a */
    public void m4077a(View view, Bundle bundle) {
        m4074a();
        Uri m4064a = m4064a(this.f4132e, this.f4133f);
        Intent intent = new Intent("android.intent.action.EDIT");
        intent.setDataAndType(m4064a, "image/*");
        intent.addFlags(1);
        intent.putExtra("noFaceDetection", true);
        intent.putExtra("scale", true);
        C1094a.m3769a(this.f4131d, intent, R.string.edit, view, new C1252dl(this, bundle));
    }

    /* renamed from: a */
    public void m4078a(String str, InterfaceC1255do interfaceC1255do) {
        m4074a();
        AlertDialogC1086u m3744a = AlertDialogC1086u.m3744a(this.f4131d, 0, R.layout.details);
        if (m3744a == null) {
            return;
        }
        m3744a.setTitle(str);
        ArrayList arrayList = new ArrayList(16);
        String str2 = this.f4136i;
        if (str2 == null) {
            str2 = m4073a(this.f4132e);
        }
        if (!str2.startsWith("/")) {
            str2 = C0725a.m2919c(this.f4131d.getContentResolver(), this.f4132e);
        }
        arrayList.add(new Pair(Integer.valueOf(R.string.path), str2));
        if (this.f4138k.f2717m != null) {
            arrayList.add(new Pair(Integer.valueOf(R.string.pic_description), this.f4138k.f2717m));
        }
        if (this.f4138k.f2719o != null) {
            arrayList.add(new Pair(Integer.valueOf(R.string.pic_type), C0714j.m2859a(this.f4136i) ? this.f4138k.f2719o + " (3D)" : this.f4138k.f2719o));
        }
        if (this.f4135h != 0) {
            arrayList.add(new Pair(Integer.valueOf(R.string.pic_size), Formatter.formatFileSize(this.f4131d, this.f4135h)));
        }
        if (this.f4137j != null) {
            String str3 = this.f4137j;
            if (this.f4138k.f2711d != 0) {
                str3 = str3 + " " + this.f4138k.f2711d + (char) 176;
            }
            arrayList.add(new Pair(Integer.valueOf(R.string.pic_resolution), str3));
        }
        if (this.f4138k.f2716l != null) {
            arrayList.add(new Pair(Integer.valueOf(R.string.pic_camera), this.f4138k.f2716l));
        }
        if (this.f4138k.f2718n != null) {
            arrayList.add(new Pair(Integer.valueOf(R.string.pic_exif_info), this.f4138k.f2718n));
        }
        if (this.f4138k.f2714j != 0) {
            arrayList.add(new Pair(Integer.valueOf(R.string.pic_date), m4072a(this.f4138k.f2714j)));
        }
        if (this.f4138k.f2715k != null) {
            arrayList.add(new Pair(Integer.valueOf(R.string.pic_address), C0742b.m2974a("(%.7f,%.7f)", this.f4138k.f2715k[0], this.f4138k.f2715k[1])));
        }
        LayoutInflater layoutInflater = (LayoutInflater) this.f4131d.getSystemService("layout_inflater");
        TableLayout tableLayout = (TableLayout) m3744a.findViewById(R.id.items);
        tableLayout.setColumnShrinkable(1, true);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            TableRow tableRow = (TableRow) layoutInflater.inflate(R.layout.detail_item, (ViewGroup) null);
            tableLayout.addView(tableRow);
            ((TextView) tableRow.findViewById(R.id.key)).setText(((Integer) pair.first).intValue());
            ((TextView) tableRow.findViewById(R.id.value)).setText((CharSequence) pair.second);
        }
        if (this.f4138k.f2715k != null) {
            float[] fArr = this.f4138k.f2715k;
            TextView textView = (TextView) ((TableRow) tableLayout.getChildAt(tableLayout.getChildCount() - 1)).findViewById(R.id.value);
            textView.setOnClickListener(new ViewOnClickListenerC1247dg(this, fArr, textView));
            C0670f.m2633a(this.f4131d).m2648a(fArr[0], fArr[1], 0L, new C1248dh(this, textView));
        }
        m3744a.setButton(-1, this.f4131d.getString(android.R.string.ok), new DialogInterfaceOnClickListenerC1249di(this));
        if (interfaceC1255do != null && this.f4138k.f2714j != 0 && this.f4136i != null && this.f4136i.startsWith("/")) {
            m3744a.setButton(-2, this.f4131d.getString(R.string.fix_date), new DialogInterfaceOnClickListenerC1250dj(this, interfaceC1255do));
        }
        C1071f.m3741a(m3744a);
    }

    /* renamed from: b */
    public void m4079b(View view) {
        m4074a();
        if (this.f4138k.f2715k != null) {
            C1094a.m3772a(this.f4131d, this.f4138k.f2715k[0], this.f4138k.f2715k[1], view);
        } else {
            Toast.makeText(this.f4131d, R.string.no_location_in_picture, 1).show();
        }
    }

    /* renamed from: b */
    public void m4080b(View view, Bundle bundle) {
        m4074a();
        Uri m4064a = m4064a(this.f4132e, this.f4133f);
        Intent intent = new Intent("android.intent.action.ATTACH_DATA");
        intent.setDataAndType(m4064a, "image/*");
        intent.addFlags(1);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        intent.putExtra("mimeType", intent.getType());
        C1094a.m3769a(this.f4131d, intent, R.string.set_as, view, new C1253dm(this, m4064a));
    }

    /* renamed from: b */
    public boolean m4081b() {
        return this.f4138k != null && this.f4138k.f2712h;
    }
}
