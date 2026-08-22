.class public Lcom/alensw/ui/c/as;
.super Lcom/alensw/ui/c/a;


# instance fields
.field private A:I

.field private B:Landroid/net/Uri;

.field private L:Lcom/alensw/a/as;

.field private M:Lcom/alensw/a/as;

.field private N:Lcom/alensw/a/as;

.field private final O:Lcom/alensw/ui/view/q;

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:Z

.field private V:Z

.field private W:J

.field private X:Ljava/lang/Runnable;

.field private Y:Ljava/util/ArrayList;

.field private Z:Ljava/util/ArrayList;

.field private aa:Landroid/view/animation/Interpolator;

.field private final ab:Landroid/view/animation/Animation$AnimationListener;

.field private final ac:Ljava/lang/Runnable;

.field private f:Lcom/alensw/ui/view/PictureView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Lcom/alensw/bean/CommonFolder;

.field private l:Lcom/alensw/bean/CommonFile;

.field private m:Lcom/alensw/ui/c/df;

.field private n:Lcom/alensw/b/h/j;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:[F

.field private final y:Lcom/alensw/ui/d/g;

.field private final z:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alensw/ui/c/a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alensw/ui/c/as;->p:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/ui/c/as;->q:Z

    new-instance v0, Lcom/alensw/ui/d/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alensw/ui/d/g;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/c/as;->y:Lcom/alensw/ui/d/g;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/c/as;->z:Landroid/graphics/Rect;

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/alensw/ui/c/as;->B:Landroid/net/Uri;

    new-instance v0, Lcom/alensw/ui/c/be;

    invoke-direct {v0, p0}, Lcom/alensw/ui/c/be;-><init>(Lcom/alensw/ui/c/as;)V

    iput-object v0, p0, Lcom/alensw/ui/c/as;->O:Lcom/alensw/ui/view/q;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alensw/ui/c/as;->Q:I

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/c/as;->aa:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/alensw/ui/c/au;

    invoke-direct {v0, p0}, Lcom/alensw/ui/c/au;-><init>(Lcom/alensw/ui/c/as;)V

    iput-object v0, p0, Lcom/alensw/ui/c/as;->ab:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/alensw/ui/c/aw;

    invoke-direct {v0, p0}, Lcom/alensw/ui/c/aw;-><init>(Lcom/alensw/ui/c/as;)V

    iput-object v0, p0, Lcom/alensw/ui/c/as;->ac:Ljava/lang/Runnable;

    return-void
.end method

.method private H()V
    .locals 1

    invoke-direct {p0}, Lcom/alensw/ui/c/as;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alensw/ui/c/as;->I()V

    :cond_0
    return-void
.end method

.method private I()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/alensw/ui/c/as;->o()V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    invoke-virtual {v0}, Lcom/alensw/a/ao;->b()V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->X:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    new-instance v0, Lcom/alensw/ui/c/av;

    invoke-direct {v0, p0}, Lcom/alensw/ui/c/av;-><init>(Lcom/alensw/ui/c/as;)V

    iput-object v0, p0, Lcom/alensw/ui/c/as;->X:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lcom/alensw/ui/c/as;->b(Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alensw/ui/c/as;->ac:Ljava/lang/Runnable;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/alensw/ui/c/as;->z()Z

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v1}, Lcom/alensw/ui/view/PictureView;->getKeepScreenOn()Z

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/view/PictureView;->setKeepScreenOn(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/as;->X:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/as;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alensw/ui/c/as;->ac:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alensw/ui/c/as;->X:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/alensw/ui/c/as;->X:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/alensw/ui/c/as;->Y:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/alensw/ui/c/as;->Z:Ljava/util/ArrayList;

    iput v2, p0, Lcom/alensw/ui/c/as;->T:I

    iget-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PictureView;->h()V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->g:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/alensw/ui/c/as;->d(Z)V

    goto :goto_0
.end method

.method public static a(Lcom/alensw/bean/CommonFolder;Z)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget v1, p0, Lcom/alensw/bean/CommonFolder;->k:I

    invoke-virtual {p0, v1}, Lcom/alensw/bean/CommonFolder;->b(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "QuickPic.folder"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "QuickPic.slide_show"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/alensw/ui/c/as;Lcom/alensw/a/as;)Lcom/alensw/a/as;
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/as;->M:Lcom/alensw/a/as;

    return-object p1
.end method

.method private a(Lcom/alensw/bean/CommonFile;Z)Lcom/alensw/b/h/j;
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    invoke-virtual {v2, v1}, Lcom/alensw/a/ao;->a(Landroid/net/Uri;)Lcom/alensw/b/h/j;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/as;->L:Lcom/alensw/a/as;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->L:Lcom/alensw/a/as;

    invoke-virtual {v0, v1}, Lcom/alensw/a/as;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->L:Lcom/alensw/a/as;

    invoke-virtual {v0}, Lcom/alensw/a/as;->a()Lcom/alensw/b/h/j;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/as;->N:Lcom/alensw/a/as;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/as;->N:Lcom/alensw/a/as;

    invoke-virtual {v0, v1}, Lcom/alensw/a/as;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/as;->N:Lcom/alensw/a/as;

    invoke-virtual {v0}, Lcom/alensw/a/as;->a()Lcom/alensw/b/h/j;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/alensw/ui/c/as;->o()V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->b:Landroid/os/Handler;

    invoke-virtual {v2, p1, v3, v0}, Lcom/alensw/a/ao;->a(Lcom/alensw/bean/CommonFile;ILandroid/os/Handler;)Lcom/alensw/a/as;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/as;->L:Lcom/alensw/a/as;

    iget-object v0, p0, Lcom/alensw/ui/c/as;->L:Lcom/alensw/a/as;

    invoke-virtual {v0}, Lcom/alensw/a/as;->a()Lcom/alensw/b/h/j;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alensw/ui/c/as;->N:Lcom/alensw/a/as;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/c/as;->N:Lcom/alensw/a/as;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/a/as;->cancel(Z)Z

    :cond_4
    iget-object v0, p0, Lcom/alensw/ui/c/as;->b:Landroid/os/Handler;

    invoke-virtual {v2, p1, v3, v0}, Lcom/alensw/a/ao;->a(Lcom/alensw/bean/CommonFile;ILandroid/os/Handler;)Lcom/alensw/a/as;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/as;->N:Lcom/alensw/a/as;

    iget-object v0, p0, Lcom/alensw/ui/c/as;->N:Lcom/alensw/a/as;

    invoke-virtual {v0}, Lcom/alensw/a/as;->a()Lcom/alensw/b/h/j;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alensw/ui/c/as;Lcom/alensw/b/h/j;)Lcom/alensw/b/h/j;
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/as;->n:Lcom/alensw/b/h/j;

    return-object p1
.end method

.method static synthetic a(Lcom/alensw/ui/c/as;Lcom/alensw/bean/CommonFile;Z)Lcom/alensw/b/h/j;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alensw/ui/c/as;->a(Lcom/alensw/bean/CommonFile;Z)Lcom/alensw/b/h/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alensw/ui/c/as;Lcom/alensw/bean/CommonFile;)Lcom/alensw/bean/CommonFile;
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    return-object p1
.end method

.method static synthetic a(Lcom/alensw/ui/c/as;)Lcom/alensw/ui/view/PictureView;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/alensw/bean/CommonFile;)V
    .locals 7

    invoke-virtual {p1}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alensw/bean/CommonFile;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lcom/alensw/b/j/a;->c(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alensw/ui/c/at;

    const v1, 0x7f0a0048

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/alensw/ui/c/at;-><init>(Landroid/app/Activity;Ljava/lang/String;ILandroid/net/Uri;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alensw/ui/c/at;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/alensw/bean/CommonFile;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, v6}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, v4, v6}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alensw/ui/c/as;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/ui/c/as;->d(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/alensw/ui/c/as;->h:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/c/as;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-boolean v2, Lcom/alensw/ui/activity/ao;->G:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/alensw/ui/c/cx;->c(Z)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/alensw/ui/c/as;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private b(IZ)Landroid/view/animation/Animation;
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PictureView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v1}, Lcom/alensw/ui/view/PictureView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    iget v2, v2, Lcom/alensw/ui/view/PictureView;->ac:I

    invoke-static {p1, p2, v0, v1, v2}, Lcom/alensw/ui/view/e;->a(IZIII)Landroid/view/animation/Animation;

    move-result-object v0

    iget v1, p0, Lcom/alensw/ui/c/as;->Q:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/as;->aa:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/alensw/ui/c/as;)Lcom/alensw/bean/CommonFolder;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    return-object v0
.end method

.method private b(Lcom/alensw/b/h/j;)V
    .locals 10

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Lcom/alensw/b/h/j;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/alensw/ui/c/as;->b(Z)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    invoke-virtual {v1, p1}, Lcom/alensw/a/ao;->a(Lcom/alensw/b/h/j;)V

    iget-wide v4, p0, Lcom/alensw/ui/c/as;->W:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-eqz v0, :cond_1

    iput-wide v4, p0, Lcom/alensw/ui/c/as;->W:J

    :cond_1
    iget v1, p0, Lcom/alensw/ui/c/as;->R:I

    int-to-long v6, v1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alensw/ui/c/as;->W:J

    sub-long/2addr v4, v8

    if-eqz v0, :cond_3

    move-wide v0, v2

    :goto_2
    iget-object v2, p0, Lcom/alensw/ui/c/as;->b:Landroid/os/Handler;

    iget-object v3, p0, Lcom/alensw/ui/c/as;->X:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/alensw/ui/c/as;->b:Landroid/os/Handler;

    iget-object v3, p0, Lcom/alensw/ui/c/as;->X:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x32

    sub-long v2, v6, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_2
.end method

.method private b(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/alensw/ui/c/as;->V:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/c/as;->Y:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/as;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/alensw/ui/c/as;->x()V

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/as;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/as;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/c/as;->S:I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget v2, p0, Lcom/alensw/ui/c/as;->S:I

    invoke-virtual {v0, v2}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    if-nez p1, :cond_3

    iput-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    :cond_3
    if-eqz p1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_1
    iput-wide v2, p0, Lcom/alensw/ui/c/as;->W:J

    iget-object v2, p0, Lcom/alensw/ui/c/as;->L:Lcom/alensw/a/as;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alensw/ui/c/as;->L:Lcom/alensw/a/as;

    invoke-virtual {v2, v1}, Lcom/alensw/a/as;->cancel(Z)Z

    :cond_4
    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    invoke-virtual {v1}, Lcom/alensw/a/ao;->b()V

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alensw/ui/c/as;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Lcom/alensw/a/ao;->a(Lcom/alensw/bean/CommonFile;ILandroid/os/Handler;)Lcom/alensw/a/as;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/as;->L:Lcom/alensw/a/as;

    return-void

    :cond_5
    if-eqz p1, :cond_6

    iget v0, p0, Lcom/alensw/ui/c/as;->S:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/alensw/ui/c/as;->a(IZ)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/c/as;->S:I

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget v0, v0, Lcom/alensw/bean/CommonFolder;->k:I

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget v0, v0, Lcom/alensw/bean/CommonFolder;->k:I

    iget-object v2, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v2}, Lcom/alensw/bean/CommonFolder;->o()I

    move-result v2

    if-ge v0, v2, :cond_7

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget v0, v0, Lcom/alensw/bean/CommonFolder;->k:I

    :goto_2
    iput v0, p0, Lcom/alensw/ui/c/as;->S:I

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/alensw/ui/c/as;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alensw/ui/c/as;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/alensw/ui/c/as;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/ui/c/as;->o()V

    return-void
.end method

.method static synthetic c(Lcom/alensw/ui/c/as;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alensw/ui/c/as;->t:Z

    return p1
.end method

.method static synthetic d(Lcom/alensw/ui/c/as;)Lcom/alensw/bean/CommonFile;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    return-object v0
.end method

.method static synthetic d(Lcom/alensw/ui/c/as;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/ui/c/as;->a(Z)V

    return-void
.end method

.method private d(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0, v2}, Lcom/alensw/ui/view/PictureView;->a(Landroid/graphics/Bitmap$Config;)Lcom/alensw/b/h/j;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v1}, Lcom/alensw/ui/view/PictureView;->getPictureType()I

    move-result v1

    if-ne v1, v4, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PictureView;->getPicture()Lcom/alensw/b/h/j;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alensw/ui/c/as;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/alensw/ui/c/as;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/alensw/ui/c/as;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    instance-of v2, v0, Lcom/alensw/b/h/j;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    :cond_0
    if-eqz v1, :cond_1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/alensw/ui/c/as;->F()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alensw/b/h/j;->d()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/alensw/ui/c/as;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v2, p0, Lcom/alensw/ui/c/as;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alensw/ui/c/as;->g:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/alensw/b/h/j;->a(Landroid/graphics/Matrix;FFI)V

    iget-object v1, p0, Lcom/alensw/ui/c/as;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method

.method static synthetic e(Lcom/alensw/ui/c/as;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/ui/c/as;->n()V

    return-void
.end method

.method static synthetic e(Lcom/alensw/ui/c/as;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/ui/c/as;->b(Z)V

    return-void
.end method

.method static synthetic f(Lcom/alensw/ui/c/as;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/alensw/ui/c/as;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/ui/c/as;->q:Z

    return v0
.end method

.method static synthetic h(Lcom/alensw/ui/c/as;)Lcom/alensw/b/h/j;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->n:Lcom/alensw/b/h/j;

    return-object v0
.end method

.method static synthetic i(Lcom/alensw/ui/c/as;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/ui/c/as;->r:Z

    return v0
.end method

.method static synthetic j(Lcom/alensw/ui/c/as;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/ui/c/as;->t:Z

    return v0
.end method

.method static synthetic k(Lcom/alensw/ui/c/as;)Lcom/alensw/a/as;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->M:Lcom/alensw/a/as;

    return-object v0
.end method

.method static synthetic l(Lcom/alensw/ui/c/as;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/ui/c/as;->v:Z

    return v0
.end method

.method static synthetic m(Lcom/alensw/ui/c/as;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/ui/c/as;->U:Z

    return v0
.end method

.method private n()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v2}, Lcom/alensw/bean/CommonFolder;->o()I

    move-result v2

    iget-object v3, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget v3, v3, Lcom/alensw/bean/CommonFolder;->k:I

    if-ltz v3, :cond_0

    if-ge v3, v2, :cond_0

    if-ne v2, v1, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0, v3}, Lcom/alensw/bean/CommonFolder;->c(I)Z

    invoke-virtual {p0}, Lcom/alensw/ui/c/as;->E()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    iget v4, v4, Lcom/alensw/ui/view/PictureView;->ad:I

    int-to-long v4, v4

    invoke-static {v0}, Lcom/alensw/ui/view/e;->a(Z)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v7, Lcom/alensw/ui/c/bc;

    invoke-direct {v7, p0}, Lcom/alensw/ui/c/bc;-><init>(Lcom/alensw/ui/c/as;)V

    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-direct {p0, v1}, Lcom/alensw/ui/c/as;->d(Z)V

    iget-object v7, p0, Lcom/alensw/ui/c/as;->g:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/alensw/ui/c/as;->g:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/alensw/ui/c/as;->q:Z

    iget-object v2, p0, Lcom/alensw/ui/c/as;->O:Lcom/alensw/ui/view/q;

    iget-boolean v0, p0, Lcom/alensw/ui/c/as;->q:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-interface {v2, v0}, Lcom/alensw/ui/view/q;->b(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0, v3}, Lcom/alensw/bean/CommonFolder;->c(I)Z

    invoke-static {v1}, Lcom/alensw/ui/view/e;->a(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v2, v1}, Lcom/alensw/ui/c/cx;->j(Z)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/view/PictureView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic n(Lcom/alensw/ui/c/as;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/ui/c/as;->y()V

    return-void
.end method

.method private o()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/ui/c/as;->M:Lcom/alensw/a/as;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/as;->M:Lcom/alensw/a/as;

    invoke-virtual {v0, v1}, Lcom/alensw/a/as;->cancel(Z)Z

    iput-object v2, p0, Lcom/alensw/ui/c/as;->M:Lcom/alensw/a/as;

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/as;->L:Lcom/alensw/a/as;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->L:Lcom/alensw/a/as;

    invoke-virtual {v0, v1}, Lcom/alensw/a/as;->cancel(Z)Z

    iput-object v2, p0, Lcom/alensw/ui/c/as;->L:Lcom/alensw/a/as;

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/as;->N:Lcom/alensw/a/as;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/as;->N:Lcom/alensw/a/as;

    invoke-virtual {v0, v1}, Lcom/alensw/a/as;->cancel(Z)Z

    iput-object v2, p0, Lcom/alensw/ui/c/as;->N:Lcom/alensw/a/as;

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/as;->b:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private p()V
    .locals 2

    invoke-direct {p0}, Lcom/alensw/ui/c/as;->q()V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v1}, Lcom/alensw/ui/view/PictureView;->e()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/alensw/ui/c/as;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    invoke-virtual {v1, v0}, Lcom/alensw/a/ao;->b(Landroid/net/Uri;)Lcom/alensw/b/h/k;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/a/ao;->a(Lcom/alensw/b/h/k;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/alensw/ui/c/as;->r()V

    :cond_1
    invoke-direct {p0}, Lcom/alensw/ui/c/as;->t()V

    return-void
.end method

.method private q()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/as;->L:Lcom/alensw/a/as;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/as;->L:Lcom/alensw/a/as;

    invoke-virtual {v1, v0}, Lcom/alensw/a/as;->b(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/as;->L:Lcom/alensw/a/as;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alensw/a/as;->cancel(Z)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alensw/ui/c/as;->L:Lcom/alensw/a/as;

    :cond_0
    iget-object v1, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v1}, Lcom/alensw/ui/view/PictureView;->getPictureType()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    invoke-virtual {v1, v0}, Lcom/alensw/a/ao;->a(Landroid/net/Uri;)Lcom/alensw/b/h/j;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0, v3}, Lcom/alensw/ui/c/as;->a(Lcom/alensw/b/h/j;Z)V

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/as;->L:Lcom/alensw/a/as;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    iget-object v2, p0, Lcom/alensw/ui/c/as;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0, v3, v2}, Lcom/alensw/a/ao;->a(Lcom/alensw/bean/CommonFile;ILandroid/os/Handler;)Lcom/alensw/a/as;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/as;->L:Lcom/alensw/a/as;

    goto :goto_0
.end method

.method private r()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PictureView;->getPictureType()I

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-lt v0, v4, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget v0, v0, Lcom/alensw/bean/CommonFolder;->k:I

    iget-boolean v1, p0, Lcom/alensw/ui/c/as;->q:Z

    invoke-virtual {p0, v0, v1}, Lcom/alensw/ui/c/as;->a(IZ)I

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget v1, v1, Lcom/alensw/bean/CommonFolder;->k:I

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v1, v0}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/alensw/ui/c/as;->N:Lcom/alensw/a/as;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/c/as;->N:Lcom/alensw/a/as;

    invoke-virtual {v2, v0}, Lcom/alensw/a/as;->b(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/c/as;->N:Lcom/alensw/a/as;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alensw/a/as;->cancel(Z)Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alensw/ui/c/as;->N:Lcom/alensw/a/as;

    :cond_1
    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    iget-object v3, p0, Lcom/alensw/ui/c/as;->N:Lcom/alensw/a/as;

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v2, v0}, Lcom/alensw/a/ao;->c(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/as;->b:Landroid/os/Handler;

    invoke-virtual {v2, v1, v4, v0}, Lcom/alensw/a/ao;->a(Lcom/alensw/bean/CommonFile;ILandroid/os/Handler;)Lcom/alensw/a/as;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/as;->N:Lcom/alensw/a/as;

    :cond_2
    return-void

    :cond_3
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_0
.end method

.method private s()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v1}, Lcom/alensw/ui/view/PictureView;->getPictureType()I

    move-result v1

    iget-boolean v2, p0, Lcom/alensw/ui/c/as;->s:Z

    if-nez v2, :cond_0

    if-eq v1, v0, :cond_1

    :cond_0
    const-string v1, "image/gif"

    iget-object v2, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v2}, Lcom/alensw/ui/view/PictureView;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private t()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/as;->M:Lcom/alensw/a/as;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/as;->M:Lcom/alensw/a/as;

    invoke-virtual {v1, v0}, Lcom/alensw/a/as;->b(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/as;->M:Lcom/alensw/a/as;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/a/as;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/ui/c/as;->M:Lcom/alensw/a/as;

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/as;->M:Lcom/alensw/a/as;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/alensw/ui/c/as;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    iget-object v1, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alensw/ui/c/as;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alensw/a/ao;->a(Lcom/alensw/bean/CommonFile;ILandroid/os/Handler;)Lcom/alensw/a/as;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/as;->M:Lcom/alensw/a/as;

    :cond_1
    return-void
.end method

.method private u()V
    .locals 3

    iget-boolean v0, p0, Lcom/alensw/ui/c/as;->w:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "{{details}}"

    iget-object v2, p0, Lcom/alensw/ui/c/as;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/alensw/ui/c/as;->i:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :cond_1
    iget-boolean v0, p0, Lcom/alensw/ui/c/as;->u:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PictureView;->getPictureType()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/c/as;->m:Lcom/alensw/ui/c/df;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/as;->m:Lcom/alensw/ui/c/df;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/df;->a(C)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/alensw/ui/c/as;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alensw/ui/c/as;->i:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private v()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->o()I

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget-object v2, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget v2, v2, Lcom/alensw/bean/CommonFolder;->k:I

    invoke-virtual {v1, v2}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v1, v2}, Lcom/alensw/bean/CommonFile;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget-object v2, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget-object v3, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v2, v3}, Lcom/alensw/bean/CommonFolder;->a(Lcom/alensw/bean/CommonFile;)I

    move-result v2

    iput v2, v1, Lcom/alensw/bean/CommonFolder;->k:I

    :cond_0
    iget-object v1, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget v1, v1, Lcom/alensw/bean/CommonFolder;->k:I

    if-gez v1, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    const/4 v1, 0x0

    iput v1, v0, Lcom/alensw/bean/CommonFolder;->k:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget v1, v1, Lcom/alensw/bean/CommonFolder;->k:I

    if-lt v1, v0, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/alensw/bean/CommonFolder;->k:I

    goto :goto_0
.end method

.method private w()V
    .locals 4

    const/4 v1, 0x1

    iget v0, p0, Lcom/alensw/ui/c/as;->P:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/c/as;->Z:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/c/as;->Z:Ljava/util/ArrayList;

    move v0, v1

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/c/as;->Z:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/as;->Z:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    :cond_1
    iget v0, p0, Lcom/alensw/ui/c/as;->T:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/alensw/ui/c/as;->T:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/alensw/ui/c/as;->Z:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    :cond_2
    iget-object v2, p0, Lcom/alensw/ui/c/as;->Z:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/alensw/ui/c/as;->b(IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/c/as;->ab:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/alensw/ui/c/as;->b(IZ)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v2, v1}, Lcom/alensw/ui/view/PictureView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/alensw/ui/c/as;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private x()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->o()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/c/as;->Y:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/c/as;->Y:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget v0, v0, Lcom/alensw/bean/CommonFolder;->k:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget v0, v0, Lcom/alensw/bean/CommonFolder;->k:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->Y:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget v1, v1, Lcom/alensw/bean/CommonFolder;->k:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/as;->Y:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private y()V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/alensw/ui/c/as;->S:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/alensw/ui/c/as;->S:I

    iget-object v1, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v1}, Lcom/alensw/bean/CommonFolder;->o()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget v1, p0, Lcom/alensw/ui/c/as;->S:I

    iput v1, v0, Lcom/alensw/bean/CommonFolder;->k:I

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget-object v1, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget v1, v1, Lcom/alensw/bean/CommonFolder;->k:I

    invoke-virtual {v0, v1}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    invoke-virtual {v1, v0}, Lcom/alensw/a/ao;->a(Landroid/net/Uri;)Lcom/alensw/b/h/j;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/c/as;->L:Lcom/alensw/a/as;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/c/as;->L:Lcom/alensw/a/as;

    invoke-virtual {v2, v0}, Lcom/alensw/a/as;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v3}, Lcom/alensw/ui/c/as;->d(Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/as;->g:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PictureView;->h()V

    invoke-virtual {p0, v1, v3}, Lcom/alensw/ui/c/as;->a(Lcom/alensw/b/h/j;Z)V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/alensw/b/h/j;->m()I

    :cond_3
    invoke-direct {p0}, Lcom/alensw/ui/c/as;->w()V

    goto :goto_0
.end method

.method private z()Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->X:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(IZ)I
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->o()I

    move-result v1

    if-eqz p2, :cond_1

    add-int/lit8 v0, p1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-gez v0, :cond_0

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method public a(ZLandroid/graphics/RectF;)J
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v6, p2, v1}, Lcom/alensw/ui/c/cx;->a(ZZLandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    if-nez p1, :cond_1

    new-instance v1, Lcom/alensw/ui/c/ay;

    invoke-direct {v1, p0}, Lcom/alensw/ui/c/ay;-><init>(Lcom/alensw/ui/c/as;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v1, v6}, Lcom/alensw/ui/c/cx;->c(Z)Landroid/view/animation/Animation;

    move-result-object v1

    const-wide/16 v4, 0x2

    div-long v4, v2, v4

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v4, p0, Lcom/alensw/ui/c/as;->c:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alensw/ui/c/as;->c:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/alensw/ui/c/as;->c:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v4, p0, Lcom/alensw/ui/c/as;->h:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alensw/ui/c/as;->h:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/alensw/ui/c/as;->h:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object v1, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/view/PictureView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-wide v2
.end method

.method public a()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/16 v7, 0xbb8

    const/16 v6, 0x3e8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/alensw/ui/c/a;->a()V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cx;->g(Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cx;->h(Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v0, "auto_black_bkgnd"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v4, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    const v5, -0x777778

    if-eqz v0, :cond_2

    const/high16 v0, -0x1000000

    :goto_0
    invoke-virtual {v4, v5, v0}, Lcom/alensw/ui/view/PictureView;->b(II)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    const-string v4, "bkgnd_pattern"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/alensw/ui/view/PictureView;->setPattern(Z)V

    const-string v0, "show_controls"

    const/4 v4, 0x2

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alensw/ui/c/as;->u:Z

    iget-object v4, p0, Lcom/alensw/ui/c/as;->i:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/alensw/ui/c/as;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alensw/ui/c/as;->w:Z

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/alensw/ui/c/as;->u()V

    const-string v0, "screen_orientation"

    const-string v4, "-1"

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    invoke-static {v0, v4}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/c/as;->p:I

    const-string v0, "single_tap_zoom"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alensw/ui/c/as;->r:Z

    const-string v0, "force_true_color"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/alensw/b/h/b;->a:Z

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    const-string v4, "cache_to_media_store"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/alensw/a/ao;->a:Z

    const-string v0, "delay_load"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alensw/ui/c/as;->s:Z

    const-string v0, "slideshow_animation"

    const-string v4, ""

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/c/as;->P:I

    const-string v0, "pan_and_zoom"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alensw/ui/c/as;->U:Z

    const-string v0, "slideshow_shuffle"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alensw/ui/c/as;->V:Z

    const-string v0, "slideshow_interval"

    const-string v4, "3"

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/alensw/ui/c/as;->R:I

    iget v0, p0, Lcom/alensw/ui/c/as;->R:I

    if-ge v0, v6, :cond_1

    iput v6, p0, Lcom/alensw/ui/c/as;->R:I

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/as;->E:Landroid/content/Intent;

    const-string v3, "QuickPic.slide_show"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p0, Lcom/alensw/ui/c/as;->E:Landroid/content/Intent;

    const-string v4, "QuickPic.slide_show"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/alensw/ui/c/as;->I()V

    :goto_3
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    iget v0, v0, Lcom/alensw/ui/c/cx;->U:I

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_1

    :cond_4
    const/16 v0, 0x8

    goto/16 :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/alensw/ui/c/as;->v()V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v3}, Lcom/alensw/ui/view/PictureView;->getPictureType()I

    move-result v3

    if-lt v3, v1, :cond_6

    iget-object v3, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v3}, Lcom/alensw/ui/view/PictureView;->getPictureUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/alensw/ui/c/as;->l()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-direct {p0}, Lcom/alensw/ui/c/as;->o()V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    invoke-virtual {v0}, Lcom/alensw/a/ao;->b()V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alensw/a/ao;->b(Lcom/alensw/b/h/j;)V

    :goto_5
    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PictureView;->f()V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->b:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-direct {p0, v0, v1}, Lcom/alensw/ui/c/as;->a(Lcom/alensw/bean/CommonFile;Z)Lcom/alensw/b/h/j;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/alensw/ui/c/as;->a(Lcom/alensw/b/h/j;Z)V

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    :cond_8
    sget-boolean v0, Lcom/alensw/ui/activity/ao;->G:Z

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x14

    :goto_6
    iget-object v2, p0, Lcom/alensw/ui/c/as;->b:Landroid/os/Handler;

    invoke-virtual {v2, v7, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cx;->b(Z)J

    move-result-wide v0

    const-wide/16 v2, 0x32

    add-long/2addr v0, v2

    goto :goto_6

    :cond_a
    move v2, v0

    goto :goto_5
.end method

.method public a(IIII)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/alensw/ui/c/a;->a(IIII)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    iget-object v1, p0, Lcom/alensw/ui/c/as;->z:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cx;->a(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alensw/ui/c/as;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alensw/ui/c/as;->z:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/alensw/ui/c/as;->z:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    if-le p3, p1, :cond_0

    if-le p4, p2, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/as;->x:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    iget-object v1, p0, Lcom/alensw/ui/c/as;->x:[F

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/PictureView;->setTransValues([F)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/ui/c/as;->x:[F

    :cond_0
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 12

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    :try_start_0
    iget-object v0, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/alensw/b/c/f;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/alensw/b/c/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alensw/b/c/f;->f()J

    move-result-wide v6

    new-instance v0, Lcom/alensw/b/h/c;

    invoke-direct {v0}, Lcom/alensw/b/h/c;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lcom/alensw/b/h/c;->b(Lcom/alensw/b/c/f;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v6, v7}, Lcom/alensw/b/h/c;->a(J)J

    move-result-wide v0

    move-wide v8, v0

    :goto_0
    const/16 v1, 0x49

    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/alensw/b/c/f;->e()J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    div-long/2addr v6, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static/range {v1 .. v9}, Lcom/alensw/bean/UriFile;->a(CLandroid/net/Uri;Ljava/lang/String;JJJ)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget-object v1, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget-object v2, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v1, v2}, Lcom/alensw/bean/CommonFolder;->c(Lcom/alensw/bean/CommonFile;)I

    move-result v1

    iput v1, v0, Lcom/alensw/bean/CommonFolder;->k:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-wide v8, v6

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v1, 0x1

    const/4 v7, -0x1

    const/high16 v6, 0x40800000    # 4.0f

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/alensw/ui/c/a;->a(Landroid/os/Bundle;)V

    const v0, 0x7f03001a

    invoke-super {p0, v0}, Lcom/alensw/ui/c/a;->h(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->E:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/alensw/ui/c/as;->E:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_0

    const-string v0, "matrix_values"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/as;->x:[F

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/as;->E:Landroid/content/Intent;

    const-string v5, "QuickPic.folder"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFolder;

    iput-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    if-nez v0, :cond_1

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    const v2, 0x7f0a0049

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/alensw/ui/c/as;->E()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget-object v5, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget v5, v5, Lcom/alensw/bean/CommonFolder;->k:I

    invoke-virtual {v0, v5}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    if-nez v0, :cond_3

    const/16 v0, 0x49

    invoke-static {v0, v3, v4}, Lcom/alensw/bean/UriFile;->a(CLandroid/net/Uri;Ljava/lang/String;)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    :cond_3
    invoke-direct {p0}, Lcom/alensw/ui/c/as;->v()V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->c()I

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v0, v3

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alensw/ui/c/as;->w:Z

    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/as;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alensw/ui/c/as;->c:Landroid/view/ViewGroup;

    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/as;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/view/PictureView;

    iput-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    iget-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    iget-object v1, p0, Lcom/alensw/ui/c/as;->O:Lcom/alensw/ui/view/q;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/PictureView;->setListener(Lcom/alensw/ui/view/q;)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    new-instance v1, Lcom/alensw/ui/c/ax;

    invoke-direct {v1, p0}, Lcom/alensw/ui/c/ax;-><init>(Lcom/alensw/ui/c/as;)V

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/PictureView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f090043

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/as;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alensw/ui/c/as;->g:Landroid/widget/ImageView;

    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/as;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alensw/ui/c/as;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alensw/ui/c/as;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alensw/ui/c/as;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alensw/ui/c/as;->y:Lcom/alensw/ui/d/g;

    const v3, -0x33000001    # -1.3421772E8f

    invoke-static {v0, v1, v3}, Lcom/alensw/ui/activity/ao;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/shapes/Shape;I)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->h:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/alensw/ui/d/d;->a(Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/alensw/ui/c/as;->F()Landroid/content/res/Resources;

    move-result-object v1

    const v0, 0x7f0a0030

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/as;->o:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/alensw/ui/c/as;->c:Landroid/view/ViewGroup;

    const v4, 0x7f090044

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alensw/ui/c/as;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alensw/ui/c/as;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->i:Landroid/widget/TextView;

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    div-float v5, v3, v6

    div-float/2addr v3, v6

    const/high16 v6, -0x1000000

    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-boolean v0, p0, Lcom/alensw/ui/c/as;->w:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/c/as;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->i:Landroid/widget/TextView;

    const v3, 0x7f08000a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->i:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_2
    iget-object v0, p0, Lcom/alensw/ui/c/as;->c:Landroid/view/ViewGroup;

    const v1, 0x7f090045

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alensw/ui/c/as;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alensw/ui/c/as;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alensw/ui/c/as;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/alensw/ui/d/f;

    const-string v2, "3D"

    invoke-direct {v1, v2}, Lcom/alensw/ui/d/f;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alensw/ui/activity/ao;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/shapes/Shape;)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->c:Landroid/view/ViewGroup;

    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->c:Landroid/view/ViewGroup;

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/alensw/ui/c/as;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alensw/ui/c/as;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method protected a(Lcom/alensw/b/h/j;)V
    .locals 5

    const/16 v4, 0xbb8

    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alensw/b/h/j;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alensw/ui/c/as;->a(Lcom/alensw/b/h/j;Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alensw/ui/c/as;->b:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/as;->n:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/c/as;->n:Lcom/alensw/b/h/j;

    iget-object v0, v0, Lcom/alensw/b/h/j;->i:Landroid/net/Uri;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/alensw/b/h/j;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/as;->n:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/c/as;->n:Lcom/alensw/b/h/j;

    iget v0, v0, Lcom/alensw/b/h/j;->d:I

    iget v1, p1, Lcom/alensw/b/h/j;->d:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/c/as;->n:Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/ui/c/as;->n:Lcom/alensw/b/h/j;

    :cond_3
    iget-object v0, p0, Lcom/alensw/ui/c/as;->n:Lcom/alensw/b/h/j;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/alensw/b/h/j;->c()Lcom/alensw/b/h/j;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/as;->n:Lcom/alensw/b/h/j;

    iget-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PictureView;->invalidate()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget-object v1, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget v1, v1, Lcom/alensw/bean/CommonFolder;->k:I

    iget-boolean v2, p0, Lcom/alensw/ui/c/as;->q:Z

    invoke-virtual {p0, v1, v2}, Lcom/alensw/ui/c/as;->a(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alensw/bean/CommonFolder;->b(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method protected a(Lcom/alensw/b/h/j;Z)V
    .locals 10

    const/16 v9, 0x56

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v4

    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v5

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alensw/b/h/j;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    if-nez v0, :cond_2

    invoke-virtual {p1, v4}, Lcom/alensw/b/h/j;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/as;->E:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "image/*"

    :cond_1
    iget-object v1, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v1, v4, v0}, Lcom/alensw/ui/activity/a;->b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/alensw/b/h/j;->m()I

    invoke-virtual {p0}, Lcom/alensw/ui/c/as;->E()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0, p1, p2}, Lcom/alensw/ui/view/PictureView;->a(Lcom/alensw/b/h/j;Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PictureView;->f()V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->B:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/alensw/b/l/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/as;->b(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/alensw/ui/c/as;->p:I

    const/4 v6, -0x2

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v1}, Lcom/alensw/ui/view/PictureView;->getPictureWidth()I

    move-result v1

    iget-object v6, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v6}, Lcom/alensw/ui/view/PictureView;->getPictureHeight()I

    move-result v6

    if-lez v1, :cond_3

    if-lez v6, :cond_3

    iget-object v7, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    if-le v1, v6, :cond_7

    move v1, v2

    :goto_2
    invoke-virtual {v7, v1}, Lcom/alensw/ui/c/cx;->setRequestedOrientation(I)V

    :cond_3
    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    invoke-virtual {v1, v4}, Lcom/alensw/a/ao;->b(Landroid/net/Uri;)Lcom/alensw/b/h/k;

    move-result-object v1

    new-instance v6, Lcom/alensw/ui/c/df;

    iget-object v7, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    iget-object v8, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-direct {v6, v7, v8, v1}, Lcom/alensw/ui/c/df;-><init>(Landroid/content/Context;Lcom/alensw/bean/CommonFile;Lcom/alensw/b/h/k;)V

    iput-object v6, p0, Lcom/alensw/ui/c/as;->m:Lcom/alensw/ui/c/df;

    if-eq v5, v9, :cond_4

    sget-boolean v1, Lcom/alensw/PicFolder/QuickApp;->c:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alensw/ui/c/as;->m:Lcom/alensw/ui/c/df;

    invoke-virtual {v1}, Lcom/alensw/ui/c/df;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_4
    move v1, v3

    :goto_3
    iput-boolean v1, p0, Lcom/alensw/ui/c/as;->v:Z

    iget-boolean v1, p0, Lcom/alensw/ui/c/as;->v:Z

    if-eqz v1, :cond_5

    iget-object v6, p0, Lcom/alensw/ui/c/as;->y:Lcom/alensw/ui/d/g;

    if-ne v5, v9, :cond_9

    move v1, v2

    :goto_4
    invoke-virtual {v6, v1}, Lcom/alensw/ui/d/g;->a(I)V

    :cond_5
    iget-boolean v1, p0, Lcom/alensw/ui/c/as;->v:Z

    invoke-direct {p0, v1}, Lcom/alensw/ui/c/as;->a(Z)V

    invoke-direct {p0}, Lcom/alensw/ui/c/as;->u()V

    iget-object v1, p0, Lcom/alensw/ui/c/as;->j:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/alensw/b/h/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/alensw/ui/c/as;->t:Z

    iget-object v1, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v4}, Lcom/alensw/b/j/a;->c(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "cloud"

    :goto_6
    invoke-static {v1, p1, v0}, Lcom/alensw/ui/c/as;->a(Landroid/content/Context;Lcom/alensw/b/h/j;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_2

    :cond_8
    move v1, v2

    goto :goto_3

    :cond_9
    const/4 v1, 0x4

    goto :goto_4

    :cond_a
    const/16 v2, 0x8

    goto :goto_5

    :cond_b
    const-string v0, "local"

    goto :goto_6

    :cond_c
    iput-boolean p2, p0, Lcom/alensw/ui/c/as;->t:Z

    goto/16 :goto_0
.end method

.method public a(ILandroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cx;->a(Z)V

    invoke-super {p0, p1, p2}, Lcom/alensw/ui/c/a;->a(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/KeyEvent;Z)Z
    .locals 1

    invoke-direct {p0}, Lcom/alensw/ui/c/as;->H()V

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const v6, 0x7f090052

    const v5, 0x7f09000a

    const/4 v4, 0x2

    const v3, 0x7f09004e

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f0c0007

    invoke-static {v0, v1, p1}, Lcom/alensw/b/g/b;->a(Landroid/content/Context;ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/j/a;->c(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090069

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const v0, 0x7f090050

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_0
    const v0, 0x7f090062

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v6, v2}, Lcom/alensw/ui/c/as;->a(Landroid/view/Menu;II)V

    invoke-virtual {p0, p1, v5, v4}, Lcom/alensw/ui/c/as;->a(Landroid/view/Menu;II)V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->c()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v3, v4}, Lcom/alensw/ui/c/as;->a(Landroid/view/Menu;II)V

    :goto_0
    const v0, 0x7f09005a

    invoke-virtual {p0, p1, v0, v2}, Lcom/alensw/ui/c/as;->a(Landroid/view/Menu;II)V

    :goto_1
    return v2

    :cond_1
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    :cond_2
    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    const v0, 0x7f09005a

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iget-object v3, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v3, v2}, Lcom/alensw/ui/c/cx;->c(I)Landroid/view/View;

    move-result-object v3

    sparse-switch v2, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Lcom/alensw/ui/c/a;->a(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    :sswitch_0
    iget-object v2, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/alensw/ui/c/as;->V:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget-object v3, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget v3, v3, Lcom/alensw/bean/CommonFolder;->k:I

    invoke-virtual {p0, v3, v1}, Lcom/alensw/ui/c/as;->a(IZ)I

    move-result v3

    iput v3, v2, Lcom/alensw/bean/CommonFolder;->k:I

    :cond_2
    invoke-direct {p0}, Lcom/alensw/ui/c/as;->I()V

    iget-object v2, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    invoke-direct {p0}, Lcom/alensw/ui/c/as;->z()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {v2, v0}, Lcom/alensw/ui/c/cx;->a(Z)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/alensw/ui/c/as;->m:Lcom/alensw/ui/c/df;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PictureView;->getPictureType()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    iget v2, v2, Lcom/alensw/bean/CommonFolder;->k:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v2}, Lcom/alensw/bean/CommonFolder;->o()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    iget-object v3, p0, Lcom/alensw/ui/c/as;->m:Lcom/alensw/ui/c/df;

    new-instance v4, Lcom/alensw/ui/c/az;

    invoke-direct {v4, p0, v2}, Lcom/alensw/ui/c/az;-><init>(Lcom/alensw/ui/c/as;Lcom/alensw/bean/CommonFile;)V

    invoke-virtual {v3, v0, v4}, Lcom/alensw/ui/c/df;->a(Ljava/lang/String;Lcom/alensw/ui/c/do;)V

    goto :goto_0

    :cond_4
    const v0, 0x7f0a0030

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/as;->g(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v0, v3}, Lcom/alensw/ui/activity/a;->c(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    :sswitch_3
    const/16 v0, -0x5a

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/as;->b(I)V

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/as;->b(I)V

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0xb4

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/as;->b(I)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/alensw/ui/c/as;->m:Lcom/alensw/ui/c/df;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PictureView;->getPictureType()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->m:Lcom/alensw/ui/c/df;

    invoke-virtual {v0, v3}, Lcom/alensw/ui/c/df;->a(Landroid/view/View;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/alensw/ui/c/as;->m:Lcom/alensw/ui/c/df;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PictureView;->getPictureType()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v4}, Lcom/alensw/ui/view/PictureView;->getFullPicture()Lcom/alensw/b/h/j;

    move-result-object v4

    if-eqz v4, :cond_7

    iget v5, v4, Lcom/alensw/b/h/j;->d:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    invoke-virtual {v4}, Lcom/alensw/b/h/j;->g()I

    move-result v5

    invoke-virtual {v4}, Lcom/alensw/b/h/j;->h()I

    move-result v6

    mul-int/2addr v5, v6

    const/high16 v6, 0x300000

    if-gt v5, v6, :cond_6

    :cond_5
    sget-object v5, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    invoke-virtual {v5, v4}, Lcom/alensw/a/ao;->b(Lcom/alensw/b/h/j;)V

    :cond_6
    invoke-virtual {v4}, Lcom/alensw/b/h/j;->m()I

    :cond_7
    const v4, 0x7f090069

    if-ne v2, v4, :cond_8

    iget-object v2, p0, Lcom/alensw/ui/c/as;->m:Lcom/alensw/ui/c/df;

    invoke-virtual {v2, v3, v0}, Lcom/alensw/ui/c/df;->a(Landroid/view/View;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/alensw/ui/c/as;->m:Lcom/alensw/ui/c/df;

    invoke-virtual {v2, v3, v0}, Lcom/alensw/ui/c/df;->b(Landroid/view/View;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    new-instance v2, Lcom/alensw/ui/c/ba;

    invoke-direct {v2, p0}, Lcom/alensw/ui/c/ba;-><init>(Lcom/alensw/ui/c/as;)V

    invoke-static {v0, v1, v3, v2}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;ILandroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :sswitch_9
    sget-boolean v3, Lcom/alensw/ui/c/as;->a:Z

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/alensw/ui/c/as;->d()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_9
    :sswitch_a
    iget-object v3, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v4, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const v4, 0x7f09006b

    if-ne v2, v4, :cond_a

    move v0, v1

    :cond_a
    new-instance v2, Lcom/alensw/ui/c/bb;

    invoke-direct {v2, p0}, Lcom/alensw/ui/c/bb;-><init>(Lcom/alensw/ui/c/as;)V

    invoke-virtual {p0, v3, v0, v2}, Lcom/alensw/ui/c/as;->a(Ljava/util/HashSet;ZLcom/alensw/ui/c/n;)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v0

    const/16 v2, 0x56

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    iget-object v2, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-static {v0, v2}, Lcom/alensw/ui/c/as;->a(Landroid/app/Activity;Lcom/alensw/bean/CommonFile;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/alensw/ui/c/as;->m:Lcom/alensw/ui/c/df;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->m:Lcom/alensw/ui/c/df;

    invoke-virtual {v0}, Lcom/alensw/ui/c/df;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    iget-object v2, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v2}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    iget-object v2, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v2}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v3}, Lcom/alensw/bean/CommonFile;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alensw/ui/activity/a;->b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/alensw/ui/c/as;->m:Lcom/alensw/ui/c/df;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->m:Lcom/alensw/ui/c/df;

    invoke-virtual {v0, v3}, Lcom/alensw/ui/c/df;->b(Landroid/view/View;)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    const-class v4, Lcom/alensw/ui/activity/MainPreference;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v2}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto/16 :goto_0

    :sswitch_f
    iget-object v2, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v2}, Lcom/alensw/ui/c/cx;->d()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v2, p0}, Lcom/alensw/ui/c/cx;->c(Lcom/alensw/ui/c/cu;)Z

    iget-object v2, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    const-class v3, Lcom/alensw/ui/c/bf;

    iget-object v4, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    invoke-static {v4, v0, v5}, Lcom/alensw/ui/c/z;->a(Lcom/alensw/bean/CommonFolder;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v5}, Lcom/alensw/ui/c/cx;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_f
        0x7f09000a -> :sswitch_6
        0x7f09002a -> :sswitch_b
        0x7f090033 -> :sswitch_f
        0x7f090044 -> :sswitch_1
        0x7f090045 -> :sswitch_c
        0x7f09004e -> :sswitch_8
        0x7f090050 -> :sswitch_9
        0x7f090052 -> :sswitch_0
        0x7f090057 -> :sswitch_e
        0x7f09005a -> :sswitch_2
        0x7f090069 -> :sswitch_7
        0x7f09006a -> :sswitch_7
        0x7f09006b -> :sswitch_a
        0x7f09006c -> :sswitch_d
        0x7f090070 -> :sswitch_3
        0x7f090071 -> :sswitch_4
        0x7f090072 -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/alensw/ui/c/as;->H()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alensw/ui/c/cx;->a(FF)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cx;->f(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->u()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/alensw/ui/c/a;->b()V

    invoke-direct {p0}, Lcom/alensw/ui/c/as;->H()V

    invoke-direct {p0}, Lcom/alensw/ui/c/as;->o()V

    iget-boolean v0, p0, Lcom/alensw/ui/c/as;->I:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0, v1, v1}, Lcom/alensw/ui/view/PictureView;->a(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PictureView;->g()V

    iget-object v0, p0, Lcom/alensw/ui/c/as;->n:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->n:Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/ui/c/as;->n:Lcom/alensw/b/h/j;

    :cond_1
    iget-boolean v0, p0, Lcom/alensw/ui/c/as;->I:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/alensw/ui/c/as;->l()Z

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/c/as;->E:Landroid/content/Intent;

    iget-object v1, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v1}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_3
    return-void
.end method

.method protected b(I)V
    .locals 5

    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v0

    const/16 v1, 0x49

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v1}, Lcom/alensw/ui/view/PictureView;->getPictureRotation()I

    move-result v1

    add-int/2addr v1, p1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;IZ)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    iget-object v3, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v3}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/alensw/a/ao;->a(Landroid/net/Uri;Z)V

    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    invoke-virtual {v2, v0, v1}, Lcom/alensw/a/ba;->a(Ljava/lang/String;I)Z

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    invoke-virtual {v1, v0}, Lcom/alensw/a/bc;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/PictureView;->b(I)V

    :cond_1
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PictureView;->getPictureType()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "matrix_values"

    iget-object v1, p0, Lcom/alensw/ui/c/as;->f:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v1}, Lcom/alensw/ui/view/PictureView;->getTransValues()[F

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "matrix_values"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Landroid/view/Menu;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v0

    const/16 v2, 0x49

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    const v2, 0x7f090069

    invoke-virtual {p0, p1, v2, v0}, Lcom/alensw/ui/c/as;->a(Landroid/view/Menu;IZ)V

    const v2, 0x7f09006a

    invoke-virtual {p0, p1, v2, v0}, Lcom/alensw/ui/c/as;->a(Landroid/view/Menu;IZ)V

    const v2, 0x7f09006c

    invoke-virtual {p0, p1, v2, v0}, Lcom/alensw/ui/c/as;->a(Landroid/view/Menu;IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/as;->k:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/j/a;->c(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CloudPicture"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Picture"

    goto :goto_0
.end method

.method public e(Landroid/view/Menu;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cx;->f(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/alensw/ui/c/a;->e(Landroid/view/Menu;)V

    return-void
.end method

.method public g()V
    .locals 2

    invoke-super {p0}, Lcom/alensw/ui/c/a;->g()V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    invoke-virtual {v0}, Lcom/alensw/a/ao;->b()V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/a/ao;->b(Lcom/alensw/b/h/j;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 v2, 0x2

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alensw/b/h/j;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alensw/b/h/j;

    iget v1, p0, Lcom/alensw/ui/c/as;->H:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/alensw/ui/c/as;->z()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/alensw/ui/c/as;->b(Lcom/alensw/b/h/j;)V

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/as;->a(Lcom/alensw/b/h/j;)V

    goto :goto_1

    :sswitch_1
    iget v0, p0, Lcom/alensw/ui/c/as;->H:I

    if-ne v0, v2, :cond_3

    invoke-direct {p0}, Lcom/alensw/ui/c/as;->p()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alensw/ui/c/as;->b:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_0
        0xbb8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected j()[Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v2}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected l()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/alensw/jni/JniUtils;->fuGetFileTime(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iget v2, p0, Lcom/alensw/ui/c/as;->A:I

    if-eq v2, v0, :cond_0

    iput v0, p0, Lcom/alensw/ui/c/as;->A:I

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected m()V
    .locals 8

    const/4 v4, 0x0

    sget-object v7, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget-object v0, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lcom/alensw/b/j/a;->c(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alensw/ui/c/bd;

    iget-object v2, p0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f0a002d

    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/as;->g(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/alensw/ui/c/bd;-><init>(Lcom/alensw/ui/c/as;Landroid/app/Activity;Ljava/lang/String;ILandroid/content/ContentResolver;Landroid/net/Uri;Lcom/alensw/a/bc;)V

    invoke-virtual {v0}, Lcom/alensw/ui/c/bd;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    instance-of v0, v0, Lcom/alensw/bean/LocalFile;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/l/b;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    iget-object v2, p0, Lcom/alensw/ui/c/as;->l:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v2}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v2

    invoke-virtual {v1, v0, v2, v4}, Lcom/alensw/a/ba;->a(Ljava/lang/String;CZ)Z

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Lcom/alensw/a/ao;->a(Landroid/net/Uri;Z)V

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alensw/a/bc;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alensw/ui/c/as;->n()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v5, v6, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alensw/a/bc;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alensw/ui/c/as;->n()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
