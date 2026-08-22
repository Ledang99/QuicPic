.class Lcom/alensw/cloud/a/r;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Landroid/content/ContentValues;

.field final synthetic b:Ljava/lang/StringBuilder;

.field final synthetic c:Lcom/alensw/b/e/h;

.field final synthetic d:[Ljava/lang/String;

.field final synthetic e:Lcom/alensw/cloud/a/n;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/n;ILcom/alensw/b/e/f;Landroid/content/ContentValues;Ljava/lang/StringBuilder;Lcom/alensw/b/e/h;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/r;->e:Lcom/alensw/cloud/a/n;

    iput-object p4, p0, Lcom/alensw/cloud/a/r;->a:Landroid/content/ContentValues;

    iput-object p5, p0, Lcom/alensw/cloud/a/r;->b:Ljava/lang/StringBuilder;

    iput-object p6, p0, Lcom/alensw/cloud/a/r;->c:Lcom/alensw/b/e/h;

    iput-object p7, p0, Lcom/alensw/cloud/a/r;->d:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 4

    const/16 v0, 0x199

    if-ne p1, v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "item_name_in_use"

    const-string v2, "code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "context_info"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "conflicts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/cloud/a/r;->d:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/alensw/cloud/a/r;->d:[Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "sha1"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alensw/cloud/a/by;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lcom/a/a/a/h;)V
    .locals 2

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    invoke-static {v0, v1}, Lcom/alensw/cloud/a/bv;->a(Lcom/a/a/a/l;Lcom/a/a/a/l;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v1, "entries"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/a/a/a/h;->c()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->d:Lcom/a/a/a/l;

    if-ne v0, v1, :cond_1

    :goto_1
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->e:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/a/r;->e:Lcom/alensw/cloud/a/n;

    iget-object v1, p0, Lcom/alensw/cloud/a/r;->a:Landroid/content/ContentValues;

    invoke-static {v0, p1, v1}, Lcom/alensw/cloud/a/n;->a(Lcom/alensw/cloud/a/n;Lcom/a/a/a/h;Landroid/content/ContentValues;)C

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Ljava/net/HttpURLConnection;)V
    .locals 9

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "form-data"

    iget-object v1, p0, Lcom/alensw/cloud/a/r;->i:Lcom/alensw/b/e/f;

    new-array v2, v5, [Lcom/alensw/b/e/h;

    new-instance v3, Lcom/alensw/b/e/h;

    iget-object v4, p0, Lcom/alensw/cloud/a/r;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "Content-Disposition"

    aput-object v6, v5, v7

    const-string v6, "form-data; name=\"attributes\""

    aput-object v6, v5, v8

    invoke-direct {v3, v4, v5}, Lcom/alensw/b/e/h;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/alensw/cloud/a/r;->c:Lcom/alensw/b/e/h;

    aput-object v3, v2, v8

    invoke-static {p1, v0, v1, v2}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/alensw/b/e/f;[Lcom/alensw/b/e/h;)V

    return-void
.end method
