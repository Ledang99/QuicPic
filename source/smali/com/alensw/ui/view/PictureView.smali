.class public Lcom/alensw/ui/view/PictureView;
.super Lcom/alensw/ui/view/j;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Instantiatable"
    }
.end annotation


# instance fields
.field private final a:Lcom/alensw/ui/view/w;

.field private final b:Landroid/graphics/RectF;

.field private c:Z

.field private d:I

.field private final e:Lcom/alensw/ui/view/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alensw/ui/view/PictureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/alensw/ui/view/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/PictureView;->b:Landroid/graphics/RectF;

    new-instance v0, Lcom/alensw/ui/view/bb;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/bb;-><init>(Lcom/alensw/ui/view/PictureView;)V

    iput-object v0, p0, Lcom/alensw/ui/view/PictureView;->e:Lcom/alensw/ui/view/y;

    new-instance v0, Lcom/alensw/ui/view/w;

    iget-object v1, p0, Lcom/alensw/ui/view/PictureView;->e:Lcom/alensw/ui/view/y;

    invoke-virtual {p0}, Lcom/alensw/ui/view/PictureView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/alensw/ui/view/w;-><init>(Landroid/content/Context;Lcom/alensw/ui/view/y;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alensw/ui/view/PictureView;->a:Lcom/alensw/ui/view/w;

    return-void
.end method

.method private b()Landroid/graphics/RectF;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/alensw/ui/view/PictureView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    instance-of v1, v0, Lcom/alensw/ui/view/bu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/view/PictureView;->b:Landroid/graphics/RectF;

    iget v2, p0, Lcom/alensw/ui/view/PictureView;->C:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alensw/ui/view/PictureView;->D:I

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/alensw/ui/view/PictureView;->P:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    iget v2, p0, Lcom/alensw/ui/view/PictureView;->d:I

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/graphics/RectF;->offset(FF)V

    check-cast v0, Lcom/alensw/ui/view/bu;

    invoke-virtual {v0, v1, v1}, Lcom/alensw/ui/view/bu;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/PictureView;->postInvalidateOnAnimation()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/view/PictureView;->invalidate()V

    goto :goto_0
.end method

.method public a(Lcom/alensw/b/h/j;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alensw/ui/view/j;->a(Lcom/alensw/b/h/j;Z)V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alensw/ui/view/PictureView;->c:Z

    iget-boolean v0, p0, Lcom/alensw/ui/view/PictureView;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alensw/ui/view/PictureView;->b()Landroid/graphics/RectF;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/alensw/ui/view/PictureView;->c:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/alensw/ui/view/PictureView;->b()Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    :cond_1
    iget v1, p0, Lcom/alensw/ui/view/PictureView;->d:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/alensw/ui/view/PictureView;->d:I

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    invoke-super {p0, p1}, Lcom/alensw/ui/view/j;->draw(Landroid/graphics/Canvas;)V

    iget v1, p0, Lcom/alensw/ui/view/PictureView;->d:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/alensw/ui/view/PictureView;->d:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Lcom/alensw/ui/view/PictureView;->a()V

    :cond_4
    return-void
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p0}, Lcom/alensw/ui/view/PictureView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/alensw/ui/view/PictureView;->D:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v1, -0xa

    add-int/lit8 v3, v0, 0x14

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v0, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Lcom/alensw/ui/view/j;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    :pswitch_0
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget v2, p0, Lcom/alensw/ui/view/PictureView;->ae:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alensw/ui/view/PictureView;->a(F)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/alensw/ui/view/PictureView;->ah:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/alensw/ui/view/j;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/alensw/ui/view/PictureView;->K:Lcom/alensw/ui/view/q;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/PictureView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/PictureView;->K:Lcom/alensw/ui/view/q;

    iget v1, p0, Lcom/alensw/ui/view/PictureView;->C:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/alensw/ui/view/PictureView;->D:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Lcom/alensw/ui/view/q;->a(FF)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/alensw/ui/view/PictureView;->h()V

    const/16 v2, 0x15

    if-ne p1, v2, :cond_1

    :goto_2
    invoke-virtual {p0, v0, v4}, Lcom/alensw/ui/view/PictureView;->d(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_1
    neg-float v0, v0

    goto :goto_2

    :sswitch_2
    invoke-virtual {p0}, Lcom/alensw/ui/view/PictureView;->h()V

    iget-object v2, p0, Lcom/alensw/ui/view/PictureView;->P:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/alensw/ui/view/PictureView;->D:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    neg-float v0, v0

    invoke-virtual {p0, v4, v0}, Lcom/alensw/ui/view/PictureView;->d(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/alensw/ui/view/PictureView;->getTransScale()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/PictureView;->d(Z)F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lcom/alensw/ui/view/PictureView;->h()V

    iget-object v2, p0, Lcom/alensw/ui/view/PictureView;->P:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-virtual {p0, v4, v0}, Lcom/alensw/ui/view/PictureView;->d(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0}, Lcom/alensw/ui/view/PictureView;->h()V

    const/16 v2, 0x5c

    if-ne p1, v2, :cond_3

    :goto_3
    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/PictureView;->a(F)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_3
    neg-float v0, v0

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_2
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
        0x5c -> :sswitch_4
        0x5d -> :sswitch_4
    .end sparse-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/alensw/ui/view/PictureView;->h()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/PictureView;->getLocationOnScreen([I)V

    aget v1, v0, v2

    neg-int v1, v1

    iput v1, p0, Lcom/alensw/ui/view/PictureView;->d:I

    aget v0, v0, v2

    add-int/2addr p2, v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alensw/ui/view/j;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/PictureView;->a:Lcom/alensw/ui/view/w;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/w;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
