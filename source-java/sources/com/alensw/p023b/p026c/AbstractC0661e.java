package com.alensw.p023b.p026c;

import android.util.Log;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: com.alensw.b.c.e */
/* loaded from: classes.dex */
public abstract class AbstractC0661e implements Iterable {

    /* renamed from: a */
    private File f2531a;

    /* renamed from: b */
    private boolean f2532b;

    /* renamed from: c */
    private final CopyOnWriteArrayList f2533c = new CopyOnWriteArrayList();

    /* renamed from: a */
    public int m2572a(Object obj) {
        return this.f2533c.indexOf(obj);
    }

    /* renamed from: a */
    public Object m2573a(int i) {
        return this.f2533c.get(i);
    }

    /* renamed from: a */
    public Object m2574a(int i, Object obj) {
        Object obj2 = this.f2533c.set(i, obj);
        if (obj2 != obj) {
            if (obj2 == null || obj == null) {
                this.f2532b = true;
            } else if (!obj2.equals(obj)) {
                this.f2532b = true;
            }
        }
        return obj2;
    }

    /* renamed from: a */
    public abstract String mo2575a();

    /* renamed from: a */
    public abstract void mo2576a(DataOutputStream dataOutputStream, Object obj);

    /* renamed from: a */
    public void m2577a(Collection collection) {
        this.f2533c.addAll(collection);
        this.f2532b = true;
    }

    /* renamed from: a */
    public boolean m2578a(File file) {
        m2585e();
        this.f2531a = file;
        this.f2532b = false;
        try {
            LinkedList linkedList = new LinkedList();
            FileInputStream fileInputStream = new FileInputStream(file);
            DataInputStream dataInputStream = new DataInputStream(fileInputStream);
            int readInt = dataInputStream.readInt();
            String readUTF = dataInputStream.readUTF();
            if (readInt == 1 && mo2575a().equals(readUTF)) {
                int readInt2 = dataInputStream.readInt();
                for (int i = 0; i < readInt2; i++) {
                    Object mo2579b = mo2579b(dataInputStream);
                    if (mo2579b != null) {
                        linkedList.add(mo2579b);
                    }
                }
            }
            this.f2533c.addAll(linkedList);
            dataInputStream.close();
            fileInputStream.close();
            return linkedList.size() > 0;
        } catch (FileNotFoundException e) {
            return false;
        } catch (Throwable th) {
            Log.e("ListFile", "load: ", th);
            return false;
        }
    }

    /* renamed from: b */
    public abstract Object mo2579b(DataInputStream dataInputStream);

    /* renamed from: b */
    public void m2580b(Object obj) {
        this.f2533c.add(obj);
        this.f2532b = true;
    }

    /* renamed from: b */
    public boolean m2581b() {
        return this.f2533c.isEmpty();
    }

    /* renamed from: c */
    public int m2582c() {
        return this.f2533c.size();
    }

    /* renamed from: c */
    public boolean m2583c(Object obj) {
        boolean remove = this.f2533c.remove(obj);
        if (remove) {
            this.f2532b = true;
        }
        return remove;
    }

    /* renamed from: d */
    public List m2584d() {
        Object[] array = this.f2533c.toArray();
        ArrayList arrayList = new ArrayList(array.length);
        for (Object obj : array) {
            arrayList.add(obj);
        }
        return arrayList;
    }

    /* renamed from: e */
    public void m2585e() {
        this.f2532b = this.f2533c.size() > 0;
        this.f2533c.clear();
    }

    /* renamed from: f */
    public boolean m2586f() {
        return this.f2532b;
    }

    /* renamed from: g */
    public boolean m2587g() {
        if (this.f2531a != null) {
            try {
                boolean delete = this.f2531a.delete();
                if (m2581b()) {
                    return delete;
                }
                Object[] array = this.f2533c.toArray();
                FileOutputStream fileOutputStream = new FileOutputStream(this.f2531a);
                DataOutputStream dataOutputStream = new DataOutputStream(fileOutputStream);
                dataOutputStream.writeInt(1);
                dataOutputStream.writeUTF(mo2575a());
                dataOutputStream.writeInt(array.length);
                for (Object obj : array) {
                    mo2576a(dataOutputStream, obj);
                }
                dataOutputStream.close();
                fileOutputStream.close();
                return true;
            } catch (Throwable th) {
                Log.e("ListFile", "save: ", th);
            }
        }
        return false;
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return this.f2533c.iterator();
    }
}
