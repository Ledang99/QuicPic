.class Lcom/alensw/PicFolder/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alensw/PicFolder/av;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/av;I)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/aw;->b:Lcom/alensw/PicFolder/av;

    iput p2, p0, Lcom/alensw/PicFolder/aw;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/alensw/PicFolder/aw;->b:Lcom/alensw/PicFolder/av;

    iget-object v0, v0, Lcom/alensw/PicFolder/av;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v0, v0, Lcom/alensw/PicFolder/PlayerActivity;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/PicFolder/aw;->b:Lcom/alensw/PicFolder/av;

    iget-object v0, v0, Lcom/alensw/PicFolder/av;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v0, v0, Lcom/alensw/PicFolder/PlayerActivity;->l:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/alensw/PicFolder/aw;->a:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->selectTrack(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alensw/PicFolder/aw;->b:Lcom/alensw/PicFolder/av;

    iget-object v1, v1, Lcom/alensw/PicFolder/av;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-static {v1, v0}, Lcom/alensw/b/l/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
