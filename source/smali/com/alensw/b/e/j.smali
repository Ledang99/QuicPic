.class public Lcom/alensw/b/e/j;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/net/ServerSocket;

.field private b:Ljava/lang/Thread;

.field private final c:I

.field private final d:Lorg/apache/http/protocol/HttpService;

.field private final e:Lorg/apache/http/params/HttpParams;


# direct methods
.method public constructor <init>(I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    new-instance v1, Lorg/apache/http/protocol/ResponseDate;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseDate;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    new-instance v1, Lorg/apache/http/protocol/ResponseServer;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseServer;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    new-instance v1, Lorg/apache/http/protocol/ResponseContent;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseContent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    new-instance v1, Lorg/apache/http/protocol/ResponseConnControl;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseConnControl;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v1, p0, Lcom/alensw/b/e/j;->e:Lorg/apache/http/params/HttpParams;

    iget-object v1, p0, Lcom/alensw/b/e/j;->e:Lorg/apache/http/params/HttpParams;

    const-string v2, "http.socket.timeout"

    const/16 v3, 0x3a98

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    iget-object v1, p0, Lcom/alensw/b/e/j;->e:Lorg/apache/http/params/HttpParams;

    const-string v2, "http.socket.buffer-size"

    const/16 v3, 0x4000

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    iget-object v1, p0, Lcom/alensw/b/e/j;->e:Lorg/apache/http/params/HttpParams;

    const-string v2, "http.connection.stalecheck"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    iget-object v1, p0, Lcom/alensw/b/e/j;->e:Lorg/apache/http/params/HttpParams;

    const-string v2, "http.tcp.nodelay"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    new-instance v1, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    invoke-direct {v1}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;-><init>()V

    invoke-virtual {p0, v1}, Lcom/alensw/b/e/j;->a(Lorg/apache/http/protocol/HttpRequestHandlerRegistry;)V

    iput p1, p0, Lcom/alensw/b/e/j;->c:I

    new-instance v2, Lorg/apache/http/protocol/HttpService;

    new-instance v3, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v3}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    new-instance v4, Lorg/apache/http/impl/DefaultHttpResponseFactory;

    invoke-direct {v4}, Lorg/apache/http/impl/DefaultHttpResponseFactory;-><init>()V

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/http/protocol/HttpService;-><init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V

    iput-object v2, p0, Lcom/alensw/b/e/j;->d:Lorg/apache/http/protocol/HttpService;

    iget-object v0, p0, Lcom/alensw/b/e/j;->d:Lorg/apache/http/protocol/HttpService;

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/HttpService;->setHandlerResolver(Lorg/apache/http/protocol/HttpRequestHandlerResolver;)V

    iget-object v0, p0, Lcom/alensw/b/e/j;->d:Lorg/apache/http/protocol/HttpService;

    iget-object v1, p0, Lcom/alensw/b/e/j;->e:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/HttpService;->setParams(Lorg/apache/http/params/HttpParams;)V

    return-void
.end method

.method public static a(Lorg/apache/http/Header;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lorg/apache/http/HttpRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0, p1}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/e/j;->a(Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alensw/b/e/j;)Ljava/net/ServerSocket;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/e/j;->a:Ljava/net/ServerSocket;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;J)Lorg/apache/http/entity/InputStreamEntity;
    .locals 1

    new-instance v0, Lcom/alensw/b/e/m;

    invoke-direct {v0, p0, p1, p2}, Lcom/alensw/b/e/m;-><init>(Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public static a(Lcom/alensw/b/e/i;JLjava/lang/String;Lorg/apache/http/HttpResponse;)V
    .locals 9

    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x1

    if-eqz p3, :cond_4

    const-string v2, "bytes="

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "bytes="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    const/16 v2, 0x2d

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_4

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    add-int/lit8 v6, v6, 0x1

    :try_start_1
    invoke-virtual {p3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    :goto_0
    const-string v6, "HttpServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "range="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "Accept-Ranges"

    const-string v7, "bytes"

    invoke-interface {p4, v6, v7}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Content-Type"

    iget-object v7, p0, Lcom/alensw/b/e/i;->c:Ljava/lang/String;

    invoke-interface {p4, v6, v7}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    cmp-long v6, v2, p1

    if-ltz v6, :cond_0

    const-string v0, "Content-Range"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes 0-0/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1a0

    invoke-interface {p4, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    :goto_1
    return-void

    :cond_0
    iget-wide v6, p0, Lcom/alensw/b/e/i;->a:J

    cmp-long v8, v6, v4

    if-gtz v8, :cond_1

    sub-long v6, p1, v2

    :cond_1
    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    add-long v0, v2, v6

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    :cond_2
    const-string v4, "Content-Range"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bytes "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v4, v0}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alensw/b/e/i;->e:Ljava/io/InputStream;

    invoke-static {v0, v6, v7}, Lcom/alensw/b/e/j;->a(Ljava/io/InputStream;J)Lorg/apache/http/entity/InputStreamEntity;

    move-result-object v0

    invoke-interface {p4, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    const/16 v0, 0xce

    invoke-interface {p4, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alensw/b/e/i;->e:Ljava/io/InputStream;

    invoke-static {v0, p1, p2}, Lcom/alensw/b/e/j;->a(Ljava/io/InputStream;J)Lorg/apache/http/entity/InputStreamEntity;

    move-result-object v0

    invoke-interface {p4, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    const/16 v0, 0xc8

    invoke-interface {p4, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_1

    :catch_0
    move-exception v2

    move-wide v2, v4

    goto/16 :goto_0

    :catch_1
    move-exception v6

    goto/16 :goto_0

    :cond_4
    move-wide v2, v4

    goto/16 :goto_0
.end method

.method protected static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "&"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;ILjava/lang/String;)V
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->setStatusLine(Lorg/apache/http/StatusLine;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/alensw/b/e/j;->a(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alensw/b/e/j;)Lorg/apache/http/params/HttpParams;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/e/j;->e:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 0

    return-void
.end method

.method protected a(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 6

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/alensw/b/e/j;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alensw/b/e/j;->a(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    :goto_0
    return-void

    :cond_0
    const-string v3, "POST"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alensw/b/e/j;->b(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    goto :goto_0

    :cond_1
    const-string v1, "HttpServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "don\'t handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Lorg/apache/http/impl/DefaultHttpServerConnection;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    const-string v1, "RemoteAddress"

    invoke-virtual {p1}, Lorg/apache/http/impl/DefaultHttpServerConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p1}, Lorg/apache/http/impl/DefaultHttpServerConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alensw/b/e/j;->d:Lorg/apache/http/protocol/HttpService;

    invoke-virtual {v1, p1, v0}, Lorg/apache/http/protocol/HttpService;->handleRequest(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "HttpServer"

    const-string v1, "socket exception"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Lorg/apache/http/impl/DefaultHttpServerConnection;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    return-void

    :cond_0
    :try_start_3
    invoke-virtual {p1}, Lorg/apache/http/impl/DefaultHttpServerConnection;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "HttpServer"

    const-string v2, "close connection: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "HttpServer"

    const-string v2, "close connection: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception v0

    :try_start_4
    const-string v0, "HttpServer"

    const-string v1, "socket timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p1}, Lorg/apache/http/impl/DefaultHttpServerConnection;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_4
    move-exception v0

    const-string v1, "HttpServer"

    const-string v2, "close connection: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_5
    move-exception v0

    :try_start_6
    const-string v1, "HttpServer"

    const-string v2, "handle request: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {p1}, Lorg/apache/http/impl/DefaultHttpServerConnection;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_1

    :catch_6
    move-exception v0

    const-string v1, "HttpServer"

    const-string v2, "close connection: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_8
    invoke-virtual {p1}, Lorg/apache/http/impl/DefaultHttpServerConnection;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :goto_2
    throw v0

    :catch_7
    move-exception v1

    const-string v2, "HttpServer"

    const-string v3, "close connection: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected a(Lorg/apache/http/protocol/HttpRequestHandlerRegistry;)V
    .locals 2

    const-string v0, "*"

    new-instance v1, Lcom/alensw/b/e/l;

    invoke-direct {v1, p0}, Lcom/alensw/b/e/l;-><init>(Lcom/alensw/b/e/j;)V

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 0

    return-void
.end method

.method protected b(Lorg/apache/http/impl/DefaultHttpServerConnection;)V
    .locals 1

    new-instance v0, Lcom/alensw/b/e/k;

    invoke-direct {v0, p0, p1}, Lcom/alensw/b/e/k;-><init>(Lcom/alensw/b/e/j;Lorg/apache/http/impl/DefaultHttpServerConnection;)V

    invoke-virtual {v0}, Lcom/alensw/b/e/k;->start()V

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/b/e/j;->b:Ljava/lang/Thread;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/alensw/b/e/j;->a:Ljava/net/ServerSocket;

    iget-object v0, p0, Lcom/alensw/b/e/j;->a:Ljava/net/ServerSocket;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget v2, p0, Lcom/alensw/b/e/j;->c:I

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    new-instance v0, Lcom/alensw/b/e/n;

    invoke-direct {v0, p0}, Lcom/alensw/b/e/n;-><init>(Lcom/alensw/b/e/j;)V

    iput-object v0, p0, Lcom/alensw/b/e/j;->b:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/alensw/b/e/j;->b:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lcom/alensw/b/e/j;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HttpServer"

    const-string v2, "start: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/b/e/j;->a:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/b/e/j;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alensw/b/e/j;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/alensw/b/e/j;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/b/e/j;->b:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/b/e/j;->a:Ljava/net/ServerSocket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HttpServer"

    const-string v2, "close socket: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "HttpServer"

    const-string v2, "stop: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/e/j;->a:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/alensw/b/e/j;->a:Ljava/net/ServerSocket;

    iget-object v1, p0, Lcom/alensw/b/e/j;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
