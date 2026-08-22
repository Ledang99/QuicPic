package com.alensw.p023b.p033j;

import android.database.AbstractCursor;
import android.database.CursorIndexOutOfBoundsException;

/* renamed from: com.alensw.b.j.c */
/* loaded from: classes.dex */
public class C0727c extends AbstractCursor {

    /* renamed from: a */
    private final String[] f2760a;

    /* renamed from: b */
    private Object[] f2761b;

    /* renamed from: c */
    private int f2762c;

    /* renamed from: d */
    private final int f2763d;

    public C0727c(String[] strArr) {
        this(strArr, 16);
    }

    public C0727c(String[] strArr, int i) {
        this.f2762c = 0;
        this.f2760a = strArr;
        this.f2763d = strArr.length;
        this.f2761b = new Object[this.f2763d * (i < 1 ? 1 : i)];
    }

    /* renamed from: a */
    private Object m2928a(int i) {
        if (i < 0 || i >= this.f2763d) {
            throw new CursorIndexOutOfBoundsException("Requested column: " + i + ", # of columns: " + this.f2763d);
        }
        if (this.mPos < 0) {
            throw new CursorIndexOutOfBoundsException("Before first row.");
        }
        if (this.mPos >= this.f2762c) {
            throw new CursorIndexOutOfBoundsException("After last row.");
        }
        return this.f2761b[(this.mPos * this.f2763d) + i];
    }

    /* renamed from: b */
    private void m2929b(int i) {
        if (i > this.f2761b.length) {
            Object[] objArr = this.f2761b;
            int length = this.f2761b.length * 2;
            if (length >= i) {
                i = length;
            }
            this.f2761b = new Object[i];
            System.arraycopy(objArr, 0, this.f2761b, 0, objArr.length);
        }
    }

    /* renamed from: a */
    public C0728d m2932a() {
        int i = this.f2762c;
        this.f2762c = i + 1;
        m2929b(this.f2762c * this.f2763d);
        return new C0728d(this, i);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public byte[] getBlob(int i) {
        return (byte[]) m2928a(i);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public String[] getColumnNames() {
        return this.f2760a;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public int getCount() {
        return this.f2762c;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public double getDouble(int i) {
        Object m2928a = m2928a(i);
        if (m2928a == null) {
            return 0.0d;
        }
        return m2928a instanceof Number ? ((Number) m2928a).doubleValue() : Double.parseDouble(m2928a.toString());
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public float getFloat(int i) {
        Object m2928a = m2928a(i);
        if (m2928a == null) {
            return 0.0f;
        }
        return m2928a instanceof Number ? ((Number) m2928a).floatValue() : Float.parseFloat(m2928a.toString());
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public int getInt(int i) {
        Object m2928a = m2928a(i);
        if (m2928a == null) {
            return 0;
        }
        return m2928a instanceof Number ? ((Number) m2928a).intValue() : Integer.parseInt(m2928a.toString());
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public long getLong(int i) {
        Object m2928a = m2928a(i);
        if (m2928a == null) {
            return 0L;
        }
        return m2928a instanceof Number ? ((Number) m2928a).longValue() : Long.parseLong(m2928a.toString());
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public short getShort(int i) {
        Object m2928a = m2928a(i);
        if (m2928a == null) {
            return (short) 0;
        }
        return m2928a instanceof Number ? ((Number) m2928a).shortValue() : Short.parseShort(m2928a.toString());
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public String getString(int i) {
        Object m2928a = m2928a(i);
        if (m2928a == null) {
            return null;
        }
        return m2928a.toString();
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public boolean isNull(int i) {
        return m2928a(i) == null;
    }
}
