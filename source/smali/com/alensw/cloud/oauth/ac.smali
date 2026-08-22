.class Lcom/alensw/cloud/oauth/ac;
.super Lcom/alensw/b/e/g;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/alensw/cloud/oauth/ab;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/oauth/ab;Lcom/alensw/b/e/f;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/oauth/ac;->b:Lcom/alensw/cloud/oauth/ab;

    iput-object p3, p0, Lcom/alensw/cloud/oauth/ac;->a:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/alensw/b/e/g;-><init>(Lcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/oauth/ac;->b:Lcom/alensw/cloud/oauth/ab;

    invoke-virtual {v0, p1, p2}, Lcom/alensw/cloud/oauth/ab;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/cloud/oauth/ac;->b:Lcom/alensw/cloud/oauth/ab;

    invoke-virtual {v0}, Lcom/alensw/cloud/oauth/ab;->b()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "json"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_5

    invoke-static {}, Lcom/alensw/cloud/oauth/ab;->c()Lcom/a/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/a/a/a/b;->a(Ljava/io/InputStream;)Lcom/a/a/a/h;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v2, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    if-eq v0, v2, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Not json object"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/a/a/a/h;->close()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/cloud/oauth/ac;->b:Lcom/alensw/cloud/oauth/ab;

    invoke-virtual {v0}, Lcom/alensw/cloud/oauth/ab;->b()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v2, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v0, v2, :cond_3

    invoke-virtual {v1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    iget-object v2, p0, Lcom/alensw/cloud/oauth/ac;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/a/a/a/h;->p()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/a/a/a/h;->close()V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/alensw/cloud/oauth/ac;->i:Lcom/alensw/b/e/f;

    invoke-static {p6, p3, v0}, Lcom/alensw/b/e/b;->a(Ljava/io/InputStream;Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_4

    aget-object v4, v2, v0

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alensw/cloud/oauth/ac;->a:Ljava/util/Map;

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
