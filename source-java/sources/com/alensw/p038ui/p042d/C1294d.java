package com.alensw.p038ui.p042d;

import android.R;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Matrix;
import android.graphics.Shader;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.PaintDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.Shape;
import android.os.Build;
import android.widget.ImageView;
import com.alensw.p023b.p035l.C0742b;

/* renamed from: com.alensw.ui.d.d */
/* loaded from: classes.dex */
public class C1294d {

    /* renamed from: a */
    public static final int[] f4316a = new int[0];

    /* renamed from: b */
    public static final int[] f4317b = {R.attr.state_enabled, R.attr.state_selected};

    /* renamed from: c */
    public static final int[] f4318c = {-1, -3355444, -3355444, -1};

    /* renamed from: a */
    public static Drawable m4206a(int i) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(f4317b, new ClipDrawable(new ColorDrawable(i), 80, 2));
        stateListDrawable.addState(f4316a, new ColorDrawable(0));
        stateListDrawable.setLevel(Math.round(416.66666f));
        return stateListDrawable;
    }

    /* renamed from: a */
    public static Drawable m4207a(int i, int i2) {
        float f = (i2 * 3) / 4.0f;
        PaintDrawable paintDrawable = new PaintDrawable(i);
        paintDrawable.getPaint().setShadowLayer(f, f / 4.0f, f / 4.0f, -16777216);
        paintDrawable.setCornerRadius(i2 / 2.0f);
        paintDrawable.setPadding(0, 0, 0, 0);
        return new InsetDrawable((Drawable) paintDrawable, i2);
    }

    /* renamed from: a */
    public static Drawable m4208a(Context context) {
        return new C1295e(C0742b.m3004e(context), 0);
    }

    /* renamed from: a */
    public static ShapeDrawable m4209a(Shape shape, int i, int i2, int i3) {
        ShapeDrawable shapeDrawable = new ShapeDrawable(shape);
        shapeDrawable.getPaint().setColor(i3);
        shapeDrawable.setIntrinsicWidth(i);
        shapeDrawable.setIntrinsicHeight(i2);
        return shapeDrawable;
    }

    /* renamed from: a */
    public static void m4210a(ImageView imageView) {
        if (Build.VERSION.SDK_INT <= 21) {
            imageView.setBackgroundDrawable(m4208a(imageView.getContext()));
        }
    }

    /* renamed from: b */
    public static Shader m4211b(int i) {
        BitmapShader bitmapShader = new BitmapShader(Bitmap.createBitmap(f4318c, 2, 2, Bitmap.Config.RGB_565), Shader.TileMode.REPEAT, Shader.TileMode.REPEAT);
        if (i != 1) {
            Matrix matrix = new Matrix();
            matrix.setScale(i, i);
            bitmapShader.setLocalMatrix(matrix);
        }
        return bitmapShader;
    }
}
