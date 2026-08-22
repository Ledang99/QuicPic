package com.alensw.p038ui.view;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;

/* renamed from: com.alensw.ui.view.aw */
/* loaded from: classes.dex */
class ViewOnClickListenerC1322aw implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ PasswordView f4565a;

    ViewOnClickListenerC1322aw(PasswordView passwordView) {
        this.f4565a = passwordView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        TextView textView;
        TextView textView2;
        InterfaceC1324ay interfaceC1324ay;
        InterfaceC1324ay interfaceC1324ay2;
        TextView textView3;
        char charValue = ((Character) view.getTag()).charValue();
        textView = this.f4565a.f4449c;
        CharSequence text = textView.getText();
        if (charValue == 8592) {
            int length = text.length();
            if (length > 0) {
                textView3 = this.f4565a.f4449c;
                textView3.setText(TextUtils.substring(text, 0, length - 1));
                return;
            }
            return;
        }
        if (charValue != 10003) {
            textView2 = this.f4565a.f4449c;
            textView2.setText(TextUtils.concat(text, Character.toString(charValue)));
            return;
        }
        interfaceC1324ay = this.f4565a.f4450d;
        if (interfaceC1324ay != null) {
            interfaceC1324ay2 = this.f4565a.f4450d;
            interfaceC1324ay2.mo3753a(this.f4565a, text.toString());
        }
    }
}
