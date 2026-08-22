.class Lcom/alensw/cloud/oauth/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/oauth/a;

.field final synthetic b:Z

.field final synthetic c:Lcom/alensw/cloud/oauth/e;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/oauth/e;Lcom/alensw/cloud/oauth/a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/oauth/g;->c:Lcom/alensw/cloud/oauth/e;

    iput-object p2, p0, Lcom/alensw/cloud/oauth/g;->a:Lcom/alensw/cloud/oauth/a;

    iput-boolean p3, p0, Lcom/alensw/cloud/oauth/g;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alensw/cloud/oauth/g;->a:Lcom/alensw/cloud/oauth/a;

    iget-object v1, p0, Lcom/alensw/cloud/oauth/g;->c:Lcom/alensw/cloud/oauth/e;

    iget-object v1, v1, Lcom/alensw/cloud/oauth/e;->a:Lcom/alensw/cloud/oauth/ah;

    invoke-virtual {v1}, Lcom/alensw/cloud/oauth/ah;->d()Lcom/alensw/cloud/z;

    move-result-object v1

    iput-object v1, v0, Lcom/alensw/cloud/oauth/a;->a:Lcom/alensw/cloud/z;

    iget-boolean v0, p0, Lcom/alensw/cloud/oauth/g;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/oauth/g;->c:Lcom/alensw/cloud/oauth/e;

    iget-object v0, v0, Lcom/alensw/cloud/oauth/e;->a:Lcom/alensw/cloud/oauth/ah;

    iget-object v1, p0, Lcom/alensw/cloud/oauth/g;->a:Lcom/alensw/cloud/oauth/a;

    iget-object v1, v1, Lcom/alensw/cloud/oauth/a;->g:Lcom/alensw/cloud/oauth/aj;

    iget-object v2, p0, Lcom/alensw/cloud/oauth/g;->c:Lcom/alensw/cloud/oauth/e;

    iget-object v2, v2, Lcom/alensw/cloud/oauth/e;->c:Lcom/alensw/b/e/f;

    invoke-virtual {v0, v1, v2}, Lcom/alensw/cloud/oauth/ah;->a(Lcom/alensw/cloud/oauth/aj;Lcom/alensw/b/e/f;)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/cloud/oauth/g;->c:Lcom/alensw/cloud/oauth/e;

    iget-object v0, v0, Lcom/alensw/cloud/oauth/e;->a:Lcom/alensw/cloud/oauth/ah;

    iget-object v1, p0, Lcom/alensw/cloud/oauth/g;->a:Lcom/alensw/cloud/oauth/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alensw/cloud/oauth/ah;->a(Lcom/alensw/cloud/oauth/a;Lcom/alensw/b/e/f;)V

    const-string v0, "BaseAuthActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/cloud/oauth/g;->a:Lcom/alensw/cloud/oauth/a;

    invoke-virtual {v2}, Lcom/alensw/cloud/oauth/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alensw/cloud/oauth/g;->c:Lcom/alensw/cloud/oauth/e;

    new-instance v1, Lcom/alensw/cloud/oauth/h;

    invoke-direct {v1, p0}, Lcom/alensw/cloud/oauth/h;-><init>(Lcom/alensw/cloud/oauth/g;)V

    invoke-virtual {v0, v1}, Lcom/alensw/cloud/oauth/e;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BaseAuthActivity"

    const-string v2, "Parse token failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/alensw/cloud/oauth/g;->c:Lcom/alensw/cloud/oauth/e;

    new-instance v2, Lcom/alensw/cloud/oauth/i;

    invoke-direct {v2, p0, v0}, Lcom/alensw/cloud/oauth/i;-><init>(Lcom/alensw/cloud/oauth/g;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/alensw/cloud/oauth/e;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
