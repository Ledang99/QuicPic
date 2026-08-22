.class Lcom/alensw/PicFolder/q;
.super Lcom/alensw/ui/view/j;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Instantiatable"
    }
.end annotation


# instance fields
.field protected a:F

.field private am:Z

.field private an:Landroid/graphics/RectF;

.field private final ao:Lcom/alensw/ui/view/y;

.field protected b:F

.field protected c:F

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected g:Z

.field protected h:Z

.field protected i:Z

.field protected j:Z

.field protected k:Z

.field protected l:Ljava/lang/String;

.field protected m:Landroid/net/Uri;

.field protected n:I

.field protected o:I

.field protected p:J

.field protected q:Landroid/graphics/Bitmap;

.field protected r:Landroid/graphics/Bitmap$CompressFormat;

.field protected s:Landroid/os/Handler;

.field protected t:Lcom/alensw/ui/view/w;

.field protected final u:Lcom/alensw/PicFolder/aa;

.field protected final v:Landroid/graphics/RectF;

.field protected final w:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alensw/PicFolder/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/alensw/ui/view/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alensw/PicFolder/q;->c:F

    iput-boolean v1, p0, Lcom/alensw/PicFolder/q;->d:Z

    iput-boolean v1, p0, Lcom/alensw/PicFolder/q;->e:Z

    new-instance v0, Lcom/alensw/PicFolder/aa;

    invoke-direct {v0, p0}, Lcom/alensw/PicFolder/aa;-><init>(Lcom/alensw/PicFolder/q;)V

    iput-object v0, p0, Lcom/alensw/PicFolder/q;->u:Lcom/alensw/PicFolder/aa;

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->Q:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/alensw/PicFolder/q;->v:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alensw/PicFolder/q;->w:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alensw/PicFolder/q;->an:Landroid/graphics/RectF;

    new-instance v0, Lcom/alensw/PicFolder/z;

    invoke-direct {v0, p0}, Lcom/alensw/PicFolder/z;-><init>(Lcom/alensw/PicFolder/q;)V

    iput-object v0, p0, Lcom/alensw/PicFolder/q;->ao:Lcom/alensw/ui/view/y;

    return-void
.end method

.method static synthetic a(Lcom/alensw/PicFolder/q;)F
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/q;->ai:F

    return v0
.end method

.method static synthetic a(Lcom/alensw/PicFolder/q;Lcom/alensw/ui/view/bt;)Lcom/alensw/ui/view/bt;
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/q;->J:Lcom/alensw/ui/view/bt;

    return-object p1
.end method

.method static synthetic a(Lcom/alensw/PicFolder/q;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/PicFolder/q;->d(FFF)V

    return-void
.end method

.method static synthetic a(Lcom/alensw/PicFolder/q;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alensw/PicFolder/q;->I:Z

    return p1
.end method

.method static synthetic b(Lcom/alensw/PicFolder/q;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->P:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic b(Lcom/alensw/PicFolder/q;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alensw/PicFolder/q;->I:Z

    return p1
.end method

.method static synthetic c(Lcom/alensw/PicFolder/q;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->P:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic d(Lcom/alensw/PicFolder/q;)I
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/q;->C:I

    return v0
.end method

.method private d(FFF)V
    .locals 5

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->v:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float v1, p2, v1

    mul-float/2addr v1, p1

    sub-float v1, p2, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float v2, p3, v2

    mul-float/2addr v2, p1

    sub-float v2, p3, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v1

    add-float/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method static synthetic e(Lcom/alensw/PicFolder/q;)I
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/q;->D:I

    return v0
.end method

.method static synthetic f(Lcom/alensw/PicFolder/q;)F
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/q;->ag:F

    return v0
.end method

.method static synthetic g(Lcom/alensw/PicFolder/q;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->P:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic h(Lcom/alensw/PicFolder/q;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->P:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic i(Lcom/alensw/PicFolder/q;)I
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/q;->C:I

    return v0
.end method

.method static synthetic j(Lcom/alensw/PicFolder/q;)I
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/q;->D:I

    return v0
.end method

.method static synthetic k(Lcom/alensw/PicFolder/q;)F
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/q;->ai:F

    return v0
.end method

.method static synthetic l(Lcom/alensw/PicFolder/q;)F
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/q;->ai:F

    return v0
.end method

.method static synthetic m(Lcom/alensw/PicFolder/q;)F
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/q;->ai:F

    return v0
.end method

.method static synthetic n(Lcom/alensw/PicFolder/q;)F
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/q;->ai:F

    return v0
.end method

.method static synthetic o(Lcom/alensw/PicFolder/q;)I
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/q;->C:I

    return v0
.end method

.method static synthetic p(Lcom/alensw/PicFolder/q;)I
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/q;->D:I

    return v0
.end method

.method static synthetic q(Lcom/alensw/PicFolder/q;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->P:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic r(Lcom/alensw/PicFolder/q;)F
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/q;->ai:F

    return v0
.end method

.method static synthetic s(Lcom/alensw/PicFolder/q;)F
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/q;->ai:F

    return v0
.end method

.method static synthetic t(Lcom/alensw/PicFolder/q;)I
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/q;->D:I

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/alensw/PicFolder/q;->v:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->P:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v2, p0, Lcom/alensw/PicFolder/q;->C:I

    int-to-float v5, v2

    iget v2, p0, Lcom/alensw/PicFolder/q;->D:I

    int-to-float v6, v2

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->getPictureWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->getPictureHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v2, v3

    iget v2, p0, Lcom/alensw/PicFolder/q;->b:F

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/alensw/PicFolder/q;->b:F

    :goto_0
    cmpg-float v3, v3, v2

    if-gez v3, :cond_2

    div-float v0, v1, v2

    :goto_1
    sub-float v2, v5, v1

    div-float/2addr v2, v8

    iput v2, v4, Landroid/graphics/RectF;->left:F

    iget v2, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    iput v1, v4, Landroid/graphics/RectF;->right:F

    sub-float v1, v6, v0

    div-float/2addr v1, v8

    iput v1, v4, Landroid/graphics/RectF;->top:F

    iget v1, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v5, v7

    if-lez v0, :cond_0

    cmpl-float v0, v6, v7

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->c()V

    :cond_0
    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    mul-float v1, v0, v2

    goto :goto_1
.end method

.method protected a(FFFI)V
    .locals 9

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->getTransScale()F

    move-result v4

    sub-float v5, p1, v4

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->J:Lcom/alensw/ui/view/bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->J:Lcom/alensw/ui/view/bt;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bt;->c()V

    :cond_0
    new-instance v0, Lcom/alensw/PicFolder/u;

    iget-object v3, p0, Lcom/alensw/PicFolder/q;->L:Landroid/view/animation/Interpolator;

    move-object v1, p0

    move-object v2, p0

    move v6, p2

    move v7, p3

    move v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/alensw/PicFolder/u;-><init>(Lcom/alensw/PicFolder/q;Landroid/view/View;Landroid/view/animation/Interpolator;FFFFF)V

    iput-object v0, p0, Lcom/alensw/PicFolder/q;->J:Lcom/alensw/ui/view/bt;

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->J:Lcom/alensw/ui/view/bt;

    int-to-long v2, p4

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/alensw/ui/view/bt;->a(JZ)V

    return-void
.end method

.method protected a(I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alensw/PicFolder/q;->am:Z

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->s:Landroid/os/Handler;

    iget-object v3, p0, Lcom/alensw/PicFolder/q;->s:Landroid/os/Handler;

    const/16 v4, 0x3e8

    iget-boolean v5, p0, Lcom/alensw/PicFolder/q;->k:Z

    if-eqz v5, :cond_2

    :goto_1
    invoke-static {v3, v4, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->getPictureType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alensw/PicFolder/q;->am:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->g()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->f()V

    goto :goto_2
.end method

.method protected a(Landroid/graphics/RectF;)V
    .locals 14

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->V:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alensw/PicFolder/q;->ab:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->ab:[F

    invoke-static {v0}, Lcom/alensw/b/h/j;->a([F)F

    move-result v0

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->getTransValues()[F

    move-result-object v1

    const/4 v2, 0x3

    aget v2, v1, v2

    float-to-double v2, v2

    const/4 v4, 0x4

    aget v1, v1, v4

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->getPictureWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-double v6, v1

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->getPictureHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    mul-double v8, v0, v0

    mul-double v10, v6, v4

    mul-double v12, v0, v2

    add-double/2addr v10, v12

    div-double/2addr v8, v10

    mul-double v10, v0, v6

    mul-double/2addr v2, v6

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    div-double v2, v10, v2

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    mul-double v4, v2, v6

    div-double v0, v4, v0

    iget-object v4, p0, Lcom/alensw/PicFolder/q;->P:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, v0, v6

    sub-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p1, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    float-to-double v4, v4

    add-double/2addr v0, v4

    double-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->P:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v4, v2, v4

    sub-double/2addr v0, v4

    double-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-double v0, v0

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method protected a(Lcom/alensw/b/h/j;)V
    .locals 2

    const v0, 0x7f0a0068

    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/q;->a(I)V

    invoke-virtual {p1}, Lcom/alensw/b/h/j;->c()Lcom/alensw/b/h/j;

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    new-instance v1, Lcom/alensw/PicFolder/r;

    invoke-direct {v1, p0, p1}, Lcom/alensw/PicFolder/r;-><init>(Lcom/alensw/PicFolder/q;Lcom/alensw/b/h/j;)V

    invoke-virtual {v0, v1}, Lcom/alensw/a/ao;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alensw/PicFolder/q;->e:Z

    invoke-super {p0, v0, v0}, Lcom/alensw/ui/view/j;->a(IZ)V

    new-instance v0, Lcom/alensw/PicFolder/v;

    invoke-direct {v0, p0}, Lcom/alensw/PicFolder/v;-><init>(Lcom/alensw/PicFolder/q;)V

    invoke-super {p0, p1, v0}, Lcom/alensw/ui/view/j;->a(ZLjava/lang/Runnable;)V

    return-void
.end method

.method protected a(ZIIF)V
    .locals 2

    iput-boolean p1, p0, Lcom/alensw/PicFolder/q;->d:Z

    if-lez p2, :cond_1

    if-lez p3, :cond_1

    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alensw/PicFolder/q;->b:F

    :goto_0
    iput p2, p0, Lcom/alensw/PicFolder/q;->n:I

    iput p3, p0, Lcom/alensw/PicFolder/q;->o:I

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->S:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->j()V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->a()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_2

    iput p4, p0, Lcom/alensw/PicFolder/q;->b:F

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/alensw/PicFolder/q;->a:F

    iput v0, p0, Lcom/alensw/PicFolder/q;->b:F

    goto :goto_0
.end method

.method protected a(II)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/alensw/PicFolder/q;->f:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/alensw/PicFolder/q;->C:I

    iget v3, p0, Lcom/alensw/PicFolder/q;->D:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Lcom/alensw/b/h/b;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    invoke-static {p1, p2, v1}, Lcom/alensw/b/h/b;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/alensw/PicFolder/q;->f:Z

    if-nez v3, :cond_0

    const/16 v3, 0xf

    :goto_1
    if-lt v3, v2, :cond_0

    iget-object v4, p0, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    mul-int v4, p1, v3

    div-int/lit8 v4, v4, 0x10

    mul-int v5, p2, v3

    div-int/lit8 v5, v5, 0x10

    invoke-static {v4, v5, v1}, Lcom/alensw/b/h/b;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;ZLandroid/os/Handler;Lcom/alensw/a/ba;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object p3, p0, Lcom/alensw/PicFolder/q;->s:Landroid/os/Handler;

    iput-boolean p2, p0, Lcom/alensw/PicFolder/q;->i:Z

    new-instance v0, Lcom/alensw/ui/view/w;

    iget-object v1, p0, Lcom/alensw/PicFolder/q;->ao:Lcom/alensw/ui/view/y;

    iget-object v5, p0, Lcom/alensw/PicFolder/q;->s:Landroid/os/Handler;

    invoke-direct {v0, v4, v1, v5}, Lcom/alensw/ui/view/w;-><init>(Landroid/content/Context;Lcom/alensw/ui/view/y;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alensw/PicFolder/q;->t:Lcom/alensw/ui/view/w;

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v5, :cond_3

    const-string v0, "data"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const-string v1, "return-data"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/alensw/PicFolder/q;->g:Z

    iget-boolean v1, p0, Lcom/alensw/PicFolder/q;->i:Z

    if-nez v1, :cond_1

    const-string v1, "output"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/alensw/PicFolder/q;->m:Landroid/net/Uri;

    iget-object v1, p0, Lcom/alensw/PicFolder/q;->m:Landroid/net/Uri;

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, "outputFormat"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/alensw/PicFolder/q;->r:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const-string v1, "aspectX"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v7, "aspectY"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-eqz v1, :cond_2

    if-eqz v7, :cond_2

    int-to-float v1, v1

    int-to-float v7, v7

    div-float/2addr v1, v7

    iput v1, p0, Lcom/alensw/PicFolder/q;->a:F

    iget v1, p0, Lcom/alensw/PicFolder/q;->a:F

    iput v1, p0, Lcom/alensw/PicFolder/q;->b:F

    :cond_2
    const-string v1, "outputX"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alensw/PicFolder/q;->n:I

    const-string v1, "outputY"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alensw/PicFolder/q;->o:I

    const-string v1, "noFaceDetection"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/alensw/PicFolder/q;->h:Z

    :cond_3
    iget v1, p0, Lcom/alensw/PicFolder/q;->n:I

    if-lez v1, :cond_7

    iget v1, p0, Lcom/alensw/PicFolder/q;->o:I

    if-lez v1, :cond_7

    move v1, v3

    :goto_3
    iput-boolean v1, p0, Lcom/alensw/PicFolder/q;->f:Z

    if-eqz v0, :cond_8

    new-instance v1, Lcom/alensw/b/h/j;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/alensw/b/h/j;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v1}, Lcom/alensw/PicFolder/q;->b(Lcom/alensw/b/h/j;)V

    :cond_4
    :goto_4
    return v3

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    if-eqz v6, :cond_d

    iget-boolean v0, p0, Lcom/alensw/PicFolder/q;->f:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/alensw/PicFolder/q;->n:I

    iget v1, p0, Lcom/alensw/PicFolder/q;->o:I

    invoke-virtual {p0, v0, v1}, Lcom/alensw/PicFolder/q;->a(II)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create output bitmap failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alensw/PicFolder/q;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alensw/PicFolder/q;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v3, v2

    goto :goto_4

    :cond_9
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/PicFolder/q;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->l:Ljava/lang/String;

    const/16 v1, 0x49

    invoke-virtual {p4, v0, v1}, Lcom/alensw/a/ba;->a(Ljava/lang/String;C)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    move v2, v3

    :cond_a
    iput-boolean v2, p0, Lcom/alensw/PicFolder/q;->j:Z

    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/alensw/PicFolder/q;->l:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alensw/PicFolder/q;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alensw/PicFolder/q;->p:J

    goto :goto_4

    :cond_c
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    invoke-virtual {v0, v6}, Lcom/alensw/a/ba;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/PicFolder/q;->l:Ljava/lang/String;

    const-string v0, "media"

    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alensw/PicFolder/q;->j:Z

    goto :goto_5

    :cond_d
    move v3, v2

    goto/16 :goto_4

    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method protected b()V
    .locals 5

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->v:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->getScaleRanges()[F

    move-result-object v1

    iget v2, p0, Lcom/alensw/PicFolder/q;->C:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/alensw/PicFolder/q;->D:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->getTransScale()F

    move-result v3

    mul-float/2addr v2, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float v2, v3, v1

    const v4, 0x3f666666    # 0.9f

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_0

    div-float v2, v3, v1

    const v3, 0x3f8e147b    # 1.11f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v3, p0, Lcom/alensw/PicFolder/q;->ad:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/alensw/PicFolder/q;->a(FFFI)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->c()V

    goto :goto_0
.end method

.method public b(I)V
    .locals 7

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->v:Landroid/graphics/RectF;

    iget v1, p0, Lcom/alensw/PicFolder/q;->C:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alensw/PicFolder/q;->D:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alensw/PicFolder/q;->e:Z

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->getTransRotation()F

    move-result v0

    int-to-float v1, p1

    add-float/2addr v1, v0

    const/4 v2, 0x1

    iget v0, p0, Lcom/alensw/PicFolder/q;->C:I

    int-to-float v0, v0

    div-float v3, v0, v4

    iget v0, p0, Lcom/alensw/PicFolder/q;->D:I

    int-to-float v0, v0

    div-float v4, v0, v4

    iget v5, p0, Lcom/alensw/PicFolder/q;->ad:I

    new-instance v6, Lcom/alensw/PicFolder/w;

    invoke-direct {v6, p0}, Lcom/alensw/PicFolder/w;-><init>(Lcom/alensw/PicFolder/q;)V

    move-object v0, p0

    invoke-super/range {v0 .. v6}, Lcom/alensw/ui/view/j;->a(FZFFILjava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/alensw/b/h/j;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, Lcom/alensw/ui/view/j;->a(Lcom/alensw/b/h/j;Z)V

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/alensw/b/h/j;->d:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->f()V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->a()V

    iget-boolean v0, p0, Lcom/alensw/PicFolder/q;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alensw/PicFolder/t;

    invoke-direct {v0, p0}, Lcom/alensw/PicFolder/t;-><init>(Lcom/alensw/PicFolder/q;)V

    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/q;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    iget v4, p0, Lcom/alensw/PicFolder/q;->b:F

    iget-object v5, p0, Lcom/alensw/PicFolder/q;->v:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->P:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v6, p0, Lcom/alensw/PicFolder/q;->C:I

    int-to-float v6, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v6, p0, Lcom/alensw/PicFolder/q;->D:I

    int-to-float v6, v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpl-float v6, v3, v2

    if-lez v6, :cond_7

    cmpl-float v3, v4, v7

    if-eqz v3, :cond_0

    div-float v1, v2, v4

    :cond_0
    :goto_0
    cmpl-float v3, v1, v0

    if-lez v3, :cond_6

    cmpl-float v1, v4, v7

    if-eqz v1, :cond_5

    mul-float v1, v0, v4

    :goto_1
    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->getClipRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v3, v5, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    invoke-virtual {v5, v3, v7}, Landroid/graphics/RectF;->offset(FF)V

    iget v3, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    iput v1, v5, Landroid/graphics/RectF;->right:F

    :goto_2
    iget v1, v5, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    iget v1, v2, Landroid/graphics/RectF;->top:F

    iget v2, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-virtual {v5, v7, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget v1, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iput v0, v5, Landroid/graphics/RectF;->bottom:F

    :goto_3
    invoke-virtual {p0, v7}, Lcom/alensw/PicFolder/q;->c(F)Z

    return-void

    :cond_1
    iget v3, v5, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    invoke-virtual {v5, v3, v7}, Landroid/graphics/RectF;->offset(FF)V

    iget v3, v5, Landroid/graphics/RectF;->right:F

    sub-float v1, v3, v1

    iput v1, v5, Landroid/graphics/RectF;->left:F

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float v1, v3, v1

    div-float/2addr v1, v8

    invoke-virtual {v5, v1, v7}, Landroid/graphics/RectF;->inset(FF)V

    goto :goto_2

    :cond_3
    iget v1, v5, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    iget v2, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    invoke-virtual {v5, v7, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget v1, v5, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v1, v0

    iput v0, v5, Landroid/graphics/RectF;->top:F

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float v0, v1, v0

    div-float/2addr v0, v8

    invoke-virtual {v5, v0, v7}, Landroid/graphics/RectF;->inset(FF)V

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    move v0, v1

    move v1, v2

    goto :goto_1

    :cond_7
    move v2, v3

    goto/16 :goto_0
.end method

.method protected c(I)V
    .locals 3

    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 v0, v0, 0x168

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->getPicture()Lcom/alensw/b/h/j;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/alensw/b/h/j;->b:Lcom/alensw/b/h/i;

    iput v0, v2, Lcom/alensw/b/h/i;->d:I

    invoke-virtual {v1}, Lcom/alensw/b/h/j;->m()I

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->getFullPicture()Lcom/alensw/b/h/j;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/alensw/b/h/j;->b:Lcom/alensw/b/h/i;

    iput v0, v2, Lcom/alensw/b/h/i;->d:I

    invoke-virtual {v1}, Lcom/alensw/b/h/j;->m()I

    :cond_1
    return-void
.end method

.method protected d()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/alensw/PicFolder/q;->v:Landroid/graphics/RectF;

    iget v0, v1, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v0, p0, Lcom/alensw/PicFolder/q;->C:I

    int-to-float v0, v0

    iget v3, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v0, v1, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v4, p0, Lcom/alensw/PicFolder/q;->D:I

    int-to-float v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v4, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpl-float v4, v2, v5

    if-eqz v4, :cond_2

    :goto_0
    cmpl-float v3, v0, v5

    if-eqz v3, :cond_3

    :goto_1
    cmpl-float v1, v2, v5

    if-nez v1, :cond_0

    cmpl-float v1, v0, v5

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/alensw/PicFolder/q;->b(FF)V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->l()Z

    :cond_1
    return-void

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method protected d(I)V
    .locals 10

    const/4 v0, 0x1

    const v1, 0x7f09000a

    if-ne p1, v1, :cond_2

    move v5, v0

    :goto_0
    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v4, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alensw/PicFolder/q;->T:Landroid/graphics/Matrix;

    invoke-direct {v4, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    new-instance v3, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alensw/PicFolder/q;->V:Landroid/graphics/Matrix;

    invoke-direct {v3, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iget-boolean v1, p0, Lcom/alensw/PicFolder/q;->d:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alensw/PicFolder/q;->b:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0, v1}, Lcom/alensw/PicFolder/q;->a(Landroid/graphics/RectF;)V

    iget-object v2, p0, Lcom/alensw/PicFolder/q;->v:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->invalidate()V

    :cond_1
    iput-boolean v0, p0, Lcom/alensw/PicFolder/q;->k:Z

    const v0, 0x7f0a0068

    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/q;->a(I)V

    new-instance v2, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->v:Landroid/graphics/RectF;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    sget-object v9, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    new-instance v0, Lcom/alensw/PicFolder/x;

    move-object v1, p0

    move v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/alensw/PicFolder/x;-><init>(Lcom/alensw/PicFolder/q;Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/Matrix;ZLandroid/content/Context;Landroid/content/ContentResolver;I)V

    invoke-virtual {v9, v0}, Lcom/alensw/a/ao;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getScaleRanges()[F
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/alensw/ui/view/j;->getScaleRanges()[F

    move-result-object v0

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->k()[F

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/PicFolder/q;->an:Landroid/graphics/RectF;

    invoke-virtual {p0, v2}, Lcom/alensw/PicFolder/q;->b(Landroid/graphics/RectF;)V

    iget-object v3, p0, Lcom/alensw/PicFolder/q;->v:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/alensw/PicFolder/q;->v:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float v2, v4, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aget v3, v1, v5

    mul-float/2addr v2, v3

    aput v2, v0, v5

    const/4 v2, 0x1

    const/4 v3, 0x2

    aget v1, v1, v3

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v1, v3

    aget v3, v0, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v0, v2

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    :cond_0
    invoke-super {p0}, Lcom/alensw/ui/view/j;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alensw/ui/view/j;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alensw/PicFolder/q;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alensw/PicFolder/q;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->u:Lcom/alensw/PicFolder/aa;

    invoke-virtual {v0, p1}, Lcom/alensw/PicFolder/aa;->a(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/alensw/ui/view/j;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alensw/PicFolder/CropActivity;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/CropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "QuickPic.matrix_values"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getFloatArrayExtra(Ljava/lang/String;)[F

    move-result-object v1

    const-string v2, "QuickPic.matrix_values"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/alensw/PicFolder/q;->setTransValues([F)V

    :goto_0
    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->j()V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/q;->a()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/PicFolder/q;->S:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/PicFolder/q;->am:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/q;->t:Lcom/alensw/ui/view/w;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/w;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
