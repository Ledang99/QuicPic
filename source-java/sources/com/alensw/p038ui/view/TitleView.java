package com.alensw.p038ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.TextView;

/* loaded from: classes.dex */
public class TitleView extends TextView {

    /* renamed from: a */
    private boolean f4490a;

    /* renamed from: b */
    private int f4491b;

    /* renamed from: c */
    private Path f4492c;

    public TitleView(Context context) {
        this(context, null);
    }

    public TitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public void m4333a(boolean z) {
        this.f4490a = z;
        if (this.f4490a) {
            this.f4491b = (int) (getResources().getDisplayMetrics().density * 12.0f);
        }
        requestLayout();
        invalidate();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f4490a) {
            int width = getWidth();
            int height = getHeight();
            int paddingRight = getPaddingRight();
            int paddingBottom = getPaddingBottom();
            TextPaint paint = getPaint();
            if (this.f4492c == null) {
                this.f4492c = new Path();
            } else {
                this.f4492c.rewind();
            }
            this.f4492c.moveTo(width - paddingRight, height - paddingBottom);
            this.f4492c.lineTo((width - paddingRight) - this.f4491b, height - paddingBottom);
            this.f4492c.lineTo(width - paddingRight, (height - paddingBottom) - this.f4491b);
            this.f4492c.close();
            int alpha = paint.getAlpha();
            paint.setAlpha(192);
            canvas.drawPath(this.f4492c, paint);
            paint.setAlpha(alpha);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (this.f4490a && layoutParams != null && layoutParams.width == -2) {
            setMeasuredDimension(getMeasuredWidth() + this.f4491b, getMeasuredHeight());
        }
    }
}
