package com.alensw.p023b.p026c;

import android.os.Environment;
import android.util.Log;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.alensw.b.c.g */
/* loaded from: classes.dex */
public abstract class AbstractC0663g {

    /* renamed from: e */
    private static final String f2538e = Environment.getExternalStorageDirectory().getPath();

    /* renamed from: a */
    private File f2539a;

    /* renamed from: b */
    private boolean f2540b;

    /* renamed from: c */
    private boolean f2541c = true;

    /* renamed from: d */
    private final ConcurrentHashMap f2542d;

    public AbstractC0663g(int i) {
        this.f2542d = new ConcurrentHashMap(i);
    }

    /* renamed from: a */
    public static String m2602a(String str, int i, String str2, String str3) {
        int length = str2.length();
        if (i < length || !str.substring(0, length).equals(str2)) {
            return null;
        }
        return str3 + str.substring(length);
    }

    /* renamed from: a */
    private boolean m2603a(File file, ArrayList arrayList) {
        try {
            boolean delete = file.delete();
            if (arrayList.isEmpty()) {
                return delete;
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            DataOutputStream dataOutputStream = new DataOutputStream(fileOutputStream);
            dataOutputStream.writeInt(2);
            dataOutputStream.writeUTF(mo2263a());
            dataOutputStream.writeInt(arrayList.size());
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String str = (String) entry.getKey();
                if (this.f2541c) {
                    str = m2605f(str);
                }
                Object value = entry.getValue();
                if (str != null && value != null) {
                    dataOutputStream.writeUTF(str);
                    mo2266a(dataOutputStream, value);
                }
            }
            dataOutputStream.close();
            fileOutputStream.close();
            return true;
        } catch (Throwable th) {
            Log.e("PropertyFile", "save: ", th);
            return false;
        }
    }

    /* renamed from: e */
    public static String m2604e(String str) {
        String m2602a;
        return (str == null || (m2602a = m2602a(str, str.length(), "${SD}", f2538e)) == null) ? str : m2602a;
    }

    /* renamed from: f */
    public static String m2605f(String str) {
        String m2602a;
        return (str == null || (m2602a = m2602a(str, str.length(), f2538e, "${SD}")) == null) ? str : m2602a;
    }

    /* renamed from: a */
    public Object m2606a(String str, Object obj) {
        Object put = this.f2542d.put(str, obj);
        if (put != obj) {
            if (put == null || obj == null) {
                this.f2540b = true;
            } else if (!put.equals(obj)) {
                this.f2540b = true;
            }
        }
        return put;
    }

    /* renamed from: a */
    protected abstract String mo2263a();

    /* renamed from: a */
    protected abstract void mo2266a(DataOutputStream dataOutputStream, Object obj);

    /* renamed from: a */
    public void m2607a(boolean z) {
        this.f2540b = z;
    }

    /* renamed from: a */
    public boolean m2608a(File file) {
        m2615d();
        this.f2539a = file;
        this.f2540b = false;
        try {
            ConcurrentHashMap concurrentHashMap = this.f2542d;
            FileInputStream fileInputStream = new FileInputStream(file);
            DataInputStream dataInputStream = new DataInputStream(fileInputStream);
            int readInt = dataInputStream.readInt();
            String readUTF = dataInputStream.readUTF();
            if (readInt == 2 && mo2263a().equals(readUTF)) {
                int readInt2 = dataInputStream.readInt();
                for (int i = 0; i < readInt2; i++) {
                    String readUTF2 = dataInputStream.readUTF();
                    if (this.f2541c) {
                        readUTF2 = m2604e(readUTF2);
                    }
                    Object mo2268b = mo2268b(dataInputStream);
                    if (readUTF2 != null && readUTF2.length() > 0 && mo2268b != null) {
                        concurrentHashMap.put(readUTF2, mo2268b);
                    }
                }
            }
            dataInputStream.close();
            fileInputStream.close();
            return concurrentHashMap.size() > 0;
        } catch (FileNotFoundException e) {
            return false;
        } catch (Throwable th) {
            Log.e("PropertyFile", "load: ", th);
            return false;
        }
    }

    /* renamed from: a */
    public boolean m2609a(String str) {
        return this.f2542d.containsKey(str);
    }

    /* renamed from: b */
    protected abstract Object mo2268b(DataInputStream dataInputStream);

    /* renamed from: b */
    public Object m2610b(String str) {
        return this.f2542d.get(str);
    }

    /* renamed from: b */
    public void m2611b(File file) {
        if (file != null) {
            this.f2539a = file;
        }
        m2620h();
    }

    /* renamed from: b */
    public boolean m2612b() {
        return this.f2542d.isEmpty();
    }

    /* renamed from: c */
    public int m2613c() {
        return this.f2542d.size();
    }

    /* renamed from: c */
    public Object m2614c(String str) {
        Object remove = this.f2542d.remove(str);
        if (remove != null) {
            this.f2540b = true;
        }
        return remove;
    }

    /* renamed from: d */
    public void m2615d() {
        this.f2540b = this.f2542d.size() > 0;
        this.f2542d.clear();
    }

    /* renamed from: d */
    public boolean m2616d(String str) {
        return str != null && m2608a(new File(str));
    }

    /* renamed from: e */
    public boolean m2617e() {
        return this.f2540b;
    }

    /* renamed from: f */
    public Set m2618f() {
        return this.f2542d.entrySet();
    }

    /* renamed from: g */
    public HashMap m2619g() {
        return new HashMap(this.f2542d);
    }

    /* renamed from: h */
    public void m2620h() {
        if (this.f2539a != null) {
            try {
                File file = new File(this.f2539a.getPath());
                ArrayList arrayList = new ArrayList(this.f2542d.size());
                arrayList.addAll(this.f2542d.entrySet());
                if (m2603a(file, arrayList)) {
                    this.f2540b = false;
                }
            } catch (Throwable th) {
            }
        }
    }
}
