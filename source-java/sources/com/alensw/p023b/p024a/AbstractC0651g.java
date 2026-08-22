package com.alensw.p023b.p024a;

import android.util.Log;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* renamed from: com.alensw.b.a.g */
/* loaded from: classes.dex */
public abstract class AbstractC0651g {

    /* renamed from: a */
    private final ConcurrentHashMap f2517a = new ConcurrentHashMap(1024);

    /* renamed from: b */
    private final ReentrantReadWriteLock f2518b = new ReentrantReadWriteLock();

    /* renamed from: c */
    private RandomAccessFile f2519c;

    /* renamed from: d */
    private RandomAccessFile f2520d;

    /* renamed from: a */
    public Object m2548a(long j) {
        Object obj;
        Long l = (Long) this.f2517a.get(Long.valueOf(j));
        if (l == null) {
            return null;
        }
        this.f2518b.readLock().lock();
        try {
            try {
                this.f2520d.seek(l.longValue());
                obj = mo2549a(this.f2520d);
            } catch (Throwable th) {
                Log.e("LongKeyCache", "read value: ", th);
                this.f2518b.readLock().unlock();
                obj = null;
            }
            return obj;
        } finally {
            this.f2518b.readLock().unlock();
        }
    }

    /* renamed from: a */
    protected abstract Object mo2549a(RandomAccessFile randomAccessFile);

    /* renamed from: a */
    public void m2550a(long j, Object obj) {
        this.f2518b.writeLock().lock();
        try {
            if (!this.f2517a.containsKey(Long.valueOf(j))) {
                long length = this.f2520d.length();
                try {
                    this.f2520d.seek(length);
                    mo2551a(this.f2520d, obj);
                    this.f2519c.writeLong(j);
                    this.f2519c.writeLong(length);
                    this.f2517a.put(Long.valueOf(j), Long.valueOf(length));
                } catch (Throwable th) {
                    Log.e("LongKeyCache", "write value: ", th);
                }
            }
        } catch (Throwable th2) {
            Log.e("LongKeyCache", "write index: ", th2);
        } finally {
            this.f2518b.writeLock().unlock();
        }
    }

    /* renamed from: a */
    protected abstract void mo2551a(RandomAccessFile randomAccessFile, Object obj);

    /* renamed from: a */
    public boolean m2552a() {
        boolean z;
        this.f2518b.readLock().lock();
        try {
            if (this.f2519c != null) {
                if (this.f2520d != null) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        } finally {
            this.f2518b.readLock().unlock();
        }
    }

    /* renamed from: a */
    public boolean m2553a(File file, String str) {
        long j;
        int i;
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, str + ".idx");
        File file3 = new File(file, str + ".val");
        this.f2518b.writeLock().lock();
        try {
            try {
                this.f2519c = new RandomAccessFile(file2, "rw");
                long length = this.f2519c.length();
                if (length < 4) {
                    this.f2519c.writeInt(1);
                    j = 4;
                    i = 0;
                } else if (this.f2519c.readInt() == 1) {
                    int i2 = 0;
                    long j2 = 4;
                    while (16 + j2 <= length) {
                        try {
                            this.f2517a.put(Long.valueOf(this.f2519c.readLong()), Long.valueOf(this.f2519c.readLong()));
                            j2 = 16 + j2;
                            i2++;
                        } catch (Throwable th) {
                            Log.e("LongKeyCache", "read index: " + i2, th);
                            i = i2;
                            j = length;
                        }
                    }
                    i = i2;
                    j = length;
                } else {
                    j = length;
                    i = 0;
                }
                long j3 = (i * 16) + 4;
                if (j3 < j) {
                    this.f2519c.setLength(j3);
                    Log.w("LongKeyCache", "trim index file: " + j + "->" + j3);
                }
                if (this.f2519c.getFilePointer() != j3) {
                    this.f2519c.seek(j3);
                }
                this.f2520d = new RandomAccessFile(file3, "rw");
                return true;
            } catch (Throwable th2) {
                Log.e("LongKeyCache", "open value file: ", th2);
                this.f2518b.writeLock().unlock();
                return false;
            }
        } finally {
            this.f2518b.writeLock().unlock();
        }
    }
}
