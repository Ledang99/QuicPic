.class Lcom/alensw/cloud/a/m;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Landroid/content/ContentValues;

.field final synthetic b:Lcom/alensw/b/e/i;

.field final synthetic c:Lcom/alensw/cloud/a/i;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/i;ILcom/alensw/b/e/f;Landroid/content/ContentValues;Lcom/alensw/b/e/i;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/m;->c:Lcom/alensw/cloud/a/i;

    iput-object p4, p0, Lcom/alensw/cloud/a/m;->a:Landroid/content/ContentValues;

    iput-object p5, p0, Lcom/alensw/cloud/a/m;->b:Lcom/alensw/b/e/i;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/a/a/h;)V
    .locals 2

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    invoke-static {v0, v1}, Lcom/alensw/cloud/a/bv;->a(Lcom/a/a/a/l;Lcom/a/a/a/l;)V

    iget-object v0, p0, Lcom/alensw/cloud/a/m;->c:Lcom/alensw/cloud/a/i;

    iget-object v1, p0, Lcom/alensw/cloud/a/m;->a:Landroid/content/ContentValues;

    invoke-static {v0, p1, v1}, Lcom/alensw/cloud/a/i;->a(Lcom/alensw/cloud/a/i;Lcom/a/a/a/h;Landroid/content/ContentValues;)C

    return-void
.end method

.method public a(Ljava/net/HttpURLConnection;)V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v0, "form-data"

    iget-object v1, p0, Lcom/alensw/cloud/a/m;->i:Lcom/alensw/b/e/f;

    new-array v2, v7, [Lcom/alensw/b/e/h;

    new-instance v3, Lcom/alensw/b/e/h;

    iget-object v4, p0, Lcom/alensw/cloud/a/m;->b:Lcom/alensw/b/e/i;

    iget-object v4, v4, Lcom/alensw/b/e/i;->e:Ljava/io/InputStream;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "Content-Disposition"

    aput-object v6, v5, v8

    const-string v6, "form-data; name=\"file\"; filename=\"file\""

    aput-object v6, v5, v7

    const/4 v6, 0x2

    const-string v7, "Content-Type"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/alensw/cloud/a/m;->b:Lcom/alensw/b/e/i;

    iget-object v7, v7, Lcom/alensw/b/e/i;->c:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/alensw/b/e/h;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    aput-object v3, v2, v8

    invoke-static {p1, v0, v1, v2}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/alensw/b/e/f;[Lcom/alensw/b/e/h;)V

    return-void
.end method
