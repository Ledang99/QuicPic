.class public Lcom/alensw/ui/view/bp;
.super Landroid/view/View;


# static fields
.field public static final f:[I

.field public static final g:[I


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable$Callback;

.field private b:Z

.field private final c:Ljava/lang/Runnable;

.field private d:Z

.field private final e:Landroid/view/GestureDetector$OnGestureListener;

.field protected h:Z

.field protected i:I

.field protected j:I

.field protected k:Lcom/alensw/ui/view/au;

.field protected final l:I

.field protected final m:Landroid/graphics/drawable/Drawable;

.field protected final n:Landroid/graphics/drawable/RippleDrawable;

.field protected final o:Lcom/alensw/ui/view/bn;

.field protected final p:Landroid/support/v4/widget/k;

.field protected final q:Landroid/view/GestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/alensw/ui/view/bp;->f:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alensw/ui/view/bp;->g:[I

    return-void

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alensw/ui/view/bp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/alensw/ui/view/bq;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/bq;-><init>(Lcom/alensw/ui/view/bp;)V

    iput-object v0, p0, Lcom/alensw/ui/view/bp;->a:Landroid/graphics/drawable/Drawable$Callback;

    new-instance v0, Lcom/alensw/ui/view/br;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/br;-><init>(Lcom/alensw/ui/view/bp;)V

    iput-object v0, p0, Lcom/alensw/ui/view/bp;->c:Ljava/lang/Runnable;

    new-instance v0, Lcom/alensw/ui/view/bs;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/bs;-><init>(Lcom/alensw/ui/view/bp;)V

    iput-object v0, p0, Lcom/alensw/ui/view/bp;->e:Landroid/view/GestureDetector$OnGestureListener;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/bp;->l:I

    invoke-static {p1}, Lcom/alensw/b/l/b;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/view/bp;->m:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->m:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/alensw/ui/view/bp;->a:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->m:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->m:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    :goto_0
    iput-object v0, p0, Lcom/alensw/ui/view/bp;->n:Landroid/graphics/drawable/RippleDrawable;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/alensw/ui/view/bp;->e:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alensw/ui/view/bp;->q:Landroid/view/GestureDetector;

    new-instance v0, Lcom/alensw/ui/view/bn;

    invoke-direct {v0, p1, p0}, Lcom/alensw/ui/view/bn;-><init>(Landroid/content/Context;Lcom/alensw/ui/view/bp;)V

    iput-object v0, p0, Lcom/alensw/ui/view/bp;->o:Lcom/alensw/ui/view/bn;

    new-instance v0, Landroid/support/v4/widget/k;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alensw/ui/view/bp;->p:Landroid/support/v4/widget/k;

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->p:Landroid/support/v4/widget/k;

    invoke-virtual {v0}, Landroid/support/v4/widget/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/alensw/ui/view/au;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/au;-><init>(Lcom/alensw/ui/view/bp;)V

    iput-object v0, p0, Lcom/alensw/ui/view/bp;->k:Lcom/alensw/ui/view/au;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/alensw/ui/view/bp;->i:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/bp;->j:I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 5

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->m:Landroid/graphics/drawable/Drawable;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p2, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/alensw/ui/view/bp;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lcom/alensw/ui/view/bp;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/bp;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->m:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/alensw/ui/view/bp;->g:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/view/bp;->c:Ljava/lang/Runnable;

    iget v1, p0, Lcom/alensw/ui/view/bp;->l:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/alensw/ui/view/bp;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public a(IIIIIIZ)Z
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollRangeX()I

    move-result v5

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollRangeY()I

    move-result v6

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->p:Landroid/support/v4/widget/k;

    invoke-virtual {v0}, Landroid/support/v4/widget/k;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->k:Lcom/alensw/ui/view/au;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->k:Lcom/alensw/ui/view/au;

    invoke-virtual {v0, p1, p2}, Lcom/alensw/ui/view/au;->a(II)V

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-super/range {v0 .. v9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/view/bp;->k:Lcom/alensw/ui/view/au;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/view/bp;->k:Lcom/alensw/ui/view/au;

    invoke-virtual {v1}, Lcom/alensw/ui/view/au;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->g()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v3, 0x0

    const/4 v1, 0x0

    add-int v2, p3, p1

    add-int v0, p4, p2

    if-gez v2, :cond_4

    const/4 v5, 0x0

    const/4 v2, 0x1

    :goto_1
    if-gez v0, :cond_5

    const/4 v6, 0x0

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v5, v6, v2, v0}, Lcom/alensw/ui/view/bp;->onOverScrolled(IIZZ)V

    if-nez v2, :cond_3

    if-eqz v0, :cond_6

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    if-le v2, v5, :cond_8

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    if-le v0, v6, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    move v6, v0

    move v0, v1

    goto :goto_2

    :cond_8
    move v5, v2

    move v2, v3

    goto :goto_1
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    return-void
.end method

.method public c(FF)V
    .locals 0

    return-void
.end method

.method public c(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public computeScroll()V
    .locals 10

    const/4 v1, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->p:Landroid/support/v4/widget/k;

    invoke-virtual {v0}, Landroid/support/v4/widget/k;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollY()I

    move-result v4

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->p:Landroid/support/v4/widget/k;

    invoke-virtual {v0}, Landroid/support/v4/widget/k;->c()I

    move-result v8

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->p:Landroid/support/v4/widget/k;

    invoke-virtual {v0}, Landroid/support/v4/widget/k;->d()I

    move-result v9

    if-ne v3, v8, :cond_0

    if-eq v4, v9, :cond_1

    :cond_0
    sub-int v1, v8, v3

    sub-int v2, v9, v4

    iget v5, p0, Lcom/alensw/ui/view/bp;->j:I

    iget v6, p0, Lcom/alensw/ui/view/bp;->j:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/alensw/ui/view/bp;->a(IIIIIIZ)Z

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/view/bp;->k:Lcom/alensw/ui/view/au;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->k:Lcom/alensw/ui/view/au;

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollRangeX()I

    move-result v5

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollRangeY()I

    move-result v6

    move v1, v8

    move v2, v9

    invoke-virtual/range {v0 .. v6}, Lcom/alensw/ui/view/au;->b(IIIIII)V

    :cond_2
    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->g()V

    iput-boolean v7, p0, Lcom/alensw/ui/view/bp;->b:Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/alensw/ui/view/bp;->b:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollRangeX()I

    move-result v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollRangeY()I

    move-result v2

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollY()I

    move-result v3

    if-gez v4, :cond_5

    move v0, v1

    move v4, v7

    :goto_1
    if-gez v3, :cond_6

    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v4, v7}, Lcom/alensw/ui/view/bp;->scrollTo(II)V

    iput-boolean v1, p0, Lcom/alensw/ui/view/bp;->b:Z

    goto :goto_0

    :cond_5
    if-le v4, v0, :cond_8

    move v4, v0

    move v0, v1

    goto :goto_1

    :cond_6
    if-le v3, v2, :cond_7

    move v0, v1

    move v7, v2

    goto :goto_2

    :cond_7
    move v7, v3

    goto :goto_2

    :cond_8
    move v0, v7

    goto :goto_1
.end method

.method public d(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->k:Lcom/alensw/ui/view/au;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->k:Lcom/alensw/ui/view/au;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/au;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->g()V

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/bp;->o:Lcom/alensw/ui/view/bn;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bn;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->o:Lcom/alensw/ui/view/bn;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/bn;->a(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->p:Landroid/support/v4/widget/k;

    invoke-virtual {v0}, Landroid/support/v4/widget/k;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->o:Lcom/alensw/ui/view/bn;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bn;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->postInvalidateOnAnimation()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->invalidate()V

    goto :goto_0
.end method

.method public getClientHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getClientWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getScrollMode()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollRangeX()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollRangeY()I

    move-result v1

    if-lez v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    return v0
.end method

.method public getScrollPosX()F
    .locals 2

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollRangeX()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScrollPosY()F
    .locals 2

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollRangeY()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScrollRangeX()I
    .locals 2

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->computeHorizontalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getClientWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getScrollRangeY()I
    .locals 2

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getClientHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public h()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->postInvalidateOnAnimation()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->postInvalidate()V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/16 v4, 0x9

    const/4 v0, 0x1

    const/4 v2, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    move v3, v1

    move v1, v2

    :goto_1
    cmpl-float v4, v3, v2

    if-nez v4, :cond_2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {p0, v3, v1}, Lcom/alensw/ui/view/bp;->c(FF)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    neg-float v1, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 14

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollRangeX()I

    move-result v5

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollRangeY()I

    move-result v6

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollY()I

    move-result v4

    invoke-super/range {p0 .. p2}, Landroid/view/View;->scrollTo(II)V

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->k:Lcom/alensw/ui/view/au;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->k:Lcom/alensw/ui/view/au;

    move v1, p1

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/alensw/ui/view/au;->a(IIIIII)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/bp;->p:Landroid/support/v4/widget/k;

    invoke-virtual {v0}, Landroid/support/v4/widget/k;->f()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p3, :cond_1

    if-eqz p4, :cond_2

    :cond_1
    iget-object v7, p0, Lcom/alensw/ui/view/bp;->p:Landroid/support/v4/widget/k;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move v8, p1

    move/from16 v9, p2

    move v11, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Landroid/support/v4/widget/k;->a(IIIIII)Z

    :cond_2
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 2

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/bp;->o:Lcom/alensw/ui/view/bn;

    iget-boolean v1, p0, Lcom/alensw/ui/view/bp;->h:Z

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/bn;->c(Z)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->o:Lcom/alensw/ui/view/bn;

    iget-boolean v1, p0, Lcom/alensw/ui/view/bp;->h:Z

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/bn;->c(Z)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/alensw/ui/view/bp;->o:Lcom/alensw/ui/view/bn;

    invoke-virtual {v1, p1}, Lcom/alensw/ui/view/bn;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/view/bp;->p:Landroid/support/v4/widget/k;

    invoke-virtual {v1}, Landroid/support/v4/widget/k;->f()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/view/bp;->p:Landroid/support/v4/widget/k;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/k;->a(Z)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alensw/ui/view/bp;->q:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    iput-boolean v0, p0, Lcom/alensw/ui/view/bp;->d:Z

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->n:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->n:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->g()V

    goto :goto_1

    :pswitch_1
    iput-boolean v3, p0, Lcom/alensw/ui/view/bp;->d:Z

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->k:Lcom/alensw/ui/view/au;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->k:Lcom/alensw/ui/view/au;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alensw/ui/view/au;->a(FF)V

    :cond_3
    iget-object v0, p0, Lcom/alensw/ui/view/bp;->n:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->n:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->g()V

    goto :goto_1

    :pswitch_2
    iget-boolean v1, p0, Lcom/alensw/ui/view/bp;->d:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/bp;->a(Z)V

    iput-boolean v3, p0, Lcom/alensw/ui/view/bp;->d:Z

    :cond_4
    invoke-virtual {p0, v3}, Lcom/alensw/ui/view/bp;->a(Z)V

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->k:Lcom/alensw/ui/view/au;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/view/bp;->k:Lcom/alensw/ui/view/au;

    invoke-virtual {v0}, Lcom/alensw/ui/view/au;->b()V

    :cond_5
    iget-object v0, p0, Lcom/alensw/ui/view/bp;->p:Landroid/support/v4/widget/k;

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollRangeX()I

    move-result v4

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollRangeY()I

    move-result v6

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/widget/k;->a(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->g()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setFastScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alensw/ui/view/bp;->h:Z

    return-void
.end method

.method public setScrollPosX(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollRangeX()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alensw/ui/view/bp;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public setScrollPosY(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/alensw/ui/view/bp;->getScrollRangeY()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/alensw/ui/view/bp;->scrollTo(II)V

    :cond_0
    return-void
.end method
