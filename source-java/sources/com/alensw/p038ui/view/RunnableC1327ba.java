package com.alensw.p038ui.view;

/* renamed from: com.alensw.ui.view.ba */
/* loaded from: classes.dex */
class RunnableC1327ba implements Runnable {

    /* renamed from: a */
    final /* synthetic */ PathBar f4570a;

    RunnableC1327ba(PathBar pathBar) {
        this.f4570a = pathBar;
    }

    @Override // java.lang.Runnable
    public void run() {
        int computeHorizontalScrollRange;
        computeHorizontalScrollRange = this.f4570a.computeHorizontalScrollRange();
        int width = (this.f4570a.getWidth() - this.f4570a.getPaddingLeft()) - this.f4570a.getPaddingRight();
        if (width > 0) {
            this.f4570a.smoothScrollTo(computeHorizontalScrollRange > width ? computeHorizontalScrollRange - width : 0, 0);
        }
    }
}
