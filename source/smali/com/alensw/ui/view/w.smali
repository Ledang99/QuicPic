.class public Lcom/alensw/ui/view/w;
.super Ljava/lang/Object;


# instance fields
.field private final A:Landroid/graphics/PointF;

.field private final B:Landroid/graphics/PointF;

.field private final C:Landroid/graphics/PointF;

.field private final D:Landroid/graphics/PointF;

.field private E:Z

.field private final F:Ljava/lang/Runnable;

.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:Landroid/view/MotionEvent;

.field private p:Landroid/view/MotionEvent;

.field private q:Landroid/view/VelocityTracker;

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:F

.field private final v:F

.field private final w:F

.field private final x:F

.field private final y:Landroid/os/Handler;

.field private final z:Lcom/alensw/ui/view/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alensw/ui/view/y;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/alensw/ui/view/w;->a:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/w;->A:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/w;->B:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/w;->C:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/w;->D:Landroid/graphics/PointF;

    iput-boolean v1, p0, Lcom/alensw/ui/view/w;->E:Z

    new-instance v0, Lcom/alensw/ui/view/x;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/x;-><init>(Lcom/alensw/ui/view/w;)V

    iput-object v0, p0, Lcom/alensw/ui/view/w;->F:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/alensw/ui/view/w;->z:Lcom/alensw/ui/view/y;

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    :cond_0
    iput-object p3, p0, Lcom/alensw/ui/view/w;->y:Landroid/os/Handler;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/alensw/ui/view/w;->v:F

    iput v1, p0, Lcom/alensw/ui/view/w;->u:F

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/alensw/ui/view/w;->w:F

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/alensw/ui/view/w;->r:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/w;->s:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/w;->t:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/alensw/ui/view/w;->x:F

    return-void
.end method

.method private a(F)F
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/alensw/ui/view/w;->v:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/alensw/ui/view/w;->k:F

    iget v0, p0, Lcom/alensw/ui/view/w;->k:F

    iget v2, p0, Lcom/alensw/ui/view/w;->v:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p0, Lcom/alensw/ui/view/w;->l:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p0, Lcom/alensw/ui/view/w;->k:F

    iget v2, p0, Lcom/alensw/ui/view/w;->l:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lcom/alensw/ui/view/w;->k:F

    iget v3, p0, Lcom/alensw/ui/view/w;->l:F

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/alensw/ui/view/w;->j:F

    mul-float/2addr v2, v3

    if-eqz v0, :cond_1

    add-float v0, v1, v2

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sub-float v0, v1, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static a(FFFF)F
    .locals 4

    sub-float v0, p2, p0

    sub-float v1, p3, p1

    float-to-double v2, v0

    float-to-double v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/alensw/ui/view/w;->d:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget v1, p0, Lcom/alensw/ui/view/w;->t:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/alensw/ui/view/w;->a(FFFF)F

    move-result v1

    iget v2, p0, Lcom/alensw/ui/view/w;->w:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alensw/ui/view/w;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/ui/view/w;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/alensw/ui/view/w;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alensw/ui/view/w;->E:Z

    return p1
.end method

.method public static b(FFFF)F
    .locals 4

    sub-float v0, p2, p0

    sub-float v1, p3, p1

    float-to-double v2, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method static synthetic b(Lcom/alensw/ui/view/w;)I
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/w;->a:I

    return v0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/w;->f:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/w;->g:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/w;->h:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/w;->i:F

    iget-object v0, p0, Lcom/alensw/ui/view/w;->C:Landroid/graphics/PointF;

    iget v1, p0, Lcom/alensw/ui/view/w;->f:F

    iget v2, p0, Lcom/alensw/ui/view/w;->h:F

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    iget v2, p0, Lcom/alensw/ui/view/w;->g:F

    iget v3, p0, Lcom/alensw/ui/view/w;->i:F

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget v0, p0, Lcom/alensw/ui/view/w;->f:F

    iget v1, p0, Lcom/alensw/ui/view/w;->g:F

    iget v2, p0, Lcom/alensw/ui/view/w;->h:F

    iget v3, p0, Lcom/alensw/ui/view/w;->i:F

    invoke-static {v0, v1, v2, v3}, Lcom/alensw/ui/view/w;->a(FFFF)F

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/w;->k:F

    iget v0, p0, Lcom/alensw/ui/view/w;->f:F

    iget v1, p0, Lcom/alensw/ui/view/w;->g:F

    iget v2, p0, Lcom/alensw/ui/view/w;->h:F

    iget v3, p0, Lcom/alensw/ui/view/w;->i:F

    invoke-static {v0, v1, v2, v3}, Lcom/alensw/ui/view/w;->b(FFFF)F

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/w;->m:F

    return-void
.end method

.method static synthetic c(Lcom/alensw/ui/view/w;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/w;->A:Landroid/graphics/PointF;

    return-object v0
.end method

.method private c(FFFF)Z
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/alensw/ui/view/w;->f:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/alensw/ui/view/w;->g:F

    sub-float/2addr v1, p2

    iget v2, p0, Lcom/alensw/ui/view/w;->h:F

    sub-float/2addr v2, p3

    iget v3, p0, Lcom/alensw/ui/view/w;->i:F

    sub-float/2addr v3, p4

    mul-float/2addr v0, v2

    mul-float/2addr v1, v3

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    cmpl-float v0, v1, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/alensw/ui/view/w;)Lcom/alensw/ui/view/y;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/w;->z:Lcom/alensw/ui/view/y;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v4, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/alensw/ui/view/w;->q:Landroid/view/VelocityTracker;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/alensw/ui/view/w;->q:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v3, p0, Lcom/alensw/ui/view/w;->q:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return v6

    :pswitch_1
    iget v0, p0, Lcom/alensw/ui/view/w;->a:I

    if-ne v0, v4, :cond_8

    iget v0, p0, Lcom/alensw/ui/view/w;->f:F

    iget v1, p0, Lcom/alensw/ui/view/w;->g:F

    iget v2, p0, Lcom/alensw/ui/view/w;->h:F

    iget v3, p0, Lcom/alensw/ui/view/w;->i:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-le v4, v6, :cond_2

    invoke-direct {p0, p1}, Lcom/alensw/ui/view/w;->b(Landroid/view/MotionEvent;)V

    :cond_2
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alensw/ui/view/w;->c(FFFF)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/view/w;->z:Lcom/alensw/ui/view/y;

    iget-object v1, p0, Lcom/alensw/ui/view/w;->C:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/alensw/ui/view/w;->D:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/alensw/ui/view/w;->C:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/alensw/ui/view/w;->D:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lcom/alensw/ui/view/y;->d(FF)V

    iput-boolean v5, p0, Lcom/alensw/ui/view/w;->e:Z

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/alensw/ui/view/w;->D:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/alensw/ui/view/w;->C:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/alensw/ui/view/w;->C:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/alensw/ui/view/w;->k:F

    iget v1, p0, Lcom/alensw/ui/view/w;->l:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/alensw/ui/view/w;->l:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    iget v1, p0, Lcom/alensw/ui/view/w;->l:F

    iget v2, p0, Lcom/alensw/ui/view/w;->k:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alensw/ui/view/w;->z:Lcom/alensw/ui/view/y;

    iget v2, p0, Lcom/alensw/ui/view/w;->k:F

    iget v3, p0, Lcom/alensw/ui/view/w;->l:F

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/alensw/ui/view/w;->C:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/alensw/ui/view/w;->C:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-interface {v1, v2, v3, v4}, Lcom/alensw/ui/view/y;->a(FFF)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/alensw/ui/view/w;->k:F

    iput v1, p0, Lcom/alensw/ui/view/w;->l:F

    :cond_5
    iget-boolean v1, p0, Lcom/alensw/ui/view/w;->e:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcom/alensw/ui/view/w;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget v0, p0, Lcom/alensw/ui/view/w;->m:F

    iput v0, p0, Lcom/alensw/ui/view/w;->n:F

    :cond_6
    :goto_2
    iget-boolean v0, p0, Lcom/alensw/ui/view/w;->e:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/alensw/ui/view/w;->n:F

    iget v1, p0, Lcom/alensw/ui/view/w;->m:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/view/w;->z:Lcom/alensw/ui/view/y;

    iget v1, p0, Lcom/alensw/ui/view/w;->m:F

    iget v2, p0, Lcom/alensw/ui/view/w;->n:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/alensw/ui/view/w;->C:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/alensw/ui/view/w;->C:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-interface {v0, v1, v2, v3}, Lcom/alensw/ui/view/y;->b(FFF)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/alensw/ui/view/w;->m:F

    iput v0, p0, Lcom/alensw/ui/view/w;->n:F

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/alensw/ui/view/w;->m:F

    iget v1, p0, Lcom/alensw/ui/view/w;->n:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iput-boolean v6, p0, Lcom/alensw/ui/view/w;->e:Z

    iget v0, p0, Lcom/alensw/ui/view/w;->m:F

    iput v0, p0, Lcom/alensw/ui/view/w;->n:F

    goto :goto_2

    :cond_8
    iget v0, p0, Lcom/alensw/ui/view/w;->a:I

    if-ne v0, v7, :cond_9

    invoke-direct {p0, v2}, Lcom/alensw/ui/view/w;->a(F)F

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/view/w;->z:Lcom/alensw/ui/view/y;

    iget-object v2, p0, Lcom/alensw/ui/view/w;->C:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/alensw/ui/view/w;->C:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-interface {v1, v0, v2, v3}, Lcom/alensw/ui/view/y;->a(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alensw/ui/view/w;->k:F

    iput v0, p0, Lcom/alensw/ui/view/w;->l:F

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/alensw/ui/view/w;->a:I

    if-ne v0, v8, :cond_a

    iget-object v0, p0, Lcom/alensw/ui/view/w;->z:Lcom/alensw/ui/view/y;

    iget-object v3, p0, Lcom/alensw/ui/view/w;->B:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, v1, v3

    iget-object v4, p0, Lcom/alensw/ui/view/w;->B:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v4, v2, v4

    invoke-interface {v0, v3, v4}, Lcom/alensw/ui/view/y;->d(FF)V

    iget-object v0, p0, Lcom/alensw/ui/view/w;->B:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    :cond_a
    iget v0, p0, Lcom/alensw/ui/view/w;->a:I

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/w;->A:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float v0, v1, v0

    iget-object v3, p0, Lcom/alensw/ui/view/w;->A:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v2, v3

    iget-boolean v4, p0, Lcom/alensw/ui/view/w;->b:Z

    if-eqz v4, :cond_b

    iget-object v0, p0, Lcom/alensw/ui/view/w;->C:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/alensw/ui/view/w;->A:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    invoke-direct {p0, v2}, Lcom/alensw/ui/view/w;->a(F)F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/alensw/ui/view/w;->v:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iput v7, p0, Lcom/alensw/ui/view/w;->a:I

    iget v0, p0, Lcom/alensw/ui/view/w;->k:F

    iput v0, p0, Lcom/alensw/ui/view/w;->l:F

    iget-object v0, p0, Lcom/alensw/ui/view/w;->A:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/alensw/ui/view/w;->v:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/alensw/ui/view/w;->v:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/alensw/ui/view/w;->j:F

    goto/16 :goto_0

    :cond_b
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v3, p0, Lcom/alensw/ui/view/w;->u:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    iput v8, p0, Lcom/alensw/ui/view/w;->a:I

    iput-boolean v5, p0, Lcom/alensw/ui/view/w;->d:Z

    iget-object v0, p0, Lcom/alensw/ui/view/w;->B:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/alensw/ui/view/w;->E:Z

    iget-boolean v3, p0, Lcom/alensw/ui/view/w;->E:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/alensw/ui/view/w;->y:Landroid/os/Handler;

    iget-object v4, p0, Lcom/alensw/ui/view/w;->F:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v5, p0, Lcom/alensw/ui/view/w;->E:Z

    :cond_c
    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alensw/ui/view/w;->o:Landroid/view/MotionEvent;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alensw/ui/view/w;->p:Landroid/view/MotionEvent;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alensw/ui/view/w;->o:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/alensw/ui/view/w;->p:Landroid/view/MotionEvent;

    invoke-direct {p0, v0, v3, p1}, Lcom/alensw/ui/view/w;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    iput-boolean v6, p0, Lcom/alensw/ui/view/w;->b:Z

    :goto_3
    iput-boolean v6, p0, Lcom/alensw/ui/view/w;->c:Z

    iput-boolean v6, p0, Lcom/alensw/ui/view/w;->d:Z

    iput v6, p0, Lcom/alensw/ui/view/w;->a:I

    iget-object v0, p0, Lcom/alensw/ui/view/w;->A:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/alensw/ui/view/w;->o:Landroid/view/MotionEvent;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alensw/ui/view/w;->o:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_d
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/view/w;->o:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/alensw/ui/view/w;->z:Lcom/alensw/ui/view/y;

    iget-object v1, p0, Lcom/alensw/ui/view/w;->A:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/alensw/ui/view/w;->A:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-interface {v0, v1, v2}, Lcom/alensw/ui/view/y;->a(FF)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/alensw/ui/view/w;->y:Landroid/os/Handler;

    iget-object v3, p0, Lcom/alensw/ui/view/w;->F:Ljava/lang/Runnable;

    iget v4, p0, Lcom/alensw/ui/view/w;->t:I

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v6, p0, Lcom/alensw/ui/view/w;->E:Z

    goto :goto_3

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v6, :cond_f

    invoke-direct {p0, p1}, Lcom/alensw/ui/view/w;->b(Landroid/view/MotionEvent;)V

    :cond_f
    iget v0, p0, Lcom/alensw/ui/view/w;->k:F

    iget v1, p0, Lcom/alensw/ui/view/w;->v:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10

    iput v4, p0, Lcom/alensw/ui/view/w;->a:I

    iget-object v0, p0, Lcom/alensw/ui/view/w;->D:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/alensw/ui/view/w;->C:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/alensw/ui/view/w;->C:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget v0, p0, Lcom/alensw/ui/view/w;->k:F

    iput v0, p0, Lcom/alensw/ui/view/w;->l:F

    iget v0, p0, Lcom/alensw/ui/view/w;->m:F

    iput v0, p0, Lcom/alensw/ui/view/w;->n:F

    :cond_10
    iput-boolean v5, p0, Lcom/alensw/ui/view/w;->b:Z

    goto/16 :goto_0

    :pswitch_4
    iget v0, p0, Lcom/alensw/ui/view/w;->a:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/w;->z:Lcom/alensw/ui/view/y;

    iget-object v1, p0, Lcom/alensw/ui/view/w;->C:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/alensw/ui/view/w;->C:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-interface {v0, v1, v2}, Lcom/alensw/ui/view/y;->f(FF)V

    iput v5, p0, Lcom/alensw/ui/view/w;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/ui/view/w;->l:F

    iput-boolean v5, p0, Lcom/alensw/ui/view/w;->e:Z

    goto/16 :goto_0

    :pswitch_5
    iput-boolean v5, p0, Lcom/alensw/ui/view/w;->c:Z

    iget v1, p0, Lcom/alensw/ui/view/w;->a:I

    if-ne v1, v7, :cond_15

    iget-object v1, p0, Lcom/alensw/ui/view/w;->z:Lcom/alensw/ui/view/y;

    iget-object v2, p0, Lcom/alensw/ui/view/w;->C:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/alensw/ui/view/w;->C:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-interface {v1, v2, v3}, Lcom/alensw/ui/view/y;->f(FF)V

    :cond_11
    :goto_4
    iget-object v1, p0, Lcom/alensw/ui/view/w;->p:Landroid/view/MotionEvent;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/alensw/ui/view/w;->p:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_12
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/alensw/ui/view/w;->p:Landroid/view/MotionEvent;

    :pswitch_6
    iget-object v1, p0, Lcom/alensw/ui/view/w;->q:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/alensw/ui/view/w;->q:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alensw/ui/view/w;->q:Landroid/view/VelocityTracker;

    :cond_13
    if-ne v0, v7, :cond_14

    iput v5, p0, Lcom/alensw/ui/view/w;->a:I

    :cond_14
    iput-boolean v5, p0, Lcom/alensw/ui/view/w;->c:Z

    iput-boolean v5, p0, Lcom/alensw/ui/view/w;->b:Z

    iput-boolean v5, p0, Lcom/alensw/ui/view/w;->e:Z

    goto/16 :goto_0

    :cond_15
    iget v1, p0, Lcom/alensw/ui/view/w;->a:I

    if-ne v1, v8, :cond_17

    iget-object v1, p0, Lcom/alensw/ui/view/w;->q:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/alensw/ui/view/w;->r:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, p0, Lcom/alensw/ui/view/w;->s:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_16

    iget-object v3, p0, Lcom/alensw/ui/view/w;->z:Lcom/alensw/ui/view/y;

    invoke-interface {v3, v2, v1}, Lcom/alensw/ui/view/y;->e(FF)V

    goto :goto_4

    :cond_16
    iget-object v1, p0, Lcom/alensw/ui/view/w;->z:Lcom/alensw/ui/view/y;

    invoke-interface {v1}, Lcom/alensw/ui/view/y;->a()V

    goto :goto_4

    :cond_17
    iget-boolean v1, p0, Lcom/alensw/ui/view/w;->b:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/alensw/ui/view/w;->z:Lcom/alensw/ui/view/y;

    iget-object v2, p0, Lcom/alensw/ui/view/w;->A:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/alensw/ui/view/w;->A:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-interface {v1, v2, v3}, Lcom/alensw/ui/view/y;->c(FF)V

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
