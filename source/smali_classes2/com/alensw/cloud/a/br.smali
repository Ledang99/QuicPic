.class Lcom/alensw/cloud/a/br;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/ContentValues;

.field final synthetic c:Ljava/lang/StringBuilder;

.field final synthetic d:Lcom/alensw/b/e/i;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/alensw/cloud/a/bn;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/bn;ILcom/alensw/b/e/f;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/StringBuilder;Lcom/alensw/b/e/i;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/br;->f:Lcom/alensw/cloud/a/bn;

    iput-object p4, p0, Lcom/alensw/cloud/a/br;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/alensw/cloud/a/br;->b:Landroid/content/ContentValues;

    iput-object p6, p0, Lcom/alensw/cloud/a/br;->c:Ljava/lang/StringBuilder;

    iput-object p7, p0, Lcom/alensw/cloud/a/br;->d:Lcom/alensw/b/e/i;

    iput-object p8, p0, Lcom/alensw/cloud/a/br;->e:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/a/a/h;)V
    .locals 3

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    invoke-static {v0, v1}, Lcom/alensw/cloud/a/bv;->a(Lcom/a/a/a/l;Lcom/a/a/a/l;)V

    :goto_0
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v1, "entry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/a/br;->f:Lcom/alensw/cloud/a/bn;

    iget-object v1, p0, Lcom/alensw/cloud/a/br;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alensw/cloud/a/br;->b:Landroid/content/ContentValues;

    invoke-static {v0, v1, p1, v2}, Lcom/alensw/cloud/a/bn;->a(Lcom/alensw/cloud/a/bn;Ljava/lang/String;Lcom/a/a/a/h;Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ljava/net/HttpURLConnection;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "related"

    iget-object v1, p0, Lcom/alensw/cloud/a/br;->i:Lcom/alensw/b/e/f;

    new-array v2, v9, [Lcom/alensw/b/e/h;

    new-instance v3, Lcom/alensw/b/e/h;

    iget-object v4, p0, Lcom/alensw/cloud/a/br;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Content-Type"

    aput-object v6, v5, v7

    const-string v6, "application/atom+xml; charset=utf-8"

    aput-object v6, v5, v8

    invoke-direct {v3, v4, v5}, Lcom/alensw/b/e/h;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    aput-object v3, v2, v7

    new-instance v3, Lcom/alensw/b/e/h;

    iget-object v4, p0, Lcom/alensw/cloud/a/br;->d:Lcom/alensw/b/e/i;

    iget-object v4, v4, Lcom/alensw/b/e/i;->e:Ljava/io/InputStream;

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Content-Type"

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/alensw/cloud/a/br;->e:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-direct {v3, v4, v5}, Lcom/alensw/b/e/h;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    aput-object v3, v2, v8

    invoke-static {p1, v0, v1, v2}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/alensw/b/e/f;[Lcom/alensw/b/e/h;)V

    return-void
.end method
