.class public Lcom/alensw/PicFolder/PlayerActivity;
.super Lcom/alensw/ui/activity/p;


# instance fields
.field protected a:Landroid/view/ViewGroup;

.field private ab:Z

.field private ac:I

.field private ad:Landroid/graphics/drawable/Drawable;

.field private ae:Landroid/graphics/drawable/Drawable;

.field private final af:Landroid/graphics/Rect;

.field private final ag:Landroid/graphics/Rect;

.field protected b:Landroid/widget/ImageView;

.field protected c:Lcom/alensw/PicFolder/VolumeBar;

.field protected d:Landroid/widget/SeekBar;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/view/ViewGroup;

.field protected h:Landroid/widget/ImageView;

.field protected i:Landroid/widget/ImageView;

.field protected j:Lcom/alensw/PicFolder/PlayerView;

.field protected k:Landroid/widget/VideoView;

.field protected l:Landroid/media/MediaPlayer;

.field protected m:Landroid/view/MenuItem;

.field protected n:I

.field protected o:I

.field protected p:Z

.field protected q:Z

.field protected r:Z

.field protected s:Z

.field protected t:Landroid/media/AudioManager;

.field protected u:[Landroid/media/MediaPlayer$TrackInfo;

.field protected v:Landroid/content/BroadcastReceiver;

.field protected final w:Lcom/alensw/ui/d/b;

.field protected final x:Lcom/alensw/b/c/d;

.field protected final y:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field protected final z:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alensw/ui/activity/p;-><init>()V

    new-instance v0, Lcom/alensw/ui/d/b;

    invoke-direct {v0}, Lcom/alensw/ui/d/b;-><init>()V

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->w:Lcom/alensw/ui/d/b;

    new-instance v0, Lcom/alensw/b/c/d;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/alensw/b/c/d;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->x:Lcom/alensw/b/c/d;

    new-instance v0, Lcom/alensw/PicFolder/al;

    invoke-direct {v0, p0}, Lcom/alensw/PicFolder/al;-><init>(Lcom/alensw/PicFolder/PlayerActivity;)V

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->y:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lcom/alensw/PicFolder/am;

    invoke-direct {v0, p0}, Lcom/alensw/PicFolder/am;-><init>(Lcom/alensw/PicFolder/PlayerActivity;)V

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->z:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->ab:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->af:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->ag:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic a(Lcom/alensw/PicFolder/PlayerActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->I:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/alensw/PicFolder/PlayerActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->I:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/alensw/PicFolder/PlayerActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->I:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/alensw/PicFolder/PlayerActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->I:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/alensw/PicFolder/PlayerActivity;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->L:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic f(Lcom/alensw/PicFolder/PlayerActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->A:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/alensw/PicFolder/PlayerActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->A:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/alensw/PicFolder/PlayerActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->A:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/alensw/PicFolder/PlayerActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->A:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/alensw/PicFolder/PlayerActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->A:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->ag:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->ag:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerActivity;->f()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/p;->a(Z)V

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerActivity;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    if-nez p1, :cond_1

    sget-boolean v1, Lcom/alensw/PicFolder/PlayerActivity;->G:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerActivity;->a:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerActivity;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerActivity;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/alensw/PicFolder/PlayerActivity;->c(Z)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerActivity;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerActivity;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->g:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/alensw/PicFolder/PlayerActivity;->c(Z)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->A:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    invoke-super {p0}, Lcom/alensw/ui/activity/p;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Z)I
    .locals 10

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->k:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    iget v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->ac:I

    if-eq v0, v2, :cond_0

    iput v2, p0, Lcom/alensw/PicFolder/PlayerActivity;->ac:I

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->e:Landroid/widget/TextView;

    int-to-long v4, v2

    invoke-static {v4, v5}, Lcom/alensw/b/l/b;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->d:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    int-to-long v4, v0

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->k:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    if-lez v2, :cond_1

    iget-boolean v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->r:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->d:Landroid/widget/SeekBar;

    int-to-long v6, v1

    mul-long/2addr v6, v4

    int-to-long v8, v2

    div-long/2addr v6, v8

    long-to-int v3, v6

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->k:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getBufferPercentage()I

    move-result v0

    iget-object v3, p0, Lcom/alensw/PicFolder/PlayerActivity;->d:Landroid/widget/SeekBar;

    int-to-long v6, v0

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    long-to-int v0, v4

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->r:Z

    if-nez v0, :cond_3

    const-string v0, ""

    iget-boolean v3, p0, Lcom/alensw/PicFolder/PlayerActivity;->s:Z

    if-eqz v3, :cond_2

    if-lez v2, :cond_2

    sub-int v1, v2, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/alensw/b/l/b;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/PicFolder/PlayerActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return v1
.end method

.method protected b()V
    .locals 4

    const v3, -0x33000001    # -1.3421772E8f

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->g:Landroid/view/ViewGroup;

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerActivity;->Z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/alensw/ui/d/g;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/alensw/ui/d/g;-><init>(I)V

    invoke-static {v0, v1, v3}, Lcom/alensw/PicFolder/PlayerActivity;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/shapes/Shape;I)V

    invoke-static {v0}, Lcom/alensw/ui/d/d;->a(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->g:Landroid/view/ViewGroup;

    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerActivity;->Z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/alensw/ui/d/g;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/alensw/ui/d/g;-><init>(I)V

    invoke-static {v0, v1, v3}, Lcom/alensw/PicFolder/PlayerActivity;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/shapes/Shape;I)V

    invoke-static {v0}, Lcom/alensw/ui/d/d;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method protected c()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->i:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alensw/PicFolder/PlayerActivity;->c(Z)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 3

    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerActivity;->h:Landroid/widget/ImageView;

    new-instance v2, Lcom/alensw/ui/d/g;

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->k:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v2, v0}, Lcom/alensw/ui/d/g;-><init>(I)V

    const v0, -0x33000001    # -1.3421772E8f

    invoke-static {v1, v2, v0}, Lcom/alensw/PicFolder/PlayerActivity;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/shapes/Shape;I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected e()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->c:Lcom/alensw/PicFolder/VolumeBar;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/VolumeBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->ad:Landroid/graphics/drawable/Drawable;

    :goto_1
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v1, :cond_5

    const-string v0, "ic_volume_small"

    :goto_2
    invoke-static {v3, v0}, Lcom/alensw/b/l/b;->a(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_0
    if-eqz v1, :cond_6

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->ad:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->ae:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_5
    const-string v0, "ic_volume_off_small"

    goto :goto_2

    :cond_6
    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->ae:Landroid/graphics/drawable/Drawable;

    goto :goto_3
.end method

.method protected f()V
    .locals 5

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->ag:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerActivity;->af:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/alensw/PicFolder/PlayerActivity;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->L:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerActivity;->af:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alensw/PicFolder/PlayerActivity;->af:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/alensw/PicFolder/PlayerActivity;->af:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->L:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/PlayerActivity;->b(Z)I

    move-result v0

    iget-object v2, p0, Lcom/alensw/PicFolder/PlayerActivity;->A:Landroid/os/Handler;

    const/16 v3, 0x64

    rem-int/lit16 v0, v0, 0x3e8

    rsub-int v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v2, 0x1

    const v11, -0x33000001    # -1.3421772E8f

    const/high16 v10, 0x40800000    # 4.0f

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/p;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030010

    invoke-super {p0, v0}, Lcom/alensw/ui/activity/p;->setContentView(I)V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    sget-boolean v0, Lcom/alensw/PicFolder/QuickApp;->d:Z

    if-nez v0, :cond_1

    const-string v0, "auto_hide_navigate_bar"

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/PlayerActivity;->e(Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v7, 0x400

    invoke-virtual {v0, v7}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    const v0, 0x7f0a0048

    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/PlayerActivity;->setTitle(I)V

    invoke-virtual {p0, v2}, Lcom/alensw/PicFolder/PlayerActivity;->i(Z)V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->I:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v7, p0, Lcom/alensw/PicFolder/PlayerActivity;->y:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-string v0, "android.intent.extra.screenOrientation"

    const-string v7, "screen_orientation"

    const-string v8, "-1"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-static {v6, v7}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->n:I

    iget v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->n:I

    const/4 v6, -0x2

    if-eq v0, v6, :cond_3

    iget v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->n:I

    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/PlayerActivity;->a(I)V

    :cond_3
    const-string v0, "android.intent.extra.finishOnCompletion"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->q:Z

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/PlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->t:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->I:Landroid/view/View;

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->a:Landroid/view/ViewGroup;

    const v2, 0x7f090022

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->a:Landroid/view/ViewGroup;

    const v2, 0x7f090023

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alensw/PicFolder/VolumeBar;

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->c:Lcom/alensw/PicFolder/VolumeBar;

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->c:Lcom/alensw/PicFolder/VolumeBar;

    iget-object v2, p0, Lcom/alensw/PicFolder/PlayerActivity;->t:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alensw/PicFolder/VolumeBar;->setMax(I)V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->c:Lcom/alensw/PicFolder/VolumeBar;

    iget-object v2, p0, Lcom/alensw/PicFolder/PlayerActivity;->t:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alensw/PicFolder/VolumeBar;->setProgress(I)V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->I:Landroid/view/View;

    const v2, 0x7f090027

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->g:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->g:Landroid/view/ViewGroup;

    const v2, 0x7f09002a

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alensw/PicFolder/PlayerActivity;->Z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->h:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/alensw/ui/d/d;->a(Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerActivity;->b()V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->g:Landroid/view/ViewGroup;

    const v2, 0x7f090028

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->L:Landroid/view/ViewGroup;

    const v2, 0x7f090025

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->d:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->d:Landroid/widget/SeekBar;

    sget v2, Lcom/alensw/PicFolder/QuickApp;->f:I

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->d:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->d:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/alensw/PicFolder/PlayerActivity;->z:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->L:Landroid/view/ViewGroup;

    const v6, 0x7f090026

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->e:Landroid/widget/TextView;

    div-float v6, v2, v12

    div-float v7, v2, v10

    div-float v8, v2, v10

    const/high16 v9, -0x1000000

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->L:Landroid/view/ViewGroup;

    const v6, 0x7f090024

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->f:Landroid/widget/TextView;

    div-float v6, v2, v12

    div-float v7, v2, v10

    div-float/2addr v2, v10

    const/high16 v8, -0x1000000

    invoke-virtual {v0, v6, v7, v2, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->f:Landroid/widget/TextView;

    new-instance v2, Lcom/alensw/PicFolder/an;

    invoke-direct {v2, p0}, Lcom/alensw/PicFolder/an;-><init>(Lcom/alensw/PicFolder/PlayerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->I:Landroid/view/View;

    const v2, 0x7f090020

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alensw/PicFolder/PlayerView;

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->j:Lcom/alensw/PicFolder/PlayerView;

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->j:Lcom/alensw/PicFolder/PlayerView;

    iget-object v2, p0, Lcom/alensw/PicFolder/PlayerActivity;->d:Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/alensw/PicFolder/PlayerActivity;->c:Lcom/alensw/PicFolder/VolumeBar;

    iget-object v7, p0, Lcom/alensw/PicFolder/PlayerActivity;->z:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v2, v6, v7}, Lcom/alensw/PicFolder/PlayerView;->a(Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->j:Lcom/alensw/PicFolder/PlayerView;

    new-instance v2, Lcom/alensw/PicFolder/ao;

    invoke-direct {v2, p0, v4}, Lcom/alensw/PicFolder/ao;-><init>(Lcom/alensw/PicFolder/PlayerActivity;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Lcom/alensw/PicFolder/PlayerView;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->j:Lcom/alensw/PicFolder/PlayerView;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/PlayerView;->a()Landroid/widget/VideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->k:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->k:Landroid/widget/VideoView;

    new-instance v2, Lcom/alensw/PicFolder/ar;

    invoke-direct {v2, p0}, Lcom/alensw/PicFolder/ar;-><init>(Lcom/alensw/PicFolder/PlayerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->k:Landroid/widget/VideoView;

    new-instance v2, Lcom/alensw/PicFolder/as;

    invoke-direct {v2, p0, v4}, Lcom/alensw/PicFolder/as;-><init>(Lcom/alensw/PicFolder/PlayerActivity;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    sget-boolean v0, Lcom/alensw/PicFolder/PlayerActivity;->H:Z

    if-nez v0, :cond_4

    new-instance v0, Lcom/alensw/PicFolder/at;

    invoke-direct {v0, p0}, Lcom/alensw/PicFolder/at;-><init>(Lcom/alensw/PicFolder/PlayerActivity;)V

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->v:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->v:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/alensw/PicFolder/PlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_4
    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerActivity;->d()V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->x:Lcom/alensw/b/c/d;

    const-string v2, "video_bookmark"

    invoke-static {p0, v2}, Lcom/alensw/b/l/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alensw/b/c/d;->a(Ljava/io/File;)Z

    if-eqz p1, :cond_7

    const-string v0, "cur_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "cur_pos"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerActivity;->j:Lcom/alensw/PicFolder/PlayerView;

    invoke-virtual {v1, v3, v0}, Lcom/alensw/PicFolder/PlayerView;->a(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->x:Lcom/alensw/b/c/d;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alensw/b/c/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3
    if-lez v0, :cond_5

    const v2, 0x7f050010

    const v4, 0x7f080014

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v5, v2, v11, v4}, Lcom/b/a/b;->a(Landroid/content/res/Resources;III)Lcom/b/a/l;

    move-result-object v2

    iget-object v4, p0, Lcom/alensw/PicFolder/PlayerActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/alensw/PicFolder/PlayerActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerActivity;->i:Landroid/widget/ImageView;

    new-instance v2, Lcom/alensw/PicFolder/au;

    invoke-direct {v2, p0}, Lcom/alensw/PicFolder/au;-><init>(Lcom/alensw/PicFolder/PlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v1, 0x1

    const v0, 0x7f0c0008

    invoke-static {p0, v0, p1}, Lcom/alensw/b/g/b;->a(Landroid/content/Context;ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->u:[Landroid/media/MediaPlayer$TrackInfo;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->o:I

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_0
    const v3, 0x7f09006d

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/alensw/PicFolder/PlayerActivity;->a(Landroid/view/MenuItem;Z)V

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/a/a/m;

    invoke-direct {v0, p0}, Landroid/support/a/a/m;-><init>(Landroid/content/Context;)V

    iget v4, p0, Lcom/alensw/PicFolder/PlayerActivity;->X:I

    invoke-virtual {v0, v4}, Landroid/support/a/a/m;->a(I)V

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_0
    const v0, 0x7f09000a

    invoke-virtual {p0, p1, v0, v5}, Lcom/alensw/PicFolder/PlayerActivity;->a(Landroid/view/Menu;II)V

    const v0, 0x7f09006e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/alensw/PicFolder/PlayerActivity;->a(Landroid/view/MenuItem;I)V

    const v0, 0x7f09006f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->m:Landroid/view/MenuItem;

    sget-boolean v0, Lcom/alensw/PicFolder/PlayerActivity;->H:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/alensw/PicFolder/PlayerActivity;->m:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/alensw/PicFolder/PlayerActivity;->w:Lcom/alensw/ui/d/b;

    iget v4, p0, Lcom/alensw/PicFolder/PlayerActivity;->X:I

    invoke-static {v3, v0, v0, v4}, Lcom/alensw/ui/d/d;->a(Landroid/graphics/drawable/shapes/Shape;III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->m:Landroid/view/MenuItem;

    invoke-virtual {p0, v0, v5}, Lcom/alensw/PicFolder/PlayerActivity;->a(Landroid/view/MenuItem;I)V

    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->m:Landroid/view/MenuItem;

    invoke-virtual {p0, v0, v2}, Lcom/alensw/PicFolder/PlayerActivity;->a(Landroid/view/MenuItem;Z)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/alensw/ui/activity/p;->onDestroy()V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->v:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/PlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->v:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->I:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->I:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerActivity;->y:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->j:Lcom/alensw/PicFolder/PlayerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->j:Lcom/alensw/PicFolder/PlayerView;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/PlayerView;->b()V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/alensw/ui/activity/p;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    iget-object v2, p0, Lcom/alensw/PicFolder/PlayerActivity;->t:Landroid/media/AudioManager;

    const/16 v0, 0x19

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {v2, v0, v3}, Landroid/media/AudioManager;->adjustVolume(II)V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerActivity;->u()V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/alensw/PicFolder/PlayerActivity;->G:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->a:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/alensw/PicFolder/PlayerActivity;->c(Z)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->c:Lcom/alensw/PicFolder/VolumeBar;

    iget-object v2, p0, Lcom/alensw/PicFolder/PlayerActivity;->t:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alensw/PicFolder/VolumeBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerActivity;->e()V

    const/16 v0, 0x5dc

    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/PlayerActivity;->f(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/16 v2, 0x64

    const/4 v0, 0x0

    const/4 v6, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/p;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    :cond_0
    :goto_0
    return v6

    :sswitch_0
    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerActivity;->k:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->k:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->A:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerActivity;->u()V

    :goto_1
    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerActivity;->d()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerActivity;->k:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerActivity;->A:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/PlayerActivity;->a(Z)V

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->k:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    const v0, 0x7f09002b

    if-ne v7, v0, :cond_2

    const/16 v0, 0x2710

    :goto_2
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerActivity;->k:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    invoke-virtual {p0, v6}, Lcom/alensw/PicFolder/PlayerActivity;->b(Z)I

    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/PlayerActivity;->f(I)V

    goto :goto_0

    :cond_2
    const/16 v0, -0x2710

    goto :goto_2

    :sswitch_2
    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v0, Lcom/alensw/ui/c/df;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/16 v3, 0x56

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alensw/ui/c/df;-><init>(Landroid/content/Context;Landroid/net/Uri;CLjava/lang/String;Lcom/alensw/b/h/k;)V

    invoke-virtual {p0, v7}, Lcom/alensw/PicFolder/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/df;->a(Landroid/view/View;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->u:[Landroid/media/MediaPlayer$TrackInfo;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->o:I

    if-le v0, v6, :cond_0

    invoke-virtual {p0, v7}, Lcom/alensw/PicFolder/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alensw/PicFolder/av;

    invoke-direct {v1, p0}, Lcom/alensw/PicFolder/av;-><init>(Lcom/alensw/PicFolder/PlayerActivity;)V

    invoke-static {p0, v0, v1}, Lcom/alensw/b/g/b;->a(Landroid/content/Context;Landroid/view/View;Lcom/alensw/b/g/k;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerActivity;->getRequestedOrientation()I

    move-result v1

    if-eqz v1, :cond_3

    :goto_3
    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/PlayerActivity;->a(I)V

    goto/16 :goto_0

    :cond_3
    move v0, v6

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09000a -> :sswitch_2
        0x7f090029 -> :sswitch_1
        0x7f09002a -> :sswitch_0
        0x7f09002b -> :sswitch_1
        0x7f09006d -> :sswitch_3
        0x7f09006e -> :sswitch_4
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    invoke-virtual {p0}, Lcom/alensw/PicFolder/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerActivity;->k:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    iget-boolean v2, p0, Lcom/alensw/PicFolder/PlayerActivity;->p:Z

    if-nez v2, :cond_1

    const/16 v2, 0x1388

    if-le v1, v2, :cond_1

    add-int/lit16 v2, v1, 0x1388

    iget-object v3, p0, Lcom/alensw/PicFolder/PlayerActivity;->k:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/alensw/PicFolder/PlayerActivity;->k:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    const v3, 0xea60

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/alensw/PicFolder/PlayerActivity;->x:Lcom/alensw/b/c/d;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/alensw/b/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->x:Lcom/alensw/b/c/d;

    invoke-virtual {v0}, Lcom/alensw/b/c/d;->h()V

    :cond_0
    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->j:Lcom/alensw/PicFolder/PlayerView;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/PlayerView;->c()V

    invoke-super {p0}, Lcom/alensw/ui/activity/p;->onPause()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerActivity;->x:Lcom/alensw/b/c/d;

    invoke-virtual {v1, v0}, Lcom/alensw/b/c/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->ab:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->j:Lcom/alensw/PicFolder/PlayerView;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/PlayerView;->d()V

    :cond_0
    invoke-super {p0}, Lcom/alensw/ui/activity/p;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->p:Z

    if-eqz v0, :cond_0

    const-string v0, "cur_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "cur_pos"

    iget-object v1, p0, Lcom/alensw/PicFolder/PlayerActivity;->k:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->ab:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/PlayerActivity;->j:Lcom/alensw/PicFolder/PlayerView;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/PlayerView;->d()V

    :cond_0
    iput-boolean p1, p0, Lcom/alensw/PicFolder/PlayerActivity;->ab:Z

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/p;->onWindowFocusChanged(Z)V

    return-void
.end method
