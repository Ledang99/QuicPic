.class Lcom/alensw/cloud/oauth/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/z;

.field final synthetic b:Ljava/net/URL;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alensw/cloud/oauth/BasicAuthActivity;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/oauth/BasicAuthActivity;Lcom/alensw/cloud/z;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/oauth/n;->e:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    iput-object p2, p0, Lcom/alensw/cloud/oauth/n;->a:Lcom/alensw/cloud/z;

    iput-object p3, p0, Lcom/alensw/cloud/oauth/n;->b:Ljava/net/URL;

    iput-object p4, p0, Lcom/alensw/cloud/oauth/n;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alensw/cloud/oauth/n;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alensw/cloud/oauth/n;->a:Lcom/alensw/cloud/z;

    sget-object v2, Lcom/alensw/cloud/z;->k:Lcom/alensw/cloud/z;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/alensw/cloud/oauth/n;->e:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    iget-object v2, p0, Lcom/alensw/cloud/oauth/n;->b:Ljava/net/URL;

    invoke-static {v1, v2}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a(Lcom/alensw/cloud/oauth/BasicAuthActivity;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/cloud/oauth/n;->e:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    invoke-static {v2}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a(Lcom/alensw/cloud/oauth/BasicAuthActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alensw/cloud/oauth/n;->e:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    iget-object v2, p0, Lcom/alensw/cloud/oauth/n;->b:Ljava/net/URL;

    iget-object v3, p0, Lcom/alensw/cloud/oauth/n;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alensw/cloud/oauth/n;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a(Lcom/alensw/cloud/oauth/BasicAuthActivity;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Lcom/alensw/cloud/oauth/a;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/cloud/oauth/n;->e:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    invoke-static {v2, v1}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a(Lcom/alensw/cloud/oauth/BasicAuthActivity;Lcom/alensw/cloud/oauth/a;)V

    iget-object v2, p0, Lcom/alensw/cloud/oauth/n;->e:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    invoke-static {v2}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a(Lcom/alensw/cloud/oauth/BasicAuthActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alensw/cloud/oauth/n;->e:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    invoke-virtual {v2, v1}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a(Lcom/alensw/cloud/oauth/a;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alensw/cloud/a/bz; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/alensw/cloud/oauth/n;->e:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    invoke-static {v0}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->d(Lcom/alensw/cloud/oauth/BasicAuthActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/cloud/oauth/n;->e:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    invoke-static {v2, v1}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a(Lcom/alensw/cloud/oauth/BasicAuthActivity;Ljava/lang/Exception;)V

    :goto_1
    iget-object v1, p0, Lcom/alensw/cloud/oauth/n;->e:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    invoke-static {v1}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a(Lcom/alensw/cloud/oauth/BasicAuthActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alensw/cloud/oauth/n;->e:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    new-instance v2, Lcom/alensw/cloud/oauth/o;

    invoke-direct {v2, p0, v0}, Lcom/alensw/cloud/oauth/o;-><init>(Lcom/alensw/cloud/oauth/n;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/alensw/cloud/oauth/n;->e:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    invoke-static {v0}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->e(Lcom/alensw/cloud/oauth/BasicAuthActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/cloud/oauth/n;->e:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    invoke-static {v2, v1}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a(Lcom/alensw/cloud/oauth/BasicAuthActivity;Ljava/lang/Exception;)V

    goto :goto_1

    :catch_2
    move-exception v1

    iget-object v2, p0, Lcom/alensw/cloud/oauth/n;->e:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    invoke-static {v2, v1}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a(Lcom/alensw/cloud/oauth/BasicAuthActivity;Ljava/lang/Exception;)V

    goto :goto_1
.end method
