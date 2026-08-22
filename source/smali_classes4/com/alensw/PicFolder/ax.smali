.class Lcom/alensw/PicFolder/ax;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/PlayerView;

.field private b:I


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/PlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v0}, Lcom/alensw/PicFolder/PlayerView;->b(Lcom/alensw/PicFolder/PlayerView;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-virtual {v1}, Lcom/alensw/PicFolder/PlayerView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v2}, Lcom/alensw/PicFolder/PlayerView;->a(Lcom/alensw/PicFolder/PlayerView;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v2}, Lcom/alensw/PicFolder/PlayerView;->a(Lcom/alensw/PicFolder/PlayerView;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v2}, Lcom/alensw/PicFolder/PlayerView;->c(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float v4, v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float v5, v2, v5

    iget-object v2, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v2}, Lcom/alensw/PicFolder/PlayerView;->d(Lcom/alensw/PicFolder/PlayerView;)I

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float v8, v7, v9

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_4

    move v2, v1

    :cond_2
    :goto_1
    if-ne v2, v1, :cond_6

    iget-object v6, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v6}, Lcom/alensw/PicFolder/PlayerView;->e(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v2, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v2}, Lcom/alensw/PicFolder/PlayerView;->f(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v3}, Lcom/alensw/PicFolder/PlayerView;->e(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v5}, Lcom/alensw/PicFolder/PlayerView;->e(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v5}, Lcom/alensw/PicFolder/PlayerView;->e(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    if-lez v3, :cond_0

    iget-object v5, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v5}, Lcom/alensw/PicFolder/PlayerView;->d(Lcom/alensw/PicFolder/PlayerView;)I

    move-result v5

    if-nez v5, :cond_5

    iget-object v0, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v0, v1}, Lcom/alensw/PicFolder/PlayerView;->a(Lcom/alensw/PicFolder/PlayerView;I)I

    iget-object v0, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v0}, Lcom/alensw/PicFolder/PlayerView;->e(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/alensw/PicFolder/ax;->b:I

    iget-object v0, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v0}, Lcom/alensw/PicFolder/PlayerView;->c(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v2}, Lcom/alensw/PicFolder/PlayerView;->e(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_3
    :goto_2
    move v0, v1

    goto/16 :goto_0

    :cond_4
    mul-float/2addr v6, v9

    cmpl-float v6, v7, v6

    if-ltz v6, :cond_2

    move v2, v3

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v5}, Lcom/alensw/PicFolder/PlayerView;->d(Lcom/alensw/PicFolder/PlayerView;)I

    move-result v5

    if-ne v5, v1, :cond_3

    iget-object v5, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v5}, Lcom/alensw/PicFolder/PlayerView;->e(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    int-to-float v6, v5

    const v7, 0x1d4c0

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    int-to-float v2, v2

    div-float v2, v6, v2

    iget v6, p0, Lcom/alensw/PicFolder/ax;->b:I

    int-to-float v3, v3

    div-float v3, v4, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v2}, Lcom/alensw/PicFolder/PlayerView;->e(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v2}, Lcom/alensw/PicFolder/PlayerView;->c(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v3}, Lcom/alensw/PicFolder/PlayerView;->e(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_2

    :cond_6
    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v2}, Lcom/alensw/PicFolder/PlayerView;->g(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v2}, Lcom/alensw/PicFolder/PlayerView;->g(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getHeight()I

    move-result v2

    iget-object v4, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v4}, Lcom/alensw/PicFolder/PlayerView;->g(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v4}, Lcom/alensw/PicFolder/PlayerView;->g(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    if-lez v2, :cond_0

    iget-object v4, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v4}, Lcom/alensw/PicFolder/PlayerView;->d(Lcom/alensw/PicFolder/PlayerView;)I

    move-result v4

    if-nez v4, :cond_7

    iget-object v0, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v0, v3}, Lcom/alensw/PicFolder/PlayerView;->a(Lcom/alensw/PicFolder/PlayerView;I)I

    iget-object v0, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v0}, Lcom/alensw/PicFolder/PlayerView;->g(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/alensw/PicFolder/ax;->b:I

    iget-object v0, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v0}, Lcom/alensw/PicFolder/PlayerView;->c(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v2}, Lcom/alensw/PicFolder/PlayerView;->g(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    goto/16 :goto_2

    :cond_7
    iget-object v4, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v4}, Lcom/alensw/PicFolder/PlayerView;->d(Lcom/alensw/PicFolder/PlayerView;)I

    move-result v4

    if-ne v4, v3, :cond_3

    iget-object v3, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v3}, Lcom/alensw/PicFolder/PlayerView;->g(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    iget v4, p0, Lcom/alensw/PicFolder/ax;->b:I

    int-to-float v2, v2

    div-float v2, v5, v2

    int-to-float v5, v3

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v2}, Lcom/alensw/PicFolder/PlayerView;->g(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v2}, Lcom/alensw/PicFolder/PlayerView;->c(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v3}, Lcom/alensw/PicFolder/PlayerView;->g(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto/16 :goto_2
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/ax;->a:Lcom/alensw/PicFolder/PlayerView;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alensw/PicFolder/PlayerActivity;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/PlayerActivity;->v()Z

    const/4 v0, 0x1

    return v0
.end method
