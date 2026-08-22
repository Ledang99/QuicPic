.class final Lcom/alensw/ui/c/at;
.super Lcom/alensw/ui/a/ao;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;

.field private e:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;ILandroid/net/Uri;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    iput-object p4, p0, Lcom/alensw/ui/c/at;->a:Landroid/net/Uri;

    iput-object p5, p0, Lcom/alensw/ui/c/at;->b:Landroid/app/Activity;

    iput-object p6, p0, Lcom/alensw/ui/c/at;->c:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/ui/a/ao;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alensw/ui/c/at;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/alensw/ui/c/at;->e:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "sharable_url"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/alensw/ui/c/at;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/at;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/j/a;->e(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alensw/ui/c/at;->b:Landroid/app/Activity;

    const-class v3, Lcom/alensw/transfer/TransferService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/alensw/ui/c/at;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/alensw/ui/c/at;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/alensw/ui/c/at;->b:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/ui/c/at;->e:Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_2
    iput-object v0, p0, Lcom/alensw/ui/c/at;->e:Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_2
.end method

.method protected b()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/c/at;->e:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/at;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alensw/ui/c/at;->e:Landroid/net/Uri;

    iget-object v2, p0, Lcom/alensw/ui/c/at;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
