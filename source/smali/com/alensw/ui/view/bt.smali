.class public Lcom/alensw/ui/view/bt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z

.field private b:J

.field private c:J

.field private final d:Landroid/view/View;

.field private final e:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alensw/ui/view/bt;->d:Landroid/view/View;

    iput-object p2, p0, Lcom/alensw/ui/view/bt;->e:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private e()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/alensw/ui/view/bt;->c:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    iget-wide v4, p0, Lcom/alensw/ui/view/bt;->c:J

    iget-wide v6, p0, Lcom/alensw/ui/view/bt;->b:J

    sub-long/2addr v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-float v1, v0

    iget-wide v4, p0, Lcom/alensw/ui/view/bt;->c:J

    long-to-float v0, v4

    div-float v0, v1, v0

    iget-object v4, p0, Lcom/alensw/ui/view/bt;->e:Landroid/view/animation/Interpolator;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alensw/ui/view/bt;->e:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    :cond_0
    iget-wide v4, p0, Lcom/alensw/ui/view/bt;->c:J

    long-to-float v4, v4

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_1

    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/bt;->a(F)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/bt;->c()V

    invoke-virtual {p0}, Lcom/alensw/ui/view/bt;->b()V

    :goto_1
    if-nez v1, :cond_5

    :goto_2
    return v2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    move v1, v3

    goto :goto_0

    :cond_3
    iget-boolean v4, p0, Lcom/alensw/ui/view/bt;->a:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/alensw/ui/view/bt;->d:Landroid/view/View;

    invoke-static {v4, p0}, Lcom/alensw/ui/view/bt;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_4
    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/bt;->a(F)V

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(F)V
    .locals 0

    return-void
.end method

.method public a(JZ)V
    .locals 3

    if-nez p3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alensw/ui/view/bt;->a:Z

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alensw/ui/view/bt;->b:J

    iput-wide p1, p0, Lcom/alensw/ui/view/bt;->c:J

    invoke-virtual {p0}, Lcom/alensw/ui/view/bt;->a()V

    iget-boolean v0, p0, Lcom/alensw/ui/view/bt;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/view/bt;->d:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/alensw/ui/view/bt;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/view/bt;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/ui/view/bt;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/bt;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/ui/view/bt;->a:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alensw/ui/view/bt;->e()Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/ui/view/bt;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alensw/ui/view/bt;->e()Z

    :cond_0
    return-void
.end method
