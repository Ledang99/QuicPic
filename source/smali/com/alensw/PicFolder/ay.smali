.class Lcom/alensw/PicFolder/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Landroid/media/MediaPlayer$OnPreparedListener;

.field final synthetic b:Lcom/alensw/PicFolder/PlayerView;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/PlayerView;Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/ay;->b:Lcom/alensw/PicFolder/PlayerView;

    iput-object p2, p0, Lcom/alensw/PicFolder/ay;->a:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/PicFolder/ay;->b:Lcom/alensw/PicFolder/PlayerView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alensw/PicFolder/PlayerView;->b(Lcom/alensw/PicFolder/PlayerView;I)I

    iget-object v0, p0, Lcom/alensw/PicFolder/ay;->b:Lcom/alensw/PicFolder/PlayerView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alensw/PicFolder/PlayerView;->c(Lcom/alensw/PicFolder/PlayerView;I)I

    iget-object v0, p0, Lcom/alensw/PicFolder/ay;->b:Lcom/alensw/PicFolder/PlayerView;

    iget-object v1, p0, Lcom/alensw/PicFolder/ay;->b:Lcom/alensw/PicFolder/PlayerView;

    invoke-virtual {v1}, Lcom/alensw/PicFolder/PlayerView;->e()[F

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/PicFolder/ay;->b:Lcom/alensw/PicFolder/PlayerView;

    invoke-static {v2}, Lcom/alensw/PicFolder/PlayerView;->h(Lcom/alensw/PicFolder/PlayerView;)I

    move-result v2

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/alensw/PicFolder/PlayerView;->a(Lcom/alensw/PicFolder/PlayerView;F)F

    iget-object v0, p0, Lcom/alensw/PicFolder/ay;->b:Lcom/alensw/PicFolder/PlayerView;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/PlayerView;->requestLayout()V

    iget-object v0, p0, Lcom/alensw/PicFolder/ay;->a:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    return-void
.end method
