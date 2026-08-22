.class public Lcom/alensw/b/e/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;JILcom/alensw/b/e/f;)J
    .locals 6

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long p2, v0

    :cond_0
    instance-of v0, p5, Lcom/alensw/b/e/e;

    if-eqz v0, :cond_2

    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    move-object v0, p5

    check-cast v0, Lcom/alensw/b/e/e;

    :goto_0
    new-array v1, p4, [B

    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_3

    if-lez v4, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, v4

    add-long/2addr v2, v4

    if-eqz v0, :cond_1

    invoke-interface {v0, v2, v3, p2, p3}, Lcom/alensw/b/e/e;->a(JJ)V

    :cond_1
    invoke-static {p5}, Lcom/alensw/b/e/b;->a(Lcom/alensw/b/e/f;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    return-wide v2
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/alensw/b/e/f;)J
    .locals 6

    const/16 v4, 0x4000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/alensw/b/e/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;JILcom/alensw/b/e/f;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "gzip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    const/16 v1, 0x4000

    invoke-direct {v0, p0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget p1, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v0, "QuickPic/%d/%s (Android %s; %s; %s; Build/%s)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/alensw/b/l/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alensw/b/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;JLcom/alensw/b/e/f;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/high16 v0, 0x40000

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p0, v1, p2, p3, p4}, Lcom/alensw/b/e/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/alensw/b/e/f;)J

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alensw/b/e/b;->a(Ljava/io/InputStream;Ljava/lang/String;JLcom/alensw/b/e/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v0, v3, v1

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "UTF-8"

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/f;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    :cond_0
    const-string v0, "Accept-Encoding"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip, identity"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    const-string v0, "GET"

    invoke-static {p0, v0, p1}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;Lcom/alensw/b/e/f;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;)V

    throw v0
.end method

.method public static a(Ljava/net/HttpURLConnection;Lcom/alensw/b/e/f;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/alensw/b/e/b;->b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {p1}, Lcom/alensw/b/e/b;->a(Lcom/alensw/b/e/f;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v0, v2, v3, p1}, Lcom/alensw/b/e/b;->a(Ljava/io/InputStream;Ljava/lang/String;JLcom/alensw/b/e/f;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip, identity"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 4

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const v1, 0xea60

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-static {v0, p1}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static a(Lcom/alensw/b/e/f;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alensw/b/e/f;->b_()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alensw/b/e/a;

    invoke-direct {v0}, Lcom/alensw/b/e/a;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HttpClient"

    const-string v2, "close: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/f;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/f;)V
    .locals 4

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    :cond_0
    const-string v0, "Accept-Encoding"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Accept-Encoding"

    const-string v1, "identity"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x5

    :cond_2
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "GET"

    invoke-static {p1, v2, p2}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-static {p3}, Lcom/alensw/b/e/b;->a(Lcom/alensw/b/e/f;)V

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_3

    const-string v2, "Location"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;)V

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_2

    :goto_0
    return-void

    :cond_3
    :try_start_1
    invoke-static {p0, v1, p3}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/alensw/b/e/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x5

    move v4, v1

    move-object v1, v3

    :goto_0
    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {p2, v2}, Ljava/util/HashMap;-><init>(I)V

    :cond_0
    const-string v2, "Accept-Encoding"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v5, "Accept-Encoding"

    iget-boolean v2, p3, Lcom/alensw/b/e/g;->j:Z

    if-eqz v2, :cond_7

    const-string v2, "gzip, identity"

    :goto_1
    invoke-interface {p2, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz v1, :cond_2

    const/16 v5, 0x3b

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const-string v6, "Cookie"

    const/4 v7, -0x1

    if-ne v5, v7, :cond_8

    :goto_2
    invoke-virtual {v2, v6, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    instance-of v1, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_3

    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v0

    invoke-virtual {p3, v1}, Lcom/alensw/b/e/g;->a(Ljavax/net/ssl/HttpsURLConnection;)V

    :cond_3
    const-string v1, "POST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PUT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "DELETE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "MOVE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {p3, v2}, Lcom/alensw/b/e/g;->a(Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    :goto_3
    const/16 v5, 0x12e

    if-eq v1, v5, :cond_6

    const/16 v5, 0x12d

    if-eq v1, v5, :cond_6

    const/16 v5, 0x12f

    if-ne v1, v5, :cond_a

    :cond_6
    :try_start_3
    const-string v5, "Location"

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    const-string v1, "Set-Cookie"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v2, p0}, Lcom/alensw/b/e/g;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p3, v2}, Lcom/alensw/b/e/g;->b(Ljava/net/HttpURLConnection;)V

    add-int/lit8 v2, v4, -0x1

    if-gtz v2, :cond_c

    new-instance v1, Ljava/net/UnknownHostException;

    const-string v2, "HTTP error or redirect too many times"

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :try_start_4
    const-string v2, "identity"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    :try_start_5
    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    const-string v6, "authentication challenge"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    goto :goto_3

    :cond_9
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v1

    :goto_4
    invoke-virtual {p3, v2}, Lcom/alensw/b/e/g;->b(Ljava/net/HttpURLConnection;)V

    throw v1

    :cond_a
    :try_start_6
    invoke-virtual {p3, v2, v1}, Lcom/alensw/b/e/g;->a(Ljava/net/HttpURLConnection;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_b
    invoke-virtual {p3, v2}, Lcom/alensw/b/e/g;->b(Ljava/net/HttpURLConnection;)V

    return-void

    :catchall_1
    move-exception v1

    move-object v2, v3

    goto :goto_4

    :cond_c
    move v4, v2

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/alensw/b/e/f;)V
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/alensw/b/e/b;->b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    invoke-static {p2}, Lcom/alensw/b/e/b;->a(Lcom/alensw/b/e/f;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v3, v1, v4, v5, p2}, Lcom/alensw/b/e/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/alensw/b/e/f;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_0
.end method

.method public static a(Ljava/net/HttpURLConnection;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HttpClient"

    const-string v2, "disconnect: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/net/HttpURLConnection;J)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :try_start_0
    const-string v0, "delegate"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {v0, p1, p2}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    const-string v0, "Content-Length"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "httpsEngine"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {v0, p1, p2}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_1
.end method

.method public static a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :try_start_1
    const-string v0, "delegate"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {v0, p1}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    :try_start_2
    const-string v1, "method"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_3
    const-string v0, "httpsEngine"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {v0, p1}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :goto_2
    move-object v0, v1

    goto :goto_1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    goto :goto_2
.end method

.method public static a(Ljava/net/HttpURLConnection;Ljava/lang/String;IJJLjava/io/InputStream;Lcom/alensw/b/e/f;)V
    .locals 11

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v2, "Content-Type"

    invoke-virtual {p0, v2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p7 .. p7}, Ljava/io/InputStream;->available()I

    move-result v2

    if-le p2, v2, :cond_1

    invoke-virtual/range {p7 .. p7}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v2, v2

    :goto_0
    invoke-static {p0, v2, v3}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;J)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    move-object/from16 v0, p8

    instance-of v2, v0, Lcom/alensw/b/e/e;

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-lez v2, :cond_2

    move-object/from16 v2, p8

    check-cast v2, Lcom/alensw/b/e/e;

    :goto_1
    const/16 v3, 0x4000

    new-array v7, v3, [B

    const/4 v3, 0x0

    move-wide v4, p3

    :goto_2
    const/16 v8, 0x280

    if-ge v3, v8, :cond_3

    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-ltz v8, :cond_3

    add-int/lit8 v3, v3, 0x1

    if-lez v8, :cond_0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v8}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v8, v8

    add-long/2addr v4, v8

    if-eqz v2, :cond_0

    move-wide/from16 v0, p5

    invoke-interface {v2, v4, v5, v0, v1}, Lcom/alensw/b/e/e;->a(JJ)V

    :cond_0
    invoke-static/range {p8 .. p8}, Lcom/alensw/b/e/b;->a(Lcom/alensw/b/e/f;)V

    goto :goto_2

    :cond_1
    int-to-long v2, p2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/alensw/b/e/f;Ljava/util/List;)V
    .locals 1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alensw/b/e/h;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alensw/b/e/h;

    invoke-static {p0, p1, p2, v0}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/alensw/b/e/f;[Lcom/alensw/b/e/h;)V

    return-void
.end method

.method public static varargs a(Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/alensw/b/e/f;[Lcom/alensw/b/e/h;)V
    .locals 22

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v2, v0

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1
    const-wide/16 v4, 0x0

    move-object/from16 v0, p3

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v6, p3, v2

    iget-object v7, v6, Lcom/alensw/b/e/h;->c:[B

    array-length v7, v7

    int-to-long v8, v7

    iget-wide v6, v6, Lcom/alensw/b/e/h;->a:J

    add-long/2addr v6, v8

    const-string v8, "\r\n"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "--**BOUNDARY**FDBF587B**--\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long v14, v4, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v2, "Accept-Encoding"

    const-string v3, "identity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "multipart/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";boundary="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "**BOUNDARY**FDBF587B**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;J)V

    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->connect()V

    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/alensw/b/e/e;

    if-eqz v2, :cond_5

    move-object/from16 v2, p2

    check-cast v2, Lcom/alensw/b/e/e;

    move-object v3, v2

    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    const-wide/16 v4, 0x0

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    const/4 v2, 0x0

    move v12, v2

    :goto_2
    move/from16 v0, v16

    if-ge v12, v0, :cond_c

    aget-object v17, p3, v12

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/alensw/b/e/h;->c:[B

    invoke-virtual {v13, v2}, Ljava/io/OutputStream;->write([B)V

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/alensw/b/e/h;->c:[B

    array-length v2, v2

    int-to-long v6, v2

    add-long/2addr v6, v4

    if-eqz v3, :cond_3

    invoke-interface {v3, v6, v7, v14, v15}, Lcom/alensw/b/e/e;->a(JJ)V

    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/alensw/b/e/b;->a(Lcom/alensw/b/e/f;)V

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/alensw/b/e/h;->b:Ljava/lang/Object;

    instance-of v4, v2, Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_8

    check-cast v2, Ljava/nio/ByteBuffer;

    const/16 v4, 0x4000

    new-array v0, v4, [B

    move-object/from16 v18, v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v8, 0x4000

    div-long v20, v4, v8

    const-wide/16 v8, 0x4000

    mul-long v8, v8, v20

    sub-long/2addr v4, v8

    long-to-int v0, v4

    move/from16 v19, v0

    const-wide/16 v4, 0x0

    move-wide v8, v4

    move-wide v4, v6

    :goto_3
    cmp-long v10, v8, v20

    if-gez v10, :cond_6

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V

    move-object/from16 v0, v18

    array-length v10, v0

    int-to-long v10, v10

    add-long/2addr v10, v4

    if-eqz v3, :cond_4

    invoke-interface {v3, v10, v11, v14, v15}, Lcom/alensw/b/e/e;->a(JJ)V

    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/alensw/b/e/b;->a(Lcom/alensw/b/e/f;)V

    const-wide/16 v4, 0x1

    add-long/2addr v4, v8

    move-wide v8, v4

    move-wide v4, v10

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    move-object v3, v2

    goto :goto_1

    :cond_6
    if-lez v19, :cond_7

    const/4 v8, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v8, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    move/from16 v0, v19

    int-to-long v8, v0

    add-long/2addr v4, v8

    :cond_7
    :goto_4
    sub-long v8, v4, v6

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/alensw/b/e/h;->a:J

    cmp-long v2, v8, v10

    if-gez v2, :cond_b

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "upload wrong bytes: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/alensw/b/e/h;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    instance-of v4, v2, Ljava/io/InputStream;

    if-eqz v4, :cond_a

    check-cast v2, Ljava/io/InputStream;

    const/16 v4, 0x4000

    new-array v8, v4, [B

    move-wide v4, v6

    :goto_5
    invoke-virtual {v2, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-ltz v9, :cond_7

    if-lez v9, :cond_9

    const/4 v10, 0x0

    invoke-virtual {v13, v8, v10, v9}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v10, v9

    add-long/2addr v4, v10

    if-eqz v3, :cond_9

    invoke-interface {v3, v4, v5, v14, v15}, Lcom/alensw/b/e/e;->a(JJ)V

    :cond_9
    invoke-static/range {p2 .. p2}, Lcom/alensw/b/e/b;->a(Lcom/alensw/b/e/f;)V

    goto :goto_5

    :cond_a
    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {v13, v2}, Ljava/io/OutputStream;->write([B)V

    array-length v2, v2

    int-to-long v4, v2

    add-long/2addr v4, v6

    goto :goto_4

    :cond_b
    const-string v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/io/OutputStream;->write([B)V

    const-string v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_2

    :cond_c
    const-string v2, "--**BOUNDARY**FDBF587B**--\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/io/OutputStream;->write([B)V

    const-string v2, "--**BOUNDARY**FDBF587B**--\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    if-eqz v3, :cond_d

    invoke-interface {v3, v4, v5, v14, v15}, Lcom/alensw/b/e/e;->a(JJ)V

    :cond_d
    cmp-long v2, v4, v14

    if-eqz v2, :cond_e

    const-string v2, "HttpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "upload wrong bytes: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/io/InputStream;Lcom/alensw/b/e/f;)V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v2, v0

    invoke-static {p0, v2, v3}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;J)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    int-to-long v2, v0

    invoke-static {p2, v1, v2, v3, p3}, Lcom/alensw/b/e/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/alensw/b/e/f;)J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upload wrong bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    const-string v1, "HttpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upload wrong bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Length"

    array-length v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v0

    int-to-long v2, v1

    invoke-static {p0, v2, v3}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;J)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public static a(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 1

    new-instance v0, Lcom/alensw/b/e/d;

    invoke-direct {v0}, Lcom/alensw/b/e/d;-><init>()V

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    invoke-static {}, Lcom/alensw/b/e/b;->b()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public static b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 2

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alensw/b/e/b;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p0, :cond_1

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "*/*"

    :cond_2
    return-object v0
.end method

.method public static b(Ljava/net/HttpURLConnection;Lcom/alensw/b/e/f;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alensw/b/e/b;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {p1}, Lcom/alensw/b/e/b;->a(Lcom/alensw/b/e/f;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v0, v2, v3, p1}, Lcom/alensw/b/e/b;->a(Ljava/io/InputStream;Ljava/lang/String;JLcom/alensw/b/e/f;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static b()Ljavax/net/ssl/SSLContext;
    .locals 6

    const-class v1, Lcom/alensw/b/e/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alensw/b/e/b;->a:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alensw/b/e/c;

    invoke-direct {v0}, Lcom/alensw/b/e/c;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavax/net/ssl/X509TrustManager;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    sput-object v2, Lcom/alensw/b/e/b;->a:Ljavax/net/ssl/SSLContext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/alensw/b/e/b;->a:Ljavax/net/ssl/SSLContext;

    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
