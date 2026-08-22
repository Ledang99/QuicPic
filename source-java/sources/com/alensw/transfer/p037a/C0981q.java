package com.alensw.transfer.p037a;

import android.os.Build;
import java.net.InetAddress;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;

/* renamed from: com.alensw.transfer.a.q */
/* loaded from: classes.dex */
public class C0981q {

    /* renamed from: a */
    private final InetAddress f3454a;

    /* renamed from: b */
    private final byte[] f3455b;

    /* renamed from: c */
    private final short f3456c;

    public C0981q(InetAddress inetAddress) {
        this.f3454a = inetAddress;
        this.f3455b = inetAddress.getAddress();
        this.f3456c = m3606c(inetAddress);
    }

    /* renamed from: a */
    public static int m3605a(byte b2) {
        return (b2 + 256) & 255;
    }

    /* renamed from: c */
    public static short m3606c(InetAddress inetAddress) {
        if (Build.VERSION.SDK_INT >= 9) {
            try {
                NetworkInterface byInetAddress = NetworkInterface.getByInetAddress(inetAddress);
                if (byInetAddress != null) {
                    for (InterfaceAddress interfaceAddress : byInetAddress.getInterfaceAddresses()) {
                        if (interfaceAddress.getAddress().equals(inetAddress)) {
                            return interfaceAddress.getNetworkPrefixLength();
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return (short) 0;
    }

    /* renamed from: a */
    public byte m3607a() {
        return this.f3455b[this.f3455b.length - 1];
    }

    /* renamed from: a */
    public boolean m3608a(InetAddress inetAddress) {
        return this.f3454a.equals(inetAddress);
    }

    /* renamed from: b */
    public boolean m3609b(InetAddress inetAddress) {
        byte[] bArr = this.f3455b;
        byte[] address = inetAddress.getAddress();
        if (bArr.length * 8 < this.f3456c || address.length * 8 < this.f3456c) {
            return false;
        }
        int i = this.f3456c / 8;
        int i2 = 0;
        while (i2 < i) {
            if (bArr[i2] != address[i2]) {
                return false;
            }
            i2++;
        }
        int i3 = this.f3456c - (i * 8);
        if (i3 > 0) {
            if (((m3605a(address[i2]) ^ m3605a(bArr[i2])) >> (8 - i3)) != 0) {
                return false;
            }
        }
        return true;
    }
}
