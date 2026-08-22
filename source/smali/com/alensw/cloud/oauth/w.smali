.class Lcom/alensw/cloud/oauth/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/oauth/a;

.field final synthetic b:Lcom/alensw/cloud/oauth/GmsAuthActivity;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/oauth/GmsAuthActivity;Lcom/alensw/cloud/oauth/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/oauth/w;->b:Lcom/alensw/cloud/oauth/GmsAuthActivity;

    iput-object p2, p0, Lcom/alensw/cloud/oauth/w;->a:Lcom/alensw/cloud/oauth/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/alensw/cloud/oauth/w;->a:Lcom/alensw/cloud/oauth/a;

    iget-object v0, v0, Lcom/alensw/cloud/oauth/a;->a:Lcom/alensw/cloud/z;

    sget-object v1, Lcom/alensw/cloud/z;->d:Lcom/alensw/cloud/z;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/alensw/cloud/oauth/v;->a:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/alensw/cloud/oauth/w;->a:Lcom/alensw/cloud/oauth/a;

    iget-object v1, v1, Lcom/alensw/cloud/oauth/a;->g:Lcom/alensw/cloud/oauth/aj;

    iget-object v2, p0, Lcom/alensw/cloud/oauth/w;->b:Lcom/alensw/cloud/oauth/GmsAuthActivity;

    iget-object v3, p0, Lcom/alensw/cloud/oauth/w;->a:Lcom/alensw/cloud/oauth/a;

    iget-object v3, v3, Lcom/alensw/cloud/oauth/a;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oauth2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/google/gms/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alensw/cloud/oauth/aj;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alensw/cloud/oauth/w;->b:Lcom/alensw/cloud/oauth/GmsAuthActivity;

    new-instance v1, Lcom/alensw/cloud/oauth/x;

    invoke-direct {v1, p0}, Lcom/alensw/cloud/oauth/x;-><init>(Lcom/alensw/cloud/oauth/w;)V

    invoke-virtual {v0, v1}, Lcom/alensw/cloud/oauth/GmsAuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/alensw/cloud/oauth/al;->a:Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/gms/a/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gms/a/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alensw/cloud/oauth/w;->b:Lcom/alensw/cloud/oauth/GmsAuthActivity;

    invoke-virtual {v0}, Lcom/google/gms/a/c;->a()Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Lcom/alensw/cloud/oauth/GmsAuthActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "GmsAuthActivity"

    const-string v2, "auth failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/alensw/cloud/oauth/w;->b:Lcom/alensw/cloud/oauth/GmsAuthActivity;

    invoke-static {v1, v0}, Lcom/alensw/b/l/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_2
    iget-object v0, p0, Lcom/alensw/cloud/oauth/w;->b:Lcom/alensw/cloud/oauth/GmsAuthActivity;

    new-instance v1, Lcom/alensw/cloud/oauth/y;

    invoke-direct {v1, p0}, Lcom/alensw/cloud/oauth/y;-><init>(Lcom/alensw/cloud/oauth/w;)V

    invoke-virtual {v0, v1}, Lcom/alensw/cloud/oauth/GmsAuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "GmsAuthActivity"

    const-string v2, "get token failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/alensw/cloud/oauth/w;->b:Lcom/alensw/cloud/oauth/GmsAuthActivity;

    invoke-static {v1, v0}, Lcom/alensw/b/l/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
