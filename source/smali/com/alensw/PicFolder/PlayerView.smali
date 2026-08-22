.class Lcom/alensw/PicFolder/PlayerView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Instantiatable"
    }
.end annotation


# instance fields
.field protected final a:Landroid/view/GestureDetector$OnGestureListener;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Landroid/widget/SeekBar;

.field private i:Landroid/widget/SeekBar;

.field private j:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final k:Landroid/os/Handler;

.field private final l:Landroid/widget/VideoView;

.field private final m:Landroid/view/GestureDetector;

.field private n:I

.field private o:I

.field private p:F

.field private q:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alensw/PicFolder/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/alensw/PicFolder/PlayerView;->n:I

    new-instance v0, Lcom/alensw/PicFolder/ax;

    invoke-direct {v0, p0}, Lcom/alensw/PicFolder/ax;-><init>(Lcom/alensw/PicFolder/PlayerView;)V

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->a:Landroid/view/GestureDetector$OnGestureListener;

    iput v1, p0, Lcom/alensw/PicFolder/PlayerView;->o:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alensw/PicFolder/PlayerView;->p:F

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->q:[F

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->k:Landroid/os/Handler;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerView;->a:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v2, p0, Lcom/alensw/PicFolder/PlayerView;->k:Landroid/os/Handler;

    invoke-direct {v0, p1, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->m:Landroid/view/GestureDetector;

    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/alensw/PicFolder/PlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alensw/PicFolder/PlayerView;->b:I

    return-void
.end method

.method static synthetic a(Lcom/alensw/PicFolder/PlayerView;F)F
    .locals 0

    iput p1, p0, Lcom/alensw/PicFolder/PlayerView;->p:F

    return p1
.end method

.method static synthetic a(Lcom/alensw/PicFolder/PlayerView;)I
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/PlayerView;->b:I

    return v0
.end method

.method static synthetic a(Lcom/alensw/PicFolder/PlayerView;I)I
    .locals 0

    iput p1, p0, Lcom/alensw/PicFolder/PlayerView;->n:I

    return p1
.end method

.method static synthetic b(Lcom/alensw/PicFolder/PlayerView;I)I
    .locals 0

    iput p1, p0, Lcom/alensw/PicFolder/PlayerView;->c:I

    return p1
.end method

.method static synthetic b(Lcom/alensw/PicFolder/PlayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/PicFolder/PlayerView;->f()V

    return-void
.end method

.method static synthetic c(Lcom/alensw/PicFolder/PlayerView;I)I
    .locals 0

    iput p1, p0, Lcom/alensw/PicFolder/PlayerView;->d:I

    return p1
.end method

.method static synthetic c(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->j:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic d(Lcom/alensw/PicFolder/PlayerView;)I
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/PlayerView;->n:I

    return v0
.end method

.method static synthetic e(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->h:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic f(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    return-object v0
.end method

.method private f()V
    .locals 7

    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerView;->e()[F

    move-result-object v1

    iget v6, p0, Lcom/alensw/PicFolder/PlayerView;->p:F

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/alensw/PicFolder/PlayerView;->o:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/alensw/PicFolder/PlayerView;->o:I

    iget v2, p0, Lcom/alensw/PicFolder/PlayerView;->o:I

    aget v6, v1, v2

    iget v2, p0, Lcom/alensw/PicFolder/PlayerView;->p:F

    sub-float v2, v6, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3d4ccccd    # 0.05f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    iget v0, p0, Lcom/alensw/PicFolder/PlayerView;->p:F

    cmpl-float v0, v6, v0

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/alensw/PicFolder/PlayerView;->p:F

    sub-float v5, v6, v4

    new-instance v0, Lcom/alensw/PicFolder/az;

    iget-object v2, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    new-instance v3, Lcom/alensw/ui/view/cc;

    invoke-direct {v3}, Lcom/alensw/ui/view/cc;-><init>()V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alensw/PicFolder/az;-><init>(Lcom/alensw/PicFolder/PlayerView;Landroid/view/View;Landroid/view/animation/Interpolator;FFF)V

    sget v1, Lcom/alensw/PicFolder/QuickApp;->i:I

    int-to-long v2, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/alensw/PicFolder/az;->a(JZ)V

    goto :goto_1
.end method

.method static synthetic g(Lcom/alensw/PicFolder/PlayerView;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->i:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic h(Lcom/alensw/PicFolder/PlayerView;)I
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/PlayerView;->o:I

    return v0
.end method


# virtual methods
.method public final a()Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    return-object v0
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 7

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v0, "com.android.browser.headers"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "setVideoURI"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/net/Uri;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/util/Map;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v4, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    :goto_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    invoke-virtual {v0, p2}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    return-void

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v2, v5

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public a(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    new-instance v1, Lcom/alensw/PicFolder/ay;

    invoke-direct {v1, p0, p1}, Lcom/alensw/PicFolder/ay;-><init>(Lcom/alensw/PicFolder/PlayerView;Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public a(Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/PlayerView;->h:Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/alensw/PicFolder/PlayerView;->i:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/alensw/PicFolder/PlayerView;->j:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public b()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alensw/PicFolder/PlayerView;->f:Z

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/alensw/PicFolder/PlayerView;->e:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alensw/PicFolder/PlayerView;->g:Z

    iget-boolean v0, p0, Lcom/alensw/PicFolder/PlayerView;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lcom/alensw/PicFolder/PlayerView;->f:Z

    if-eqz v0, :cond_0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    iget v1, p0, Lcom/alensw/PicFolder/PlayerView;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/alensw/PicFolder/PlayerView;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_2
    iget v0, p0, Lcom/alensw/PicFolder/PlayerView;->e:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    iget v1, p0, Lcom/alensw/PicFolder/PlayerView;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public e()[F
    .locals 6

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/alensw/PicFolder/PlayerView;->c:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/alensw/PicFolder/PlayerView;->c:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    :goto_0
    iget v3, p0, Lcom/alensw/PicFolder/PlayerView;->d:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/alensw/PicFolder/PlayerView;->d:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    :goto_1
    iget-object v3, p0, Lcom/alensw/PicFolder/PlayerView;->q:[F

    const/4 v4, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aput v5, v3, v4

    iget-object v3, p0, Lcom/alensw/PicFolder/PlayerView;->q:[F

    const/4 v4, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v3, v4

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->q:[F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->q:[F

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alensw/PicFolder/PlayerActivity;

    invoke-virtual {v0, p1}, Lcom/alensw/PicFolder/PlayerActivity;->a(Landroid/graphics/Rect;)V

    return v1
.end method

.method public onLayout(ZIIII)V
    .locals 5

    iget v0, p0, Lcom/alensw/PicFolder/PlayerView;->o:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alensw/PicFolder/PlayerView;->p:F

    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerView;->q:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    :goto_0
    return-void

    :cond_0
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    iget v2, p0, Lcom/alensw/PicFolder/PlayerView;->c:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/alensw/PicFolder/PlayerView;->d:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/alensw/PicFolder/PlayerView;->c:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alensw/PicFolder/PlayerView;->p:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/alensw/PicFolder/PlayerView;->d:I

    int-to-float v3, v3

    iget v4, p0, Lcom/alensw/PicFolder/PlayerView;->p:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    sub-int v0, v1, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    add-int p4, p2, v2

    add-int p5, p3, v3

    :cond_1
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->l:Landroid/widget/VideoView;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/VideoView;->layout(IIII)V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget v0, p0, Lcom/alensw/PicFolder/PlayerView;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alensw/PicFolder/PlayerView;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/PicFolder/PlayerView;->o:I

    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerView;->e()[F

    move-result-object v0

    iget v1, p0, Lcom/alensw/PicFolder/PlayerView;->o:I

    aget v0, v0, v1

    iput v0, p0, Lcom/alensw/PicFolder/PlayerView;->p:F

    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->m:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iget v0, p0, Lcom/alensw/PicFolder/PlayerView;->n:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->j:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alensw/PicFolder/PlayerView;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->h:Landroid/widget/SeekBar;

    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/alensw/PicFolder/PlayerView;->n:I

    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerView;->j:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v1, v0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerView;->i:Landroid/widget/SeekBar;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alensw/PicFolder/PlayerActivity;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/PlayerActivity;->f(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
