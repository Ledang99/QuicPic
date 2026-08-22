.class Lcom/alensw/cloud/a/cr;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Lcom/alensw/b/e/i;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:[Ljava/lang/String;

.field final synthetic e:Lcom/alensw/cloud/a/cm;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/cm;ILcom/alensw/b/e/f;Lcom/alensw/b/e/i;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/cr;->e:Lcom/alensw/cloud/a/cm;

    iput-object p4, p0, Lcom/alensw/cloud/a/cr;->a:Lcom/alensw/b/e/i;

    iput-object p5, p0, Lcom/alensw/cloud/a/cr;->b:Ljava/lang/String;

    iput-object p6, p0, Lcom/alensw/cloud/a/cr;->c:Ljava/lang/String;

    iput-object p7, p0, Lcom/alensw/cloud/a/cr;->d:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p6, p3, p4, p5, v0}, Lcom/alensw/b/e/b;->a(Ljava/io/InputStream;Ljava/lang/String;JLcom/alensw/b/e/f;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/cloud/a/cr;->d:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "tk"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    return-void
.end method

.method public a(Ljava/net/HttpURLConnection;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v0, "form-data; name=\"file\"; filename=\"%s\""

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "form-data"

    iget-object v2, p0, Lcom/alensw/cloud/a/cr;->i:Lcom/alensw/b/e/f;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/alensw/b/e/h;

    new-instance v4, Lcom/alensw/b/e/h;

    iget-object v5, p0, Lcom/alensw/cloud/a/cr;->a:Lcom/alensw/b/e/i;

    iget-object v5, v5, Lcom/alensw/b/e/i;->e:Ljava/io/InputStream;

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "Content-Disposition"

    aput-object v7, v6, v8

    aput-object v0, v6, v9

    invoke-direct {v4, v5, v6}, Lcom/alensw/b/e/h;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    aput-object v4, v3, v8

    new-instance v0, Lcom/alensw/b/e/h;

    iget-object v4, p0, Lcom/alensw/cloud/a/cr;->b:Ljava/lang/String;

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "Content-Disposition"

    aput-object v6, v5, v8

    const-string v6, "form-data;name=\"tk\""

    aput-object v6, v5, v9

    invoke-direct {v0, v4, v5}, Lcom/alensw/b/e/h;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    aput-object v0, v3, v9

    new-instance v0, Lcom/alensw/b/e/h;

    iget-object v4, p0, Lcom/alensw/cloud/a/cr;->c:Ljava/lang/String;

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "Content-Disposition"

    aput-object v6, v5, v8

    const-string v6, "form-data;name=\"open_key\""

    aput-object v6, v5, v9

    invoke-direct {v0, v4, v5}, Lcom/alensw/b/e/h;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    aput-object v0, v3, v10

    invoke-static {p1, v1, v2, v3}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/alensw/b/e/f;[Lcom/alensw/b/e/h;)V

    return-void
.end method
