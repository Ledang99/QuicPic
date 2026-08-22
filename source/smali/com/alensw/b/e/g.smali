.class public Lcom/alensw/b/e/g;
.super Ljava/lang/Object;


# instance fields
.field protected final i:Lcom/alensw/b/e/f;

.field protected final j:Z


# direct methods
.method public constructor <init>(Lcom/alensw/b/e/f;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alensw/b/e/g;-><init>(Lcom/alensw/b/e/f;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/alensw/b/e/f;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alensw/b/e/g;->i:Lcom/alensw/b/e/f;

    iput-boolean p2, p0, Lcom/alensw/b/e/g;->j:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/e/g;->i:Lcom/alensw/b/e/f;

    invoke-static {v0}, Lcom/alensw/b/e/b;->a(Lcom/alensw/b/e/f;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(ILjava/lang/String;Ljava/io/InputStream;)V
    .locals 4

    const-string v1, ""

    :try_start_0
    iget-object v0, p0, Lcom/alensw/b/e/g;->i:Lcom/alensw/b/e/f;

    invoke-static {p3, p2, v0}, Lcom/alensw/b/e/b;->a(Ljava/io/InputStream;Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {p3}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    :goto_0
    const/16 v1, 0x194

    if-ne p1, v1, :cond_0

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "HttpClient"

    const-string v3, "Read error stream: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p3}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p3}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/alensw/b/e/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)V
    .locals 3

    const-string v0, "HttpClient"

    const-string v1, "default download"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4000

    :try_start_0
    new-array v0, v0, [B

    :cond_0
    invoke-virtual {p6, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gez v1, :cond_0

    invoke-static {p6}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "HttpClient"

    const-string v2, "default download: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p6}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p6}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public a(Ljava/net/HttpURLConnection;)V
    .locals 2

    const-string v0, "HttpClient"

    const-string v1, "default upload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const-string v0, "Content-Length"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/net/HttpURLConnection;I)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-lt p2, v2, :cond_0

    move v2, v0

    :goto_0
    const/16 v3, 0x12c

    if-ge p2, v3, :cond_1

    :goto_1
    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/alensw/b/e/b;->b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v0}, Lcom/alensw/b/e/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v4, v0

    move-object v0, p0

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/alensw/b/e/g;->a(ILjava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)V

    :goto_2
    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    const/16 v0, 0x190

    if-lt p2, v0, :cond_3

    const/16 v0, 0x1f4

    if-ge p2, v0, :cond_3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alensw/b/e/b;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/alensw/b/e/g;->a(ILjava/lang/String;Ljava/io/InputStream;)V

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/net/HttpURLConnection;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-static {p1}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;)V

    return-void
.end method
