.class public Lcom/alensw/ui/view/LockPatternView;
.super Landroid/view/View;


# instance fields
.field private final a:[[Lcom/alensw/ui/view/ap;

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private g:Lcom/alensw/ui/view/aq;

.field private final h:Ljava/util/ArrayList;

.field private final i:[[Z

.field private j:F

.field private k:F

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:F

.field private q:F

.field private r:F

.field private final s:Landroid/graphics/Path;

.field private final t:Landroid/graphics/Rect;

.field private final u:Landroid/graphics/Rect;

.field private v:I

.field private w:I

.field private x:I

.field private final y:Landroid/view/animation/Interpolator;

.field private final z:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alensw/ui/view/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v2, 0x5

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->f:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->h:Ljava/util/ArrayList;

    filled-new-array {v5, v5}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->i:[[Z

    iput v3, p0, Lcom/alensw/ui/view/LockPatternView;->j:F

    iput v3, p0, Lcom/alensw/ui/view/LockPatternView;->k:F

    iput-boolean v6, p0, Lcom/alensw/ui/view/LockPatternView;->l:Z

    iput-boolean v1, p0, Lcom/alensw/ui/view/LockPatternView;->m:Z

    iput-boolean v1, p0, Lcom/alensw/ui/view/LockPatternView;->n:Z

    iput-boolean v1, p0, Lcom/alensw/ui/view/LockPatternView;->o:Z

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/alensw/ui/view/LockPatternView;->p:F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->s:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->t:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->u:Landroid/graphics/Rect;

    iput v6, p0, Lcom/alensw/ui/view/LockPatternView;->v:I

    invoke-virtual {p0, v6}, Lcom/alensw/ui/view/LockPatternView;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010036

    invoke-virtual {v3, v4, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/alensw/ui/view/LockPatternView;->w:I

    iput v2, p0, Lcom/alensw/ui/view/LockPatternView;->x:I

    iget v2, p0, Lcom/alensw/ui/view/LockPatternView;->w:I

    iget-object v3, p0, Lcom/alensw/ui/view/LockPatternView;->f:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/alensw/ui/view/LockPatternView;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/alensw/ui/view/LockPatternView;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v2, p0, Lcom/alensw/ui/view/LockPatternView;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/alensw/ui/view/LockPatternView;->d:F

    iget-object v2, p0, Lcom/alensw/ui/view/LockPatternView;->f:Landroid/graphics/Paint;

    iget v3, p0, Lcom/alensw/ui/view/LockPatternView;->d:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/alensw/ui/view/LockPatternView;->b:F

    const v0, 0x40155555

    iput v0, p0, Lcom/alensw/ui/view/LockPatternView;->c:F

    filled-new-array {v5, v5}, [I

    move-result-object v0

    const-class v2, Lcom/alensw/ui/view/ap;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/alensw/ui/view/ap;

    iput-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->a:[[Lcom/alensw/ui/view/ap;

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_0

    iget-object v3, p0, Lcom/alensw/ui/view/LockPatternView;->a:[[Lcom/alensw/ui/view/ap;

    aget-object v3, v3, v2

    new-instance v4, Lcom/alensw/ui/view/ap;

    invoke-direct {v4}, Lcom/alensw/ui/view/ap;-><init>()V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->y:Landroid/view/animation/Interpolator;

    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->z:Landroid/view/animation/Interpolator;

    :goto_2
    return-void

    :cond_2
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->y:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->z:Landroid/view/animation/Interpolator;

    goto :goto_2
.end method

.method private a(FFFF)F
    .locals 4

    sub-float v0, p1, p3

    sub-float v1, p2, p4

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/alensw/ui/view/LockPatternView;->q:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    sub-float/2addr v0, v3

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private a(I)F
    .locals 3

    invoke-virtual {p0}, Lcom/alensw/ui/view/LockPatternView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/alensw/ui/view/LockPatternView;->q:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/alensw/ui/view/LockPatternView;->q:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lcom/alensw/ui/view/LockPatternView;)F
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/LockPatternView;->c:F

    return v0
.end method

.method private a(F)I
    .locals 6

    iget v1, p0, Lcom/alensw/ui/view/LockPatternView;->r:F

    iget v0, p0, Lcom/alensw/ui/view/LockPatternView;->p:F

    mul-float v2, v1, v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/LockPatternView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    int-to-float v4, v0

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private a(II)I
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move p2, v0

    :goto_0
    :sswitch_0
    return p2

    :sswitch_1
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Z)I
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/alensw/ui/view/LockPatternView;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alensw/ui/view/LockPatternView;->o:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/alensw/ui/view/LockPatternView;->w:I

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/alensw/ui/view/LockPatternView;->x:I

    goto :goto_0
.end method

.method private a(FF)Lcom/alensw/ui/view/ao;
    .locals 10

    const/4 v0, 0x0

    const/4 v9, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/alensw/ui/view/LockPatternView;->b(FF)Lcom/alensw/ui/view/ao;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v1, p0, Lcom/alensw/ui/view/LockPatternView;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/view/ao;

    iget v1, v5, Lcom/alensw/ui/view/ao;->a:I

    iget v4, v0, Lcom/alensw/ui/view/ao;->a:I

    sub-int v6, v1, v4

    iget v1, v5, Lcom/alensw/ui/view/ao;->b:I

    iget v4, v0, Lcom/alensw/ui/view/ao;->b:I

    sub-int v7, v1, v4

    iget v1, v0, Lcom/alensw/ui/view/ao;->a:I

    iget v4, v0, Lcom/alensw/ui/view/ao;->b:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v9, :cond_0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v2, :cond_0

    iget v8, v0, Lcom/alensw/ui/view/ao;->a:I

    if-lez v6, :cond_4

    move v1, v2

    :goto_0
    add-int/2addr v1, v8

    :cond_0
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v9, :cond_6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-eq v6, v2, :cond_6

    iget v0, v0, Lcom/alensw/ui/view/ao;->b:I

    if-lez v7, :cond_5

    :goto_1
    add-int/2addr v0, v2

    :goto_2
    invoke-static {v1, v0}, Lcom/alensw/ui/view/ao;->a(II)Lcom/alensw/ui/view/ao;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alensw/ui/view/LockPatternView;->i:[[Z

    iget v2, v0, Lcom/alensw/ui/view/ao;->a:I

    aget-object v1, v1, v2

    iget v2, v0, Lcom/alensw/ui/view/ao;->b:I

    aget-boolean v1, v1, v2

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/alensw/ui/view/LockPatternView;->a(Lcom/alensw/ui/view/ao;)V

    :cond_2
    invoke-direct {p0, v5}, Lcom/alensw/ui/view/LockPatternView;->a(Lcom/alensw/ui/view/ao;)V

    move-object v0, v5

    :cond_3
    return-object v0

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1

    :cond_6
    move v0, v4

    goto :goto_2
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/view/ao;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ao;->a()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/alensw/ui/view/ao;->b()I

    move-result v0

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(FFJLandroid/view/animation/Interpolator;Lcom/alensw/ui/view/ap;Ljava/lang/Runnable;)V
    .locals 9

    new-instance v0, Lcom/alensw/ui/view/an;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p5

    move-object v4, p6

    move v5, p1

    move v6, p2

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/alensw/ui/view/an;-><init>(Lcom/alensw/ui/view/LockPatternView;Landroid/view/View;Landroid/view/animation/Interpolator;Lcom/alensw/ui/view/ap;FFLjava/lang/Runnable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p3, p4, v1}, Lcom/alensw/ui/view/bt;->a(JZ)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFFZF)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->e:Landroid/graphics/Paint;

    invoke-direct {p0, p5}, Lcom/alensw/ui/view/LockPatternView;->a(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->e:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p4, v0

    iget-object v1, p0, Lcom/alensw/ui/view/LockPatternView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 13

    iget v7, p0, Lcom/alensw/ui/view/LockPatternView;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->u:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    add-int/lit8 v0, v8, 0x1

    if-ge v6, v0, :cond_6

    if-ge v6, v8, :cond_4

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    move v3, v0

    :goto_1
    if-ge v6, v8, :cond_5

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    move v1, v0

    :goto_2
    invoke-direct {p0, v3, v1}, Lcom/alensw/ui/view/LockPatternView;->a(FF)Lcom/alensw/ui/view/ao;

    move-result-object v9

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v9, :cond_0

    const/4 v0, 0x1

    if-ne v4, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/ui/view/LockPatternView;->o:Z

    invoke-direct {p0}, Lcom/alensw/ui/view/LockPatternView;->c()V

    :cond_0
    iget v0, p0, Lcom/alensw/ui/view/LockPatternView;->j:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p0, Lcom/alensw/ui/view/LockPatternView;->k:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v10, 0x0

    cmpl-float v0, v0, v10

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    move v2, v0

    :cond_2
    iget-boolean v0, p0, Lcom/alensw/ui/view/LockPatternView;->o:Z

    if-eqz v0, :cond_3

    if-lez v4, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->h:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/view/ao;

    iget v4, v0, Lcom/alensw/ui/view/ao;->b:I

    invoke-direct {p0, v4}, Lcom/alensw/ui/view/LockPatternView;->a(I)F

    move-result v4

    iget v0, v0, Lcom/alensw/ui/view/ao;->a:I

    invoke-direct {p0, v0}, Lcom/alensw/ui/view/LockPatternView;->b(I)F

    move-result v0

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float/2addr v5, v7

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float v4, v3, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v3, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v0, v7

    if-eqz v9, :cond_8

    iget v1, p0, Lcom/alensw/ui/view/LockPatternView;->q:F

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v1, v10

    iget v10, p0, Lcom/alensw/ui/view/LockPatternView;->r:F

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    iget v11, v9, Lcom/alensw/ui/view/ao;->b:I

    invoke-direct {p0, v11}, Lcom/alensw/ui/view/LockPatternView;->a(I)F

    move-result v11

    iget v9, v9, Lcom/alensw/ui/view/ao;->a:I

    invoke-direct {p0, v9}, Lcom/alensw/ui/view/LockPatternView;->b(I)F

    move-result v9

    sub-float v12, v11, v1

    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-float/2addr v1, v11

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float v1, v9, v10

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float v3, v9, v10

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v3, v4

    move v4, v5

    :goto_3
    iget-object v5, p0, Lcom/alensw/ui/view/LockPatternView;->u:Landroid/graphics/Rect;

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v5, v4, v1, v3, v0}, Landroid/graphics/Rect;->union(IIII)V

    :cond_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    move v3, v0

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    move v1, v0

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/LockPatternView;->j:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/LockPatternView;->k:F

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->t:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/alensw/ui/view/LockPatternView;->u:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->t:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->t:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/alensw/ui/view/LockPatternView;->u:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_7
    return-void

    :cond_8
    move v1, v3

    move v3, v4

    move v4, v5

    goto :goto_3
.end method

.method static synthetic a(Lcom/alensw/ui/view/LockPatternView;FFJLandroid/view/animation/Interpolator;Lcom/alensw/ui/view/ap;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct/range {p0 .. p7}, Lcom/alensw/ui/view/LockPatternView;->a(FFJLandroid/view/animation/Interpolator;Lcom/alensw/ui/view/ap;Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/alensw/ui/view/ao;)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->i:[[Z

    invoke-virtual {p1}, Lcom/alensw/ui/view/ao;->a()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/alensw/ui/view/ao;->b()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/alensw/ui/view/LockPatternView;->m:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alensw/ui/view/LockPatternView;->b(Lcom/alensw/ui/view/ao;)V

    :cond_0
    invoke-direct {p0}, Lcom/alensw/ui/view/LockPatternView;->b()V

    return-void
.end method

.method private a(Lcom/alensw/ui/view/ap;FFFF)V
    .locals 9

    new-instance v0, Lcom/alensw/ui/view/am;

    iget-object v3, p0, Lcom/alensw/ui/view/LockPatternView;->y:Landroid/view/animation/Interpolator;

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move v6, p4

    move v7, p3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/alensw/ui/view/am;-><init>(Lcom/alensw/ui/view/LockPatternView;Landroid/view/View;Landroid/view/animation/Interpolator;Lcom/alensw/ui/view/ap;FFFF)V

    const-wide/16 v2, 0x64

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/alensw/ui/view/bt;->a(JZ)V

    iput-object v0, p1, Lcom/alensw/ui/view/ap;->f:Lcom/alensw/ui/view/bt;

    return-void
.end method

.method private b(I)F
    .locals 3

    invoke-virtual {p0}, Lcom/alensw/ui/view/LockPatternView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/alensw/ui/view/LockPatternView;->r:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/alensw/ui/view/LockPatternView;->r:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private b(F)I
    .locals 6

    iget v1, p0, Lcom/alensw/ui/view/LockPatternView;->q:F

    iget v0, p0, Lcom/alensw/ui/view/LockPatternView;->p:F

    mul-float v2, v1, v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/LockPatternView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    int-to-float v4, v0

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/alensw/ui/view/LockPatternView;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->y:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private b(FF)Lcom/alensw/ui/view/ao;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/alensw/ui/view/LockPatternView;->a(F)I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/alensw/ui/view/LockPatternView;->b(F)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/alensw/ui/view/LockPatternView;->i:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v2

    if-nez v3, :cond_0

    invoke-static {v1, v2}, Lcom/alensw/ui/view/ao;->a(II)Lcom/alensw/ui/view/ao;

    move-result-object v0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->g:Lcom/alensw/ui/view/aq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->g:Lcom/alensw/ui/view/aq;

    iget-object v1, p0, Lcom/alensw/ui/view/LockPatternView;->h:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/alensw/ui/view/aq;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alensw/ui/view/LockPatternView;->o:Z

    invoke-direct {p0}, Lcom/alensw/ui/view/LockPatternView;->h()V

    invoke-direct {p0}, Lcom/alensw/ui/view/LockPatternView;->d()V

    invoke-virtual {p0}, Lcom/alensw/ui/view/LockPatternView;->invalidate()V

    :cond_0
    return-void
.end method

.method private b(Lcom/alensw/ui/view/ao;)V
    .locals 12

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->a:[[Lcom/alensw/ui/view/ap;

    iget v1, p1, Lcom/alensw/ui/view/ao;->a:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/alensw/ui/view/ao;->b:I

    aget-object v7, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/alensw/ui/view/LockPatternView;->c:F

    const-wide/16 v4, 0x60

    iget-object v6, p0, Lcom/alensw/ui/view/LockPatternView;->z:Landroid/view/animation/Interpolator;

    new-instance v8, Lcom/alensw/ui/view/al;

    invoke-direct {v8, p0, v7}, Lcom/alensw/ui/view/al;-><init>(Lcom/alensw/ui/view/LockPatternView;Lcom/alensw/ui/view/ap;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/alensw/ui/view/LockPatternView;->a(FFJLandroid/view/animation/Interpolator;Lcom/alensw/ui/view/ap;Ljava/lang/Runnable;)V

    iget v8, p0, Lcom/alensw/ui/view/LockPatternView;->j:F

    iget v9, p0, Lcom/alensw/ui/view/LockPatternView;->k:F

    iget v0, p1, Lcom/alensw/ui/view/ao;->b:I

    invoke-direct {p0, v0}, Lcom/alensw/ui/view/LockPatternView;->a(I)F

    move-result v10

    iget v0, p1, Lcom/alensw/ui/view/ao;->a:I

    invoke-direct {p0, v0}, Lcom/alensw/ui/view/LockPatternView;->b(I)F

    move-result v11

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/alensw/ui/view/LockPatternView;->a(Lcom/alensw/ui/view/ap;FFFF)V

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->g:Lcom/alensw/ui/view/aq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->g:Lcom/alensw/ui/view/aq;

    invoke-interface {v0}, Lcom/alensw/ui/view/aq;->a()V

    :cond_0
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 8

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {p0}, Lcom/alensw/ui/view/LockPatternView;->f()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alensw/ui/view/LockPatternView;->a(FF)Lcom/alensw/ui/view/ao;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alensw/ui/view/LockPatternView;->o:Z

    invoke-direct {p0}, Lcom/alensw/ui/view/LockPatternView;->c()V

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget v3, v2, Lcom/alensw/ui/view/ao;->b:I

    invoke-direct {p0, v3}, Lcom/alensw/ui/view/LockPatternView;->a(I)F

    move-result v3

    iget v2, v2, Lcom/alensw/ui/view/ao;->a:I

    invoke-direct {p0, v2}, Lcom/alensw/ui/view/LockPatternView;->b(I)F

    move-result v2

    iget v4, p0, Lcom/alensw/ui/view/LockPatternView;->q:F

    div-float/2addr v4, v6

    iget v5, p0, Lcom/alensw/ui/view/LockPatternView;->r:F

    div-float/2addr v5, v6

    sub-float v6, v3, v4

    float-to-int v6, v6

    sub-float v7, v2, v5

    float-to-int v7, v7

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {p0, v6, v7, v3, v2}, Lcom/alensw/ui/view/LockPatternView;->invalidate(IIII)V

    :cond_1
    iput v0, p0, Lcom/alensw/ui/view/LockPatternView;->j:F

    iput v1, p0, Lcom/alensw/ui/view/LockPatternView;->k:F

    return-void

    :cond_2
    iget-boolean v3, p0, Lcom/alensw/ui/view/LockPatternView;->o:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/alensw/ui/view/LockPatternView;->o:Z

    invoke-direct {p0}, Lcom/alensw/ui/view/LockPatternView;->e()V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->g:Lcom/alensw/ui/view/aq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->g:Lcom/alensw/ui/view/aq;

    iget-object v1, p0, Lcom/alensw/ui/view/LockPatternView;->h:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/alensw/ui/view/aq;->b(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->g:Lcom/alensw/ui/view/aq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->g:Lcom/alensw/ui/view/aq;

    invoke-interface {v0}, Lcom/alensw/ui/view/aq;->b()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/alensw/ui/view/LockPatternView;->g()V

    invoke-virtual {p0}, Lcom/alensw/ui/view/LockPatternView;->invalidate()V

    return-void
.end method

.method private g()V
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_0

    iget-object v3, p0, Lcom/alensw/ui/view/LockPatternView;->i:[[Z

    aget-object v3, v3, v2

    aput-boolean v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private h()V
    .locals 7

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v5, 0x1

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_2

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_1

    iget-object v3, p0, Lcom/alensw/ui/view/LockPatternView;->a:[[Lcom/alensw/ui/view/ap;

    aget-object v3, v3, v2

    aget-object v3, v3, v0

    iget-object v4, v3, Lcom/alensw/ui/view/ap;->f:Lcom/alensw/ui/view/bt;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/alensw/ui/view/ap;->f:Lcom/alensw/ui/view/bt;

    invoke-virtual {v4}, Lcom/alensw/ui/view/bt;->c()V

    iput v5, v3, Lcom/alensw/ui/view/ap;->d:F

    iput v5, v3, Lcom/alensw/ui/view/ap;->e:F

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/ui/view/LockPatternView;->f()V

    return-void
.end method

.method public getCellStates()[[Lcom/alensw/ui/view/ap;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->a:[[Lcom/alensw/ui/view/ap;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v9, p0, Lcom/alensw/ui/view/LockPatternView;->h:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget-object v11, p0, Lcom/alensw/ui/view/LockPatternView;->i:[[Z

    iget-object v12, p0, Lcom/alensw/ui/view/LockPatternView;->s:Landroid/graphics/Path;

    invoke-virtual {v12}, Landroid/graphics/Path;->rewind()V

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    const/4 v0, 0x3

    if-ge v8, v0, :cond_1

    invoke-direct {p0, v8}, Lcom/alensw/ui/view/LockPatternView;->b(I)F

    move-result v13

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    const/4 v0, 0x3

    if-ge v7, v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->a:[[Lcom/alensw/ui/view/ap;

    aget-object v0, v0, v8

    aget-object v0, v0, v7

    invoke-direct {p0, v7}, Lcom/alensw/ui/view/LockPatternView;->a(I)F

    move-result v1

    iget v2, v0, Lcom/alensw/ui/view/ap;->a:F

    iget v3, p0, Lcom/alensw/ui/view/LockPatternView;->b:F

    mul-float v4, v2, v3

    iget v3, v0, Lcom/alensw/ui/view/ap;->b:F

    float-to-int v1, v1

    int-to-float v2, v1

    float-to-int v1, v13

    int-to-float v1, v1

    add-float/2addr v3, v1

    aget-object v1, v11, v8

    aget-boolean v5, v1, v7

    iget v6, v0, Lcom/alensw/ui/view/ap;->c:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/alensw/ui/view/LockPatternView;->a(Landroid/graphics/Canvas;FFFZF)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/alensw/ui/view/LockPatternView;->m:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->f:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alensw/ui/view/LockPatternView;->a(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v4, v2

    move v2, v1

    move v1, v0

    :goto_3
    if-ge v1, v10, :cond_2

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/view/ao;

    iget v5, v0, Lcom/alensw/ui/view/ao;->a:I

    aget-object v5, v11, v5

    iget v6, v0, Lcom/alensw/ui/view/ao;->b:I

    aget-boolean v5, v5, v6

    if-nez v5, :cond_5

    :cond_2
    iget-boolean v0, p0, Lcom/alensw/ui/view/LockPatternView;->o:Z

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v12}, Landroid/graphics/Path;->rewind()V

    invoke-virtual {v12, v4, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget v0, p0, Lcom/alensw/ui/view/LockPatternView;->j:F

    iget v1, p0, Lcom/alensw/ui/view/LockPatternView;->k:F

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alensw/ui/view/LockPatternView;->j:F

    iget v3, p0, Lcom/alensw/ui/view/LockPatternView;->k:F

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/alensw/ui/view/LockPatternView;->a(FFFF)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v12, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/4 v6, 0x1

    iget v3, v0, Lcom/alensw/ui/view/ao;->b:I

    invoke-direct {p0, v3}, Lcom/alensw/ui/view/LockPatternView;->a(I)F

    move-result v5

    iget v3, v0, Lcom/alensw/ui/view/ao;->a:I

    invoke-direct {p0, v3}, Lcom/alensw/ui/view/LockPatternView;->b(I)F

    move-result v3

    if-eqz v1, :cond_6

    iget-object v7, p0, Lcom/alensw/ui/view/LockPatternView;->a:[[Lcom/alensw/ui/view/ap;

    iget v8, v0, Lcom/alensw/ui/view/ao;->a:I

    aget-object v7, v7, v8

    iget v0, v0, Lcom/alensw/ui/view/ao;->b:I

    aget-object v0, v7, v0

    invoke-virtual {v12}, Landroid/graphics/Path;->rewind()V

    invoke-virtual {v12, v4, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget v2, v0, Lcom/alensw/ui/view/ap;->d:F

    const/4 v4, 0x1

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_7

    iget v2, v0, Lcom/alensw/ui/view/ap;->e:F

    const/4 v4, 0x1

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_7

    iget v2, v0, Lcom/alensw/ui/view/ap;->d:F

    iget v0, v0, Lcom/alensw/ui/view/ap;->e:F

    invoke-virtual {v12, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_4
    iget-object v0, p0, Lcom/alensw/ui/view/LockPatternView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v12, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v2, v3

    move v4, v5

    move v3, v6

    goto :goto_3

    :cond_7
    invoke-virtual {v12, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/alensw/ui/view/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/alensw/ui/view/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/alensw/ui/view/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-direct {p0, p1, v0}, Lcom/alensw/ui/view/LockPatternView;->a(II)I

    move-result v1

    invoke-direct {p0, p2, v2}, Lcom/alensw/ui/view/LockPatternView;->a(II)I

    move-result v0

    iget v2, p0, Lcom/alensw/ui/view/LockPatternView;->v:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/alensw/ui/view/LockPatternView;->setMeasuredDimension(II)V

    return-void

    :pswitch_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    goto :goto_0

    :pswitch_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {p0}, Lcom/alensw/ui/view/LockPatternView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/LockPatternView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/alensw/ui/view/LockPatternView;->q:F

    invoke-virtual {p0}, Lcom/alensw/ui/view/LockPatternView;->getPaddingTop()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/LockPatternView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/alensw/ui/view/LockPatternView;->r:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/alensw/ui/view/LockPatternView;->l:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/LockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/alensw/ui/view/LockPatternView;->c(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/alensw/ui/view/LockPatternView;->b(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/alensw/ui/view/LockPatternView;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_3
    iget-boolean v2, p0, Lcom/alensw/ui/view/LockPatternView;->o:Z

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/alensw/ui/view/LockPatternView;->o:Z

    invoke-direct {p0}, Lcom/alensw/ui/view/LockPatternView;->f()V

    invoke-direct {p0}, Lcom/alensw/ui/view/LockPatternView;->e()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setInStealthMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alensw/ui/view/LockPatternView;->m:Z

    return-void
.end method

.method public setOnPatternListener(Lcom/alensw/ui/view/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/LockPatternView;->g:Lcom/alensw/ui/view/aq;

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alensw/ui/view/LockPatternView;->n:Z

    return-void
.end method
