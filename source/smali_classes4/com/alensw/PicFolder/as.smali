.class Lcom/alensw/PicFolder/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/alensw/PicFolder/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/PlayerActivity;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/as;->b:Lcom/alensw/PicFolder/PlayerActivity;

    iput-object p2, p0, Lcom/alensw/PicFolder/as;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alensw/PicFolder/as;->b:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v0, v0, Lcom/alensw/PicFolder/PlayerActivity;->x:Lcom/alensw/b/c/d;

    iget-object v1, p0, Lcom/alensw/PicFolder/as;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/b/c/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alensw/PicFolder/as;->b:Lcom/alensw/PicFolder/PlayerActivity;

    const v1, 0x7f0a0049

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/PlayerActivity;->setTitle(I)V

    iget-object v0, p0, Lcom/alensw/PicFolder/as;->b:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-virtual {v0, v2}, Lcom/alensw/PicFolder/PlayerActivity;->i(Z)V

    return v2
.end method
