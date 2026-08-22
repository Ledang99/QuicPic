.class public Lcom/alensw/ui/view/ContainerLayout;
.super Landroid/widget/FrameLayout;


# static fields
.field public static final b:Z


# instance fields
.field private a:Lcom/alensw/ui/view/u;

.field private c:Z

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Landroid/graphics/Rect;

.field private final i:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alensw/ui/view/ContainerLayout;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alensw/ui/view/ContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v7, -0x2

    const/4 v6, -0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/ContainerLayout;->h:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/view/ContainerLayout;->i:Landroid/graphics/Paint;

    sget-boolean v0, Lcom/alensw/ui/view/ContainerLayout;->b:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    const v5, 0x7f010005

    invoke-virtual {v0, v5, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/alensw/ui/view/ContainerLayout;->d:I

    const v5, 0x7f010006

    invoke-virtual {v0, v5, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    instance-of v3, p1, Lcom/alensw/ui/activity/ao;

    if-eqz v3, :cond_4

    check-cast p1, Lcom/alensw/ui/activity/ao;

    iget v3, p1, Lcom/alensw/ui/activity/ao;->T:I

    if-eq v3, v6, :cond_0

    iget v3, p1, Lcom/alensw/ui/activity/ao;->T:I

    if-ne v3, v7, :cond_3

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    iget v0, p1, Lcom/alensw/ui/activity/ao;->V:I

    :cond_1
    iput v0, p0, Lcom/alensw/ui/view/ContainerLayout;->e:I

    :goto_1
    const-string v0, "status_bar_height"

    const-string v3, "dimen"

    const-string v5, "android"

    invoke-virtual {v4, v0, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v3, "navigation_bar_size"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v0, :cond_9

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/alensw/ui/view/ContainerLayout;->g:I

    if-eqz v3, :cond_a

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_3
    iput v0, p0, Lcom/alensw/ui/view/ContainerLayout;->f:I

    invoke-virtual {p0}, Lcom/alensw/ui/view/ContainerLayout;->getSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/alensw/ui/view/ContainerLayout;->c:Z

    :goto_4
    return-void

    :cond_3
    move v3, v1

    goto :goto_0

    :cond_4
    instance-of v3, p1, Lcom/alensw/ui/activity/ba;

    if-eqz v3, :cond_8

    check-cast p1, Lcom/alensw/ui/activity/ba;

    iget v3, p1, Lcom/alensw/ui/activity/ba;->a:I

    if-eq v3, v6, :cond_5

    iget v3, p1, Lcom/alensw/ui/activity/ba;->a:I

    if-ne v3, v7, :cond_7

    :cond_5
    move v3, v2

    :goto_5
    if-eqz v3, :cond_6

    iget v0, p1, Lcom/alensw/ui/activity/ba;->b:I

    :cond_6
    iput v0, p0, Lcom/alensw/ui/view/ContainerLayout;->e:I

    goto :goto_1

    :cond_7
    move v3, v1

    goto :goto_5

    :cond_8
    iput v0, p0, Lcom/alensw/ui/view/ContainerLayout;->e:I

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_2

    :cond_a
    move v0, v1

    goto :goto_3

    :cond_b
    iput v1, p0, Lcom/alensw/ui/view/ContainerLayout;->d:I

    iput v1, p0, Lcom/alensw/ui/view/ContainerLayout;->e:I

    iput v1, p0, Lcom/alensw/ui/view/ContainerLayout;->f:I

    iput v1, p0, Lcom/alensw/ui/view/ContainerLayout;->g:I

    iput-boolean v1, p0, Lcom/alensw/ui/view/ContainerLayout;->c:Z

    goto :goto_4
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    sget-boolean v0, Lcom/alensw/ui/view/ContainerLayout;->b:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/alensw/ui/view/ContainerLayout;->c:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alensw/ui/view/ContainerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_3

    move-object v6, v0

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x8000000

    and-int/2addr v3, v0

    if-eqz v3, :cond_4

    move v10, v2

    :goto_0
    const/high16 v3, 0x4000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    move v3, v2

    :goto_1
    if-nez v10, :cond_0

    if-eqz v3, :cond_3

    :cond_0
    iget-object v11, p0, Lcom/alensw/ui/view/ContainerLayout;->h:Landroid/graphics/Rect;

    iget v0, v11, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_6

    move v7, v2

    :goto_2
    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    move v9, v0

    :goto_3
    invoke-virtual {p0}, Lcom/alensw/ui/view/ContainerLayout;->getWidth()I

    move-result v2

    if-eqz v7, :cond_8

    iget v0, p0, Lcom/alensw/ui/view/ContainerLayout;->f:I

    :goto_4
    sub-int v12, v2, v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/ContainerLayout;->getHeight()I

    move-result v13

    if-eqz v3, :cond_1

    iget v0, p0, Lcom/alensw/ui/view/ContainerLayout;->g:I

    if-eqz v0, :cond_9

    iget v0, v11, Landroid/graphics/Rect;->top:I

    if-le v0, v9, :cond_9

    iget v0, p0, Lcom/alensw/ui/view/ContainerLayout;->g:I

    :goto_5
    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/view/ContainerLayout;->i:Landroid/graphics/Paint;

    iget v3, p0, Lcom/alensw/ui/view/ContainerLayout;->e:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v12

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alensw/ui/view/ContainerLayout;->i:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    if-eqz v10, :cond_3

    if-nez v7, :cond_3

    instance-of v0, v6, Lcom/alensw/ui/activity/ao;

    if-eqz v0, :cond_a

    check-cast v6, Lcom/alensw/ui/activity/ao;

    invoke-virtual {v6}, Lcom/alensw/ui/activity/ao;->k()I

    move-result v9

    :cond_2
    :goto_6
    iget v0, p0, Lcom/alensw/ui/view/ContainerLayout;->f:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/alensw/ui/view/ContainerLayout;->f:I

    :goto_7
    if-lez v0, :cond_3

    iget-object v2, p0, Lcom/alensw/ui/view/ContainerLayout;->i:Landroid/graphics/Paint;

    iget v3, p0, Lcom/alensw/ui/view/ContainerLayout;->d:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sub-int v0, v13, v0

    int-to-float v2, v0

    int-to-float v3, v12

    int-to-float v4, v13

    iget-object v5, p0, Lcom/alensw/ui/view/ContainerLayout;->i:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void

    :cond_4
    move v10, v8

    goto :goto_0

    :cond_5
    move v3, v8

    goto :goto_1

    :cond_6
    move v7, v8

    goto :goto_2

    :cond_7
    move v9, v8

    goto :goto_3

    :cond_8
    move v0, v8

    goto :goto_4

    :cond_9
    iget v0, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v9

    goto :goto_5

    :cond_a
    invoke-static {v6}, Lcom/alensw/ui/activity/ao;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    move v9, v8

    goto :goto_6

    :cond_b
    if-eqz v7, :cond_c

    iget v0, v11, Landroid/graphics/Rect;->right:I

    goto :goto_7

    :cond_c
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v9

    goto :goto_7
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/ContainerLayout;->h:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alensw/ui/view/ContainerLayout;->a:Lcom/alensw/ui/view/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/ContainerLayout;->a:Lcom/alensw/ui/view/u;

    invoke-interface {v0, p1}, Lcom/alensw/ui/view/u;->a(Landroid/graphics/Rect;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowSystemUiVisibilityChanged(I)V

    sget-boolean v0, Lcom/alensw/ui/view/ContainerLayout;->b:Z

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/alensw/ui/view/ContainerLayout;->c:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/alensw/ui/view/ContainerLayout;->c:Z

    invoke-virtual {p0}, Lcom/alensw/ui/view/ContainerLayout;->invalidate()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnInsetsListener(Lcom/alensw/ui/view/u;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/ContainerLayout;->a:Lcom/alensw/ui/view/u;

    return-void
.end method
