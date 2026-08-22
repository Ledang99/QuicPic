.class Lcom/alensw/cloud/a/bw;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Lcom/alensw/b/e/i;

.field final synthetic b:Lcom/alensw/cloud/a/bv;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;Lcom/alensw/b/e/i;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/bw;->b:Lcom/alensw/cloud/a/bv;

    iput-object p4, p0, Lcom/alensw/cloud/a/bw;->a:Lcom/alensw/b/e/i;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/HttpURLConnection;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    if-lt p2, v2, :cond_1

    move v2, v1

    :goto_0
    const/16 v3, 0x12c

    if-ge p2, v3, :cond_0

    move v0, v1

    :cond_0
    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/cloud/a/bw;->a:Lcom/alensw/b/e/i;

    invoke-static {v0}, Lcom/alensw/b/e/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alensw/b/e/i;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alensw/cloud/a/bw;->a:Lcom/alensw/b/e/i;

    invoke-static {v0}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alensw/b/e/i;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/alensw/cloud/a/bw;->a:Lcom/alensw/b/e/i;

    invoke-static {p1}, Lcom/alensw/b/e/b;->b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, v0, Lcom/alensw/b/e/i;->e:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/alensw/cloud/a/bw;->a:Lcom/alensw/b/e/i;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alensw/b/e/i;->b:J

    iget-object v0, p0, Lcom/alensw/cloud/a/bw;->a:Lcom/alensw/b/e/i;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/alensw/b/e/i;->a:J

    iput-boolean v1, p0, Lcom/alensw/cloud/a/bw;->c:Z

    :goto_1
    return-void

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/alensw/cloud/a/by;->a(Ljava/net/HttpURLConnection;I)V

    goto :goto_1
.end method

.method public b(Ljava/net/HttpURLConnection;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/cloud/a/bw;->c:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/alensw/cloud/a/by;->b(Ljava/net/HttpURLConnection;)V

    :cond_0
    return-void
.end method
