.class Lcom/alensw/PicFolder/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Message;

.field final synthetic b:Lcom/alensw/PicFolder/x;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/x;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/y;->b:Lcom/alensw/PicFolder/x;

    iput-object p2, p0, Lcom/alensw/PicFolder/y;->a:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/PicFolder/y;->b:Lcom/alensw/PicFolder/x;

    iget-boolean v0, v0, Lcom/alensw/PicFolder/x;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/PicFolder/y;->b:Lcom/alensw/PicFolder/x;

    iget-object v0, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v0, v0, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/y;->b:Lcom/alensw/PicFolder/x;

    iget-object v0, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v0, v0, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/alensw/PicFolder/y;->b:Lcom/alensw/PicFolder/x;

    iget-object v0, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/alensw/PicFolder/y;->b:Lcom/alensw/PicFolder/x;

    iget-boolean v0, v0, Lcom/alensw/PicFolder/x;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/PicFolder/y;->b:Lcom/alensw/PicFolder/x;

    iget-object v0, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/q;->a(I)V

    :cond_2
    iget-object v0, p0, Lcom/alensw/PicFolder/y;->b:Lcom/alensw/PicFolder/x;

    iget-object v0, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v0, v0, Lcom/alensw/PicFolder/q;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alensw/PicFolder/y;->a:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
