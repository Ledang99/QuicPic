.class Lcom/alensw/cloud/a/aq;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Landroid/content/ContentValues;

.field final synthetic b:Ljava/lang/StringBuilder;

.field final synthetic c:Lcom/alensw/b/e/i;

.field final synthetic d:Lcom/alensw/cloud/a/am;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/am;ILcom/alensw/b/e/f;Landroid/content/ContentValues;Ljava/lang/StringBuilder;Lcom/alensw/b/e/i;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/aq;->d:Lcom/alensw/cloud/a/am;

    iput-object p4, p0, Lcom/alensw/cloud/a/aq;->a:Landroid/content/ContentValues;

    iput-object p5, p0, Lcom/alensw/cloud/a/aq;->b:Ljava/lang/StringBuilder;

    iput-object p6, p0, Lcom/alensw/cloud/a/aq;->c:Lcom/alensw/b/e/i;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/a/a/h;)V
    .locals 2

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    iget-object v0, p0, Lcom/alensw/cloud/a/aq;->d:Lcom/alensw/cloud/a/am;

    iget-object v1, p0, Lcom/alensw/cloud/a/aq;->a:Landroid/content/ContentValues;

    invoke-static {v0, p1, v1}, Lcom/alensw/cloud/a/am;->a(Lcom/alensw/cloud/a/am;Lcom/a/a/a/h;Landroid/content/ContentValues;)V

    return-void
.end method

.method public a(Ljava/net/HttpURLConnection;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "related"

    iget-object v1, p0, Lcom/alensw/cloud/a/aq;->i:Lcom/alensw/b/e/f;

    new-array v2, v9, [Lcom/alensw/b/e/h;

    new-instance v3, Lcom/alensw/b/e/h;

    iget-object v4, p0, Lcom/alensw/cloud/a/aq;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Content-Type"

    aput-object v6, v5, v7

    const-string v6, "application/json; charset=utf-8"

    aput-object v6, v5, v8

    invoke-direct {v3, v4, v5}, Lcom/alensw/b/e/h;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    aput-object v3, v2, v7

    new-instance v3, Lcom/alensw/b/e/h;

    iget-object v4, p0, Lcom/alensw/cloud/a/aq;->c:Lcom/alensw/b/e/i;

    iget-object v4, v4, Lcom/alensw/b/e/i;->e:Ljava/io/InputStream;

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Content-Type"

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/alensw/cloud/a/aq;->c:Lcom/alensw/b/e/i;

    iget-object v6, v6, Lcom/alensw/b/e/i;->c:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-direct {v3, v4, v5}, Lcom/alensw/b/e/h;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    aput-object v3, v2, v8

    invoke-static {p1, v0, v1, v2}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/alensw/b/e/f;[Lcom/alensw/b/e/h;)V

    return-void
.end method
