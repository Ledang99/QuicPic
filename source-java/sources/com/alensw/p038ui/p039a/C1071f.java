package com.alensw.p038ui.p039a;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.alensw.PicFolder.R;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.view.TitleView;
import java.util.List;

/* renamed from: com.alensw.ui.a.f */
/* loaded from: classes.dex */
public class C1071f {
    /* renamed from: a */
    public static AlertDialog m3734a(Context context, int i, Object obj) {
        return m3735a(context, i, obj, null);
    }

    /* renamed from: a */
    public static AlertDialog m3735a(Context context, int i, Object obj, DialogInterface.OnClickListener onClickListener) {
        try {
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setIcon(0);
            if (i != 0) {
                builder.setTitle(i);
            }
            if (obj instanceof CharSequence) {
                builder.setMessage((CharSequence) obj);
            } else if (obj instanceof CharSequence[]) {
                builder.setItems((CharSequence[]) obj, onClickListener);
            } else if (obj instanceof ListAdapter) {
                builder.setAdapter((ListAdapter) obj, onClickListener);
            }
            AlertDialog create = builder.create();
            if (Build.VERSION.SDK_INT >= 21) {
                return create;
            }
            create.setOnShowListener(new DialogInterfaceOnShowListenerC1072g(context, create));
            return create;
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static void m3736a(Context context, int i, int i2, List list, InterfaceC1084s interfaceC1084s) {
        TitleView titleView;
        AlertDialogC1086u m3744a = AlertDialogC1086u.m3744a(context, i, 0);
        if (m3744a == null) {
            return;
        }
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.button_padding);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        m3744a.setView(linearLayout);
        if (i2 != 0) {
            TextView textView = new TextView(context);
            textView.setText(i2);
            textView.setTextSize(18.0f);
            linearLayout.addView(textView);
        }
        C1080o c1080o = new C1080o(context, android.R.layout.simple_spinner_item, list);
        c1080o.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        if (Build.VERSION.SDK_INT >= 11) {
            Spinner spinner = new Spinner(context);
            spinner.setAdapter((SpinnerAdapter) c1080o);
            titleView = spinner;
        } else {
            TitleView titleView2 = (TitleView) View.inflate(context, R.layout.action_text, null);
            titleView2.m4333a(true);
            if (list.size() > 0) {
                titleView2.setText((CharSequence) list.get(0));
            }
            titleView2.setOnClickListener(new ViewOnClickListenerC1081p(context, i, c1080o, titleView2));
            titleView = titleView2;
        }
        linearLayout.addView(titleView);
        m3744a.setButton(-1, context.getString(android.R.string.ok), new DialogInterfaceOnClickListenerC1083r(titleView, interfaceC1084s));
        m3744a.setButton(-2, context.getString(android.R.string.cancel), new DialogInterfaceOnClickListenerC1073h());
        m3741a(m3744a);
    }

    /* renamed from: a */
    public static void m3737a(Context context, int i, CharSequence charSequence) {
        AlertDialog m3734a = m3734a(context, i, (Object) charSequence);
        if (m3734a == null) {
            return;
        }
        m3734a.setButton(-1, context.getString(android.R.string.ok), new DialogInterfaceOnClickListenerC1075j());
        m3741a(m3734a);
    }

    /* renamed from: a */
    public static void m3738a(Context context, int i, CharSequence charSequence, int i2, int i3, InterfaceC1085t interfaceC1085t) {
        AlertDialogC1086u m3744a = AlertDialogC1086u.m3744a(context, i, R.layout.size_dlg);
        if (m3744a == null) {
            return;
        }
        if (charSequence != null) {
            ((TextView) m3744a.findViewById(R.id.middle)).setText(charSequence);
        }
        EditText editText = (EditText) m3744a.findViewById(R.id.width);
        EditText editText2 = (EditText) m3744a.findViewById(R.id.height);
        editText.setText(Integer.toString(i2));
        editText2.setText(Integer.toString(i3));
        DialogInterfaceOnClickListenerC1074i dialogInterfaceOnClickListenerC1074i = new DialogInterfaceOnClickListenerC1074i(editText, editText2, interfaceC1085t);
        m3744a.setButton(-1, context.getString(android.R.string.ok), dialogInterfaceOnClickListenerC1074i);
        m3744a.setButton(-2, context.getString(android.R.string.cancel), dialogInterfaceOnClickListenerC1074i);
        m3744a.getWindow().setSoftInputMode(5);
        m3741a(m3744a);
    }

    /* renamed from: a */
    public static void m3739a(Context context, int i, CharSequence charSequence, Runnable runnable, Runnable runnable2) {
        AlertDialog m3734a = m3734a(context, i, (Object) charSequence);
        if (m3734a == null) {
            return;
        }
        m3734a.setButton(-1, context.getString(android.R.string.yes), new DialogInterfaceOnClickListenerC1076k(runnable));
        m3734a.setButton(-2, context.getString(android.R.string.no), new DialogInterfaceOnClickListenerC1077l(runnable2));
        m3734a.setOnCancelListener(new DialogInterfaceOnCancelListenerC1078m(runnable2));
        m3741a(m3734a);
    }

    /* renamed from: a */
    public static void m3740a(Context context, int i, Object obj, CharSequence charSequence, InterfaceC1084s interfaceC1084s) {
        AlertDialogC1086u m3744a = AlertDialogC1086u.m3744a(context, i, 0);
        if (m3744a == null) {
            return;
        }
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.button_padding);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        m3744a.setView(linearLayout);
        EditText editText = new EditText(context);
        editText.setFocusable(true);
        editText.setSingleLine(true);
        if (obj != null) {
            if (obj instanceof Integer) {
                editText.setInputType(2);
            }
            editText.setText(obj.toString());
            editText.selectAll();
        }
        linearLayout.addView(editText);
        if (charSequence != null) {
            TextView textView = new TextView(context);
            textView.setText(charSequence);
            textView.setTextSize(18.0f);
            linearLayout.addView(textView);
        }
        DialogInterface.OnClickListener dialogInterfaceOnClickListenerC1079n = new DialogInterfaceOnClickListenerC1079n(interfaceC1084s, editText);
        m3744a.setButton(-1, context.getString(android.R.string.ok), dialogInterfaceOnClickListenerC1079n);
        m3744a.setButton(-2, context.getString(android.R.string.cancel), dialogInterfaceOnClickListenerC1079n);
        m3744a.getWindow().setSoftInputMode(5);
        m3741a(m3744a);
    }

    /* renamed from: a */
    public static boolean m3741a(Dialog dialog) {
        try {
            dialog.show();
            return true;
        } catch (Throwable th) {
            if (dialog != null) {
                C0742b.m2977a(dialog.getContext(), th);
            }
            return false;
        }
    }

    /* renamed from: b */
    public static boolean m3742b(Dialog dialog) {
        try {
            dialog.dismiss();
            return true;
        } catch (Throwable th) {
            return false;
        }
    }
}
