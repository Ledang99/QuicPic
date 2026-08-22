.class Lcom/alensw/ui/c/j;
.super Lcom/alensw/ui/a/ao;


# instance fields
.field final synthetic a:Lcom/alensw/a/e;

.field final synthetic b:Lcom/alensw/a/ba;

.field final synthetic c:Ljava/lang/String;

.field final synthetic e:Ljava/lang/Runnable;

.field final synthetic f:Lcom/alensw/ui/c/a;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/a;Landroid/app/Activity;Ljava/lang/String;ILcom/alensw/a/e;Lcom/alensw/a/ba;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/j;->f:Lcom/alensw/ui/c/a;

    iput-object p5, p0, Lcom/alensw/ui/c/j;->a:Lcom/alensw/a/e;

    iput-object p6, p0, Lcom/alensw/ui/c/j;->b:Lcom/alensw/a/ba;

    iput-object p7, p0, Lcom/alensw/ui/c/j;->c:Ljava/lang/String;

    iput-object p8, p0, Lcom/alensw/ui/c/j;->e:Ljava/lang/Runnable;

    invoke-direct {p0, p2, p3, p4}, Lcom/alensw/ui/a/ao;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/j;->f:Lcom/alensw/ui/c/a;

    iget-object v0, v0, Lcom/alensw/ui/c/a;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alensw/ui/c/k;

    invoke-direct {v1, p0, p1}, Lcom/alensw/ui/c/k;-><init>(Lcom/alensw/ui/c/j;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alensw/ui/c/j;->a:Lcom/alensw/a/e;

    const-string v3, "test"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "tmp"

    invoke-static {v1, v2}, Lcom/alensw/b/l/b;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/alensw/b/l/b;->b(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/alensw/b/l/b;->c(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/alensw/ui/c/j;->b:Lcom/alensw/a/ba;

    iget-object v2, p0, Lcom/alensw/ui/c/j;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alensw/a/ba;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "Hide from the media store failed!\nPlease try again later."

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/j;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "test write failed!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alensw/ui/c/j;->b:Lcom/alensw/a/ba;

    invoke-virtual {v1}, Lcom/alensw/a/ba;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f0a001f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alensw/ui/c/j;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/alensw/ui/c/j;->a:Lcom/alensw/a/e;

    iget-object v2, p0, Lcom/alensw/ui/c/j;->a:Lcom/alensw/a/e;

    invoke-static {v2, v0}, Lcom/alensw/b/l/b;->a(Ljava/io/File;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    iput v0, v1, Lcom/alensw/a/e;->f:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/j;->a:Lcom/alensw/a/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alensw/a/e;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/j;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/j;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/j;->f:Lcom/alensw/ui/c/a;

    iget-object v1, p0, Lcom/alensw/ui/c/j;->a:Lcom/alensw/a/e;

    invoke-virtual {v1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/a;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method
