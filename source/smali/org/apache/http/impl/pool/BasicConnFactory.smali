.class public Lorg/apache/http/impl/pool/BasicConnFactory;
.super Ljava/lang/Object;
.source "BasicConnFactory.java"

# interfaces
.implements Lorg/apache/http/pool/ConnFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/pool/ConnFactory<",
        "Lorg/apache/http/HttpHost;",
        "Lorg/apache/http/HttpClientConnection;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final connFactory:Lorg/apache/http/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/HttpConnectionFactory<",
            "+",
            "Lorg/apache/http/HttpClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final connectTimeout:I

.field private final plainfactory:Ljavax/net/SocketFactory;

.field private final sconfig:Lorg/apache/http/config/SocketConfig;

.field private final sslfactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 6

    sget-object v4, Lorg/apache/http/config/SocketConfig;->DEFAULT:Lorg/apache/http/config/SocketConfig;

    sget-object v5, Lorg/apache/http/config/ConnectionConfig;->DEFAULT:Lorg/apache/http/config/ConnectionConfig;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/impl/pool/BasicConnFactory;-><init>(Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;ILorg/apache/http/config/SocketConfig;Lorg/apache/http/config/ConnectionConfig;)V

    return-void
.end method

.method public constructor <init>(ILorg/apache/http/config/SocketConfig;Lorg/apache/http/config/ConnectionConfig;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/impl/pool/BasicConnFactory;-><init>(Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;ILorg/apache/http/config/SocketConfig;Lorg/apache/http/config/ConnectionConfig;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;ILorg/apache/http/config/SocketConfig;Lorg/apache/http/config/ConnectionConfig;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->plainfactory:Ljavax/net/SocketFactory;

    iput-object p2, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->sslfactory:Ljavax/net/ssl/SSLSocketFactory;

    iput p3, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->connectTimeout:I

    if-eqz p4, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/http/config/SocketConfig;->DEFAULT:Lorg/apache/http/config/SocketConfig;

    :goto_0
    iput-object v0, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->sconfig:Lorg/apache/http/config/SocketConfig;

    new-instance v0, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;

    if-eqz p5, :cond_1

    move-object v1, p5

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/apache/http/config/ConnectionConfig;->DEFAULT:Lorg/apache/http/config/ConnectionConfig;

    :goto_1
    invoke-direct {v0, v1}, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;-><init>(Lorg/apache/http/config/ConnectionConfig;)V

    iput-object v0, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->connFactory:Lorg/apache/http/HttpConnectionFactory;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP params"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->plainfactory:Ljavax/net/SocketFactory;

    iput-object p1, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->sslfactory:Ljavax/net/ssl/SSLSocketFactory;

    const-string v0, "http.connection.timeout"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->connectTimeout:I

    invoke-static {p2}, Lorg/apache/http/params/HttpParamConfig;->getSocketConfig(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/config/SocketConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->sconfig:Lorg/apache/http/config/SocketConfig;

    new-instance v0, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;

    invoke-static {p2}, Lorg/apache/http/params/HttpParamConfig;->getConnectionConfig(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/config/ConnectionConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;-><init>(Lorg/apache/http/config/ConnectionConfig;)V

    iput-object v0, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->connFactory:Lorg/apache/http/HttpConnectionFactory;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/SocketConfig;Lorg/apache/http/config/ConnectionConfig;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/impl/pool/BasicConnFactory;-><init>(Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;ILorg/apache/http/config/SocketConfig;Lorg/apache/http/config/ConnectionConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/http/impl/pool/BasicConnFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lorg/apache/http/HttpHost;

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/pool/BasicConnFactory;->create(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpClientConnection;

    move-result-object v0

    return-object v0
.end method

.method protected create(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/HttpClientConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "http.socket.buffer-size"

    const/16 v1, 0x2000

    invoke-interface {p2, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Lorg/apache/http/impl/DefaultBHttpClientConnection;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/DefaultBHttpClientConnection;-><init>(I)V

    invoke-virtual {v1, p1}, Lorg/apache/http/impl/DefaultBHttpClientConnection;->bind(Ljava/net/Socket;)V

    return-object v1
.end method

.method public create(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpClientConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->plainfactory:Ljavax/net/SocketFactory;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    :goto_0
    move-object v1, v3

    :cond_1
    const-string v3, "https"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->sslfactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v4

    :goto_1
    invoke-virtual {v4}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v5, 0x50

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v5, 0x1bb

    :cond_5
    :goto_2
    iget-object v2, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->sconfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v2}, Lorg/apache/http/config/SocketConfig;->getSoTimeout()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v2, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->sconfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v2}, Lorg/apache/http/config/SocketConfig;->getSndBufSize()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->sconfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v2}, Lorg/apache/http/config/SocketConfig;->getSndBufSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSendBufferSize(I)V

    :cond_6
    iget-object v2, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->sconfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v2}, Lorg/apache/http/config/SocketConfig;->getRcvBufSize()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->sconfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v2}, Lorg/apache/http/config/SocketConfig;->getRcvBufSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    :cond_7
    iget-object v2, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->sconfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v2}, Lorg/apache/http/config/SocketConfig;->isTcpNoDelay()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v2, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->sconfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v2}, Lorg/apache/http/config/SocketConfig;->getSoLinger()I

    move-result v2

    if-ltz v2, :cond_8

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/net/Socket;->setSoLinger(ZI)V

    :cond_8
    iget-object v3, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->sconfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v3}, Lorg/apache/http/config/SocketConfig;->isSoKeepAlive()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setKeepAlive(Z)V

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v6, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->connectTimeout:I

    invoke-virtual {v1, v3, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v3, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->connFactory:Lorg/apache/http/HttpConnectionFactory;

    invoke-interface {v3, v1}, Lorg/apache/http/HttpConnectionFactory;->createConnection(Ljava/net/Socket;)Lorg/apache/http/HttpConnection;

    move-result-object v3

    check-cast v3, Lorg/apache/http/HttpClientConnection;

    return-object v3

    :cond_9
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " scheme is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
