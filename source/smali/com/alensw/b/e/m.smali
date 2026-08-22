.class final Lcom/alensw/b/e/m;
.super Lorg/apache/http/entity/InputStreamEntity;


# direct methods
.method constructor <init>(Ljava/io/InputStream;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v8, -0x1

    invoke-virtual {p0}, Lcom/alensw/b/e/m;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alensw/b/e/m;->getContentLength()J

    move-result-wide v0

    const/16 v3, 0x4000

    :try_start_0
    new-array v3, v3, [B

    cmp-long v4, v0, v10

    if-gez v4, :cond_2

    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-eq v0, v8, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p1, v3, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_0
    if-lez v4, :cond_1

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p1, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    :cond_1
    int-to-long v4, v4

    sub-long/2addr v0, v4

    :cond_2
    cmp-long v4, v0, v10

    if-lez v4, :cond_3

    const/4 v4, 0x0

    array-length v5, v3

    int-to-long v6, v5

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-ne v4, v8, :cond_0

    :cond_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-void
.end method
