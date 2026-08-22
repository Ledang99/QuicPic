.class public Lcom/alensw/transfer/n;
.super Lcom/alensw/b/e/j;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private final b:Lcom/alensw/transfer/TransferService;

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alensw/transfer/n;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alensw/transfer/TransferService;I)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/alensw/b/e/j;-><init>(I)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/transfer/n;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/alensw/transfer/n;->b:Lcom/alensw/transfer/TransferService;

    return-void
.end method

.method static synthetic a(Lcom/alensw/transfer/n;)Lcom/alensw/transfer/TransferService;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/n;->b:Lcom/alensw/transfer/TransferService;

    return-object v0
.end method

.method private a(Ljava/util/Map;Lorg/apache/http/protocol/HttpContext;)Lcom/alensw/transfer/d;
    .locals 3

    const-string v0, "session"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alensw/transfer/q;

    const-string v1, "Session does not exist"

    invoke-direct {v0, v1}, Lcom/alensw/transfer/q;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/transfer/n;->b:Lcom/alensw/transfer/TransferService;

    invoke-virtual {v1, v0}, Lcom/alensw/transfer/TransferService;->a(Ljava/lang/Long;)Lcom/alensw/transfer/d;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v0, "RemoteAddress"

    invoke-interface {p2, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/net/InetAddress;

    if-nez v2, :cond_1

    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0}, Ljava/net/UnknownHostException;-><init>()V

    throw v0

    :cond_1
    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v1}, Lcom/alensw/transfer/d;->e()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/alensw/transfer/q;

    const-string v1, "The client is not allowed"

    invoke-direct {v0, v1}, Lcom/alensw/transfer/q;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/alensw/transfer/q;

    const-string v1, "The client is not authorized"

    invoke-direct {v0, v1}, Lcom/alensw/transfer/q;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v1
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/alensw/transfer/r;
    .locals 8

    const/4 v6, 0x0

    new-instance v7, Lcom/alensw/transfer/r;

    invoke-direct {v7}, Lcom/alensw/transfer/r;-><init>()V

    iput-object p1, v7, Lcom/alensw/transfer/r;->a:Landroid/net/Uri;

    :try_start_0
    sget-object v2, Lcom/alensw/transfer/n;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alensw/transfer/r;->c:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/alensw/transfer/r;->b:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v7

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V
    .locals 7

    const/16 v5, 0x190

    const-string v0, "session"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Session does not exist"

    invoke-static {p3, p4, v5, v0}, Lcom/alensw/transfer/n;->a(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    instance-of v1, p3, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no post data"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v1, p3

    check-cast v1, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    invoke-virtual {v1}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "UTF-8"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/alensw/b/e/b;->a(Ljava/io/InputStream;Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alensw/transfer/d;

    invoke-direct {v2}, Lcom/alensw/transfer/d;-><init>()V

    invoke-virtual {v2, v1}, Lcom/alensw/transfer/d;->a(Ljava/lang/String;)V

    const-string v1, "HttpServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRequestAccept from session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/alensw/transfer/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/alensw/transfer/d;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/alensw/transfer/d;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    const-string v0, "Parameter required"

    invoke-static {p3, p4, v5, v0}, Lcom/alensw/transfer/n;->a(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alensw/transfer/d;->b(J)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/alensw/transfer/d;->a(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/alensw/transfer/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/file/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v2, Lcom/alensw/transfer/d;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/transfer/f;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/alensw/transfer/f;->a:Ljava/lang/String;

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v0, Lcom/alensw/transfer/f;->e:Landroid/net/Uri;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alensw/transfer/n;->b:Lcom/alensw/transfer/TransferService;

    invoke-virtual {v0, v2}, Lcom/alensw/transfer/TransferService;->a(Lcom/alensw/transfer/d;)V

    const/16 v0, 0xc8

    const-string v1, "Start download"

    invoke-static {p3, p4, v0, v1}, Lcom/alensw/transfer/n;->a(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V
    .locals 10

    const/4 v2, 0x0

    const/16 v9, 0x194

    :try_start_0
    const-string v0, "/video/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alensw/transfer/n;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/transfer/r;

    iget-object v4, v0, Lcom/alensw/transfer/r;->c:Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v0

    :goto_0
    new-instance v4, Lcom/alensw/b/e/i;

    invoke-direct {v4}, Lcom/alensw/b/e/i;-><init>()V

    :try_start_1
    iget-object v0, p0, Lcom/alensw/transfer/n;->b:Lcom/alensw/transfer/TransferService;

    invoke-virtual {v0}, Lcom/alensw/transfer/TransferService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v5, v1, Lcom/alensw/transfer/r;->a:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/j/e;

    const-string v5, "range"

    invoke-static {p3, v5}, Lcom/alensw/transfer/n;->a(Lorg/apache/http/HttpRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/alensw/transfer/r;->a:Landroid/net/Uri;

    invoke-static {v6}, Lcom/alensw/b/j/a;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v0, v6, v5, v4, v7}, Lcom/alensw/b/j/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/i;Lcom/alensw/b/e/e;)V

    new-instance v0, Lcom/alensw/transfer/p;

    iget-object v6, v4, Lcom/alensw/b/e/i;->e:Ljava/io/InputStream;

    invoke-direct {v0, p0, v6}, Lcom/alensw/transfer/p;-><init>(Lcom/alensw/transfer/n;Ljava/io/InputStream;)V

    iput-object v0, v4, Lcom/alensw/b/e/i;->e:Ljava/io/InputStream;

    iget-wide v0, v1, Lcom/alensw/transfer/r;->b:J

    invoke-static {v4, v0, v1, v5, p4}, Lcom/alensw/transfer/n;->a(Lcom/alensw/b/e/i;JLjava/lang/String;Lorg/apache/http/HttpResponse;)V

    iget-object v0, p0, Lcom/alensw/transfer/n;->b:Lcom/alensw/transfer/TransferService;

    invoke-virtual {v0}, Lcom/alensw/transfer/TransferService;->c()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_3
    iget-object v4, v0, Lcom/alensw/transfer/r;->a:Landroid/net/Uri;

    invoke-static {v4}, Lcom/alensw/b/j/a;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/alensw/transfer/r;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, v0, Lcom/alensw/transfer/r;->c:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v4, p0, Lcom/alensw/transfer/n;->b:Lcom/alensw/transfer/TransferService;

    invoke-virtual {v4}, Lcom/alensw/transfer/TransferService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v0, v0, Lcom/alensw/transfer/r;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/alensw/b/j/a;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alensw/transfer/n;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/alensw/transfer/r;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/alensw/transfer/r;->c:Ljava/lang/String;

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, v0, Lcom/alensw/transfer/r;->c:Ljava/lang/String;

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    invoke-interface {p4, v9}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v0, v2

    :goto_3
    const/16 v1, 0x194

    :try_start_4
    invoke-interface {p4, v1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    const-string v1, "HttpServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not found video: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    :cond_4
    throw v0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v0, v2

    goto :goto_3
.end method

.method private c(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 9

    const/16 v8, 0x194

    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0, p2, p5}, Lcom/alensw/transfer/n;->a(Ljava/util/Map;Lorg/apache/http/protocol/HttpContext;)Lcom/alensw/transfer/d;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/alensw/transfer/d;->a(I)V
    :try_end_0
    .catch Lcom/alensw/transfer/q; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v0, "HttpServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDownload request: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lcom/alensw/transfer/d;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/transfer/f;

    if-nez v0, :cond_0

    const-string v0, "File not found"

    invoke-static {p3, p4, v8, v0}, Lcom/alensw/transfer/n;->a(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;ILjava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v1, 0x193

    invoke-virtual {v0}, Lcom/alensw/transfer/q;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p4, v1, v0}, Lcom/alensw/transfer/n;->a(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    throw v0

    :cond_0
    iget-object v1, v0, Lcom/alensw/transfer/f;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "unknown"

    :cond_1
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    iget-object v4, p0, Lcom/alensw/transfer/n;->b:Lcom/alensw/transfer/TransferService;

    invoke-virtual {v4}, Lcom/alensw/transfer/TransferService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/alensw/b/f/b;->q:Lcom/alensw/b/f/b;

    if-lez v3, :cond_2

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v4, v5, v1}, Lcom/alensw/b/f/a;->a(Landroid/content/Context;Lcom/alensw/b/f/b;Ljava/lang/String;)V

    :try_start_1
    iget-object v1, p0, Lcom/alensw/transfer/n;->b:Lcom/alensw/transfer/TransferService;

    invoke-virtual {v1}, Lcom/alensw/transfer/TransferService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, v0, Lcom/alensw/transfer/f;->e:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [J

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v5

    int-to-long v6, v5

    aput-wide v6, v3, v4

    new-instance v4, Lcom/alensw/transfer/b;

    new-instance v5, Lcom/alensw/transfer/o;

    invoke-direct {v5, p0, v3, v2}, Lcom/alensw/transfer/o;-><init>(Lcom/alensw/transfer/n;[JLcom/alensw/transfer/d;)V

    invoke-direct {v4, v1, v5}, Lcom/alensw/transfer/b;-><init>(Ljava/io/InputStream;Lcom/alensw/transfer/c;)V

    iget-object v1, v0, Lcom/alensw/transfer/f;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/alensw/transfer/f;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "content-disposition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment; filename=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/alensw/transfer/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v1, v2}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v1, "Content-Type"

    iget-object v2, v0, Lcom/alensw/transfer/f;->c:Ljava/lang/String;

    invoke-interface {p4, v1, v2}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, v0, Lcom/alensw/transfer/f;->d:J

    invoke-static {v4, v0, v1}, Lcom/alensw/transfer/n;->a(Ljava/io/InputStream;J)Lorg/apache/http/entity/InputStreamEntity;

    move-result-object v0

    invoke-interface {p4, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    iget-object v0, p0, Lcom/alensw/transfer/n;->b:Lcom/alensw/transfer/TransferService;

    invoke-virtual {v0}, Lcom/alensw/transfer/TransferService;->c()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p4, v8, v0}, Lcom/alensw/transfer/n;->a(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;ILjava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3

    const-string v0, "/file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/alensw/transfer/n;->c(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "/info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/alensw/PicFolder/QuickApp;->k:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, p4, v0, v1}, Lcom/alensw/transfer/n;->a(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "/video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alensw/transfer/n;->b(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x190

    invoke-interface {p4, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_0
.end method

.method public b(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    invoke-static {p1, p2}, Lcom/alensw/transfer/n;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/alensw/transfer/r;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/transfer/n;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://127.0.0.1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alensw/transfer/n;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/video/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/alensw/transfer/r;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 1

    const-string v0, "/request"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alensw/transfer/n;->a(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "/finish"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc8

    invoke-interface {p4, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x190

    invoke-interface {p4, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_0
.end method
