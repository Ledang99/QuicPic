.class public Lcom/alensw/ui/a/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "User-Agent"

    sget v2, Lcom/alensw/PicFolder/QuickApp;->k:I

    invoke-static {p0, v2}, Lcom/alensw/b/e/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/alensw/ui/a/b;

    invoke-direct {v1, v0, p0}, Lcom/alensw/ui/a/b;-><init>(Ljava/util/HashMap;Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/alensw/ui/a/b;->start()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "last_check_update"

    invoke-interface {p1, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    const-wide/32 v0, 0x240c8400

    sub-long v0, v2, v0

    cmp-long v0, v4, v0

    if-gez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "last_check_update"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/alensw/b/l/b;->a(Landroid/content/SharedPreferences$Editor;)V

    :cond_1
    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {p0}, Lcom/alensw/ui/a/a;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CheckUpdate"

    const-string v2, "check: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/alensw/ui/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0, v0, p2}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/Object;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d1\u73b0\u65b0\u7248\u672c\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    const-string v2, "\u5347\u7ea7"

    new-instance v3, Lcom/alensw/ui/a/d;

    invoke-direct {v3, p0, p3}, Lcom/alensw/ui/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x2

    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alensw/ui/a/e;

    invoke-direct {v3}, Lcom/alensw/ui/a/e;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {v0}, Lcom/alensw/ui/a/f;->a(Landroid/app/Dialog;)Z

    goto :goto_0
.end method
