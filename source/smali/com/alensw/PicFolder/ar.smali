.class Lcom/alensw/PicFolder/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/ar;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/PicFolder/ar;->a:Lcom/alensw/PicFolder/PlayerActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alensw/PicFolder/PlayerActivity;->p:Z

    iget-object v0, p0, Lcom/alensw/PicFolder/ar;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-boolean v0, v0, Lcom/alensw/PicFolder/PlayerActivity;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/ar;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/PlayerActivity;->finish()V

    :cond_0
    return-void
.end method
