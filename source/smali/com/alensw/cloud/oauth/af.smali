.class Lcom/alensw/cloud/oauth/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/oauth/OAuthActivity;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/oauth/OAuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/oauth/af;->a:Lcom/alensw/cloud/oauth/OAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alensw/cloud/oauth/af;->a:Lcom/alensw/cloud/oauth/OAuthActivity;

    iget-object v0, v0, Lcom/alensw/cloud/oauth/OAuthActivity;->a:Lcom/alensw/cloud/oauth/ah;

    iget-object v1, p0, Lcom/alensw/cloud/oauth/af;->a:Lcom/alensw/cloud/oauth/OAuthActivity;

    iget-object v1, v1, Lcom/alensw/cloud/oauth/OAuthActivity;->c:Lcom/alensw/b/e/f;

    invoke-virtual {v0, v1}, Lcom/alensw/cloud/oauth/ah;->a(Lcom/alensw/b/e/f;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/cloud/oauth/af;->a:Lcom/alensw/cloud/oauth/OAuthActivity;

    new-instance v2, Lcom/alensw/cloud/oauth/ag;

    invoke-direct {v2, p0, v0}, Lcom/alensw/cloud/oauth/ag;-><init>(Lcom/alensw/cloud/oauth/af;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alensw/cloud/oauth/OAuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "OAuthActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error get request token url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alensw/cloud/oauth/af;->a:Lcom/alensw/cloud/oauth/OAuthActivity;

    invoke-virtual {v0}, Lcom/alensw/cloud/oauth/OAuthActivity;->finish()V

    goto :goto_0
.end method
