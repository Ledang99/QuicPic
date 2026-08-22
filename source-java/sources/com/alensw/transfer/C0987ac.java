package com.alensw.transfer;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.preference.PreferenceManager;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.alensw.PicFolder.QuickApp;
import com.alensw.PicFolder.R;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p038ui.activity.ActivityC1109ao;
import com.alensw.p038ui.p039a.C1071f;
import com.alensw.p038ui.view.ImageGridView;
import com.alensw.transfer.p037a.C0965a;
import com.alensw.transfer.p037a.C0984t;
import com.alensw.transfer.p037a.InterfaceC0974j;
import com.p043b.p044a.C1387b;
import java.net.InetAddress;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashSet;

@TargetApi(14)
/* renamed from: com.alensw.transfer.ac */
/* loaded from: classes.dex */
public class C0987ac extends C0964a {

    /* renamed from: a */
    private boolean f3471a;

    /* renamed from: b */
    private String f3472b;

    /* renamed from: c */
    private String f3473c;

    /* renamed from: d */
    private int f3474d;

    /* renamed from: e */
    private C0984t f3475e;

    /* renamed from: f */
    private TransferService f3476f;

    /* renamed from: g */
    private Drawable f3477g;

    /* renamed from: h */
    private ListView f3478h;

    /* renamed from: i */
    private ImageGridView f3479i;

    /* renamed from: j */
    private TextView f3480j;

    /* renamed from: m */
    private final C1008ax f3483m;

    /* renamed from: n */
    private final C1009ay f3484n;

    /* renamed from: s */
    private boolean f3489s;

    /* renamed from: k */
    private final C0965a f3481k = new C0965a();

    /* renamed from: l */
    private final Handler f3482l = new Handler(Looper.getMainLooper());

    /* renamed from: o */
    private final ArrayList f3485o = new ArrayList();

    /* renamed from: p */
    private final ArrayList f3486p = new ArrayList(256);

    /* renamed from: q */
    private int f3487q = 1;

    /* renamed from: r */
    private final HashMap f3488r = new HashMap();

    /* renamed from: t */
    private final InterfaceC0974j f3490t = new C0989ae(this);

    /* renamed from: u */
    private AdapterView.OnItemClickListener f3491u = new C0994aj(this);

    /* renamed from: v */
    private boolean f3492v = false;

    /* renamed from: w */
    private final Comparator f3493w = new C0996al(this);

    /* renamed from: x */
    private final InterfaceC1021bj f3494x = new C0997am(this);

    /* renamed from: y */
    private BroadcastReceiver f3495y = new C0998an(this);

    public C0987ac() {
        ViewOnClickListenerC0988ad viewOnClickListenerC0988ad = null;
        this.f3483m = new C1008ax(this, viewOnClickListenerC0988ad);
        this.f3484n = new C1009ay(this, viewOnClickListenerC0988ad);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3620a(C0984t c0984t) {
        if (this.f3476f == null || this.f3486p.size() <= 0) {
            return;
        }
        this.f3488r.put(c0984t, Integer.valueOf(this.f3487q));
        this.f3476f.m3507a(this.f3475e, c0984t, this.f3486p.subList(0, this.f3486p.size()));
    }

    /* renamed from: a */
    private void m3621a(ArrayList arrayList) {
        int size = arrayList.size();
        if (size == 0) {
            return;
        }
        Activity g = m3531g();
        new ProgressDialogC1003as(this, g, g.getString(R.string.loading), size, arrayList, new LinkedHashSet(this.f3486p)).m3731c();
    }

    /* renamed from: b */
    private void m3623b(Configuration configuration) {
        LinearLayout linearLayout = (LinearLayout) m3532h();
        boolean z = configuration.orientation == 2;
        linearLayout.setOrientation(z ? 0 : 1);
        int childCount = linearLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) linearLayout.getChildAt(i).getLayoutParams();
            layoutParams.width = z ? 0 : -1;
            layoutParams.height = z ? -1 : 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public void m3633i() {
        int size = this.f3486p.size();
        String string = m3531g().getString(R.string.files_to_send);
        if (size > 0) {
            string = string + " (" + size + ")";
        }
        this.f3480j.setText(string);
        this.f3479i.requestLayout();
        this.f3487q++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public void m3635j() {
        if (this.f3489s) {
            return;
        }
        Activity g = m3531g();
        String string = g.getString(R.string.enable_hotspot);
        String string2 = g.getString(R.string.transfer_help_content, string);
        int lastIndexOf = string2.lastIndexOf(string);
        SpannableString valueOf = SpannableString.valueOf(string2);
        valueOf.setSpan(new C1004at(this, g), lastIndexOf, string.length() + lastIndexOf, 33);
        AlertDialog m3734a = C1071f.m3734a((Context) g, R.string.transfer, (Object) valueOf);
        if (m3734a != null) {
            m3734a.setButton(-1, g.getString(android.R.string.ok), new DialogInterfaceOnClickListenerC1005au(this));
            m3734a.setOnShowListener(new DialogInterfaceOnShowListenerC1006av(this, m3734a, g));
            m3734a.setOnDismissListener(new DialogInterfaceOnDismissListenerC1007aw(this));
            this.f3489s = C1071f.m3741a(m3734a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public boolean m3637k() {
        Activity g = m3531g();
        InetAddress inetAddress = null;
        try {
            WifiInfo connectionInfo = ((WifiManager) g.getSystemService("wifi")).getConnectionInfo();
            int ipAddress = connectionInfo.getIpAddress();
            if (ByteOrder.nativeOrder().equals(ByteOrder.LITTLE_ENDIAN)) {
                ipAddress = Integer.reverseBytes(ipAddress);
            }
            inetAddress = ipAddress != 0 ? InetAddress.getByAddress(new byte[]{(byte) (ipAddress >> 24), (byte) ((ipAddress >> 16) & 255), (byte) ((ipAddress >> 8) & 255), (byte) (ipAddress & 255)}) : InetAddress.getByName("192.168.43.1");
            this.f3473c = connectionInfo.getBSSID();
        } catch (Exception e) {
            Log.e("TransferSendFragment", "get wifi address: ", e);
        }
        if (inetAddress == null || inetAddress.isLoopbackAddress() || inetAddress.isLinkLocalAddress()) {
            Log.e("TransferSendFragment", "illegal wifi address " + inetAddress);
            return false;
        }
        Log.d("TransferSendFragment", "get wifi address: " + inetAddress);
        this.f3475e = new C0984t(this.f3475e != null ? this.f3475e.m3611a() : this.f3472b, inetAddress, this.f3474d);
        ((TransferActivity) g).m3806a(this.f3475e.m3611a());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public void m3639l() {
        if (this.f3492v || this.f3476f == null || this.f3475e == null) {
            return;
        }
        this.f3474d = this.f3476f.m3510b();
        if (this.f3474d == 0) {
            Log.e("TransferSendFragment", "Service listen port is 0");
        }
        this.f3475e.m3612a(this.f3474d);
        this.f3481k.m3582a(m3531g(), this.f3475e, this.f3473c, this.f3490t);
        this.f3492v = true;
    }

    /* renamed from: m */
    private void m3641m() {
        if (this.f3492v) {
            this.f3481k.m3581a();
            this.f3492v = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public boolean m3643n() {
        Activity g = m3531g();
        if (C0675b.m2650a(g) == 1) {
            return true;
        }
        try {
            WifiManager wifiManager = (WifiManager) g.getSystemService("wifi");
            int intValue = ((Integer) wifiManager.getClass().getMethod("getWifiApState", new Class[0]).invoke(wifiManager, new Object[0])).intValue();
            if (intValue >= 10) {
                intValue -= 10;
            }
            return intValue == 3;
        } catch (Throwable th) {
            return false;
        }
    }

    @Override // com.alensw.transfer.C0964a
    /* renamed from: a */
    public View mo3517a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(R.layout.transfer_send, viewGroup, false);
        this.f3478h = (ListView) inflate.findViewById(R.id.devices);
        this.f3478h.setEmptyView(inflate.findViewById(R.id.empty));
        this.f3480j = (TextView) inflate.findViewById(R.id.files_to_send);
        this.f3479i = (ImageGridView) inflate.findViewById(R.id.grid);
        this.f3479i.setTextMode(1);
        return inflate;
    }

    @Override // com.alensw.transfer.C0964a
    /* renamed from: a */
    public void mo3518a() {
        super.mo3518a();
        m3531g().registerReceiver(this.f3495y, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        if (!m3643n()) {
            m3641m();
        } else if (m3637k()) {
            m3639l();
        } else {
            m3635j();
        }
    }

    @Override // com.alensw.transfer.C0964a
    /* renamed from: a */
    public void mo3519a(int i, int i2, Intent intent) {
        ArrayList parcelableArrayListExtra;
        super.mo3519a(i, i2, intent);
        if (i2 != -1 || intent == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (i == 1) {
            String action = intent.getAction();
            if ("android.intent.action.SEND".equals(action)) {
                Uri uri = (Uri) intent.getParcelableExtra("android.intent.extra.STREAM");
                if (uri != null) {
                    arrayList.add(uri);
                }
            } else if ("android.intent.action.SEND_MULTIPLE".equals(action) && (parcelableArrayListExtra = intent.getParcelableArrayListExtra("android.intent.extra.STREAM")) != null) {
                arrayList.addAll(parcelableArrayListExtra);
            }
        }
        m3621a(arrayList);
    }

    @Override // com.alensw.transfer.C0964a
    /* renamed from: a */
    public void mo3520a(Activity activity) {
        super.mo3520a(activity);
        this.f3471a = true;
        View h = m3532h();
        Resources resources = activity.getResources();
        int m3794b = ActivityC1109ao.m3794b(activity, R.attr.colorMenuDrawable);
        int m3793b = ActivityC1109ao.m3793b(activity);
        this.f3472b = PreferenceManager.getDefaultSharedPreferences(activity).getString("transfer_name", Build.MODEL);
        ((TransferActivity) activity).m3806a(this.f3472b);
        this.f3477g = C1387b.m4498a(resources, R.raw.logo_phone, m3794b);
        ImageView imageView = (ImageView) h.findViewById(R.id.add);
        imageView.setImageDrawable(C1387b.m4499a(resources, R.raw.add_2, m3794b, m3793b));
        imageView.setOnClickListener(new ViewOnClickListenerC0988ad(this, activity));
        ImageView imageView2 = (ImageView) h.findViewById(R.id.clear);
        imageView2.setImageDrawable(C1387b.m4499a(resources, R.raw.delete_2, m3794b, m3793b));
        imageView2.setOnClickListener(new ViewOnClickListenerC1000ap(this));
        this.f3478h.setAdapter((ListAdapter) this.f3483m);
        this.f3478h.setOnItemClickListener(this.f3491u);
        String string = resources.getString(R.string.details);
        String str = resources.getString(R.string.please_open_transfer, resources.getString(R.string.transfer)) + " " + string;
        SpannableString valueOf = SpannableString.valueOf(str);
        valueOf.setSpan(new C1001aq(this), str.lastIndexOf(string), str.length(), 33);
        TextView textView = (TextView) h.findViewById(R.id.empty_tip);
        textView.setClickable(true);
        textView.setText(valueOf);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        this.f3479i.m4252a(this.f3484n, QuickApp.f2075r.f2373d, QuickApp.f2075r.f2374e);
        m3623b(resources.getConfiguration());
        Intent intent = activity.getIntent();
        String action = intent.getAction();
        ArrayList arrayList = new ArrayList();
        if ("android.intent.action.SEND".equals(action)) {
            arrayList.add((Uri) intent.getParcelableExtra("android.intent.extra.STREAM"));
        } else if ("android.intent.action.SEND_MULTIPLE".equals(action)) {
            arrayList.addAll(intent.getParcelableArrayListExtra("android.intent.extra.STREAM"));
        }
        m3621a(arrayList);
    }

    @Override // com.alensw.transfer.C0964a
    /* renamed from: a */
    public void mo3522a(Service service) {
        if (service instanceof TransferService) {
            this.f3476f = (TransferService) service;
            this.f3476f.m3508a(this.f3494x);
            m3639l();
        }
    }

    @Override // com.alensw.transfer.C0964a
    /* renamed from: a */
    public void mo3523a(Configuration configuration) {
        super.mo3523a(configuration);
        m3623b(configuration);
    }

    @Override // com.alensw.transfer.C0964a
    /* renamed from: a */
    public boolean mo3524a(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.rename /* 2131296354 */:
                Activity g = m3531g();
                C1071f.m3740a(g, R.string.rename, this.f3472b, (CharSequence) null, new C1002ar(this, g));
                return true;
            default:
                return false;
        }
    }

    @Override // com.alensw.transfer.C0964a
    /* renamed from: b */
    public void mo3525b() {
        super.mo3525b();
        m3531g().unregisterReceiver(this.f3495y);
    }

    @Override // com.alensw.transfer.C0964a
    /* renamed from: b */
    public void mo3526b(Service service) {
        if (this.f3476f == service) {
            this.f3476f.m3511b(this.f3494x);
            this.f3476f = null;
        }
    }

    @Override // com.alensw.transfer.C0964a
    /* renamed from: e */
    public void mo3529e() {
        m3641m();
        this.f3471a = false;
        super.mo3529e();
    }

    @Override // com.alensw.transfer.C0964a
    /* renamed from: f */
    public void mo3530f() {
        super.mo3530f();
        m3641m();
    }
}
