package com.alensw.PicFolder;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.SeekBar;

@SuppressLint({"Instantiatable"})
/* loaded from: classes.dex */
class VolumeBar extends SeekBar {
    public VolumeBar(Context context) {
        this(context, null);
    }

    public VolumeBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setClickable(false);
        setFocusable(false);
        ColorDrawable colorDrawable = new ColorDrawable(0);
        int round = Math.round(context.getResources().getDisplayMetrics().density * 48.0f);
        colorDrawable.setBounds(0, 0, round, round);
        setThumb(colorDrawable);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void onDraw(Canvas canvas) {
        canvas.save(1);
        canvas.rotate(270.0f);
        canvas.translate(-getHeight(), 0.0f);
        super.onDraw(canvas);
        canvas.restore();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i2, i, i4, i3);
    }

    @Override // android.widget.AbsSeekBar, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.widget.ProgressBar
    public void setProgress(int i) {
        super.setProgress(i);
        invalidate();
    }
}
