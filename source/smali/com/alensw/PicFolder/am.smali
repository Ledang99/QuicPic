.class Lcom/alensw/PicFolder/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    iget-object v0, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v0, v0, Lcom/alensw/PicFolder/PlayerActivity;->d:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v0, v0, Lcom/alensw/PicFolder/PlayerActivity;->k:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    int-to-long v0, v0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v2, v2, Lcom/alensw/PicFolder/PlayerActivity;->d:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v1, v1, Lcom/alensw/PicFolder/PlayerActivity;->k:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object v1, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v1, v1, Lcom/alensw/PicFolder/PlayerActivity;->f:Landroid/widget/TextView;

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/alensw/b/l/b;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v0, v0, Lcom/alensw/PicFolder/PlayerActivity;->c:Lcom/alensw/PicFolder/VolumeBar;

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v0, v0, Lcom/alensw/PicFolder/PlayerActivity;->t:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/PlayerActivity;->e()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v0, v0, Lcom/alensw/PicFolder/PlayerActivity;->d:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alensw/PicFolder/PlayerActivity;->r:Z

    iget-object v0, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/PlayerActivity;->u()V

    iget-object v0, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/PlayerActivity;->e(Lcom/alensw/PicFolder/PlayerActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/PlayerActivity;->f(Lcom/alensw/PicFolder/PlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v0, v0, Lcom/alensw/PicFolder/PlayerActivity;->c:Lcom/alensw/PicFolder/VolumeBar;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/PlayerActivity;->u()V

    iget-object v0, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v0, v0, Lcom/alensw/PicFolder/PlayerActivity;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/PlayerActivity;->e()V

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    const/16 v2, 0x5dc

    iget-object v0, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v0, v0, Lcom/alensw/PicFolder/PlayerActivity;->d:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alensw/PicFolder/PlayerActivity;->r:Z

    iget-object v0, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/PlayerActivity;->b(Z)I

    iget-object v0, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/PlayerActivity;->d()V

    iget-object v0, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-virtual {v0, v2}, Lcom/alensw/PicFolder/PlayerActivity;->f(I)V

    iget-object v0, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/PlayerActivity;->g(Lcom/alensw/PicFolder/PlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v0, v0, Lcom/alensw/PicFolder/PlayerActivity;->c:Lcom/alensw/PicFolder/VolumeBar;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/am;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-virtual {v0, v2}, Lcom/alensw/PicFolder/PlayerActivity;->f(I)V

    goto :goto_0
.end method
