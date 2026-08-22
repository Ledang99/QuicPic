package com.alensw.transfer.p037a;

import android.util.Log;
import java.net.InetAddress;
import java.net.MulticastSocket;

/* renamed from: com.alensw.transfer.a.p */
/* loaded from: classes.dex */
public class C0980p extends MulticastSocket {

    /* renamed from: a */
    private final InetAddress f3453a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0980p(InetAddress inetAddress, InetAddress inetAddress2, int i) {
        super(i);
        boolean z = true;
        super.setSoTimeout(1000);
        super.setTimeToLive(255);
        super.setLoopbackMode(true);
        try {
            super.joinGroup(inetAddress);
        } catch (Exception e) {
            Log.e("GroupSocket", "join group: ", e);
            z = false;
        }
        this.f3453a = z ? inetAddress : null;
    }

    /* renamed from: a */
    public final InetAddress m3604a() {
        return this.f3453a;
    }

    @Override // java.net.DatagramSocket, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f3453a != null) {
            try {
                super.leaveGroup(this.f3453a);
            } catch (Throwable th) {
                Log.e("GroupSocket", "leave group: ", th);
            }
        }
        super.close();
    }
}
