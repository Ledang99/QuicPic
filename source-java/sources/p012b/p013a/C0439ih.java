package p012b.p013a;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: b.a.ih */
/* loaded from: classes.dex */
public class C0439ih extends AbstractC0215a {

    /* renamed from: a */
    private static final Pattern f1565a = Pattern.compile("UTDID\">([^<]+)");

    /* renamed from: b */
    private Context f1566b;

    public C0439ih(Context context) {
        super("utdid");
        this.f1566b = context;
    }

    /* renamed from: b */
    private String m1444b(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = f1565a.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }

    /* renamed from: g */
    private String m1445g() {
        File m1446h = m1446h();
        if (m1446h == null || !m1446h.exists()) {
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(m1446h);
            try {
                return m1444b(C0385gh.m1299a(fileInputStream));
            } finally {
                C0385gh.m1306c(fileInputStream);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: h */
    private File m1446h() {
        if (!C0381gd.m1261a(this.f1566b, "android.permission.WRITE_EXTERNAL_STORAGE") || !Environment.getExternalStorageState().equals("mounted")) {
            return null;
        }
        try {
            return new File(Environment.getExternalStorageDirectory().getCanonicalPath(), ".UTSystemConfig/Global/Alvin2.xml");
        } catch (Exception e) {
            return null;
        }
    }

    @Override // p012b.p013a.AbstractC0215a
    /* renamed from: f */
    public String mo629f() {
        return m1445g();
    }
}
