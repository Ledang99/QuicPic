.class Lcom/alensw/PicFolder/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alensw/PicFolder/c;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/c;Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/d;->b:Lcom/alensw/PicFolder/c;

    iput-object p3, p0, Lcom/alensw/PicFolder/d;->a:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alensw/PicFolder/d;->b:Lcom/alensw/PicFolder/c;

    iget-object v1, v1, Lcom/alensw/PicFolder/c;->c:Lcom/alensw/cloud/oauth/a;

    invoke-virtual {v1}, Lcom/alensw/cloud/oauth/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alensw/cloud/oauth/b;

    invoke-direct {v0}, Lcom/alensw/cloud/oauth/b;-><init>()V

    iget-object v1, p0, Lcom/alensw/PicFolder/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alensw/cloud/oauth/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alensw/PicFolder/d;->b:Lcom/alensw/PicFolder/c;

    invoke-static {v1}, Lcom/alensw/PicFolder/c;->a(Lcom/alensw/PicFolder/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/alensw/PicFolder/d;->b:Lcom/alensw/PicFolder/c;

    iget-object v2, v2, Lcom/alensw/PicFolder/c;->c:Lcom/alensw/cloud/oauth/a;

    invoke-virtual {v0, v2}, Lcom/alensw/cloud/oauth/b;->a(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/alensw/cloud/oauth/b;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/oauth/a;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alensw/PicFolder/d;->b:Lcom/alensw/PicFolder/c;

    iget-object v2, v2, Lcom/alensw/PicFolder/c;->e:Lcom/alensw/cloud/a/bv;

    iget-object v0, v0, Lcom/alensw/cloud/oauth/a;->g:Lcom/alensw/cloud/oauth/aj;

    invoke-virtual {v2, v0}, Lcom/alensw/cloud/a/bv;->a(Lcom/alensw/cloud/oauth/aj;)V

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
