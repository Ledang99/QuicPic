.class Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;
.super Ljava/lang/Object;
.source "ManagedClientConnectionImpl.java"

# interfaces
.implements Lorg/apache/http/conn/ManagedClientConnection;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private volatile duration:J

.field private final manager:Lorg/apache/http/conn/ClientConnectionManager;

.field private final operator:Lorg/apache/http/conn/ClientConnectionOperator;

.field private volatile poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

.field private volatile reusable:Z


# direct methods
.method constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/impl/conn/HttpPoolEntry;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Connection manager"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Connection operator"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP pool entry"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->manager:Lorg/apache/http/conn/ClientConnectionManager;

    iput-object p2, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->operator:Lorg/apache/http/conn/ClientConnectionOperator;

    iput-object p3, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->duration:J

    return-void
.end method

.method private ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/OperatedClientConnection;

    return-object v1

    :cond_0
    new-instance v1, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {v1}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw v1
.end method

.method private ensurePoolEntry()Lorg/apache/http/impl/conn/HttpPoolEntry;
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {v1}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw v1
.end method

.method private getConnection()Lorg/apache/http/conn/OperatedClientConnection;
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/OperatedClientConnection;

    return-object v1
.end method


# virtual methods
.method public abortConnection()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/OperatedClientConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_2
    iget-object v1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->manager:Lorg/apache/http/conn/ClientConnectionManager;

    iget-wide v2, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->duration:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p0, v2, v3, v4}, Lorg/apache/http/conn/ClientConnectionManager;->releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public bind(Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/OperatedClientConnection;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getTracker()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/conn/routing/RouteTracker;->reset()V

    invoke-interface {v1}, Lorg/apache/http/conn/OperatedClientConnection;->close()V

    :cond_0
    return-void
.end method

.method detach()Lorg/apache/http/impl/conn/HttpPoolEntry;
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->flush()V

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/http/protocol/HttpContext;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v1, p1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 2

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public getLocalPort()I
    .locals 2

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getLocalPort()I

    move-result v1

    return v1
.end method

.method public getManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->manager:Lorg/apache/http/conn/ClientConnectionManager;

    return-object v0
.end method

.method public getMetrics()Lorg/apache/http/HttpConnectionMetrics;
    .locals 2

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getMetrics()Lorg/apache/http/HttpConnectionMetrics;

    move-result-object v1

    return-object v1
.end method

.method getPoolEntry()Lorg/apache/http/impl/conn/HttpPoolEntry;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 2

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public getRemotePort()I
    .locals 2

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getRemotePort()I

    move-result v1

    return v1
.end method

.method public getRoute()Lorg/apache/http/conn/routing/HttpRoute;
    .locals 2

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensurePoolEntry()Lorg/apache/http/impl/conn/HttpPoolEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getEffectiveRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v1

    return-object v1
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 4

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    instance-of v3, v2, Ljavax/net/ssl/SSLSocket;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 2

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    return-object v1
.end method

.method public getSocketTimeout()I
    .locals 2

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getSocketTimeout()I

    move-result v1

    return v1
.end method

.method public getState()Ljava/lang/Object;
    .locals 2

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensurePoolEntry()Lorg/apache/http/impl/conn/HttpPoolEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isMarkedReusable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    return v0
.end method

.method public isOpen()Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isResponseAvailable(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->isResponseAvailable(I)Z

    move-result v1

    return v1
.end method

.method public isSecure()Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isSecure()Z

    move-result v1

    return v1
.end method

.method public isStale()Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isStale()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public layerProtocol(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP parameters"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getTracker()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v1

    const-string v2, "Route tracker"

    invoke-static {v1, v2}, Lorg/apache/http/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/conn/routing/RouteTracker;->isConnected()Z

    move-result v2

    const-string v3, "Connection not open"

    invoke-static {v2, v3}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/conn/routing/RouteTracker;->isTunnelled()Z

    move-result v2

    const-string v3, "Protocol layering without a tunnel not supported"

    invoke-static {v2, v3}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/conn/routing/RouteTracker;->isLayered()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Multiple protocol layering not supported"

    invoke-static {v2, v3}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/conn/routing/RouteTracker;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v3}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/conn/OperatedClientConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    iget-object v1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->operator:Lorg/apache/http/conn/ClientConnectionOperator;

    invoke-interface {v1, v0, v2, p1, p2}, Lorg/apache/http/conn/ClientConnectionOperator;->updateSecureConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getTracker()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isSecure()Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/http/conn/routing/RouteTracker;->layerProtocol(Z)V

    monitor-exit p0

    return-void

    :cond_1
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_2
    :try_start_4
    new-instance v1, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {v1}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v1

    :catchall_3
    move-exception v1

    goto :goto_1
.end method

.method public markReusable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    return-void
.end method

.method public open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Route"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP parameters"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getTracker()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v1

    const-string v2, "Route tracker"

    invoke-static {v1, v2}, Lorg/apache/http/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/conn/routing/RouteTracker;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Connection already open"

    invoke-static {v2, v3}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    iget-object v2, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v2}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/apache/http/conn/OperatedClientConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->operator:Lorg/apache/http/conn/ClientConnectionOperator;

    if-eqz v0, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    move-object v5, v1

    :goto_1
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v6

    move-object v7, p2

    move-object v8, p3

    invoke-interface/range {v3 .. v8}, Lorg/apache/http/conn/ClientConnectionOperator;->openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getTracker()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v1

    if-nez v0, :cond_2

    invoke-interface {v4}, Lorg/apache/http/conn/OperatedClientConnection;->isSecure()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/routing/RouteTracker;->connectTarget(Z)V

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Lorg/apache/http/conn/OperatedClientConnection;->isSecure()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/conn/routing/RouteTracker;->connectProxy(Lorg/apache/http/HttpHost;Z)V

    :goto_2
    monitor-exit p0

    return-void

    :cond_3
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    :cond_4
    :try_start_3
    new-instance v1, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {v1}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v1

    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v1

    :catchall_3
    move-exception v1

    goto :goto_3
.end method

.method public receiveResponseEntity(Lorg/apache/http/HttpResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->receiveResponseEntity(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method public receiveResponseHeader()Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public releaseConnection()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->manager:Lorg/apache/http/conn/ClientConnectionManager;

    iget-wide v1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->duration:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/http/protocol/HttpContext;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v1, p1}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    return-void
.end method

.method public sendRequestHeader(Lorg/apache/http/HttpRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/http/protocol/HttpContext;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v1, p1, p2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setIdleDuration(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->duration:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->duration:J

    :goto_0
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->setSocketTimeout(I)V

    return-void
.end method

.method public setState(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensurePoolEntry()Lorg/apache/http/impl/conn/HttpPoolEntry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/HttpPoolEntry;->setState(Ljava/lang/Object;)V

    return-void
.end method

.method public shutdown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/OperatedClientConnection;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getTracker()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/conn/routing/RouteTracker;->reset()V

    invoke-interface {v1}, Lorg/apache/http/conn/OperatedClientConnection;->shutdown()V

    :cond_0
    return-void
.end method

.method public tunnelProxy(Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Next proxy"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP parameters"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getTracker()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v1

    const-string v2, "Route tracker"

    invoke-static {v1, v2}, Lorg/apache/http/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/conn/routing/RouteTracker;->isConnected()Z

    move-result v2

    const-string v3, "Connection not open"

    invoke-static {v2, v3}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    iget-object v2, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v2}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/conn/OperatedClientConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v1, v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v1, v0, p1, p2, p3}, Lorg/apache/http/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getTracker()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/conn/routing/RouteTracker;->tunnelProxy(Lorg/apache/http/HttpHost;Z)V

    monitor-exit p0

    return-void

    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :cond_1
    :try_start_3
    new-instance v1, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {v1}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v1

    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v1

    :catchall_3
    move-exception v1

    goto :goto_0
.end method

.method public tunnelTarget(ZLorg/apache/http/params/HttpParams;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP parameters"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getTracker()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v1

    const-string v2, "Route tracker"

    invoke-static {v1, v2}, Lorg/apache/http/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/conn/routing/RouteTracker;->isConnected()Z

    move-result v2

    const-string v3, "Connection not open"

    invoke-static {v2, v3}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/conn/routing/RouteTracker;->isTunnelled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Connection is already tunnelled"

    invoke-static {v2, v3}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/conn/routing/RouteTracker;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v3, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v3}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/conn/OperatedClientConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v1, v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v1, v0, v2, p1, p2}, Lorg/apache/http/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getTracker()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/conn/routing/RouteTracker;->tunnelTarget(Z)V

    monitor-exit p0

    return-void

    :cond_1
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :catchall_2
    move-exception v1

    goto :goto_1

    :cond_2
    :try_start_4
    new-instance v1, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {v1}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v1

    :catchall_4
    move-exception v1

    goto :goto_1
.end method

.method public unmarkReusable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    return-void
.end method
