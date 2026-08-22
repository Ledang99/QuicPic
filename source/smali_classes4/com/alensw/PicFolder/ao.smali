.class Lcom/alensw/PicFolder/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/alensw/PicFolder/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/PlayerActivity;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/ao;->b:Lcom/alensw/PicFolder/PlayerActivity;

    iput-object p2, p0, Lcom/alensw/PicFolder/ao;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/PicFolder/ao;->b:Lcom/alensw/PicFolder/PlayerActivity;

    iput-object p1, v0, Lcom/alensw/PicFolder/PlayerActivity;->l:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/alensw/PicFolder/ao;->b:Lcom/alensw/PicFolder/PlayerActivity;

    iget v0, v0, Lcom/alensw/PicFolder/PlayerActivity;->n:I

    const/4 v3, -0x2

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/alensw/PicFolder/ao;->b:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    if-le v0, v4, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/alensw/PicFolder/PlayerActivity;->setRequestedOrientation(I)V

    :cond_0
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/alensw/PicFolder/ao;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/alensw/PicFolder/ao;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alensw/PicFolder/ao;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/alensw/b/l/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/alensw/PicFolder/ao;->b:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-virtual {v3, v0}, Lcom/alensw/PicFolder/PlayerActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/alensw/PicFolder/ao;->b:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/PlayerActivity;->i(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_8

    :try_start_0
    iget-object v0, p0, Lcom/alensw/PicFolder/ao;->b:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/alensw/PicFolder/PlayerActivity;->u:[Landroid/media/MediaPlayer$TrackInfo;

    iget-object v0, p0, Lcom/alensw/PicFolder/ao;->b:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v0, v0, Lcom/alensw/PicFolder/PlayerActivity;->u:[Landroid/media/MediaPlayer$TrackInfo;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alensw/PicFolder/ao;->b:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v0, v0, Lcom/alensw/PicFolder/PlayerActivity;->u:[Landroid/media/MediaPlayer$TrackInfo;

    array-length v3, v0

    :goto_2
    if-ge v1, v3, :cond_7

    aget-object v4, v0, v1

    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/alensw/PicFolder/ao;->b:Lcom/alensw/PicFolder/PlayerActivity;

    iget v5, v4, Lcom/alensw/PicFolder/PlayerActivity;->o:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/alensw/PicFolder/PlayerActivity;->o:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    const-string v3, "media"

    iget-object v4, p0, Lcom/alensw/PicFolder/ao;->a:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    iget-object v3, p0, Lcom/alensw/PicFolder/ao;->a:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lcom/alensw/a/ba;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/alensw/PicFolder/ao;->b:Lcom/alensw/PicFolder/PlayerActivity;

    iget v0, v0, Lcom/alensw/PicFolder/PlayerActivity;->o:I

    if-le v0, v2, :cond_8

    iget-object v0, p0, Lcom/alensw/PicFolder/ao;->b:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/PlayerActivity;->invalidateOptionsMenu()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/alensw/PicFolder/ao;->b:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/PlayerActivity;->h(Lcom/alensw/PicFolder/PlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alensw/PicFolder/ap;

    invoke-direct {v1, p0}, Lcom/alensw/PicFolder/ap;-><init>(Lcom/alensw/PicFolder/ao;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/alensw/PicFolder/ao;->b:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/PlayerActivity;->i(Lcom/alensw/PicFolder/PlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/alensw/PicFolder/aq;

    invoke-direct {v3, p0}, Lcom/alensw/PicFolder/aq;-><init>(Lcom/alensw/PicFolder/ao;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/ao;->b:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v0, v0, Lcom/alensw/PicFolder/PlayerActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    const-wide/16 v0, 0x1388

    :goto_4
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/alensw/PicFolder/ao;->b:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/PlayerActivity;->j(Lcom/alensw/PicFolder/PlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3
.end method
