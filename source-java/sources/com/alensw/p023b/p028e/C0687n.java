package com.alensw.p023b.p028e;

import android.util.Log;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import org.apache.http.impl.DefaultHttpServerConnection;
import org.apache.http.params.HttpParams;

/* renamed from: com.alensw.b.e.n */
/* loaded from: classes.dex */
class C0687n extends Thread {

    /* renamed from: a */
    final /* synthetic */ C0683j f2587a;

    C0687n(C0683j c0683j) {
        this.f2587a = c0683j;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        ServerSocket serverSocket;
        HttpParams httpParams;
        serverSocket = this.f2587a.f2579a;
        do {
            try {
                Socket accept = serverSocket.accept();
                accept.setSoTimeout(15000);
                DefaultHttpServerConnection defaultHttpServerConnection = new DefaultHttpServerConnection();
                httpParams = this.f2587a.f2583e;
                defaultHttpServerConnection.bind(accept, httpParams);
                this.f2587a.m2707b(defaultHttpServerConnection);
            } catch (IOException e) {
                if (!serverSocket.isClosed()) {
                    Log.e("HttpServer", "server loop: ", e);
                }
            }
        } while (!serverSocket.isClosed());
        Log.d("HttpServer", "server quit");
    }
}
