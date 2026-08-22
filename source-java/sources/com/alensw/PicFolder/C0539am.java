package com.alensw.PicFolder;

import android.os.Handler;
import android.view.ViewGroup;
import android.widget.SeekBar;
import com.alensw.p023b.p035l.C0742b;

/* renamed from: com.alensw.PicFolder.am */
/* loaded from: classes.dex */
class C0539am implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a */
    final /* synthetic */ PlayerActivity f2125a;

    C0539am(PlayerActivity playerActivity) {
        this.f2125a = playerActivity;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (seekBar == this.f2125a.f2013d && z) {
            int duration = (int) ((this.f2125a.f2020k.getDuration() * i) / this.f2125a.f2013d.getMax());
            this.f2125a.f2020k.seekTo(duration);
            this.f2125a.f2015f.setText(C0742b.m2970a(duration));
        } else if (seekBar == this.f2125a.f2012c && z) {
            this.f2125a.f2029t.setStreamVolume(3, i, 0);
            this.f2125a.m2013e();
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        ViewGroup viewGroup;
        Handler handler;
        if (seekBar != this.f2125a.f2013d) {
            if (seekBar == this.f2125a.f2012c) {
                this.f2125a.m3836u();
                this.f2125a.f2004a.setVisibility(0);
                this.f2125a.m2013e();
                return;
            }
            return;
        }
        this.f2125a.f2027r = true;
        this.f2125a.m3836u();
        viewGroup = this.f2125a.f3733L;
        viewGroup.setVisibility(0);
        handler = this.f2125a.f3829A;
        handler.removeMessages(100);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        Handler handler;
        if (seekBar != this.f2125a.f2013d) {
            if (seekBar == this.f2125a.f2012c) {
                this.f2125a.m3817f(1500);
            }
        } else {
            this.f2125a.f2027r = false;
            this.f2125a.m2009b(true);
            this.f2125a.m2012d();
            this.f2125a.m3817f(1500);
            handler = this.f2125a.f3829A;
            handler.sendEmptyMessage(100);
        }
    }
}
