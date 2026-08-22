.class public Lcom/alensw/ui/view/j;
.super Landroid/view/View;


# static fields
.field public static final al:Landroid/graphics/Shader;

.field public static final x:Z


# instance fields
.field protected A:I

.field protected B:I

.field protected C:I

.field protected D:I

.field protected E:I

.field protected F:Z

.field protected G:Z

.field protected H:Z

.field protected I:Z

.field protected J:Lcom/alensw/ui/view/bt;

.field protected K:Lcom/alensw/ui/view/q;

.field protected final L:Landroid/view/animation/Interpolator;

.field protected final M:Landroid/graphics/Paint;

.field protected final N:Landroid/graphics/Paint;

.field protected final O:Landroid/graphics/Paint;

.field protected final P:Landroid/graphics/RectF;

.field protected final Q:Landroid/graphics/RectF;

.field protected final R:Landroid/graphics/Matrix;

.field protected final S:Landroid/graphics/Matrix;

.field protected final T:Landroid/graphics/Matrix;

.field protected final U:Landroid/graphics/Matrix;

.field protected final V:Landroid/graphics/Matrix;

.field protected final W:[F

.field private a:Lcom/alensw/b/h/j;

.field protected final aa:[F

.field protected final ab:[F

.field public final ac:I

.field public final ad:I

.field protected final ae:F

.field protected final af:F

.field protected final ag:F

.field protected final ah:F

.field protected final ai:F

.field protected final aj:Ljava/lang/String;

.field protected final ak:Ljava/lang/String;

.field private b:Lcom/alensw/b/h/j;

.field private c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Canvas;

.field private final f:Landroid/graphics/Matrix;

.field private final g:Landroid/graphics/RectF;

.field private final h:Landroid/graphics/Matrix;

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:Landroid/support/v4/widget/k;

.field protected y:I

.field protected z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alensw/ui/view/j;->x:Z

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/alensw/ui/d/d;->b(I)Landroid/graphics/Shader;

    move-result-object v0

    sput-object v0, Lcom/alensw/ui/view/j;->al:Landroid/graphics/Shader;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alensw/ui/view/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/j;->Q:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/j;->R:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/j;->S:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/j;->T:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/j;->U:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/j;->V:Landroid/graphics/Matrix;

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alensw/ui/view/j;->W:[F

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alensw/ui/view/j;->aa:[F

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alensw/ui/view/j;->ab:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/j;->f:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/j;->g:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/j;->h:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/j;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0, v4}, Lcom/alensw/ui/view/j;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/alensw/ui/view/j;->ai:F

    iget v1, p0, Lcom/alensw/ui/view/j;->ai:F

    const/high16 v3, 0x41c00000    # 24.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/alensw/ui/view/j;->ac:I

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alensw/ui/view/j;->y:I

    const v1, 0x7f070049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alensw/ui/view/j;->z:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/alensw/ui/view/j;->M:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/alensw/ui/view/j;->N:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/alensw/ui/view/j;->O:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/alensw/ui/view/j;->O:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/alensw/ui/view/j;->O:Landroid/graphics/Paint;

    iget v3, p0, Lcom/alensw/ui/view/j;->ai:F

    const/high16 v4, 0x41900000    # 18.0f

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const v1, 0x7f0a0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alensw/ui/view/j;->aj:Ljava/lang/String;

    const v1, 0x7f0a0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/view/j;->ak:Ljava/lang/String;

    new-instance v0, Lcom/alensw/ui/view/cc;

    invoke-direct {v0}, Lcom/alensw/ui/view/cc;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/j;->L:Landroid/view/animation/Interpolator;

    sget v0, Lcom/alensw/PicFolder/QuickApp;->i:I

    iput v0, p0, Lcom/alensw/ui/view/j;->ad:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alensw/ui/view/j;->ae:F

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alensw/ui/view/j;->af:F

    iget v0, p0, Lcom/alensw/ui/view/j;->af:F

    iput v0, p0, Lcom/alensw/ui/view/j;->ag:F

    iget v0, p0, Lcom/alensw/ui/view/j;->ai:F

    const/high16 v1, 0x43800000    # 256.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/alensw/ui/view/j;->ah:F

    return-void
.end method

.method private a()F
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    iget v0, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v0, v0

    sub-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    iget v0, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    move v5, v0

    move v0, v2

    move v2, v5

    :goto_0
    cmpl-float v3, v0, v1

    if-lez v3, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lcom/alensw/ui/view/j;->A:I

    :goto_1
    return v0

    :cond_0
    iget v0, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/alensw/ui/view/j;->A:I

    iget v0, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v0, v0

    sub-float v0, v2, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/ui/view/j;->A:I

    move v0, v1

    goto :goto_1

    :cond_2
    move v5, v0

    move v0, v2

    move v2, v5

    goto :goto_0
.end method

.method static synthetic a(Lcom/alensw/ui/view/j;)Lcom/alensw/b/h/j;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    return-object v0
.end method

.method static synthetic a(Lcom/alensw/ui/view/j;Lcom/alensw/b/h/j;)Lcom/alensw/b/h/j;
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    return-object p1
.end method

.method private a(Landroid/graphics/Canvas;Lcom/alensw/b/h/j;Landroid/graphics/Matrix;Landroid/graphics/RectF;Z)V
    .locals 11

    invoke-virtual {p2}, Lcom/alensw/b/h/j;->d()Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v0, p0, Lcom/alensw/ui/view/j;->e:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/alensw/ui/view/j;->f:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v1, p2, Lcom/alensw/b/h/j;->b:Lcom/alensw/b/h/i;

    iget v8, v1, Lcom/alensw/b/h/i;->d:I

    if-eqz v0, :cond_5

    if-eq v0, p1, :cond_5

    const/4 v1, 0x1

    :goto_0
    rem-int/lit16 v2, v8, 0xb4

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p2}, Lcom/alensw/b/h/j;->i()Z

    move-result v9

    iget v3, p0, Lcom/alensw/ui/view/j;->i:I

    if-gt v4, v3, :cond_0

    iget v3, p0, Lcom/alensw/ui/view/j;->j:I

    if-le v5, v3, :cond_7

    :cond_0
    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_1

    if-eqz p5, :cond_1

    iget v10, p0, Lcom/alensw/ui/view/j;->i:I

    shr-int/lit8 v10, v10, 0x1

    if-le v4, v10, :cond_1

    iget v10, p0, Lcom/alensw/ui/view/j;->j:I

    shr-int/lit8 v10, v10, 0x1

    if-le v5, v10, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v2, :cond_8

    if-eqz p5, :cond_2

    if-eqz v3, :cond_8

    :cond_2
    if-eqz v1, :cond_8

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/alensw/ui/view/j;->D:I

    iget v4, p0, Lcom/alensw/ui/view/j;->C:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    if-nez v9, :cond_3

    iget-boolean v1, p0, Lcom/alensw/ui/view/j;->H:Z

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/alensw/ui/view/j;->D:I

    int-to-float v3, v3

    iget v4, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/alensw/ui/view/j;->N:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    invoke-virtual {v7, p3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    rsub-int v1, v8, 0x168

    int-to-float v1, v1

    iget v2, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/alensw/ui/view/j;->D:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v7, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget v1, p0, Lcom/alensw/ui/view/j;->D:I

    iget v2, p0, Lcom/alensw/ui/view/j;->C:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/alensw/ui/view/j;->C:I

    iget v3, p0, Lcom/alensw/ui/view/j;->D:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, p0, Lcom/alensw/ui/view/j;->M:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    iget v1, p0, Lcom/alensw/ui/view/j;->D:I

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/alensw/ui/view/j;->C:I

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    int-to-float v1, v8

    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget v1, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/alensw/ui/view/j;->D:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, p0, Lcom/alensw/ui/view/j;->d:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :goto_3
    return-void

    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_8
    if-eqz p5, :cond_b

    if-eqz v3, :cond_b

    if-eqz v1, :cond_b

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/alensw/ui/view/j;->C:I

    iget v4, p0, Lcom/alensw/ui/view/j;->D:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    if-nez v9, :cond_9

    iget-boolean v1, p0, Lcom/alensw/ui/view/j;->H:Z

    if-eqz v1, :cond_a

    :cond_9
    iget-object v1, p0, Lcom/alensw/ui/view/j;->N:Landroid/graphics/Paint;

    invoke-virtual {v0, p4, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_a
    iget-object v1, p0, Lcom/alensw/ui/view/j;->M:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/alensw/ui/view/j;->d:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    :cond_b
    if-eqz v9, :cond_c

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v4

    int-to-float v4, v5

    iget-object v5, p0, Lcom/alensw/ui/view/j;->N:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c
    iget-object v0, p0, Lcom/alensw/ui/view/j;->M:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_3
.end method

.method private a(Landroid/graphics/Canvas;Lcom/alensw/b/h/j;Landroid/graphics/RectF;)V
    .locals 5

    invoke-virtual {p2}, Lcom/alensw/b/h/j;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->O:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alensw/ui/view/j;->z:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/alensw/ui/view/j;->ak:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/alensw/ui/view/j;->O:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/alensw/ui/view/j;->O:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/j;->O:Landroid/graphics/Paint;

    const v1, 0x30808080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/alensw/ui/view/j;->O:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Lcom/alensw/b/h/j;ZF)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->h:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alensw/ui/view/j;->D:I

    int-to-float v2, v2

    const/4 v3, 0x1

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/alensw/b/h/j;->a(Landroid/graphics/Matrix;FFI)V

    iget-object v0, p0, Lcom/alensw/ui/view/j;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, p4, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p2}, Lcom/alensw/b/h/j;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->g:Landroid/graphics/RectF;

    iget v1, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v1, v1

    add-float/2addr v1, p4

    iget v2, p0, Lcom/alensw/ui/view/j;->D:I

    int-to-float v2, v2

    invoke-virtual {v0, p4, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    iget-object v0, p0, Lcom/alensw/ui/view/j;->g:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p2}, Lcom/alensw/b/h/j;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/alensw/ui/view/j;->h:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/alensw/ui/view/j;->g:Landroid/graphics/RectF;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alensw/ui/view/j;->a(Landroid/graphics/Canvas;Lcom/alensw/b/h/j;Landroid/graphics/Matrix;Landroid/graphics/RectF;Z)V

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/j;->h:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alensw/ui/view/j;->g:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, v1}, Lcom/alensw/b/h/j;->a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/view/j;->g:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, v0}, Lcom/alensw/ui/view/j;->a(Landroid/graphics/Canvas;Lcom/alensw/b/h/j;Landroid/graphics/RectF;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alensw/ui/view/j;)Landroid/support/v4/widget/k;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->m:Landroid/support/v4/widget/k;

    return-object v0
.end method

.method static synthetic c(Lcom/alensw/ui/view/j;)Lcom/alensw/b/h/j;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    return-object v0
.end method


# virtual methods
.method public a(FF)F
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getPictureType()I

    move-result v0

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->k()[F

    move-result-object v4

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getScaleRanges()[F

    move-result-object v5

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getTransScale()F

    move-result v3

    move v1, v2

    move v0, v3

    :goto_1
    const/4 v6, 0x3

    if-ge v1, v6, :cond_1

    iget v0, p0, Lcom/alensw/ui/view/j;->B:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alensw/ui/view/j;->B:I

    iget v0, p0, Lcom/alensw/ui/view/j;->B:I

    aget v0, v4, v0

    sub-float v6, v0, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3d4ccccd    # 0.05f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    aget v6, v5, v2

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_4

    :cond_1
    cmpl-float v1, v0, v3

    if-nez v1, :cond_2

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v0, v3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    :cond_2
    cmpl-float v1, v0, v3

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/alensw/ui/view/j;->ad:I

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/alensw/ui/view/j;->b(FFFI)V

    :cond_3
    div-float/2addr v0, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public a(Landroid/graphics/Bitmap$Config;)Lcom/alensw/b/h/j;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getClipRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/alensw/b/h/b;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget v3, v0, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, v2, v5, v5}, Lcom/alensw/ui/view/j;->a(Landroid/graphics/Canvas;ZZ)V

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v0, Lcom/alensw/b/h/j;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/alensw/b/h/j;-><init>(Landroid/graphics/Bitmap;I)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/j;->S:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->j()V

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->invalidate()V

    iget-boolean v0, p0, Lcom/alensw/ui/view/j;->I:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->K:Lcom/alensw/ui/view/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->K:Lcom/alensw/ui/view/q;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/alensw/ui/view/q;->a(FZ)V

    :cond_0
    return-void
.end method

.method public a(FFFFFFILjava/lang/Runnable;)V
    .locals 20

    sub-float v11, p2, p1

    sub-float v14, p4, p3

    const/4 v2, 0x0

    cmpl-float v2, p4, v2

    if-lez v2, :cond_4

    const/16 v2, 0x2d

    :goto_0
    int-to-float v2, v2

    add-float v2, v2, p4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v17, v2, 0x5a

    new-instance v9, Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/ui/view/j;->S:Landroid/graphics/Matrix;

    invoke-direct {v9, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    cmpl-float v2, p1, p2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/ui/view/j;->S:Landroid/graphics/Matrix;

    div-float v3, p2, p1

    div-float v4, p2, p1

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_0
    cmpl-float v2, p3, p4

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/ui/view/j;->S:Landroid/graphics/Matrix;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v14, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alensw/ui/view/j;->j()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alensw/ui/view/j;->c(F)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float v15, v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float v16, v2, v3

    cmpl-float v2, p1, p2

    if-eqz v2, :cond_5

    const/4 v6, 0x1

    :goto_1
    cmpl-float v2, p3, p4

    if-eqz v2, :cond_6

    const/4 v7, 0x1

    :goto_2
    const/4 v2, 0x0

    cmpl-float v2, v15, v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    cmpl-float v2, v16, v2

    if-eqz v2, :cond_7

    :cond_2
    const/4 v8, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    invoke-virtual {v2}, Lcom/alensw/ui/view/bt;->c()V

    :cond_3
    new-instance v2, Lcom/alensw/ui/view/p;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/ui/view/j;->L:Landroid/view/animation/Interpolator;

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move/from16 v10, p1

    move/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v18, p8

    move/from16 v19, p2

    invoke-direct/range {v2 .. v19}, Lcom/alensw/ui/view/p;-><init>(Lcom/alensw/ui/view/j;Landroid/view/View;Landroid/view/animation/Interpolator;ZZZLandroid/graphics/Matrix;FFFFFFFILjava/lang/Runnable;F)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    move/from16 v0, p7

    int-to-long v4, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v5, v3}, Lcom/alensw/ui/view/bt;->a(JZ)V

    return-void

    :cond_4
    const/16 v2, -0x2d

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public a(FFFLjava/lang/Runnable;)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3fa00000    # 1.25f

    const v2, 0x3ecccccd    # 0.4f

    const/4 v6, 0x0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v3, v5, v6

    if-lez v3, :cond_1

    div-float/2addr v0, v5

    div-float/2addr v0, v8

    mul-float/2addr v0, v7

    move v3, v0

    :goto_0
    cmpl-float v0, v5, v6

    if-lez v0, :cond_2

    div-float v0, v4, v5

    div-float/2addr v0, v8

    mul-float/2addr v0, v7

    :goto_1
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    cmpg-float v3, v0, v2

    if-gez v3, :cond_3

    move v1, v2

    :cond_0
    :goto_2
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/alensw/ui/view/j;->a(FFILjava/lang/Runnable;)V

    return-void

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    cmpl-float v2, v0, v1

    if-gtz v2, :cond_0

    move v1, v0

    goto :goto_2
.end method

.method public a(FFILjava/lang/Runnable;)V
    .locals 7

    iget-object v0, p0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bt;->c()V

    :cond_0
    new-instance v0, Lcom/alensw/ui/view/k;

    iget-object v3, p0, Lcom/alensw/ui/view/j;->L:Landroid/view/animation/Interpolator;

    move-object v1, p0

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alensw/ui/view/k;-><init>(Lcom/alensw/ui/view/j;Landroid/view/View;Landroid/view/animation/Interpolator;FFLjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    iget-object v0, p0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    int-to-long v2, p3

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/alensw/ui/view/bt;->a(JZ)V

    return-void
.end method

.method public a(FZFFILjava/lang/Runnable;)V
    .locals 9

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getTransRotation()F

    move-result v3

    cmpl-float v0, p1, v7

    if-lez v0, :cond_3

    const/16 v0, 0x2d

    :goto_0
    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v2, v0, 0x5a

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getScaleRanges()[F

    move-result-object v4

    rem-int/lit16 v0, v2, 0xb4

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/view/j;->ab:[F

    iget-object v1, p0, Lcom/alensw/ui/view/j;->R:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-static {v0}, Lcom/alensw/b/h/j;->a([F)F

    move-result v1

    iget-object v5, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    invoke-virtual {v5, v2}, Lcom/alensw/b/h/j;->c(I)I

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->i()V

    iget-object v5, p0, Lcom/alensw/ui/view/j;->R:Landroid/graphics/Matrix;

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-static {v0}, Lcom/alensw/b/h/j;->a([F)F

    move-result v0

    iget-object v5, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    neg-int v2, v2

    invoke-virtual {v5, v2}, Lcom/alensw/b/h/j;->c(I)I

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->i()V

    cmpl-float v2, v1, v7

    if-lez v2, :cond_2

    aget v2, v4, v6

    mul-float/2addr v2, v0

    div-float/2addr v2, v1

    aput v2, v4, v6

    :cond_2
    move v2, v1

    :goto_1
    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getTransScale()F

    move-result v1

    if-eqz p2, :cond_4

    div-float v2, v0, v2

    :goto_2
    move-object v0, p0

    move v4, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/alensw/ui/view/j;->a(FFFFFFILjava/lang/Runnable;)V

    return-void

    :cond_3
    const/16 v0, -0x2d

    goto :goto_0

    :cond_4
    aget v0, v4, v6

    const/4 v2, 0x1

    aget v2, v4, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_2

    :cond_5
    move v0, v1

    move v2, v1

    goto :goto_1
.end method

.method public a(IZ)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->k()[F

    move-result-object v0

    if-ltz p1, :cond_0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->k()[F

    move-result-object v0

    aget v0, v0, p1

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getTransScale()F

    move-result v1

    iput p1, p0, Lcom/alensw/ui/view/j;->B:I

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    iget v1, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v2, p0, Lcom/alensw/ui/view/j;->D:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v3, p0, Lcom/alensw/ui/view/j;->ad:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alensw/ui/view/j;->b(FFFI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v2, p0, Lcom/alensw/ui/view/j;->D:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/alensw/ui/view/j;->b(FFF)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/j;->c(F)Z

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Canvas;ZZ)V
    .locals 7

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    iget v0, v0, Lcom/alensw/b/h/j;->d:I

    :goto_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    invoke-virtual {v1}, Lcom/alensw/b/h/j;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    iget-object v3, p0, Lcom/alensw/ui/view/j;->V:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alensw/ui/view/j;->a(Landroid/graphics/Canvas;Lcom/alensw/b/h/j;Landroid/graphics/Matrix;Landroid/graphics/RectF;Z)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    iget-object v2, p0, Lcom/alensw/ui/view/j;->V:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    iget-object v4, p0, Lcom/alensw/ui/view/j;->T:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/alensw/ui/view/j;->M:Landroid/graphics/Paint;

    move-object v1, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/alensw/b/h/j;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/alensw/b/h/j;Landroid/graphics/Matrix;Landroid/graphics/Paint;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    iget-object v3, p0, Lcom/alensw/ui/view/j;->T:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alensw/ui/view/j;->a(Landroid/graphics/Canvas;Lcom/alensw/b/h/j;Landroid/graphics/Matrix;Landroid/graphics/RectF;Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    iget-object v1, p0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0, v1}, Lcom/alensw/ui/view/j;->a(Landroid/graphics/Canvas;Lcom/alensw/b/h/j;Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alensw/ui/view/j;->O:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alensw/ui/view/j;->y:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/alensw/ui/view/j;->aj:Ljava/lang/String;

    iget-object v1, p0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/alensw/ui/view/j;->O:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/alensw/ui/view/j;->O:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public a(Lcom/alensw/b/h/j;Z)V
    .locals 10

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/alensw/b/h/j;->i:Landroid/net/Uri;

    :goto_0
    iget-object v1, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v1, :cond_0

    if-nez p1, :cond_8

    :cond_0
    move v1, v3

    :goto_1
    or-int/2addr v1, p2

    iget-object v4, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    invoke-virtual {v4, v0}, Lcom/alensw/b/h/j;->a(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    invoke-virtual {v4}, Lcom/alensw/b/h/j;->m()I

    iput-object v5, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    :cond_1
    iget-object v4, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    invoke-virtual {v4, v0}, Lcom/alensw/b/h/j;->a(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    invoke-virtual {v0, v3}, Lcom/alensw/b/h/j;->a(Z)V

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    iput-object v5, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    :cond_2
    if-eqz p1, :cond_5

    iget v0, p1, Lcom/alensw/b/h/j;->d:I

    if-gt v0, v3, :cond_9

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    iget v0, v0, Lcom/alensw/b/h/j;->d:I

    iget v4, p1, Lcom/alensw/b/h/j;->d:I

    if-ge v0, v4, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    :cond_4
    invoke-virtual {p1}, Lcom/alensw/b/h/j;->c()Lcom/alensw/b/h/j;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    :cond_5
    :goto_2
    if-eqz v1, :cond_d

    iget-object v0, p0, Lcom/alensw/ui/view/j;->S:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iput v2, p0, Lcom/alensw/ui/view/j;->B:I

    invoke-virtual {p0, v3}, Lcom/alensw/ui/view/j;->b(Z)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_0

    :cond_8
    move v1, v2

    goto :goto_1

    :cond_9
    iget v0, p1, Lcom/alensw/b/h/j;->d:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_b

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    :cond_a
    invoke-virtual {p1}, Lcom/alensw/b/h/j;->c()Lcom/alensw/b/h/j;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    :cond_c
    invoke-virtual {p1}, Lcom/alensw/b/h/j;->c()Lcom/alensw/b/h/j;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v4, p0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v6, v4, Landroid/graphics/RectF;->left:F

    iget v7, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v2}, Lcom/alensw/ui/view/j;->b(Z)V

    iget v1, p0, Lcom/alensw/ui/view/j;->D:I

    int-to-float v1, v1

    sub-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v8, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v8, v8

    sub-float v8, v0, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v1, v1, v8

    if-gez v1, :cond_e

    :goto_4
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, v0, v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v0, v5, v0

    if-eqz v3, :cond_f

    :goto_5
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alensw/ui/view/j;->a(FFF)V

    if-eqz v3, :cond_10

    iget v0, v4, Landroid/graphics/RectF;->top:F

    sub-float v0, v7, v0

    invoke-virtual {p0, v9, v0}, Lcom/alensw/ui/view/j;->b(FF)V

    goto/16 :goto_3

    :cond_e
    move v3, v2

    goto :goto_4

    :cond_f
    move v0, v1

    goto :goto_5

    :cond_10
    iget v0, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v6, v0

    invoke-virtual {p0, v0, v9}, Lcom/alensw/ui/view/j;->b(FF)V

    goto/16 :goto_3
.end method

.method public a(ZLjava/lang/Runnable;)V
    .locals 11

    const/high16 v1, 0x40000000    # 2.0f

    iget v0, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v0, v0

    div-float v7, v0, v1

    iget v0, p0, Lcom/alensw/ui/view/j;->D:I

    int-to-float v0, v0

    div-float v8, v0, v1

    new-instance v4, Landroid/graphics/Camera;

    invoke-direct {v4}, Landroid/graphics/Camera;-><init>()V

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    new-instance v9, Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/alensw/ui/view/j;->S:Landroid/graphics/Matrix;

    invoke-direct {v9, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bt;->c()V

    :cond_0
    new-instance v0, Lcom/alensw/ui/view/o;

    iget-object v3, p0, Lcom/alensw/ui/view/j;->L:Landroid/view/animation/Interpolator;

    move-object v1, p0

    move-object v2, p0

    move v5, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/alensw/ui/view/o;-><init>(Lcom/alensw/ui/view/j;Landroid/view/View;Landroid/view/animation/Interpolator;Landroid/graphics/Camera;ZLandroid/graphics/Matrix;FFLandroid/graphics/Matrix;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    iget-object v0, p0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    iget v1, p0, Lcom/alensw/ui/view/j;->ad:I

    int-to-long v2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/alensw/ui/view/bt;->a(JZ)V

    return-void
.end method

.method public a(F)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/alensw/ui/view/j;->a()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/alensw/ui/view/j;->ac:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v4, v4

    if-eq v0, v4, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    cmpl-float v0, p1, v5

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    neg-int v4, v0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->K:Lcom/alensw/ui/view/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->K:Lcom/alensw/ui/view/q;

    invoke-interface {v0, v4}, Lcom/alensw/ui/view/q;->a(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iput v2, p0, Lcom/alensw/ui/view/j;->A:I

    invoke-virtual {p0, p1}, Lcom/alensw/ui/view/j;->c(F)Z

    goto :goto_0

    :cond_2
    cmpg-float v0, p1, v5

    if-gez v0, :cond_3

    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    invoke-virtual {v0, v1}, Lcom/alensw/b/h/j;->a(Z)V

    :cond_5
    iget-object v0, p0, Lcom/alensw/ui/view/j;->K:Lcom/alensw/ui/view/q;

    invoke-interface {v0, v4, v1}, Lcom/alensw/ui/view/q;->a(IZ)Lcom/alensw/b/h/j;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    :cond_6
    iput-boolean v1, p0, Lcom/alensw/ui/view/j;->G:Z

    iput v4, p0, Lcom/alensw/ui/view/j;->A:I

    cmpg-float v0, p1, v5

    if-gez v0, :cond_7

    iget v0, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v0, v0

    sub-float v0, v3, v0

    iget v2, p0, Lcom/alensw/ui/view/j;->ac:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    :goto_2
    new-instance v2, Lcom/alensw/ui/view/l;

    invoke-direct {v2, p0, v4}, Lcom/alensw/ui/view/l;-><init>(Lcom/alensw/ui/view/j;I)V

    invoke-virtual {p0, v0, v5, p1, v2}, Lcom/alensw/ui/view/j;->a(FFFLjava/lang/Runnable;)V

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v0, v0

    sub-float/2addr v0, v3

    iget v2, p0, Lcom/alensw/ui/view/j;->ac:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    goto :goto_2
.end method

.method public b(FF)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->S:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->j()V

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->invalidate()V

    return-void
.end method

.method public b(FFF)V
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getTransScale()F

    move-result v0

    div-float v0, p1, v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/alensw/ui/view/j;->a(FFF)V

    return-void
.end method

.method public b(FFFI)V
    .locals 9

    iget v0, p0, Lcom/alensw/ui/view/j;->ad:I

    if-le p4, v0, :cond_1

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getTransScale()F

    move-result v4

    sub-float v5, p1, v4

    iget-object v0, p0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bt;->c()V

    :cond_0
    new-instance v0, Lcom/alensw/ui/view/n;

    iget-object v3, p0, Lcom/alensw/ui/view/j;->L:Landroid/view/animation/Interpolator;

    move-object v1, p0

    move-object v2, p0

    move v6, p2

    move v7, p3

    move v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/alensw/ui/view/n;-><init>(Lcom/alensw/ui/view/j;Landroid/view/View;Landroid/view/animation/Interpolator;FFFFF)V

    iput-object v0, p0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    iget-object v0, p0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    int-to-long v2, p4

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/alensw/ui/view/bt;->a(JZ)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getTransRotation()F

    move-result v3

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getTransScale()F

    move-result v1

    const/4 v8, 0x0

    move-object v0, p0

    move v2, p1

    move v4, v3

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/alensw/ui/view/j;->a(FFFFFFILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 7

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getTransRotation()F

    move-result v0

    int-to-float v1, p1

    add-float/2addr v1, v0

    const/4 v2, 0x0

    iget v0, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v0, v0

    div-float v3, v0, v4

    iget v0, p0, Lcom/alensw/ui/view/j;->D:I

    int-to-float v0, v0

    div-float v4, v0, v4

    iget v5, p0, Lcom/alensw/ui/view/j;->ad:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alensw/ui/view/j;->a(FZFFILjava/lang/Runnable;)V

    return-void
.end method

.method public b(II)V
    .locals 1

    iput p1, p0, Lcom/alensw/ui/view/j;->y:I

    iget-object v0, p0, Lcom/alensw/ui/view/j;->N:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->invalidate()V

    return-void
.end method

.method public b(Landroid/graphics/RectF;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    iget-object v1, p0, Lcom/alensw/ui/view/j;->U:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p1}, Lcom/alensw/b/h/j;->a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    iget-object v1, p0, Lcom/alensw/ui/view/j;->R:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p1}, Lcom/alensw/b/h/j;->a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->i()V

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->j()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->invalidate()V

    :cond_0
    return-void
.end method

.method public b(F)Z
    .locals 3

    invoke-direct {p0}, Lcom/alensw/ui/view/j;->a()F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/alensw/ui/view/j;->ah:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p0, Lcom/alensw/ui/view/j;->A:I

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/alensw/ui/view/j;->E:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/alensw/ui/view/j;->A:I

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/j;->a(F)Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/alensw/ui/view/j;->c(F)Z

    move-result v0

    goto :goto_1
.end method

.method public c(FF)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/alensw/ui/view/j;->Q:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    if-gtz v3, :cond_0

    move p2, v0

    :cond_0
    iget-object v3, p0, Lcom/alensw/ui/view/j;->K:Lcom/alensw/ui/view/q;

    if-nez v3, :cond_1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    if-gtz v1, :cond_1

    move p1, v0

    :cond_1
    cmpl-float v1, p1, v0

    if-nez v1, :cond_2

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/alensw/ui/view/j;->b(FF)V

    :cond_3
    return-void
.end method

.method public c(FFF)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/ui/view/j;->H:Z

    iget-object v0, p0, Lcom/alensw/ui/view/j;->S:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->j()V

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->invalidate()V

    return-void
.end method

.method public c(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->e:Landroid/graphics/Canvas;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/view/j;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/view/j;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getClipRect()Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, p0, Lcom/alensw/ui/view/j;->c:Landroid/graphics/RectF;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    iget-object v1, p0, Lcom/alensw/ui/view/j;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p0, v0, v2, v2}, Lcom/alensw/ui/view/j;->a(Landroid/graphics/Canvas;ZZ)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/ui/view/j;->c:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->invalidate()V

    goto :goto_0
.end method

.method public c(F)Z
    .locals 11

    const v10, 0x3c23d70a    # 0.01f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/alensw/ui/view/j;->Q:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpg-float v7, v0, v2

    if-gtz v7, :cond_1

    iget v7, v3, Landroid/graphics/RectF;->left:F

    iget v8, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    sub-float v0, v2, v0

    div-float/2addr v0, v9

    add-float/2addr v0, v7

    move v2, v0

    :goto_0
    cmpg-float v0, v5, v6

    if-gtz v0, :cond_3

    iget v0, v3, Landroid/graphics/RectF;->top:F

    iget v3, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v3

    sub-float v3, v6, v5

    div-float/2addr v3, v9

    add-float/2addr v0, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v10

    if-gtz v3, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v10

    if-lez v3, :cond_6

    :cond_0
    cmpl-float v1, p1, v1

    if-eqz v1, :cond_5

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/alensw/ui/view/j;->ag:F

    mul-float/2addr v4, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v1, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/alensw/ui/view/j;->a(FFFLjava/lang/Runnable;)V

    :goto_2
    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_1
    iget v0, v4, Landroid/graphics/RectF;->left:F

    iget v2, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget v0, v3, Landroid/graphics/RectF;->left:F

    iget v2, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    move v2, v0

    goto :goto_0

    :cond_2
    iget v0, v4, Landroid/graphics/RectF;->right:F

    iget v2, v3, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_8

    iget v0, v3, Landroid/graphics/RectF;->right:F

    iget v2, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    move v2, v0

    goto :goto_0

    :cond_3
    iget v0, v4, Landroid/graphics/RectF;->top:F

    iget v5, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4

    iget v0, v3, Landroid/graphics/RectF;->top:F

    iget v3, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v3

    goto :goto_1

    :cond_4
    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_7

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    iget v3, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v3

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v2, v0}, Lcom/alensw/ui/view/j;->b(FF)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->invalidate()V

    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    move v2, v1

    goto :goto_0
.end method

.method public d(Z)F
    .locals 7

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getPictureType()I

    move-result v0

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getScaleRanges()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getTransScale()F

    move-result v2

    iget v0, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v0, v0

    div-float v3, v0, v4

    iget v0, p0, Lcom/alensw/ui/view/j;->D:I

    int-to-float v0, v0

    div-float v4, v0, v4

    if-eqz p1, :cond_2

    const v0, 0x3fb504f3

    :goto_1
    mul-float v5, v2, v0

    const/4 v6, 0x1

    aget v6, v1, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_3

    invoke-virtual {p0, v0, v3, v4}, Lcom/alensw/ui/view/j;->a(FFF)V

    invoke-virtual {p0, v3, v4}, Lcom/alensw/ui/view/j;->e(FF)V

    :cond_1
    :goto_2
    div-float v0, v5, v2

    goto :goto_0

    :cond_2
    const v0, 0x3f3504f3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    aget v1, v1, v6

    cmpg-float v1, v5, v1

    if-gez v1, :cond_4

    invoke-virtual {p0, v0, v3, v4}, Lcom/alensw/ui/view/j;->a(FFF)V

    invoke-virtual {p0, v3, v4}, Lcom/alensw/ui/view/j;->e(FF)V

    goto :goto_2

    :cond_4
    cmpl-float v0, v5, v2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alensw/ui/view/j;->ad:I

    invoke-virtual {p0, v5, v3, v4, v0}, Lcom/alensw/ui/view/j;->b(FFFI)V

    goto :goto_2
.end method

.method public d(FF)Z
    .locals 11

    iget-object v4, p0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v9, v2

    iget v2, p0, Lcom/alensw/ui/view/j;->D:I

    int-to-float v10, v2

    sub-float/2addr v0, v9

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v7, v0

    sub-float v0, v1, v10

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v8, v0

    iget v0, v4, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/alensw/ui/view/j;->ah:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    if-eqz v8, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/alensw/ui/view/j;->a(F)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget v0, v4, Landroid/graphics/RectF;->right:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    float-to-double v2, v9

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/alensw/ui/view/j;->ah:F

    neg-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_3

    if-eqz v8, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/alensw/ui/view/j;->a(F)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    float-to-double v0, p1

    float-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    if-nez v7, :cond_4

    const/4 p1, 0x0

    :cond_4
    if-nez v8, :cond_5

    const/4 p2, 0x0

    :cond_5
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_6

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/j;->b(F)Z

    move-result v0

    goto :goto_0

    :cond_6
    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    neg-int v5, v0

    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, p2

    float-to-int v0, v0

    neg-int v6, v0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bt;->c()V

    :cond_7
    iget-object v0, p0, Lcom/alensw/ui/view/j;->m:Landroid/support/v4/widget/k;

    if-nez v0, :cond_8

    new-instance v0, Landroid/support/v4/widget/k;

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alensw/ui/view/j;->m:Landroid/support/v4/widget/k;

    :cond_8
    new-instance v0, Lcom/alensw/ui/view/m;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v10}, Lcom/alensw/ui/view/m;-><init>(Lcom/alensw/ui/view/j;Landroid/view/View;Landroid/view/animation/Interpolator;Landroid/graphics/RectF;IIIIFF)V

    iput-object v0, p0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    iget-object v0, p0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/alensw/ui/view/bt;->a(JZ)V

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public e(FF)V
    .locals 4

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getScaleRanges()[F

    move-result-object v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getTransScale()F

    move-result v1

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alensw/ui/view/j;->ad:I

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/alensw/ui/view/j;->b(FFFI)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->l()Z

    goto :goto_0
.end method

.method public e()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    iget v2, v2, Lcom/alensw/b/h/j;->d:I

    if-gt v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public f()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/j;->c(Z)V

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    iget v1, p0, Lcom/alensw/ui/view/j;->C:I

    iget v2, p0, Lcom/alensw/ui/view/j;->D:I

    iget-object v3, p0, Lcom/alensw/ui/view/j;->V:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alensw/b/h/j;->a(IILandroid/graphics/Matrix;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    iget-object v1, p0, Lcom/alensw/ui/view/j;->N:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, v1}, Lcom/alensw/b/h/j;->a(Landroid/view/View;Landroid/graphics/Paint;)Z

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->invalidate()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->h()V

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    iget v0, v0, Lcom/alensw/b/h/j;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->g()I

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    invoke-virtual {v1}, Lcom/alensw/b/h/j;->h()I

    move-result v1

    mul-int/2addr v0, v1

    const/high16 v1, 0x300000

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/alensw/ui/view/j;->c(Z)V

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lcom/alensw/ui/view/j;->c(Z)V

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    invoke-virtual {v0, v2}, Lcom/alensw/b/h/j;->a(Z)V

    goto :goto_0
.end method

.method public getClipRect()Landroid/graphics/RectF;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alensw/ui/view/j;->D:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getRootView()Landroid/view/View;

    move-result-object v1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_0
    iget-object v1, p0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public getFullPicture()Lcom/alensw/b/h/j;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->c()Lcom/alensw/b/h/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    iget-object v0, v0, Lcom/alensw/b/h/j;->h:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    iget-object v0, v0, Lcom/alensw/b/h/j;->h:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getPicture()Lcom/alensw/b/h/j;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->c()Lcom/alensw/b/h/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPictureDuration()J
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->b()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->b()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getPictureHeight()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->h()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->h()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPictureRotation()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    iget-object v0, v0, Lcom/alensw/b/h/j;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->d:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    iget-object v0, v0, Lcom/alensw/b/h/j;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->d:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x168

    goto :goto_0
.end method

.method public getPictureType()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    iget v0, v0, Lcom/alensw/b/h/j;->d:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    iget v0, v0, Lcom/alensw/b/h/j;->d:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPictureUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    iget-object v0, v0, Lcom/alensw/b/h/j;->i:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    iget-object v0, v0, Lcom/alensw/b/h/j;->i:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getPictureWidth()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->g()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->g()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScaleRanges()[F
    .locals 6

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->k()[F

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/view/j;->aa:[F

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v1, v5

    iget-object v1, p0, Lcom/alensw/ui/view/j;->aa:[F

    const/4 v2, 0x1

    aget v3, v0, v4

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    aget v0, v0, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v1, v2

    iget-object v0, p0, Lcom/alensw/ui/view/j;->aa:[F

    return-object v0
.end method

.method public getTransRotation()F
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getTransValues()[F

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/h/j;->b([F)F

    move-result v0

    return v0
.end method

.method public getTransScale()F
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getTransValues()[F

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/h/j;->a([F)F

    move-result v0

    return v0
.end method

.method public getTransValues()[F
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/j;->S:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alensw/ui/view/j;->ab:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/alensw/ui/view/j;->ab:[F

    return-object v0
.end method

.method public h()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bt;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    :cond_0
    iget-boolean v0, p0, Lcom/alensw/ui/view/j;->G:Z

    iput-boolean v1, p0, Lcom/alensw/ui/view/j;->F:Z

    iput-boolean v1, p0, Lcom/alensw/ui/view/j;->G:Z

    iput-boolean v1, p0, Lcom/alensw/ui/view/j;->I:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/j;->c(F)Z

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->invalidate()V

    goto :goto_0
.end method

.method protected i()V
    .locals 5

    const/4 v4, 0x1

    iget v0, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alensw/ui/view/j;->D:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    invoke-virtual {v2}, Lcom/alensw/b/h/j;->k()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    iget-object v3, p0, Lcom/alensw/ui/view/j;->R:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/alensw/b/h/j;->a(Landroid/graphics/Matrix;FFI)V

    :goto_0
    iget-object v2, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    iget-object v2, v2, Lcom/alensw/b/h/j;->b:Lcom/alensw/b/h/i;

    iget-object v3, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    iget-object v3, v3, Lcom/alensw/b/h/j;->b:Lcom/alensw/b/h/i;

    iget v3, v3, Lcom/alensw/b/h/i;->d:I

    iput v3, v2, Lcom/alensw/b/h/i;->d:I

    iget-object v2, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    invoke-virtual {v2}, Lcom/alensw/b/h/j;->e()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    invoke-virtual {v3}, Lcom/alensw/b/h/j;->e()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/alensw/ui/view/j;->k:F

    iget-object v2, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    invoke-virtual {v2}, Lcom/alensw/b/h/j;->f()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    invoke-virtual {v3}, Lcom/alensw/b/h/j;->f()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/alensw/ui/view/j;->l:F

    :cond_0
    iget-object v2, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    iget-object v3, p0, Lcom/alensw/ui/view/j;->U:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/alensw/b/h/j;->a(Landroid/graphics/Matrix;FFI)V

    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/alensw/ui/view/j;->R:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/view/j;->U:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    goto :goto_1
.end method

.method protected j()V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->V:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alensw/ui/view/j;->U:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/alensw/ui/view/j;->V:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alensw/ui/view/j;->S:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    iget-object v1, p0, Lcom/alensw/ui/view/j;->V:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Lcom/alensw/b/h/j;->a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    iget v1, p0, Lcom/alensw/ui/view/j;->C:I

    iget v2, p0, Lcom/alensw/ui/view/j;->D:I

    iget-object v3, p0, Lcom/alensw/ui/view/j;->V:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alensw/b/h/j;->a(IILandroid/graphics/Matrix;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->T:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/alensw/ui/view/j;->k:F

    iget v2, p0, Lcom/alensw/ui/view/j;->l:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/alensw/ui/view/j;->T:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alensw/ui/view/j;->V:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/j;->T:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alensw/ui/view/j;->R:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/alensw/ui/view/j;->T:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alensw/ui/view/j;->S:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/view/j;->T:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alensw/ui/view/j;->R:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/alensw/ui/view/j;->T:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alensw/ui/view/j;->S:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->k()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    iget-object v1, p0, Lcom/alensw/ui/view/j;->T:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Lcom/alensw/b/h/j;->a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    iget v1, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alensw/ui/view/j;->D:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/alensw/ui/view/j;->T:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method public k()[F
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    iget v0, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v3, v0

    iget v0, p0, Lcom/alensw/ui/view/j;->D:I

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getPictureWidth()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getPictureHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v4, v2, v5

    if-lez v4, :cond_0

    cmpg-float v4, v0, v5

    if-gtz v4, :cond_1

    :cond_0
    move v0, v1

    move v2, v3

    :cond_1
    div-float v2, v3, v2

    div-float v0, v1, v0

    iget-object v1, p0, Lcom/alensw/ui/view/j;->W:[F

    const/4 v3, 0x0

    aput v6, v1, v3

    iget-object v1, p0, Lcom/alensw/ui/view/j;->W:[F

    const/4 v3, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v4, v5

    aput v4, v1, v3

    iget-object v1, p0, Lcom/alensw/ui/view/j;->W:[F

    const/4 v3, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v0, v6, v0

    aput v0, v1, v3

    iget-object v0, p0, Lcom/alensw/ui/view/j;->W:[F

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/j;->ag:F

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/j;->c(F)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->m:Landroid/support/v4/widget/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->m:Landroid/support/v4/widget/k;

    invoke-virtual {v0}, Landroid/support/v4/widget/k;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/alensw/ui/view/j;->G:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alensw/b/h/j;->a(Z)V

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    iput-object v2, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    iput-object v2, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    :cond_1
    iput-object v2, p0, Lcom/alensw/ui/view/j;->e:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/alensw/ui/view/j;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/view/j;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/alensw/ui/view/j;->d:Landroid/graphics/Bitmap;

    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/16 v1, 0x400

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bt;->d()V

    :cond_0
    sget-boolean v0, Lcom/alensw/ui/view/j;->x:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_4

    move v6, v4

    :goto_0
    if-eqz v6, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMaximumBitmapWidth()I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/j;->i:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMaximumBitmapHeight()I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/j;->j:I

    :goto_1
    iget-boolean v0, p0, Lcom/alensw/ui/view/j;->G:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alensw/ui/view/j;->I:Z

    if-nez v0, :cond_7

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/view/j;->K:Lcom/alensw/ui/view/q;

    if-eqz v0, :cond_7

    move v0, v4

    :goto_2
    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/alensw/ui/view/j;->a()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v7, p0, Lcom/alensw/ui/view/j;->ac:I

    int-to-float v7, v7

    cmpl-float v1, v1, v7

    if-lez v1, :cond_8

    move v1, v4

    :goto_3
    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    cmpl-float v0, v5, v2

    if-lez v0, :cond_9

    iget v0, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v0, v0

    sub-float v0, v5, v0

    iget v5, p0, Lcom/alensw/ui/view/j;->ac:I

    int-to-float v5, v5

    sub-float/2addr v0, v5

    :goto_4
    move v9, v1

    move v1, v0

    move v0, v9

    :goto_5
    iget-object v5, p0, Lcom/alensw/ui/view/j;->c:Landroid/graphics/RectF;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/alensw/ui/view/j;->e:Landroid/graphics/Canvas;

    if-eq p1, v5, :cond_a

    iget-object v0, p0, Lcom/alensw/ui/view/j;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->save(I)I

    iget-object v1, p0, Lcom/alensw/ui/view/j;->c:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_6
    return-void

    :cond_4
    move v6, v3

    goto :goto_0

    :cond_5
    const/16 v0, 0x800

    iput v0, p0, Lcom/alensw/ui/view/j;->i:I

    const/16 v0, 0x800

    iput v0, p0, Lcom/alensw/ui/view/j;->j:I

    goto :goto_1

    :cond_6
    iput v1, p0, Lcom/alensw/ui/view/j;->i:I

    iput v1, p0, Lcom/alensw/ui/view/j;->j:I

    goto :goto_1

    :cond_7
    move v0, v3

    goto :goto_2

    :cond_8
    move v1, v3

    goto :goto_3

    :cond_9
    iget v0, p0, Lcom/alensw/ui/view/j;->C:I

    int-to-float v0, v0

    add-float/2addr v0, v5

    iget v5, p0, Lcom/alensw/ui/view/j;->ac:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    goto :goto_4

    :cond_a
    iget-boolean v2, p0, Lcom/alensw/ui/view/j;->I:Z

    if-nez v2, :cond_b

    iget-boolean v2, p0, Lcom/alensw/ui/view/j;->G:Z

    if-eqz v2, :cond_d

    :cond_b
    move v5, v4

    :goto_7
    if-nez v6, :cond_c

    if-nez v5, :cond_e

    iget-boolean v2, p0, Lcom/alensw/ui/view/j;->F:Z

    if-nez v2, :cond_e

    :cond_c
    move v2, v4

    :goto_8
    iget-object v4, p0, Lcom/alensw/ui/view/j;->M:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v4, p0, Lcom/alensw/ui/view/j;->M:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->save(I)I

    iget-object v2, p0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p0, p1, v6, v5}, Lcom/alensw/ui/view/j;->a(Landroid/graphics/Canvas;ZZ)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/alensw/ui/view/j;->A:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/view/j;->K:Lcom/alensw/ui/view/q;

    iget v2, p0, Lcom/alensw/ui/view/j;->A:I

    invoke-interface {v0, v2}, Lcom/alensw/ui/view/q;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/view/j;->K:Lcom/alensw/ui/view/q;

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/alensw/ui/view/j;->A:I

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alensw/ui/view/j;->K:Lcom/alensw/ui/view/q;

    iget v2, p0, Lcom/alensw/ui/view/j;->A:I

    invoke-interface {v0, v2, v3}, Lcom/alensw/ui/view/q;->a(IZ)Lcom/alensw/b/h/j;

    move-result-object v0

    :goto_9
    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v0, v6, v1}, Lcom/alensw/ui/view/j;->a(Landroid/graphics/Canvas;Lcom/alensw/b/h/j;ZF)V

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    goto :goto_6

    :cond_d
    move v5, v3

    goto :goto_7

    :cond_e
    move v2, v3

    goto :goto_8

    :cond_f
    const/4 v0, 0x0

    goto :goto_9

    :cond_10
    move v0, v1

    move v1, v2

    goto/16 :goto_5

    :cond_11
    move v1, v2

    goto/16 :goto_5
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->h()V

    iget v0, p0, Lcom/alensw/ui/view/j;->C:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/alensw/ui/view/j;->D:I

    if-eq v0, p2, :cond_6

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput p1, p0, Lcom/alensw/ui/view/j;->C:I

    iput p2, p0, Lcom/alensw/ui/view/j;->D:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/alensw/ui/view/j;->E:I

    iget-object v2, p0, Lcom/alensw/ui/view/j;->Q:Landroid/graphics/RectF;

    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {v2, v7, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    if-lez p1, :cond_4

    if-lez p2, :cond_4

    sget v2, Lcom/alensw/PicFolder/QuickApp;->f:I

    rem-int/lit8 v5, v2, 0x8

    if-eqz v5, :cond_1

    rsub-int/lit8 v5, v5, 0x8

    add-int/2addr v2, v5

    :cond_1
    iget-object v5, p0, Lcom/alensw/ui/view/j;->d:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alensw/ui/view/j;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ge v5, v2, :cond_2

    iget-object v5, p0, Lcom/alensw/ui/view/j;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lcom/alensw/ui/view/j;->d:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v5, p0, Lcom/alensw/ui/view/j;->d:Landroid/graphics/Bitmap;

    if-nez v5, :cond_3

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v5}, Lcom/alensw/b/h/b;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/alensw/ui/view/j;->d:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v2, p0, Lcom/alensw/ui/view/j;->d:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/alensw/ui/view/j;->d:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    :goto_1
    iput-object v2, p0, Lcom/alensw/ui/view/j;->e:Landroid/graphics/Canvas;

    :cond_4
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v1, p0, Lcom/alensw/ui/view/j;->B:I

    iget-object v2, p0, Lcom/alensw/ui/view/j;->S:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0, v1}, Lcom/alensw/ui/view/j;->b(Z)V

    iget-object v1, p0, Lcom/alensw/ui/view/j;->P:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v2, v1, v0

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v2, :cond_8

    div-float/2addr v0, v1

    :goto_2
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->getTransScale()F

    move-result v1

    div-float/2addr v0, v1

    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alensw/ui/view/j;->a(FFF)V

    invoke-virtual {p0, v7}, Lcom/alensw/ui/view/j;->c(F)Z

    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto/16 :goto_0

    :cond_7
    move-object v2, v3

    goto :goto_1

    :cond_8
    move v0, v4

    goto :goto_2
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->invalidate()V

    return-void
.end method

.method public setListener(Lcom/alensw/ui/view/q;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/j;->K:Lcom/alensw/ui/view/q;

    return-void
.end method

.method public setPattern(Z)V
    .locals 2

    iget-object v1, p0, Lcom/alensw/ui/view/j;->N:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/alensw/ui/view/j;->al:Landroid/graphics/Shader;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->invalidate()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPictureUri(Landroid/net/Uri;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/j;->a:Lcom/alensw/b/h/j;

    iput-object p1, v0, Lcom/alensw/b/h/j;->i:Landroid/net/Uri;

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/view/j;->b:Lcom/alensw/b/h/j;

    iput-object p1, v0, Lcom/alensw/b/h/j;->i:Landroid/net/Uri;

    :cond_2
    return-void
.end method

.method public setTransValues([F)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/j;->S:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->j()V

    invoke-virtual {p0}, Lcom/alensw/ui/view/j;->invalidate()V

    :cond_0
    return-void
.end method
