.class public Lcom/alensw/cloud/oauth/GmsAuthActivity;
.super Lcom/alensw/cloud/oauth/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/cloud/oauth/e;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)Lcom/alensw/cloud/oauth/a;
    .locals 3

    new-instance v0, Lcom/alensw/cloud/oauth/a;

    invoke-direct {v0}, Lcom/alensw/cloud/oauth/a;-><init>()V

    iget-object v1, p0, Lcom/alensw/cloud/oauth/GmsAuthActivity;->a:Lcom/alensw/cloud/oauth/ah;

    invoke-virtual {v1}, Lcom/alensw/cloud/oauth/ah;->d()Lcom/alensw/cloud/z;

    move-result-object v1

    iput-object v1, v0, Lcom/alensw/cloud/oauth/a;->a:Lcom/alensw/cloud/z;

    const-string v1, "authAccount"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alensw/cloud/oauth/a;->b:Ljava/lang/String;

    iget-object v1, v0, Lcom/alensw/cloud/oauth/a;->g:Lcom/alensw/cloud/oauth/aj;

    const-string v2, "authtoken"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alensw/cloud/oauth/aj;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lcom/alensw/cloud/oauth/a;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/oauth/GmsAuthActivity;->i(Z)V

    sget-object v0, Lcom/alensw/ui/a/ao;->d:Lcom/alensw/b/k/a;

    new-instance v1, Lcom/alensw/cloud/oauth/w;

    invoke-direct {v1, p0, p1}, Lcom/alensw/cloud/oauth/w;-><init>(Lcom/alensw/cloud/oauth/GmsAuthActivity;Lcom/alensw/cloud/oauth/a;)V

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/a;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private b()Z
    .locals 3

    const/16 v0, 0x22

    :try_start_0
    invoke-static {p0, v0}, Lcom/google/gms/auth/a/a;->a(Landroid/app/Activity;I)V
    :try_end_0
    .catch Lcom/google/gms/a/b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gms/a/a; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {p0, v0}, Lcom/alensw/b/l/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alensw/cloud/oauth/GmsAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/alensw/cloud/oauth/OAuthActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/oauth/GmsAuthActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    invoke-virtual {p0}, Lcom/alensw/cloud/oauth/GmsAuthActivity;->finish()V

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {p0, v0}, Lcom/alensw/b/l/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_2

    const/16 v0, 0x22

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p3}, Lcom/alensw/cloud/oauth/GmsAuthActivity;->a(Landroid/content/Intent;)Lcom/alensw/cloud/oauth/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alensw/cloud/oauth/GmsAuthActivity;->b(Lcom/alensw/cloud/oauth/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p3}, Lcom/alensw/cloud/oauth/GmsAuthActivity;->a(Landroid/content/Intent;)Lcom/alensw/cloud/oauth/a;

    move-result-object v0

    iget-object v1, v0, Lcom/alensw/cloud/oauth/a;->g:Lcom/alensw/cloud/oauth/aj;

    iget-object v1, v1, Lcom/alensw/cloud/oauth/aj;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/oauth/GmsAuthActivity;->a(Lcom/alensw/cloud/oauth/a;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alensw/cloud/oauth/GmsAuthActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alensw/cloud/oauth/e;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/oauth/GmsAuthActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alensw/cloud/oauth/GmsAuthActivity;->b()Z

    return-void
.end method
