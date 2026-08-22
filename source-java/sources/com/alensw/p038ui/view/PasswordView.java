package com.alensw.p038ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.alensw.PicFolder.R;

/* loaded from: classes.dex */
public class PasswordView extends LinearLayout {

    /* renamed from: a */
    public static final char[] f4447a = {'1', '2', '3', '4', '5', '6', '7', '8', '9', 10003, '0', 8592};

    /* renamed from: b */
    private boolean f4448b;

    /* renamed from: c */
    private TextView f4449c;

    /* renamed from: d */
    private InterfaceC1324ay f4450d;

    public PasswordView(Context context) {
        this(context, null);
    }

    public PasswordView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f4449c = (TextView) findViewById(R.id.pin_code);
    }

    public void setInputListener(InterfaceC1324ay interfaceC1324ay) {
        this.f4450d = interfaceC1324ay;
    }

    public void setPatternMode(boolean z) {
        this.f4448b = z;
        LockPatternView lockPatternView = (LockPatternView) findViewById(R.id.pattern);
        GridView gridView = (GridView) findViewById(R.id.grid);
        lockPatternView.setVisibility(this.f4448b ? 0 : 8);
        gridView.setVisibility(this.f4448b ? 8 : 0);
        this.f4449c.setVisibility(this.f4448b ? 8 : 0);
        if (this.f4448b) {
            lockPatternView.setOnPatternListener(new C1321av(this, lockPatternView));
        } else {
            gridView.setAdapter((ListAdapter) new C1323ax(this, new ViewOnClickListenerC1322aw(this)));
        }
    }
}
