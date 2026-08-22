package com.alensw.PicFolder;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.widget.SeekBar;
import android.widget.VideoView;

/* renamed from: com.alensw.PicFolder.ax */
/* loaded from: classes.dex */
class C0550ax extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: a */
    final /* synthetic */ PlayerView f2139a;

    /* renamed from: b */
    private int f2140b;

    C0550ax(PlayerView playerView) {
        this.f2139a = playerView;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        this.f2139a.m2025f();
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        int i;
        int i2;
        float y = motionEvent.getY();
        int height = this.f2139a.getHeight();
        i = this.f2139a.f2037b;
        if (y > i) {
            i2 = this.f2139a.f2037b;
            if (y < height - i2) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        SeekBar.OnSeekBarChangeListener onSeekBarChangeListener;
        int i;
        SeekBar seekBar;
        SeekBar seekBar2;
        SeekBar seekBar3;
        SeekBar seekBar4;
        int i2;
        int i3;
        SeekBar seekBar5;
        SeekBar seekBar6;
        SeekBar.OnSeekBarChangeListener onSeekBarChangeListener2;
        SeekBar seekBar7;
        SeekBar seekBar8;
        SeekBar.OnSeekBarChangeListener onSeekBarChangeListener3;
        SeekBar seekBar9;
        SeekBar seekBar10;
        VideoView videoView;
        SeekBar seekBar11;
        SeekBar seekBar12;
        SeekBar seekBar13;
        int i4;
        int i5;
        SeekBar seekBar14;
        SeekBar seekBar15;
        SeekBar.OnSeekBarChangeListener onSeekBarChangeListener4;
        SeekBar seekBar16;
        SeekBar seekBar17;
        SeekBar.OnSeekBarChangeListener onSeekBarChangeListener5;
        SeekBar seekBar18;
        onSeekBarChangeListener = this.f2139a.f2045j;
        if (onSeekBarChangeListener == null) {
            return false;
        }
        float x = motionEvent2.getX() - motionEvent.getX();
        float y = motionEvent.getY() - motionEvent2.getY();
        i = this.f2139a.f2049n;
        if (i == 0) {
            float abs = Math.abs(x);
            float abs2 = Math.abs(y);
            if (abs >= abs2 * 3.0f) {
                i = 1;
            } else if (abs2 >= abs * 3.0f) {
                i = 2;
            }
        }
        if (i == 1) {
            seekBar10 = this.f2139a.f2043h;
            if (seekBar10 != null) {
                videoView = this.f2139a.f2047l;
                int duration = videoView.getDuration();
                if (duration <= 0) {
                    return false;
                }
                seekBar11 = this.f2139a.f2043h;
                int width = seekBar11.getWidth();
                seekBar12 = this.f2139a.f2043h;
                int paddingLeft = width - seekBar12.getPaddingLeft();
                seekBar13 = this.f2139a.f2043h;
                int paddingRight = paddingLeft - seekBar13.getPaddingRight();
                if (paddingRight <= 0) {
                    return false;
                }
                i4 = this.f2139a.f2049n;
                if (i4 == 0) {
                    this.f2139a.f2049n = 1;
                    seekBar17 = this.f2139a.f2043h;
                    this.f2140b = seekBar17.getProgress();
                    onSeekBarChangeListener5 = this.f2139a.f2045j;
                    seekBar18 = this.f2139a.f2043h;
                    onSeekBarChangeListener5.onStartTrackingTouch(seekBar18);
                } else {
                    i5 = this.f2139a.f2049n;
                    if (i5 == 1) {
                        seekBar14 = this.f2139a.f2043h;
                        int max = seekBar14.getMax();
                        int max2 = Math.max(Math.min(Math.round(((max * Math.min(duration, 120000)) / duration) * (x / paddingRight)) + this.f2140b, max), 0);
                        seekBar15 = this.f2139a.f2043h;
                        seekBar15.setProgress(max2);
                        onSeekBarChangeListener4 = this.f2139a.f2045j;
                        seekBar16 = this.f2139a.f2043h;
                        onSeekBarChangeListener4.onProgressChanged(seekBar16, max2, true);
                    }
                }
                return true;
            }
        }
        if (i == 2) {
            seekBar = this.f2139a.f2044i;
            if (seekBar != null) {
                seekBar2 = this.f2139a.f2044i;
                int height = seekBar2.getHeight();
                seekBar3 = this.f2139a.f2044i;
                int paddingTop = height - seekBar3.getPaddingTop();
                seekBar4 = this.f2139a.f2044i;
                int paddingBottom = paddingTop - seekBar4.getPaddingBottom();
                if (paddingBottom <= 0) {
                    return false;
                }
                i2 = this.f2139a.f2049n;
                if (i2 == 0) {
                    this.f2139a.f2049n = 2;
                    seekBar8 = this.f2139a.f2044i;
                    this.f2140b = seekBar8.getProgress();
                    onSeekBarChangeListener3 = this.f2139a.f2045j;
                    seekBar9 = this.f2139a.f2044i;
                    onSeekBarChangeListener3.onStartTrackingTouch(seekBar9);
                } else {
                    i3 = this.f2139a.f2049n;
                    if (i3 == 2) {
                        seekBar5 = this.f2139a.f2044i;
                        int max3 = seekBar5.getMax();
                        int max4 = Math.max(Math.min(Math.round((y / paddingBottom) * max3) + this.f2140b, max3), 0);
                        seekBar6 = this.f2139a.f2044i;
                        seekBar6.setProgress(max4);
                        onSeekBarChangeListener2 = this.f2139a.f2045j;
                        seekBar7 = this.f2139a.f2044i;
                        onSeekBarChangeListener2.onProgressChanged(seekBar7, max4, true);
                    }
                }
            }
        }
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        ((PlayerActivity) this.f2139a.getContext()).m3837v();
        return true;
    }
}
