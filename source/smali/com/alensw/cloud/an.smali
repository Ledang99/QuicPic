.class Lcom/alensw/cloud/an;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/e/e;
.implements Lcom/alensw/b/k/k;


# instance fields
.field protected final a:Lcom/alensw/cloud/ad;

.field protected final b:I

.field protected c:J

.field final synthetic d:Lcom/alensw/cloud/al;


# direct methods
.method public constructor <init>(Lcom/alensw/cloud/al;Lcom/alensw/cloud/ad;I)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/an;->d:Lcom/alensw/cloud/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    iput p3, p0, Lcom/alensw/cloud/an;->b:I

    return-void
.end method

.method private a(Lcom/alensw/b/j/e;)V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    iget-object v2, v2, Lcom/alensw/cloud/ad;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "qpic_download"

    const-string v3, "tmp"

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alensw/cloud/an;->b_()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/alensw/b/e/a;

    invoke-direct {v0}, Lcom/alensw/b/e/a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/alensw/b/l/b;->c(Ljava/io/File;)Z

    :cond_0
    throw v0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    iget-object v2, v2, Lcom/alensw/cloud/ad;->b:Landroid/net/Uri;

    invoke-static {v2}, Lcom/alensw/b/j/a;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3, p0}, Lcom/alensw/b/j/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/e;)V

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/alensw/b/l/b;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alensw/b/l/b;->b(Ljava/io/File;Ljava/lang/String;)Z

    const-string v3, "UrlTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alensw/b/f/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alensw/cloud/an;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alensw/a/ba;->f(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "unknown"

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    iget-object v0, p0, Lcom/alensw/cloud/an;->d:Lcom/alensw/cloud/al;

    invoke-static {v0}, Lcom/alensw/cloud/al;->g(Lcom/alensw/cloud/al;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/alensw/cloud/an;->d:Lcom/alensw/cloud/al;

    invoke-static {v0}, Lcom/alensw/cloud/al;->c(Lcom/alensw/cloud/al;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    sget-object v0, Lcom/alensw/b/f/b;->o:Lcom/alensw/b/f/b;

    :goto_0
    if-lez v1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {v2, v0, p1}, Lcom/alensw/b/f/a;->a(Landroid/content/Context;Lcom/alensw/b/f/b;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v0, Lcom/alensw/b/f/b;->p:Lcom/alensw/b/f/b;

    goto :goto_0
.end method

.method private b(Lcom/alensw/b/j/e;)V
    .locals 10

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/cloud/an;->d:Lcom/alensw/cloud/al;

    invoke-static {v0}, Lcom/alensw/cloud/al;->f(Lcom/alensw/cloud/al;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    iget-object v2, v2, Lcom/alensw/cloud/ad;->a:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/alensw/b/c/f;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alensw/cloud/an;->b_()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alensw/b/e/a;

    invoke-direct {v0}, Lcom/alensw/b/e/a;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    :goto_0
    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    iget-object v0, v0, Lcom/alensw/cloud/ad;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/alensw/bean/UriFile;->a(Landroid/net/Uri;)Lcom/alensw/bean/CommonFile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alensw/bean/CommonFile;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/l/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/alensw/bean/CommonFile;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-static {}, Lcom/alensw/cloud/a/bv;->h()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v2}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;)C

    move-result v3

    if-nez v3, :cond_6

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    new-instance v3, Lcom/alensw/b/h/a;

    invoke-direct {v3}, Lcom/alensw/b/h/a;-><init>()V

    new-instance v6, Lcom/alensw/b/c/f;

    iget-object v7, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    iget-object v7, v7, Lcom/alensw/cloud/ad;->a:Landroid/net/Uri;

    invoke-direct {v6, v7, v4}, Lcom/alensw/b/c/f;-><init>(Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)V

    invoke-static {v6, v3}, Lcom/alensw/b/h/b;->b(Lcom/alensw/b/c/f;Lcom/alensw/b/h/a;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v0, v3, Lcom/alensw/b/h/a;->outMimeType:Ljava/lang/String;

    :cond_4
    invoke-static {v2, v0}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/alensw/cloud/an;->b_()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/alensw/b/e/a;

    invoke-direct {v0}, Lcom/alensw/b/e/a;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :cond_5
    invoke-direct {p0, v0}, Lcom/alensw/cloud/an;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/alensw/b/e/i;

    invoke-direct {v0}, Lcom/alensw/b/e/i;-><init>()V

    invoke-virtual {v5}, Lcom/alensw/bean/CommonFile;->d()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alensw/b/e/i;->a:J

    invoke-virtual {v5}, Lcom/alensw/bean/CommonFile;->e()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iput-wide v6, v0, Lcom/alensw/b/e/i;->b:J

    invoke-virtual {v5}, Lcom/alensw/bean/CommonFile;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alensw/b/e/i;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/alensw/b/e/i;->e:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    iget-object v1, v1, Lcom/alensw/cloud/ad;->b:Landroid/net/Uri;

    invoke-static {v1}, Lcom/alensw/b/j/a;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v3, v0, p0}, Lcom/alensw/b/j/e;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/i;Lcom/alensw/b/e/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UrlTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Lcom/alensw/bean/CommonFile;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    return-void

    :cond_6
    move-object v3, v2

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    const/4 v1, 0x2

    iput v1, v0, Lcom/alensw/cloud/ad;->d:I

    return-void
.end method

.method public a(JJ)V
    .locals 9

    const/4 v8, 0x3

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-lez v0, :cond_1

    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    div-long/2addr v2, p3

    long-to-int v0, v2

    :goto_0
    iget-object v2, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    iget v2, v2, Lcom/alensw/cloud/ad;->c:I

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    iput v0, v2, Lcom/alensw/cloud/ad;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alensw/cloud/an;->c:J

    const-wide/16 v6, 0x1e

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iput-wide v2, p0, Lcom/alensw/cloud/an;->c:J

    iget-object v0, p0, Lcom/alensw/cloud/an;->d:Lcom/alensw/cloud/al;

    invoke-static {v0}, Lcom/alensw/cloud/al;->d(Lcom/alensw/cloud/al;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    invoke-virtual {v0, v8, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/alensw/cloud/an;->d:Lcom/alensw/cloud/al;

    invoke-static {v0}, Lcom/alensw/cloud/al;->d(Lcom/alensw/cloud/al;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/cloud/an;->d:Lcom/alensw/cloud/al;

    invoke-static {v2}, Lcom/alensw/cloud/al;->c(Lcom/alensw/cloud/al;)I

    move-result v2

    iget-object v3, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    invoke-virtual {v0, v8, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 5

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    iget v0, v0, Lcom/alensw/cloud/ad;->d:I

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    iget v0, v0, Lcom/alensw/cloud/ad;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alensw/cloud/an;->d:Lcom/alensw/cloud/al;

    invoke-static {v0}, Lcom/alensw/cloud/al;->a(Lcom/alensw/cloud/al;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alensw/cloud/an;->d:Lcom/alensw/cloud/al;

    invoke-static {v0}, Lcom/alensw/cloud/al;->b(Lcom/alensw/cloud/al;)Lcom/alensw/cloud/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    invoke-virtual {v0, v1}, Lcom/alensw/cloud/ae;->c(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/alensw/cloud/an;->d:Lcom/alensw/cloud/al;

    invoke-static {v0}, Lcom/alensw/cloud/al;->d(Lcom/alensw/cloud/al;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/cloud/an;->d:Lcom/alensw/cloud/al;

    invoke-static {v1}, Lcom/alensw/cloud/al;->c(Lcom/alensw/cloud/al;)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b_()Z
    .locals 2

    iget-object v0, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    iget v0, v0, Lcom/alensw/cloud/ad;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/Void;
    .locals 8

    const/4 v3, 0x4

    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/alensw/cloud/an;->d:Lcom/alensw/cloud/al;

    invoke-static {v0}, Lcom/alensw/cloud/al;->e(Lcom/alensw/cloud/al;)I

    move-result v0

    if-eq v0, v5, :cond_1

    iget v1, p0, Lcom/alensw/cloud/an;->b:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    iput v3, v1, Lcom/alensw/cloud/ad;->d:I

    const-string v1, "UrlTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "task network changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    iput v5, v0, Lcom/alensw/cloud/ad;->d:I

    iget-object v0, p0, Lcom/alensw/cloud/an;->d:Lcom/alensw/cloud/al;

    invoke-static {v0}, Lcom/alensw/cloud/al;->d(Lcom/alensw/cloud/al;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/cloud/an;->d:Lcom/alensw/cloud/al;

    invoke-static {v1}, Lcom/alensw/cloud/al;->c(Lcom/alensw/cloud/al;)I

    move-result v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    invoke-virtual {v0, v6, v1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :try_start_0
    iget-object v0, p0, Lcom/alensw/cloud/an;->d:Lcom/alensw/cloud/al;

    invoke-static {v0}, Lcom/alensw/cloud/al;->f(Lcom/alensw/cloud/al;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    iget-object v1, v1, Lcom/alensw/cloud/ad;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Lcom/alensw/b/e/a; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/j/e;

    iget-object v3, p0, Lcom/alensw/cloud/an;->d:Lcom/alensw/cloud/al;

    invoke-static {v3}, Lcom/alensw/cloud/al;->c(Lcom/alensw/cloud/al;)I

    move-result v3

    if-ne v3, v5, :cond_4

    invoke-direct {p0, v0}, Lcom/alensw/cloud/an;->a(Lcom/alensw/b/j/e;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    iget v0, v0, Lcom/alensw/cloud/ad;->d:I

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    const/4 v3, 0x3

    iput v3, v0, Lcom/alensw/cloud/ad;->d:I
    :try_end_1
    .catch Lcom/alensw/b/e/a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/alensw/cloud/an;->d:Lcom/alensw/cloud/al;

    invoke-static {v3}, Lcom/alensw/cloud/al;->c(Lcom/alensw/cloud/al;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-direct {p0, v0}, Lcom/alensw/cloud/an;->b(Lcom/alensw/b/j/e;)V
    :try_end_2
    .catch Lcom/alensw/b/e/a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_3
    const-string v1, "UrlTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "task cancel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_4
    iget-object v3, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    iget v3, v3, Lcom/alensw/cloud/ad;->d:I

    if-ne v3, v5, :cond_5

    iget-object v3, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    const/4 v4, 0x4

    iput v4, v3, Lcom/alensw/cloud/ad;->d:I

    :cond_5
    const-string v3, "UrlTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "task failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alensw/cloud/an;->a:Lcom/alensw/cloud/ad;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/cloud/an;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
