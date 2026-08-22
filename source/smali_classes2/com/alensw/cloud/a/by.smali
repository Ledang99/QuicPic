.class public Lcom/alensw/cloud/a/by;
.super Lcom/alensw/b/e/g;


# instance fields
.field private final a:Ljava/lang/String;

.field protected final g:I

.field final synthetic h:Lcom/alensw/cloud/a/bv;


# direct methods
.method public constructor <init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/cloud/a/by;->h:Lcom/alensw/cloud/a/bv;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p3, v0}, Lcom/alensw/b/e/g;-><init>(Lcom/alensw/b/e/f;Z)V

    iput p2, p0, Lcom/alensw/cloud/a/by;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/cloud/a/by;->a:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/alensw/cloud/a/bv;Ljava/lang/String;Lcom/alensw/b/e/f;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/alensw/cloud/a/by;->h:Lcom/alensw/cloud/a/bv;

    invoke-direct {p0, p3, v0}, Lcom/alensw/b/e/g;-><init>(Lcom/alensw/b/e/f;Z)V

    iput v0, p0, Lcom/alensw/cloud/a/by;->g:I

    iput-object p2, p0, Lcom/alensw/cloud/a/by;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/a/by;->h:Lcom/alensw/cloud/a/bv;

    invoke-virtual {v0, p1, p2}, Lcom/alensw/cloud/a/bv;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)V
    .locals 4

    iget v0, p0, Lcom/alensw/cloud/a/by;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/alensw/cloud/a/bv;->f()Lcom/a/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/a/a/a/b;->a(Ljava/io/InputStream;)Lcom/a/a/a/h;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/alensw/cloud/a/by;->a(Lcom/a/a/a/h;)V
    :try_end_0
    .catch Lcom/a/a/a/g; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/a/a/a/h;->close()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lcom/a/a/a/g;->printStackTrace()V

    new-instance v2, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Lcom/a/a/a/g;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/a/a/a/h;->close()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/alensw/cloud/a/by;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/alensw/cloud/a/bv;->g()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    :try_start_2
    invoke-interface {v0, p6, p3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/a/by;->a(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {p6}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p6}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/alensw/cloud/a/by;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :try_start_4
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/alensw/cloud/a/by;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v0, p0, Lcom/alensw/cloud/a/by;->i:Lcom/alensw/b/e/f;

    invoke-static {p6, v1, p4, p5, v0}, Lcom/alensw/b/e/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/alensw/b/e/f;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    invoke-static {p6}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    invoke-static {p6}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    invoke-super/range {p0 .. p6}, Lcom/alensw/b/e/g;->a(ILjava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)V

    goto :goto_0

    :catchall_3
    move-exception v0

    goto :goto_1
.end method

.method protected a(Lcom/a/a/a/h;)V
    .locals 0

    return-void
.end method

.method public a(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/a/by;->h:Lcom/alensw/cloud/a/bv;

    invoke-virtual {v0, p1}, Lcom/alensw/cloud/a/bv;->a(Ljavax/net/ssl/HttpsURLConnection;)V

    return-void
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    return-void
.end method
