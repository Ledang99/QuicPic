.class Lcom/alensw/cloud/a/w;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Landroid/content/ContentValues;

.field final synthetic b:Ljava/io/InputStream;

.field final synthetic c:Lcom/alensw/cloud/a/t;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/t;ILcom/alensw/b/e/f;Landroid/content/ContentValues;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/w;->c:Lcom/alensw/cloud/a/t;

    iput-object p4, p0, Lcom/alensw/cloud/a/w;->a:Landroid/content/ContentValues;

    iput-object p5, p0, Lcom/alensw/cloud/a/w;->b:Ljava/io/InputStream;

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

    iget-object v0, p0, Lcom/alensw/cloud/a/w;->c:Lcom/alensw/cloud/a/t;

    iget-object v1, p0, Lcom/alensw/cloud/a/w;->a:Landroid/content/ContentValues;

    invoke-static {v0, p1, v1}, Lcom/alensw/cloud/a/t;->a(Lcom/alensw/cloud/a/t;Lcom/a/a/a/h;Landroid/content/ContentValues;)V

    return-void
.end method

.method public a(Ljava/net/HttpURLConnection;)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/cloud/a/w;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const-string v0, "application/octet-stream"

    iget-object v1, p0, Lcom/alensw/cloud/a/w;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/alensw/cloud/a/w;->i:Lcom/alensw/b/e/f;

    invoke-static {p1, v0, v1, v2}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/io/InputStream;Lcom/alensw/b/e/f;)V

    :cond_0
    return-void
.end method
