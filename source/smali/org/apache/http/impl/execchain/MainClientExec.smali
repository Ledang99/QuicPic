.class public Lorg/apache/http/impl/execchain/MainClientExec;
.super Ljava/lang/Object;
.source "MainClientExec.java"

# interfaces
.implements Lorg/apache/http/impl/execchain/ClientExecChain;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

.field private final connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

.field private final keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

.field private final log:Lorg/apache/commons/logging/Log;

.field private final proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

.field private final proxyHttpProcessor:Lorg/apache/http/protocol/HttpProcessor;

.field private final requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

.field private final reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

.field private final routeDirector:Lorg/apache/http/conn/routing/HttpRouteDirector;

.field private final targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

.field private final userTokenHandler:Lorg/apache/http/client/UserTokenHandler;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/UserTokenHandler;)V
    .locals 9

    new-instance v5, Lorg/apache/http/protocol/ImmutableHttpProcessor;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/HttpRequestInterceptor;

    new-instance v1, Lorg/apache/http/protocol/RequestTargetHost;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestTargetHost;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {v5, v0}, Lorg/apache/http/protocol/ImmutableHttpProcessor;-><init>([Lorg/apache/http/HttpRequestInterceptor;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/http/impl/execchain/MainClientExec;-><init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/UserTokenHandler;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/UserTokenHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    const-string v0, "HTTP request executor"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Client connection manager"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Connection reuse strategy"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Connection keep alive strategy"

    invoke-static {p4, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Proxy HTTP processor"

    invoke-static {p5, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Target authentication strategy"

    invoke-static {p6, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Proxy authentication strategy"

    invoke-static {p7, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "User token handler"

    invoke-static {p8, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/http/impl/auth/HttpAuthenticator;

    invoke-direct {v0}, Lorg/apache/http/impl/auth/HttpAuthenticator;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    new-instance v0, Lorg/apache/http/conn/routing/BasicRouteDirector;

    invoke-direct {v0}, Lorg/apache/http/conn/routing/BasicRouteDirector;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->routeDirector:Lorg/apache/http/conn/routing/HttpRouteDirector;

    iput-object p1, p0, Lorg/apache/http/impl/execchain/MainClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    iput-object p2, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    iput-object p3, p0, Lorg/apache/http/impl/execchain/MainClientExec;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    iput-object p4, p0, Lorg/apache/http/impl/execchain/MainClientExec;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    iput-object p5, p0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyHttpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    iput-object p6, p0, Lorg/apache/http/impl/execchain/MainClientExec;->targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    iput-object p7, p0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    iput-object p8, p0, Lorg/apache/http/impl/execchain/MainClientExec;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    return-void
.end method

.method private createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/client/protocol/HttpClientContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    new-instance v0, Lorg/apache/http/HttpException;

    const-string v1, "Proxy chains are not supported."

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createTunnelToTarget(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/protocol/HttpClientContext;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v8, p5

    invoke-virtual/range {p5 .. p5}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/http/client/config/RequestConfig;->getConnectTimeout()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v12

    const/4 v2, 0x0

    invoke-virtual {v11}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v13

    new-instance v3, Lorg/apache/http/message/BasicHttpRequest;

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/HttpRequest;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v4

    const-string v5, "CONNECT"

    invoke-direct {v3, v5, v13, v4}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    move-object v14, v3

    iget-object v3, v0, Lorg/apache/http/impl/execchain/MainClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v4, v0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyHttpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-virtual {v3, v14, v4, v8}, Lorg/apache/http/protocol/HttpRequestExecutor;->preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_7

    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpClientConnection;->isOpen()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    if-lez v10, :cond_0

    move v3, v10

    :cond_0
    move-object/from16 v15, p3

    invoke-interface {v4, v1, v15, v3, v8}, Lorg/apache/http/conn/HttpClientConnectionManager;->connect(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)V

    goto :goto_1

    :cond_1
    move-object/from16 v15, p3

    :goto_1
    const-string v3, "Proxy-Authorization"

    invoke-interface {v14, v3}, Lorg/apache/http/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    iget-object v3, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    move-object/from16 v7, p1

    invoke-virtual {v3, v14, v7, v8}, Lorg/apache/http/impl/auth/HttpAuthenticator;->generateAuthResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)V

    iget-object v3, v0, Lorg/apache/http/impl/execchain/MainClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    invoke-virtual {v3, v14, v1, v8}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v2, 0xc8

    if-lt v5, v2, :cond_6

    invoke-virtual {v9}, Lorg/apache/http/client/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v4, v0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object v3, v12

    move-object/from16 v16, v4

    move-object v4, v6

    move/from16 v17, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v6

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/apache/http/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v5, v0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object v3, v12

    move-object/from16 v4, v16

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/apache/http/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lorg/apache/http/impl/execchain/MainClientExec;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    move-object/from16 v3, v16

    invoke-interface {v2, v3, v8}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Connection kept alive"

    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    goto :goto_2

    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpClientConnection;->close()V

    :goto_2
    const/4 v2, 0x0

    goto :goto_4

    :cond_3
    move-object/from16 v3, v16

    goto :goto_3

    :cond_4
    move-object/from16 v3, v16

    goto :goto_3

    :cond_5
    move/from16 v17, v5

    move-object v3, v6

    :goto_3
    move-object v2, v3

    :goto_4
    goto/16 :goto_0

    :cond_6
    move/from16 v17, v5

    move-object v3, v6

    new-instance v2, Lorg/apache/http/HttpException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected response to CONNECT request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    move-object/from16 v15, p3

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0x12b

    if-le v4, v5, :cond_9

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_8

    new-instance v5, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v5, v3}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v2, v5}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_8
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpClientConnection;->close()V

    new-instance v5, Lorg/apache/http/impl/execchain/TunnelRefusedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CONNECT refused by proxy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/apache/http/impl/execchain/TunnelRefusedException;-><init>(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V

    throw v5

    :cond_9
    return v3
.end method

.method private needAuthentication(Lorg/apache/http/auth/AuthState;Lorg/apache/http/auth/AuthState;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/protocol/HttpClientContext;)Z
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p5 .. p5}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/client/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p5 .. p5}, Lorg/apache/http/client/protocol/HttpClientContext;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    :cond_0
    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    if-gez v3, :cond_1

    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v5

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v2, v3

    :cond_1
    iget-object v3, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v6, v0, Lorg/apache/http/impl/execchain/MainClientExec;->targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object v4, v2

    move-object/from16 v5, p4

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lorg/apache/http/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v9

    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_0

    :cond_2
    move-object/from16 v16, v3

    :goto_0
    iget-object v10, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v13, v0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object/from16 v11, v16

    move-object/from16 v12, p4

    move-object/from16 v14, p2

    move-object/from16 v15, p5

    invoke-virtual/range {v10 .. v15}, Lorg/apache/http/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v17

    if-eqz v9, :cond_3

    iget-object v3, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v6, v0, Lorg/apache/http/impl/execchain/MainClientExec;->targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object v4, v2

    move-object/from16 v5, p4

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lorg/apache/http/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    return v3

    :cond_3
    if-eqz v17, :cond_4

    iget-object v10, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v13, v0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object/from16 v11, v16

    move-object/from16 v12, p4

    move-object/from16 v14, p2

    move-object/from16 v15, p5

    invoke-virtual/range {v10 .. v15}, Lorg/apache/http/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    return v3

    :cond_4
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method establishRoute(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/protocol/HttpClientContext;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p5}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/client/config/RequestConfig;->getConnectTimeout()I

    move-result v1

    new-instance v2, Lorg/apache/http/conn/routing/RouteTracker;

    invoke-direct {v2, p3}, Lorg/apache/http/conn/routing/RouteTracker;-><init>(Lorg/apache/http/conn/routing/HttpRoute;)V

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {v2}, Lorg/apache/http/conn/routing/RouteTracker;->toRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/impl/execchain/MainClientExec;->routeDirector:Lorg/apache/http/conn/routing/HttpRouteDirector;

    invoke-interface {v5, p3, v4}, Lorg/apache/http/conn/routing/HttpRouteDirector;->nextStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I

    move-result v5

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown step indicator "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " from RouteDirector."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_0
    iget-object v6, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-interface {v6, p2, p3, p5}, Lorg/apache/http/conn/HttpClientConnectionManager;->upgrade(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V

    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->isSecure()Z

    move-result v6

    invoke-virtual {v2, v6}, Lorg/apache/http/conn/routing/RouteTracker;->layerProtocol(Z)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-direct {p0, p3, v6, p5}, Lorg/apache/http/impl/execchain/MainClientExec;->createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/client/protocol/HttpClientContext;)Z

    move-result v7

    iget-object v8, p0, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    const-string v9, "Tunnel to proxy created."

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    invoke-virtual {p3, v6}, Lorg/apache/http/conn/routing/HttpRoute;->getHopTarget(I)Lorg/apache/http/HttpHost;

    move-result-object v8

    invoke-virtual {v2, v8, v7}, Lorg/apache/http/conn/routing/RouteTracker;->tunnelProxy(Lorg/apache/http/HttpHost;Z)V

    goto :goto_1

    :pswitch_2
    invoke-direct/range {p0 .. p5}, Lorg/apache/http/impl/execchain/MainClientExec;->createTunnelToTarget(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/protocol/HttpClientContext;)Z

    move-result v6

    iget-object v7, p0, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    const-string v8, "Tunnel to target created."

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Lorg/apache/http/conn/routing/RouteTracker;->tunnelTarget(Z)V

    goto :goto_1

    :pswitch_3
    iget-object v3, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    if-lez v1, :cond_1

    move v7, v1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    invoke-interface {v3, p2, p3, v7, p5}, Lorg/apache/http/conn/HttpClientConnectionManager;->connect(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)V

    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lorg/apache/http/conn/routing/RouteTracker;->connectProxy(Lorg/apache/http/HttpHost;Z)V

    goto :goto_1

    :pswitch_4
    iget-object v7, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    if-lez v1, :cond_2

    move v6, v1

    :cond_2
    invoke-interface {v7, p2, p3, v6, p5}, Lorg/apache/http/conn/HttpClientConnectionManager;->connect(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)V

    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->isSecure()Z

    move-result v6

    invoke-virtual {v2, v6}, Lorg/apache/http/conn/routing/RouteTracker;->connectTarget(Z)V

    goto :goto_1

    :pswitch_5
    iget-object v6, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-interface {v6, p2, p3, p5}, Lorg/apache/http/conn/HttpClientConnectionManager;->routeComplete(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V

    nop

    :goto_1
    if-gtz v5, :cond_0

    return-void

    :pswitch_6
    new-instance v6, Lorg/apache/http/HttpException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to establish route: planned = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "; current = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v6

    :goto_3
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    const-string v12, "Proxy-Authorization"

    const-string v13, "Authorization"

    const-string v1, "HTTP route"

    invoke-static {v8, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "HTTP request"

    invoke-static {v9, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "HTTP context"

    invoke-static {v10, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getTargetAuthState()Lorg/apache/http/auth/AuthState;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Lorg/apache/http/auth/AuthState;

    invoke-direct {v2}, Lorg/apache/http/auth/AuthState;-><init>()V

    move-object v1, v2

    const-string v2, "http.auth.target-scope"

    invoke-virtual {v10, v2, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v14, v1

    goto :goto_0

    :cond_0
    move-object v14, v1

    :goto_0
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getProxyAuthState()Lorg/apache/http/auth/AuthState;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v2, Lorg/apache/http/auth/AuthState;

    invoke-direct {v2}, Lorg/apache/http/auth/AuthState;-><init>()V

    move-object v1, v2

    const-string v2, "http.auth.proxy-scope"

    invoke-virtual {v10, v2, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v15, v1

    goto :goto_1

    :cond_1
    move-object v15, v1

    :goto_1
    instance-of v1, v9, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v1, :cond_2

    move-object v1, v9

    check-cast v1, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-static {v1}, Lorg/apache/http/impl/execchain/RequestEntityProxy;->enhance(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getUserToken()Ljava/lang/Object;

    move-result-object v6

    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-interface {v1, v8, v6}, Lorg/apache/http/conn/HttpClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ConnectionRequest;

    move-result-object v5

    const-string v4, "Request aborted"

    if-eqz v11, :cond_4

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v11, v5}, Lorg/apache/http/client/methods/HttpExecutionAware;->setCancellable(Lorg/apache/http/concurrent/Cancellable;)V

    goto :goto_2

    :cond_3
    invoke-interface {v5}, Lorg/apache/http/conn/ConnectionRequest;->cancel()Z

    new-instance v1, Lorg/apache/http/impl/execchain/RequestAbortedException;

    invoke-direct {v1, v4}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v16

    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/client/config/RequestConfig;->getConnectionRequestTimeout()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3a

    const-wide/16 v17, 0x0

    if-lez v1, :cond_5

    move-object/from16 v19, v4

    int-to-long v3, v1

    goto :goto_3

    :cond_5
    move-object/from16 v19, v4

    move-wide/from16 v3, v17

    :goto_3
    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v3, v4, v2}, Lorg/apache/http/conn/ConnectionRequest;->get(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/HttpClientConnection;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_39
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3a

    move-object v4, v2

    nop

    const-string v1, "http.connection"

    invoke-virtual {v10, v1, v4}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/client/config/RequestConfig;->isStaleConnectionCheckEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v4}, Lorg/apache/http/HttpClientConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Stale connection check"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    invoke-interface {v4}, Lorg/apache/http/HttpClientConnection;->isStale()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Stale connection detected"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    invoke-interface {v4}, Lorg/apache/http/HttpClientConnection;->close()V

    :cond_6
    new-instance v1, Lorg/apache/http/impl/execchain/ConnectionHolder;

    iget-object v2, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    iget-object v3, v7, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/impl/execchain/ConnectionHolder;-><init>(Lorg/apache/commons/logging/Log;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/HttpClientConnection;)V

    move-object v3, v1

    if-eqz v11, :cond_7

    :try_start_2
    invoke-interface {v11, v3}, Lorg/apache/http/client/methods/HttpExecutionAware;->setCancellable(Lorg/apache/http/concurrent/Cancellable;)V

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v11, v3

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v15

    goto/16 :goto_13

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v11, v3

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v15

    goto/16 :goto_14

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v11, v3

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v15

    goto/16 :goto_15

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v11, v3

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v15

    goto/16 :goto_16

    :cond_7
    :goto_4
    const/4 v1, 0x1

    move v2, v1

    :goto_5
    const/4 v1, 0x1

    if-le v2, v1, :cond_9

    invoke-static/range {p2 .. p2}, Lorg/apache/http/impl/execchain/RequestEntityProxy;->isRepeatable(Lorg/apache/http/HttpRequest;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    new-instance v1, Lorg/apache/http/client/NonRepeatableRequestException;

    const-string v12, "Cannot retry request with a non-repeatable request entity."

    invoke-direct {v1, v12}, Lorg/apache/http/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_6
    if-eqz v11, :cond_b

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_7

    :cond_a
    new-instance v1, Lorg/apache/http/impl/execchain/RequestAbortedException;

    move-object/from16 v12, v19

    invoke-direct {v1, v12}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_b
    :goto_7
    :try_start_3
    invoke-interface {v4}, Lorg/apache/http/HttpClientConnection;->isOpen()Z

    move-result v1
    :try_end_3
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_3 .. :try_end_3} :catch_38
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_37
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_36
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_35

    if-nez v1, :cond_d

    :try_start_4
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    move/from16 v21, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_9

    move-object/from16 v22, v3

    :try_start_5
    const-string v3, "Opening connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Lorg/apache/http/HttpException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v8, v22

    move-object v3, v4

    move-object v8, v4

    move-object/from16 v25, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v25

    move-object/from16 v4, p1

    move-object/from16 v20, v5

    move-object/from16 v5, p2

    move-object/from16 v23, v6

    move-object/from16 v6, p3

    :try_start_6
    invoke-virtual/range {v1 .. v6}, Lorg/apache/http/impl/execchain/MainClientExec;->establishRoute(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/protocol/HttpClientContext;)V
    :try_end_6
    .catch Lorg/apache/http/impl/execchain/TunnelRefusedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Lorg/apache/http/HttpException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_d

    goto/16 :goto_8

    :catch_4
    move-exception v0

    move-object v1, v0

    :try_start_7
    iget-object v2, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v1}, Lorg/apache/http/impl/execchain/TunnelRefusedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {v1}, Lorg/apache/http/impl/execchain/TunnelRefusedException;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v2
    :try_end_7
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Lorg/apache/http/HttpException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_d

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    goto/16 :goto_10

    :catch_5
    move-exception v0

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v15

    goto/16 :goto_13

    :catch_6
    move-exception v0

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v15

    goto/16 :goto_14

    :catch_7
    move-exception v0

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v15

    goto/16 :goto_15

    :catch_8
    move-exception v0

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v15

    goto/16 :goto_16

    :catch_9
    move-exception v0

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object v1, v0

    move-object v11, v3

    move-object/from16 v22, v15

    goto/16 :goto_13

    :catch_a
    move-exception v0

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object v1, v0

    move-object v11, v3

    move-object/from16 v22, v15

    goto/16 :goto_14

    :catch_b
    move-exception v0

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object v1, v0

    move-object v11, v3

    move-object/from16 v22, v15

    goto/16 :goto_15

    :catch_c
    move-exception v0

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object v1, v0

    move-object v11, v3

    move-object/from16 v22, v15

    goto/16 :goto_16

    :cond_d
    move/from16 v21, v2

    move-object/from16 v22, v3

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v25, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v25

    :goto_8
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/client/config/RequestConfig;->getSocketTimeout()I

    move-result v1
    :try_end_8
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_8 .. :try_end_8} :catch_34
    .catch Lorg/apache/http/HttpException; {:try_start_8 .. :try_end_8} :catch_33
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_31

    move v6, v1

    if-ltz v6, :cond_e

    :try_start_9
    invoke-interface {v8, v6}, Lorg/apache/http/HttpClientConnection;->setSocketTimeout(I)V

    goto :goto_9

    :catch_d
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    goto/16 :goto_13

    :catch_e
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    goto/16 :goto_14

    :catch_f
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    goto/16 :goto_15

    :catch_10
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    goto/16 :goto_16

    :cond_e
    :goto_9
    if-eqz v11, :cond_10

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_a

    :cond_f
    new-instance v1, Lorg/apache/http/impl/execchain/RequestAbortedException;

    invoke-direct {v1, v15}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Lorg/apache/http/HttpException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_d

    :cond_10
    :goto_a
    :try_start_a
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1
    :try_end_a
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_a .. :try_end_a} :catch_34
    .catch Lorg/apache/http/HttpException; {:try_start_a .. :try_end_a} :catch_33
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_31

    if-eqz v1, :cond_11

    :try_start_b
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_b
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_b .. :try_end_b} :catch_10
    .catch Lorg/apache/http/HttpException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_d

    :cond_11
    :try_start_c
    invoke-virtual {v9, v13}, Lorg/apache/http/client/methods/HttpRequestWrapper;->containsHeader(Ljava/lang/String;)Z

    move-result v1
    :try_end_c
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_c .. :try_end_c} :catch_34
    .catch Lorg/apache/http/HttpException; {:try_start_c .. :try_end_c} :catch_33
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_31

    if-nez v1, :cond_13

    :try_start_d
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target auth state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lorg/apache/http/auth/AuthState;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_12
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    invoke-virtual {v1, v9, v14, v10}, Lorg/apache/http/impl/auth/HttpAuthenticator;->generateAuthResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_d
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_d .. :try_end_d} :catch_10
    .catch Lorg/apache/http/HttpException; {:try_start_d .. :try_end_d} :catch_f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_d

    :cond_13
    :try_start_e
    invoke-virtual {v9, v12}, Lorg/apache/http/client/methods/HttpRequestWrapper;->containsHeader(Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_e .. :try_end_e} :catch_34
    .catch Lorg/apache/http/HttpException; {:try_start_e .. :try_end_e} :catch_33
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_31

    if-nez v1, :cond_15

    :try_start_f
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1
    :try_end_f
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_f .. :try_end_f} :catch_18
    .catch Lorg/apache/http/HttpException; {:try_start_f .. :try_end_f} :catch_17
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_15

    if-eqz v1, :cond_14

    :try_start_10
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy auth state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/auth/AuthState;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_10
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_10 .. :try_end_10} :catch_10
    .catch Lorg/apache/http/HttpException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_d

    :cond_14
    :try_start_11
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;
    :try_end_11
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_11 .. :try_end_11} :catch_18
    .catch Lorg/apache/http/HttpException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_15

    move-object/from16 v5, v19

    :try_start_12
    invoke-virtual {v1, v9, v5, v10}, Lorg/apache/http/impl/auth/HttpAuthenticator;->generateAuthResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_12
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_12 .. :try_end_12} :catch_14
    .catch Lorg/apache/http/HttpException; {:try_start_12 .. :try_end_12} :catch_13
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_11

    goto :goto_b

    :catch_11
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v5

    goto/16 :goto_13

    :catch_12
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v5

    goto/16 :goto_14

    :catch_13
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v5

    goto/16 :goto_15

    :catch_14
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v5

    goto/16 :goto_16

    :catch_15
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    goto/16 :goto_13

    :catch_16
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    goto/16 :goto_14

    :catch_17
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    goto/16 :goto_15

    :catch_18
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    goto/16 :goto_16

    :cond_15
    move-object/from16 v5, v19

    :goto_b
    :try_start_13
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    invoke-virtual {v1, v9, v8, v10}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    move-object v4, v1

    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    invoke-interface {v1, v4, v10}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v1
    :try_end_13
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_13 .. :try_end_13} :catch_30
    .catch Lorg/apache/http/HttpException; {:try_start_13 .. :try_end_13} :catch_2f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2e
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_2d

    if-eqz v1, :cond_18

    :try_start_14
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    invoke-interface {v1, v4, v10}, Lorg/apache/http/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide v1

    iget-object v3, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3
    :try_end_14
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_14 .. :try_end_14} :catch_20
    .catch Lorg/apache/http/HttpException; {:try_start_14 .. :try_end_14} :catch_1f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1d

    if-eqz v3, :cond_17

    cmp-long v3, v1, v17

    if-lez v3, :cond_16

    :try_start_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v4

    const-string v4, "for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    :cond_16
    move-object/from16 v19, v4

    const-string v3, "indefinitely"

    :goto_c
    iget-object v4, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    move/from16 v24, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Connection can be kept alive "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_15
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_15 .. :try_end_15} :catch_14
    .catch Lorg/apache/http/HttpException; {:try_start_15 .. :try_end_15} :catch_13
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_11

    goto :goto_d

    :cond_17
    move-object/from16 v19, v4

    move/from16 v24, v6

    :goto_d
    :try_start_16
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_16
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_16 .. :try_end_16} :catch_20
    .catch Lorg/apache/http/HttpException; {:try_start_16 .. :try_end_16} :catch_1f
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1d

    move-object/from16 v11, v22

    :try_start_17
    invoke-virtual {v11, v1, v2, v3}, Lorg/apache/http/impl/execchain/ConnectionHolder;->setValidFor(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v11}, Lorg/apache/http/impl/execchain/ConnectionHolder;->markReusable()V
    :try_end_17
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_17 .. :try_end_17} :catch_1c
    .catch Lorg/apache/http/HttpException; {:try_start_17 .. :try_end_17} :catch_1b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_19

    goto :goto_e

    :catch_19
    move-exception v0

    move-object v1, v0

    move-object/from16 v22, v5

    goto/16 :goto_13

    :catch_1a
    move-exception v0

    move-object v1, v0

    move-object/from16 v22, v5

    goto/16 :goto_14

    :catch_1b
    move-exception v0

    move-object v1, v0

    move-object/from16 v22, v5

    goto/16 :goto_15

    :catch_1c
    move-exception v0

    move-object v1, v0

    move-object/from16 v22, v5

    goto/16 :goto_16

    :catch_1d
    move-exception v0

    move-object/from16 v11, v22

    move-object v1, v0

    move-object/from16 v22, v5

    goto/16 :goto_13

    :catch_1e
    move-exception v0

    move-object/from16 v11, v22

    move-object v1, v0

    move-object/from16 v22, v5

    goto/16 :goto_14

    :catch_1f
    move-exception v0

    move-object/from16 v11, v22

    move-object v1, v0

    move-object/from16 v22, v5

    goto/16 :goto_15

    :catch_20
    move-exception v0

    move-object/from16 v11, v22

    move-object v1, v0

    move-object/from16 v22, v5

    goto/16 :goto_16

    :cond_18
    move-object/from16 v19, v4

    move/from16 v24, v6

    move-object/from16 v11, v22

    :try_start_18
    invoke-virtual {v11}, Lorg/apache/http/impl/execchain/ConnectionHolder;->markNonReusable()V
    :try_end_18
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_18 .. :try_end_18} :catch_2c
    .catch Lorg/apache/http/HttpException; {:try_start_18 .. :try_end_18} :catch_2b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_29

    :goto_e
    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v5

    move-object/from16 v4, p1

    move-object/from16 v22, v5

    move-object/from16 v5, v19

    move-object/from16 v6, p3

    :try_start_19
    invoke-direct/range {v1 .. v6}, Lorg/apache/http/impl/execchain/MainClientExec;->needAuthentication(Lorg/apache/http/auth/AuthState;Lorg/apache/http/auth/AuthState;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/protocol/HttpClientContext;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-virtual {v11}, Lorg/apache/http/impl/execchain/ConnectionHolder;->isReusable()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    goto :goto_f

    :cond_19
    invoke-interface {v8}, Lorg/apache/http/HttpClientConnection;->close()V

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/auth/AuthState;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v2

    sget-object v3, Lorg/apache/http/auth/AuthProtocolState;->SUCCESS:Lorg/apache/http/auth/AuthProtocolState;

    if-ne v2, v3, :cond_1a

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Resetting proxy auth state"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/auth/AuthState;->reset()V

    :cond_1a
    invoke-virtual {v14}, Lorg/apache/http/auth/AuthState;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v2

    sget-object v3, Lorg/apache/http/auth/AuthProtocolState;->SUCCESS:Lorg/apache/http/auth/AuthProtocolState;

    if-ne v2, v3, :cond_1b

    invoke-virtual {v14}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v14}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Resetting target auth state"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    invoke-virtual {v14}, Lorg/apache/http/auth/AuthState;->reset()V

    :cond_1b
    :goto_f
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v2

    invoke-interface {v2, v13}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual {v9, v13}, Lorg/apache/http/client/methods/HttpRequestWrapper;->removeHeaders(Ljava/lang/String;)V

    :cond_1c
    invoke-interface {v2, v12}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-virtual {v9, v12}, Lorg/apache/http/client/methods/HttpRequestWrapper;->removeHeaders(Ljava/lang/String;)V

    :cond_1d
    add-int/lit8 v2, v21, 0x1

    move-object v4, v8

    move-object v3, v11

    move-object/from16 v19, v15

    move-object/from16 v5, v20

    move-object/from16 v15, v22

    move-object/from16 v6, v23

    move-object/from16 v8, p1

    move-object/from16 v11, p4

    goto/16 :goto_5

    :cond_1e
    move-object/from16 v2, v19

    :goto_10
    if-nez v23, :cond_1f

    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    invoke-interface {v1, v10}, Lorg/apache/http/client/UserTokenHandler;->getUserToken(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v1
    :try_end_19
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_19 .. :try_end_19} :catch_24
    .catch Lorg/apache/http/HttpException; {:try_start_19 .. :try_end_19} :catch_23
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_22
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_21

    move-object v6, v1

    :try_start_1a
    const-string v1, "http.user-token"

    invoke-virtual {v10, v1, v6}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_11

    :catch_21
    move-exception v0

    move-object v1, v0

    goto/16 :goto_13

    :catch_22
    move-exception v0

    move-object v1, v0

    goto/16 :goto_14

    :catch_23
    move-exception v0

    move-object v1, v0

    goto/16 :goto_15

    :catch_24
    move-exception v0

    move-object v1, v0

    goto/16 :goto_16

    :cond_1f
    move-object/from16 v6, v23

    :goto_11
    if-eqz v6, :cond_20

    invoke-virtual {v11, v6}, Lorg/apache/http/impl/execchain/ConnectionHolder;->setState(Ljava/lang/Object;)V

    :cond_20
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_12

    :cond_21
    new-instance v3, Lorg/apache/http/impl/execchain/HttpResponseProxy;

    invoke-direct {v3, v2, v11}, Lorg/apache/http/impl/execchain/HttpResponseProxy;-><init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)V

    return-object v3

    :cond_22
    :goto_12
    invoke-virtual {v11}, Lorg/apache/http/impl/execchain/ConnectionHolder;->releaseConnection()V

    new-instance v3, Lorg/apache/http/impl/execchain/HttpResponseProxy;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lorg/apache/http/impl/execchain/HttpResponseProxy;-><init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)V
    :try_end_1a
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_1a .. :try_end_1a} :catch_28
    .catch Lorg/apache/http/HttpException; {:try_start_1a .. :try_end_1a} :catch_27
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_25

    return-object v3

    :catch_25
    move-exception v0

    move-object v1, v0

    move-object/from16 v23, v6

    goto/16 :goto_13

    :catch_26
    move-exception v0

    move-object v1, v0

    move-object/from16 v23, v6

    goto/16 :goto_14

    :catch_27
    move-exception v0

    move-object v1, v0

    move-object/from16 v23, v6

    goto/16 :goto_15

    :catch_28
    move-exception v0

    move-object v1, v0

    move-object/from16 v23, v6

    goto/16 :goto_16

    :catch_29
    move-exception v0

    move-object/from16 v22, v5

    move-object v1, v0

    goto/16 :goto_13

    :catch_2a
    move-exception v0

    move-object/from16 v22, v5

    move-object v1, v0

    goto/16 :goto_14

    :catch_2b
    move-exception v0

    move-object/from16 v22, v5

    move-object v1, v0

    goto/16 :goto_15

    :catch_2c
    move-exception v0

    move-object/from16 v22, v5

    move-object v1, v0

    goto/16 :goto_16

    :catch_2d
    move-exception v0

    move-object/from16 v11, v22

    move-object/from16 v22, v5

    move-object v1, v0

    goto :goto_13

    :catch_2e
    move-exception v0

    move-object/from16 v11, v22

    move-object/from16 v22, v5

    move-object v1, v0

    goto :goto_14

    :catch_2f
    move-exception v0

    move-object/from16 v11, v22

    move-object/from16 v22, v5

    move-object v1, v0

    goto/16 :goto_15

    :catch_30
    move-exception v0

    move-object/from16 v11, v22

    move-object/from16 v22, v5

    move-object v1, v0

    goto/16 :goto_16

    :catch_31
    move-exception v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    move-object v1, v0

    goto :goto_13

    :catch_32
    move-exception v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    move-object v1, v0

    goto :goto_14

    :catch_33
    move-exception v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    move-object v1, v0

    goto :goto_15

    :catch_34
    move-exception v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    move-object v1, v0

    goto :goto_16

    :catch_35
    move-exception v0

    move-object v11, v3

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v15

    move-object v1, v0

    :goto_13
    invoke-virtual {v11}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    throw v1

    :catch_36
    move-exception v0

    move-object v11, v3

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v15

    move-object v1, v0

    :goto_14
    invoke-virtual {v11}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    throw v1

    :catch_37
    move-exception v0

    move-object v11, v3

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v15

    move-object v1, v0

    :goto_15
    invoke-virtual {v11}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    throw v1

    :catch_38
    move-exception v0

    move-object v11, v3

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v15

    move-object v1, v0

    :goto_16
    new-instance v2, Ljava/io/InterruptedIOException;

    const-string v3, "Connection has been shut down"

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :catch_39
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v15

    move-object/from16 v15, v19

    goto :goto_17

    :catch_3a
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v15

    const/4 v4, 0x0

    move-object v1, v4

    move-object v2, v1

    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_23

    move-object v3, v1

    :cond_23
    new-instance v4, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string v5, "Request execution failed"

    invoke-direct {v4, v5, v3}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_3b
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v15

    move-object v15, v4

    :goto_17
    const/4 v4, 0x0

    move-object v1, v4

    move-object v2, v1

    move-object v1, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    new-instance v3, Lorg/apache/http/impl/execchain/RequestAbortedException;

    invoke-direct {v3, v15, v1}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19

    :goto_18
    throw v3

    :goto_19
    goto :goto_18
.end method
