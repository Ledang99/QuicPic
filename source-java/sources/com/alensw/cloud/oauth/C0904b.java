package com.alensw.cloud.oauth;

import android.content.Context;
import com.alensw.cloud.EnumC0963z;
import com.alensw.p023b.p026c.AbstractC0661e;
import com.alensw.p023b.p029f.C0691d;
import java.io.DataInputStream;
import java.io.DataOutputStream;

/* renamed from: com.alensw.cloud.oauth.b */
/* loaded from: classes.dex */
public class C0904b extends AbstractC0661e {
    /* renamed from: a */
    private void m3383a(DataInputStream dataInputStream, C0899aj c0899aj) {
        int readInt = dataInputStream.readInt();
        if ((readInt & 16) != 0) {
            c0899aj.f3229a = m3388d(dataInputStream);
        }
        if ((readInt & 32) != 0) {
            c0899aj.f3230b = m3388d(dataInputStream);
        }
        if ((readInt & 64) != 0) {
            c0899aj.f3231c = m3388d(dataInputStream);
        }
        if ((readInt & 128) != 0) {
            c0899aj.f3232d = dataInputStream.readLong();
        }
    }

    /* renamed from: a */
    private void m3384a(DataOutputStream dataOutputStream, C0899aj c0899aj) {
        int i = c0899aj.f3229a != null ? 16 : 0;
        if (c0899aj.f3230b != null) {
            i |= 32;
        }
        if (c0899aj.f3231c != null) {
            i |= 64;
        }
        if (c0899aj.f3232d != 0) {
            i |= 128;
        }
        dataOutputStream.writeInt(i);
        if (c0899aj.f3229a != null) {
            m3385a(dataOutputStream, c0899aj.f3229a);
        }
        if (c0899aj.f3230b != null) {
            m3385a(dataOutputStream, c0899aj.f3230b);
        }
        if (c0899aj.f3231c != null) {
            m3385a(dataOutputStream, c0899aj.f3231c);
        }
        if (c0899aj.f3232d != 0) {
            dataOutputStream.writeLong(c0899aj.f3232d);
        }
    }

    /* renamed from: a */
    private void m3385a(DataOutputStream dataOutputStream, String str) {
        dataOutputStream.writeUTF(C0691d.m2729c(str));
    }

    /* renamed from: b */
    private EnumC0963z m3386b(int i) {
        switch (i) {
            case 1:
                return EnumC0963z.PICASA;
            case 2:
                return EnumC0963z.BAIDU;
            case 3:
                return EnumC0963z.FIVE00PX;
            case 4:
                return EnumC0963z.DROPBOX;
            default:
                return EnumC0963z.NONE;
        }
    }

    /* renamed from: c */
    private EnumC0963z m3387c(DataInputStream dataInputStream) {
        try {
            return EnumC0963z.valueOf(m3388d(dataInputStream));
        } catch (Throwable th) {
            return EnumC0963z.NONE;
        }
    }

    /* renamed from: d */
    private String m3388d(DataInputStream dataInputStream) {
        return C0691d.m2730d(dataInputStream.readUTF());
    }

    @Override // com.alensw.p023b.p026c.AbstractC0661e
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public C0889a mo2579b(DataInputStream dataInputStream) {
        C0889a c0889a = new C0889a();
        int readInt = dataInputStream.readInt();
        if ((readInt & 16) != 0) {
            c0889a.f3190a = m3387c(dataInputStream);
        } else {
            c0889a.f3190a = m3386b(dataInputStream.readInt());
        }
        if ((readInt & 1) != 0) {
            c0889a.f3191b = m3388d(dataInputStream);
        }
        if ((readInt & 8) != 0) {
            c0889a.f3192c = dataInputStream.readUTF();
        }
        if ((readInt & 4) != 0) {
            m3383a(dataInputStream, c0889a.f3196g);
        }
        if ((readInt & 32) != 0) {
            c0889a.f3193d = dataInputStream.readUTF();
        }
        if ((readInt & 64) != 0) {
            c0889a.f3194e = dataInputStream.readUTF();
        }
        if ((readInt & 128) != 0) {
            c0889a.f3195f = dataInputStream.readUTF();
        }
        if (c0889a.f3190a == EnumC0963z.NONE || (c0889a.f3192c == null && c0889a.f3191b == null)) {
            return null;
        }
        return c0889a;
    }

    @Override // com.alensw.p023b.p026c.AbstractC0661e
    /* renamed from: a */
    public String mo2575a() {
        return "Account_1";
    }

    /* renamed from: a */
    public synchronized void m3390a(C0889a c0889a) {
        int a2 = m2572a((Object) c0889a);
        if (a2 != -1) {
            m2574a(a2, c0889a);
        } else {
            m2580b(c0889a);
        }
    }

    @Override // com.alensw.p023b.p026c.AbstractC0661e
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo2576a(DataOutputStream dataOutputStream, C0889a c0889a) {
        int i = c0889a.f3191b != null ? 17 : 16;
        if (c0889a.f3192c != null) {
            i |= 8;
        }
        if (c0889a.f3196g != null) {
            i |= 4;
        }
        if (c0889a.f3193d != null) {
            i |= 32;
        }
        if (c0889a.f3194e != null) {
            i |= 64;
        }
        if (c0889a.f3195f != null) {
            i |= 128;
        }
        dataOutputStream.writeInt(i);
        m3385a(dataOutputStream, c0889a.f3190a.toString());
        if (c0889a.f3191b != null) {
            m3385a(dataOutputStream, c0889a.f3191b);
        }
        if (c0889a.f3192c != null) {
            dataOutputStream.writeUTF(c0889a.f3192c);
        }
        if (c0889a.f3196g != null) {
            m3384a(dataOutputStream, c0889a.f3196g);
        }
        if (c0889a.f3193d != null) {
            dataOutputStream.writeUTF(c0889a.f3193d);
        }
        if (c0889a.f3194e != null) {
            dataOutputStream.writeUTF(c0889a.f3194e);
        }
        if (c0889a.f3195f != null) {
            dataOutputStream.writeUTF(c0889a.f3195f);
        }
    }

    /* renamed from: a */
    public boolean m3392a(Context context) {
        return m2578a(context.getFileStreamPath("accounts.bin"));
    }
}
