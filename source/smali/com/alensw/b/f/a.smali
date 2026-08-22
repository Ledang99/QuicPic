.class public Lcom/alensw/b/f/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "537c139556240b3cfd00f3fd"

    invoke-static {v1}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    if-ltz p1, :cond_1

    const-string v1, "official"

    :goto_0
    invoke-static {v1}, Lcom/c/a/a;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/c/a/b;->b(Z)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/c/a/b;->a(Z)V

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Lcom/c/a/b;->a(J)V

    invoke-static {p0}, Lcom/c/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const-string v1, "unknown"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Analytic"

    const-string v2, "init mob,0x "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/c/a/b;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alensw/b/f/b;)V
    .locals 1

    invoke-virtual {p1}, Lcom/alensw/b/f/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/c/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alensw/b/f/b;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/alensw/b/f/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/c/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alensw/b/f/b;Ljava/util/Map;)V
    .locals 1

    invoke-virtual {p1}, Lcom/alensw/b/f/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/c/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alensw/b/f/b;Ljava/util/Map;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/alensw/b/f/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/c/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/c/a/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/c/a/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/c/a/b;->b(Ljava/lang/String;)V

    return-void
.end method
