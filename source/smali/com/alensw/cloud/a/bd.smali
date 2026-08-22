.class Lcom/alensw/cloud/a/bd;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Landroid/content/ContentValues;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alensw/cloud/a/ba;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/ba;ILcom/alensw/b/e/f;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/bd;->c:Lcom/alensw/cloud/a/ba;

    iput-object p4, p0, Lcom/alensw/cloud/a/bd;->a:Landroid/content/ContentValues;

    iput-object p5, p0, Lcom/alensw/cloud/a/bd;->b:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/alensw/cloud/a/bd;->c:Lcom/alensw/cloud/a/ba;

    iget-object v1, p0, Lcom/alensw/cloud/a/bd;->a:Landroid/content/ContentValues;

    invoke-static {v0, p1, v1}, Lcom/alensw/cloud/a/ba;->a(Lcom/alensw/cloud/a/ba;Lcom/a/a/a/h;Landroid/content/ContentValues;)V

    return-void
.end method

.method public a(Ljava/net/HttpURLConnection;)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/cloud/a/bd;->b:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v1, "Charset"

    const-string v2, "UTF-8"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Length"

    array-length v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
