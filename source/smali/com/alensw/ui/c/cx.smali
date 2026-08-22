.class public Lcom/alensw/ui/c/cx;
.super Lcom/alensw/ui/activity/p;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field protected c:F

.field protected final d:Landroid/graphics/Rect;

.field private e:Lcom/alensw/ui/view/ContainerLayout;

.field private final f:Ljava/util/Stack;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alensw/ui/activity/p;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/ui/c/cx;->a:I

    const/16 v0, 0x190

    iput v0, p0, Lcom/alensw/ui/c/cx;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alensw/ui/c/cx;->c:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/c/cx;->d:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/c/cx;->f:Ljava/util/Stack;

    return-void
.end method

.method static synthetic a(Lcom/alensw/ui/c/cx;)Lcom/alensw/ui/view/ContainerLayout;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/cx;->e:Lcom/alensw/ui/view/ContainerLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/alensw/ui/c/cx;)Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/cx;->f:Ljava/util/Stack;

    return-object v0
.end method


# virtual methods
.method public a(ZZLandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/view/animation/Animation;
    .locals 4

    new-instance v0, Lcom/alensw/ui/view/bu;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/alensw/ui/view/bu;-><init>(ZZLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {p0, p1}, Lcom/alensw/ui/c/cx;->b(Z)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alensw/ui/view/bu;->setDuration(J)V

    invoke-virtual {p0, p1}, Lcom/alensw/ui/c/cx;->j(Z)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/bu;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/c/cu;

    iput-object p0, v0, Lcom/alensw/ui/c/cu;->C:Lcom/alensw/ui/c/cx;

    iput-object p2, v0, Lcom/alensw/ui/c/cu;->E:Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cu;->e(I)V

    invoke-virtual {v0, p3}, Lcom/alensw/ui/c/cu;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/cx;->b(Lcom/alensw/ui/c/cu;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/cx;->d:Landroid/graphics/Rect;

    invoke-super {p0, v0, p1}, Lcom/alensw/ui/activity/p;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method protected a(Lcom/alensw/ui/c/cu;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alensw/ui/c/cu;->F:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/cx;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/alensw/ui/c/cu;->G:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/cx;->a(Ljava/lang/CharSequence;)V

    iget-boolean v0, p1, Lcom/alensw/ui/c/cu;->J:Z

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/cx;->i(Z)V

    :cond_0
    iget v0, p0, Lcom/alensw/ui/c/cx;->a:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->invalidateOptionsMenu()V

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->d()I

    move-result v3

    if-le v3, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/cx;->g(Z)V

    if-le v3, v1, :cond_3

    :goto_1
    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/cx;->h(Z)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public a(Lcom/alensw/ui/c/cu;Z)Z
    .locals 9

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->c()Lcom/alensw/ui/c/cu;

    move-result-object v0

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v3, p0, Lcom/alensw/ui/c/cx;->f:Ljava/util/Stack;

    invoke-virtual {v3, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne v0, p1, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->c()Lcom/alensw/ui/c/cu;

    move-result-object v6

    const/4 v3, 0x0

    iput-boolean v1, p1, Lcom/alensw/ui/c/cu;->I:Z

    invoke-virtual {p1, v1}, Lcom/alensw/ui/c/cu;->e(I)V

    if-eqz v0, :cond_3

    invoke-virtual {p0, v6}, Lcom/alensw/ui/c/cx;->a(Lcom/alensw/ui/c/cu;)V

    :cond_3
    if-eqz v6, :cond_7

    iget-object v0, p1, Lcom/alensw/ui/c/cu;->E:Landroid/content/Intent;

    invoke-virtual {v6, v0}, Lcom/alensw/ui/c/cu;->b(Landroid/content/Intent;)V

    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lcom/alensw/ui/c/cu;->e(I)V

    iget-object v0, v6, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_7

    invoke-virtual {v6}, Lcom/alensw/ui/c/cu;->h()Landroid/graphics/RectF;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {p1, v2, v0}, Lcom/alensw/ui/c/cu;->a(ZLandroid/graphics/RectF;)J

    move-result-wide v2

    :goto_3
    if-eqz v6, :cond_4

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    sget-boolean v0, Lcom/alensw/ui/c/cx;->G:Z

    if-eqz v0, :cond_4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v7, v6, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    new-instance v0, Lcom/alensw/ui/c/cz;

    invoke-direct {v0, p0, p1, v6}, Lcom/alensw/ui/c/cz;-><init>(Lcom/alensw/ui/c/cx;Lcom/alensw/ui/c/cu;Lcom/alensw/ui/c/cu;)V

    iget-object v6, p0, Lcom/alensw/ui/c/cx;->e:Lcom/alensw/ui/view/ContainerLayout;

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v6, v0, v2, v3}, Lcom/alensw/ui/view/ContainerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    move v2, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move-wide v2, v4

    goto :goto_3

    :cond_7
    move-object v0, v3

    goto :goto_2
.end method

.method protected a_()Landroid/view/ViewGroup;
    .locals 1

    new-instance v0, Lcom/alensw/ui/view/ContainerLayout;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/ContainerLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/cx;->setContentView(Landroid/view/View;)V

    return-object v0
.end method

.method public b(Z)J
    .locals 2

    iget v0, p0, Lcom/alensw/ui/c/cx;->b:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alensw/ui/c/cx;->c:F

    mul-float/2addr v1, v0

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0

    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_0
.end method

.method public b(Lcom/alensw/ui/c/cu;)V
    .locals 12

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->c()Lcom/alensw/ui/c/cu;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/c/cx;->e:Lcom/alensw/ui/view/ContainerLayout;

    iget-object v1, v6, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ContainerLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v6}, Lcom/alensw/ui/c/cu;->h()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v6, v8}, Lcom/alensw/ui/c/cu;->e(I)V

    iget-object v3, v6, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v3, p0, Lcom/alensw/ui/c/cx;->f:Ljava/util/Stack;

    invoke-virtual {v3, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/alensw/ui/c/cx;->e:Lcom/alensw/ui/view/ContainerLayout;

    iget-object v7, p1, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    invoke-virtual {v3, v7, v1}, Lcom/alensw/ui/view/ContainerLayout;->addView(Landroid/view/View;I)V

    iget-object v1, p1, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/alensw/ui/c/cx;->a(Lcom/alensw/ui/c/cu;)V

    iget v1, p0, Lcom/alensw/ui/c/cx;->a:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/alensw/ui/c/cu;->e(I)V

    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p1, v8, v0}, Lcom/alensw/ui/c/cu;->a(ZLandroid/graphics/RectF;)J

    move-result-wide v2

    :goto_1
    if-eqz v6, :cond_1

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    sget-boolean v1, Lcom/alensw/ui/c/cx;->G:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v1, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v8, 0x3

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x4

    div-long/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v7, v6, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    if-eqz v0, :cond_1

    new-instance v0, Lcom/alensw/ui/c/cy;

    invoke-direct {v0, p0, v6}, Lcom/alensw/ui/c/cy;-><init>(Lcom/alensw/ui/c/cx;Lcom/alensw/ui/c/cu;)V

    iget-object v1, p0, Lcom/alensw/ui/c/cx;->e:Lcom/alensw/ui/view/ContainerLayout;

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/alensw/ui/view/ContainerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :cond_2
    move-wide v2, v4

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public c()Lcom/alensw/ui/c/cu;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/cx;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/cx;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/c/cu;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Landroid/view/Menu;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->c()Lcom/alensw/ui/c/cu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alensw/ui/c/cu;->c(Landroid/view/Menu;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/alensw/ui/c/cu;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alensw/ui/c/cx;->a(Lcom/alensw/ui/c/cu;Z)Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/cx;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method protected d(Landroid/view/Menu;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->c()Lcom/alensw/ui/c/cu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alensw/ui/c/cu;->d(Landroid/view/Menu;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->c()Lcom/alensw/ui/c/cu;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alensw/ui/c/cu;->a(Landroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alensw/ui/activity/p;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->c()Lcom/alensw/ui/c/cu;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v0}, Lcom/alensw/ui/c/cu;->a(Landroid/view/KeyEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alensw/ui/activity/p;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->c()Lcom/alensw/ui/c/cu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alensw/ui/c/cu;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alensw/ui/activity/p;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected e()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/c/cx;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/alensw/ui/c/cx;->a(Lcom/alensw/ui/c/cu;Z)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()[Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->c()Lcom/alensw/ui/c/cu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alensw/ui/c/cu;->j()[Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j(Z)Landroid/view/animation/Interpolator;
    .locals 1

    new-instance v0, Lcom/alensw/ui/view/cc;

    invoke-direct {v0}, Lcom/alensw/ui/view/cc;-><init>()V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/alensw/ui/activity/p;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->c()Lcom/alensw/ui/c/cu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alensw/ui/c/cu;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->c()Lcom/alensw/ui/c/cu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alensw/ui/c/cu;->f()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->d()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/cx;->c(Lcom/alensw/ui/c/cu;)Z

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/alensw/ui/activity/p;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/p;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/alensw/ui/c/cx;->a:I

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e0001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v2, 0x190

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/c/cx;->b:I

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_1

    const-string v0, "transition_animation_scale"

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/alensw/ui/c/cx;->c:F

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->a_()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v2, v0, Lcom/alensw/ui/view/ContainerLayout;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/alensw/ui/view/ContainerLayout;

    iput-object v0, p0, Lcom/alensw/ui/c/cx;->e:Lcom/alensw/ui/view/ContainerLayout;

    :goto_1
    iget-object v0, p0, Lcom/alensw/ui/c/cx;->e:Lcom/alensw/ui/view/ContainerLayout;

    new-instance v2, Lcom/alensw/ui/c/da;

    invoke-direct {v2, p0}, Lcom/alensw/ui/c/da;-><init>(Lcom/alensw/ui/c/cx;)V

    invoke-virtual {v0, v2}, Lcom/alensw/ui/view/ContainerLayout;->setOnInsetsListener(Lcom/alensw/ui/view/u;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "activity_extras"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object p1, v0

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v0, "iteraction_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    :goto_2
    if-ge v1, v3, :cond_3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iteraction_class_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iteraction_intent_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iteraction_state_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/alensw/ui/c/cx;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    const-string v0, "transition_animation_scale"

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/view/ContainerLayout;

    iput-object v0, p0, Lcom/alensw/ui/c/cx;->e:Lcom/alensw/ui/view/ContainerLayout;

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    :try_start_1
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/alensw/ui/c/db;

    invoke-direct {v1, p0}, Lcom/alensw/ui/c/db;-><init>(Lcom/alensw/ui/c/cx;)V

    invoke-virtual {v0, v1, p0}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_4
    return-void

    :catch_1
    move-exception v0

    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/p;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->c()Lcom/alensw/ui/c/cu;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/alensw/ui/c/cu;->a(Landroid/view/Menu;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/alensw/ui/activity/p;->onDestroy()V

    iput v1, p0, Lcom/alensw/ui/c/cx;->a:I

    :goto_0
    iget-object v0, p0, Lcom/alensw/ui/c/cx;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/cx;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/c/cu;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cu;->e(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->c()Lcom/alensw/ui/c/cu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/alensw/ui/c/cu;->a(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alensw/ui/activity/p;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->c()Lcom/alensw/ui/c/cu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alensw/ui/c/cu;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alensw/ui/activity/p;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/p;->onOptionsMenuClosed(Landroid/view/Menu;)V

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->c()Lcom/alensw/ui/c/cu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alensw/ui/c/cu;->e(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/alensw/ui/activity/p;->onPause()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/alensw/ui/c/cx;->a:I

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->c()Lcom/alensw/ui/c/cu;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cu;->e(I)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/p;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->c()Lcom/alensw/ui/c/cu;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/alensw/ui/c/cu;->b(Landroid/view/Menu;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/alensw/ui/activity/p;->onResume()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/alensw/ui/c/cx;->a:I

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->c()Lcom/alensw/ui/c/cu;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cu;->e(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/p;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alensw/ui/c/cx;->f:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/c/cu;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v3}, Lcom/alensw/ui/c/cu;->b(Landroid/os/Bundle;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iteraction_class_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iteraction_intent_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/alensw/ui/c/cu;->E:Landroid/content/Intent;

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iteraction_state_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v0, "iteraction_count"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/alensw/ui/activity/p;->onStart()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/alensw/ui/c/cx;->a:I

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/alensw/ui/activity/p;->onStop()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/alensw/ui/c/cx;->a:I

    return-void
.end method

.method protected r()V
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/c/cx;->c()Lcom/alensw/ui/c/cu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alensw/ui/c/cu;->k()V

    :cond_0
    return-void
.end method

.method public recreate()V
    .locals 0

    invoke-super {p0}, Lcom/alensw/ui/activity/p;->recreate()V

    return-void
.end method
