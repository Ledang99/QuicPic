.class public Lcom/alensw/cloud/oauth/e;
.super Lcom/alensw/ui/activity/ao;


# instance fields
.field protected a:Lcom/alensw/cloud/oauth/ah;

.field protected volatile b:Z

.field protected final c:Lcom/alensw/b/e/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alensw/ui/activity/ao;-><init>()V

    new-instance v0, Lcom/alensw/cloud/oauth/f;

    invoke-direct {v0, p0}, Lcom/alensw/cloud/oauth/f;-><init>(Lcom/alensw/cloud/oauth/e;)V

    iput-object v0, p0, Lcom/alensw/cloud/oauth/e;->c:Lcom/alensw/b/e/f;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;Lcom/alensw/cloud/oauth/a;)Landroid/content/Intent;
    .locals 3

    iget-object v0, p2, Lcom/alensw/cloud/oauth/a;->a:Lcom/alensw/cloud/z;

    invoke-static {v0}, Lcom/alensw/cloud/oauth/a;->a(Lcom/alensw/cloud/z;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/alensw/cloud/oauth/a;->g:Lcom/alensw/cloud/oauth/aj;

    iget-object v0, v0, Lcom/alensw/cloud/oauth/aj;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p2, Lcom/alensw/cloud/oauth/a;->a:Lcom/alensw/cloud/z;

    invoke-static {p0, p1, v1, v0}, Lcom/alensw/cloud/oauth/e;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/alensw/cloud/z;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p2, Lcom/alensw/cloud/oauth/a;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "server"

    iget-object v2, p2, Lcom/alensw/cloud/oauth/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;Lcom/alensw/cloud/z;Z)Landroid/content/Intent;
    .locals 3

    sget-object v0, Lcom/alensw/cloud/z;->k:Lcom/alensw/cloud/z;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/alensw/cloud/z;->m:Lcom/alensw/cloud/z;

    if-ne p2, v0, :cond_2

    :cond_0
    const-class v0, Lcom/alensw/cloud/oauth/BasicAuthActivity;

    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "cloud_id"

    invoke-virtual {p2}, Lcom/alensw/cloud/z;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string v0, "messenger"

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    return-object v1

    :cond_2
    if-eqz p3, :cond_3

    const-class v0, Lcom/alensw/cloud/oauth/OAuthActivity;

    goto :goto_0

    :cond_3
    invoke-static {p2}, Lcom/alensw/cloud/oauth/a;->a(Lcom/alensw/cloud/z;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/alensw/PicFolder/QuickApp;->c:Z

    if-eqz v0, :cond_4

    const-class v0, Lcom/alensw/cloud/oauth/GmsAuthActivity;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/alensw/cloud/z;->c:Lcom/alensw/cloud/z;

    if-ne p2, v0, :cond_5

    invoke-static {p0}, Lcom/dropbox/client2/android/AuthActivity;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-class v0, Lcom/dropbox/client2/android/AuthActivity;

    goto :goto_0

    :cond_5
    const-class v0, Lcom/alensw/cloud/oauth/OAuthActivity;

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/os/Handler;Lcom/alensw/cloud/z;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alensw/cloud/oauth/e;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/alensw/cloud/z;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/alensw/cloud/oauth/a;)V
    .locals 3

    :try_start_0
    const-string v0, "com.alensw.PicFolder.CloudProvider"

    invoke-virtual {p1}, Lcom/alensw/cloud/oauth/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alensw/b/j/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alensw/cloud/oauth/e;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alensw/cloud/oauth/a;->b()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/alensw/cloud/oauth/e;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "messenger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/cloud/oauth/e;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "messenger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iget-object v2, p1, Lcom/alensw/cloud/oauth/a;->a:Lcom/alensw/cloud/z;

    invoke-virtual {v2}, Lcom/alensw/cloud/z;->ordinal()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Lcom/alensw/cloud/oauth/a;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alensw/cloud/oauth/e;->finish()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Lcom/alensw/cloud/oauth/a;Z)V
    .locals 2

    sget-object v0, Lcom/alensw/ui/a/ao;->d:Lcom/alensw/b/k/a;

    new-instance v1, Lcom/alensw/cloud/oauth/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/alensw/cloud/oauth/g;-><init>(Lcom/alensw/cloud/oauth/e;Lcom/alensw/cloud/oauth/a;Z)V

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/a;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/ao;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alensw/cloud/oauth/e;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cloud_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/cloud/oauth/ah;->d(Ljava/lang/String;)Lcom/alensw/cloud/oauth/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/cloud/oauth/e;->a:Lcom/alensw/cloud/oauth/ah;

    iget-object v0, p0, Lcom/alensw/cloud/oauth/e;->a:Lcom/alensw/cloud/oauth/ah;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/cloud/oauth/e;->finish()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/cloud/oauth/e;->b:Z

    invoke-super {p0}, Lcom/alensw/ui/activity/ao;->onDestroy()V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/ao;->onPostCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/oauth/e;->g(Z)V

    iget-object v0, p0, Lcom/alensw/cloud/oauth/e;->a:Lcom/alensw/cloud/oauth/ah;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/cloud/oauth/e;->a:Lcom/alensw/cloud/oauth/ah;

    invoke-virtual {v0}, Lcom/alensw/cloud/oauth/ah;->d()Lcom/alensw/cloud/z;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/alensw/cloud/e;->a(Lcom/alensw/cloud/z;)Lcom/alensw/cloud/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alensw/cloud/oauth/e;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/alensw/cloud/oauth/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Lcom/alensw/cloud/x;->b:I

    iget v3, p0, Lcom/alensw/cloud/oauth/e;->X:I

    invoke-static {v2, v0, v3, v1}, Lcom/alensw/b/l/b;->a(Landroid/content/res/Resources;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/a/a/a;->a(Landroid/app/Activity;)Landroid/support/a/a/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/support/a/a/c;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
