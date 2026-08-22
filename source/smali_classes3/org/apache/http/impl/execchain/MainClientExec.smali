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
    .param p1, "requestExecutor"    # Lorg/apache/http/protocol/HttpRequestExecutor;
    .param p2, "connManager"    # Lorg/apache/http/conn/HttpClientConnectionManager;
    .param p3, "reuseStrategy"    # Lorg/apache/http/ConnectionReuseStrategy;
    .param p4, "keepAliveStrategy"    # Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .param p5, "targetAuthStrategy"    # Lorg/apache/http/client/AuthenticationStrategy;
    .param p6, "proxyAuthStrategy"    # Lorg/apache/http/client/AuthenticationStrategy;
    .param p7, "userTokenHandler"    # Lorg/apache/http/client/UserTokenHandler;

    .line 143
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

    .line 146
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/UserTokenHandler;)V
    .locals 1
    .param p1, "requestExecutor"    # Lorg/apache/http/protocol/HttpRequestExecutor;
    .param p2, "connManager"    # Lorg/apache/http/conn/HttpClientConnectionManager;
    .param p3, "reuseStrategy"    # Lorg/apache/http/ConnectionReuseStrategy;
    .param p4, "keepAliveStrategy"    # Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .param p5, "proxyHttpProcessor"    # Lorg/apache/http/protocol/HttpProcessor;
    .param p6, "targetAuthStrategy"    # Lorg/apache/http/client/AuthenticationStrategy;
    .param p7, "proxyAuthStrategy"    # Lorg/apache/http/client/AuthenticationStrategy;
    .param p8, "userTokenHandler"    # Lorg/apache/http/client/UserTokenHandler;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    .line 115
    const-string v0, "HTTP request executor"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    const-string v0, "Client connection manager"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    const-string v0, "Connection reuse strategy"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    const-string v0, "Connection keep alive strategy"

    invoke-static {p4, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    const-string v0, "Proxy HTTP processor"

    invoke-static {p5, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    const-string v0, "Target authentication strategy"

    invoke-static {p6, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    const-string v0, "Proxy authentication strategy"

    invoke-static {p7, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    const-string v0, "User token handler"

    invoke-static {p8, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    new-instance v0, Lorg/apache/http/impl/auth/HttpAuthenticator;

    invoke-direct {v0}, Lorg/apache/http/impl/auth/HttpAuthenticator;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    .line 124
    new-instance v0, Lorg/apache/http/conn/routing/BasicRouteDirector;

    invoke-direct {v0}, Lorg/apache/http/conn/routing/BasicRouteDirector;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->routeDirector:Lorg/apache/http/conn/routing/HttpRouteDirector;

    .line 125
    iput-object p1, p0, Lorg/apache/http/impl/execchain/MainClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    .line 126
    iput-object p2, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    .line 127
    iput-object p3, p0, Lorg/apache/http/impl/execchain/MainClientExec;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 128
    iput-object p4, p0, Lorg/apache/http/impl/execchain/MainClientExec;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    .line 129
    iput-object p5, p0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyHttpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    .line 130
    iput-object p6, p0, Lorg/apache/http/impl/execchain/MainClientExec;->targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    .line 131
    iput-object p7, p0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    .line 132
    iput-object p8, p0, Lorg/apache/http/impl/execchain/MainClientExec;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    .line 133
    return-void
.end method

.method private createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/client/protocol/HttpClientContext;)Z
    .locals 2
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "hop"    # I
    .param p3, "context"    # Lorg/apache/http/client/protocol/HttpClientContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 541
    new-instance v0, Lorg/apache/http/HttpException;

    const-string v1, "Proxy chains are not supported."

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createTunnelToTarget(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/protocol/HttpClientContext;)Z
    .locals 18
    .param p1, "proxyAuthState"    # Lorg/apache/http/auth/AuthState;
    .param p2, "managedConn"    # Lorg/apache/http/HttpClientConnection;
    .param p3, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p4, "request"    # Lorg/apache/http/HttpRequest;
    .param p5, "context"    # Lorg/apache/http/client/protocol/HttpClientContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v8, p5

    invoke-virtual/range {p5 .. p5}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v9

    .line 449
    .local v9, "config":Lorg/apache/http/client/config/RequestConfig;
    invoke-virtual {v9}, Lorg/apache/http/client/config/RequestConfig;->getConnectTimeout()I

    move-result v10

    .line 451
    .local v10, "timeout":I
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v11

    .line 452
    .local v11, "target":Lorg/apache/http/HttpHost;
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v12

    .line 453
    .local v12, "proxy":Lorg/apache/http/HttpHost;
    const/4 v2, 0x0

    .line 455
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-virtual {v11}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v13

    .line 456
    .local v13, "authority":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/message/BasicHttpRequest;

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/HttpRequest;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v4

    const-string v5, "CONNECT"

    invoke-direct {v3, v5, v13, v4}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    move-object v14, v3

    .line 458
    .local v14, "connect":Lorg/apache/http/HttpRequest;
    iget-object v3, v0, Lorg/apache/http/impl/execchain/MainClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v4, v0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyHttpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-virtual {v3, v14, v4, v8}, Lorg/apache/http/protocol/HttpRequestExecutor;->preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 460
    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_7

    .line 461
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpClientConnection;->isOpen()Z

    move-result v4

    if-nez v4, :cond_1

    .line 462
    iget-object v4, v0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    if-lez v10, :cond_0

    move v3, v10

    :cond_0
    move-object/from16 v15, p3

    invoke-interface {v4, v1, v15, v3, v8}, Lorg/apache/http/conn/HttpClientConnectionManager;->connect(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)V

    goto :goto_1

    .line 461
    :cond_1
    move-object/from16 v15, p3

    .line 469
    :goto_1
    const-string v3, "Proxy-Authorization"

    invoke-interface {v14, v3}, Lorg/apache/http/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 470
    iget-object v3, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    move-object/from16 v7, p1

    invoke-virtual {v3, v14, v7, v8}, Lorg/apache/http/impl/auth/HttpAuthenticator;->generateAuthResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)V

    .line 472
    iget-object v3, v0, Lorg/apache/http/impl/execchain/MainClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    invoke-virtual {v3, v14, v1, v8}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 474
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 475
    .local v5, "status":I
    const/16 v2, 0xc8

    if-lt v5, v2, :cond_6

    .line 480
    invoke-virtual {v9}, Lorg/apache/http/client/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 481
    iget-object v2, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v4, v0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object v3, v12

    move-object/from16 v16, v4

    move-object v4, v6

    move/from16 v17, v5

    .end local v5    # "status":I
    .local v17, "status":I
    move-object/from16 v5, v16

    move-object/from16 v16, v6

    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .local v16, "response":Lorg/apache/http/HttpResponse;
    move-object/from16 v6, p1

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/apache/http/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 483
    iget-object v2, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v5, v0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object v3, v12

    move-object/from16 v4, v16

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/apache/http/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 486
    iget-object v2, v0, Lorg/apache/http/impl/execchain/MainClientExec;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    move-object/from16 v3, v16

    .end local v16    # "response":Lorg/apache/http/HttpResponse;
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v2, v3, v8}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 487
    iget-object v2, v0, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Connection kept alive"

    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 489
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 490
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    .line 491
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    goto :goto_2

    .line 492
    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpClientConnection;->close()V

    .line 494
    :goto_2
    const/4 v2, 0x0

    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .local v2, "response":Lorg/apache/http/HttpResponse;
    goto :goto_4

    .line 483
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .restart local v16    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    move-object/from16 v3, v16

    .end local v16    # "response":Lorg/apache/http/HttpResponse;
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    goto :goto_3

    .line 481
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .restart local v16    # "response":Lorg/apache/http/HttpResponse;
    :cond_4
    move-object/from16 v3, v16

    .end local v16    # "response":Lorg/apache/http/HttpResponse;
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    goto :goto_3

    .line 480
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .end local v17    # "status":I
    .restart local v5    # "status":I
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    :cond_5
    move/from16 v17, v5

    move-object v3, v6

    .line 498
    .end local v5    # "status":I
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    :goto_3
    move-object v2, v3

    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .restart local v2    # "response":Lorg/apache/http/HttpResponse;
    :goto_4
    goto/16 :goto_0

    .line 476
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .restart local v5    # "status":I
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    :cond_6
    move/from16 v17, v5

    move-object v3, v6

    .end local v5    # "status":I
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    .restart local v17    # "status":I
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

    .line 500
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .end local v17    # "status":I
    .restart local v2    # "response":Lorg/apache/http/HttpResponse;
    :cond_7
    move-object/from16 v15, p3

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 502
    .local v4, "status":I
    const/16 v5, 0x12b

    if-le v4, v5, :cond_9

    .line 505
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 506
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_8

    .line 507
    new-instance v5, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v5, v3}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v2, v5}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 510
    :cond_8
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpClientConnection;->close()V

    .line 511
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

    .line 519
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    :cond_9
    return v3
.end method

.method private needAuthentication(Lorg/apache/http/auth/AuthState;Lorg/apache/http/auth/AuthState;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/protocol/HttpClientContext;)Z
    .locals 18
    .param p1, "targetAuthState"    # Lorg/apache/http/auth/AuthState;
    .param p2, "proxyAuthState"    # Lorg/apache/http/auth/AuthState;
    .param p3, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p4, "response"    # Lorg/apache/http/HttpResponse;
    .param p5, "context"    # Lorg/apache/http/client/protocol/HttpClientContext;

    .line 550
    move-object/from16 v0, p0

    invoke-virtual/range {p5 .. p5}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v1

    .line 551
    .local v1, "config":Lorg/apache/http/client/config/RequestConfig;
    invoke-virtual {v1}, Lorg/apache/http/client/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 552
    invoke-virtual/range {p5 .. p5}, Lorg/apache/http/client/protocol/HttpClientContext;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    .line 553
    .local v2, "target":Lorg/apache/http/HttpHost;
    if-nez v2, :cond_0

    .line 554
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    .line 556
    :cond_0
    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    if-gez v3, :cond_1

    .line 557
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

    .line 562
    :cond_1
    iget-object v3, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v6, v0, Lorg/apache/http/impl/execchain/MainClientExec;->targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object v4, v2

    move-object/from16 v5, p4

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lorg/apache/http/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v9

    .line 565
    .local v9, "targetAuthRequested":Z
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v3

    .line 567
    .local v3, "proxy":Lorg/apache/http/HttpHost;
    if-nez v3, :cond_2

    .line 568
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_0

    .line 567
    :cond_2
    move-object/from16 v16, v3

    .line 570
    .end local v3    # "proxy":Lorg/apache/http/HttpHost;
    .local v16, "proxy":Lorg/apache/http/HttpHost;
    :goto_0
    iget-object v10, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v13, v0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object/from16 v11, v16

    move-object/from16 v12, p4

    move-object/from16 v14, p2

    move-object/from16 v15, p5

    invoke-virtual/range {v10 .. v15}, Lorg/apache/http/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v17

    .line 573
    .local v17, "proxyAuthRequested":Z
    if-eqz v9, :cond_3

    .line 574
    iget-object v3, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v6, v0, Lorg/apache/http/impl/execchain/MainClientExec;->targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object v4, v2

    move-object/from16 v5, p4

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lorg/apache/http/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    return v3

    .line 577
    :cond_3
    if-eqz v17, :cond_4

    .line 578
    iget-object v10, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v13, v0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object/from16 v11, v16

    move-object/from16 v12, p4

    move-object/from16 v14, p2

    move-object/from16 v15, p5

    invoke-virtual/range {v10 .. v15}, Lorg/apache/http/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    return v3

    .line 582
    .end local v2    # "target":Lorg/apache/http/HttpHost;
    .end local v9    # "targetAuthRequested":Z
    .end local v16    # "proxy":Lorg/apache/http/HttpHost;
    .end local v17    # "proxyAuthRequested":Z
    :cond_4
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method establishRoute(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/protocol/HttpClientContext;)V
    .locals 10
    .param p1, "proxyAuthState"    # Lorg/apache/http/auth/AuthState;
    .param p2, "managedConn"    # Lorg/apache/http/HttpClientConnection;
    .param p3, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p4, "request"    # Lorg/apache/http/HttpRequest;
    .param p5, "context"    # Lorg/apache/http/client/protocol/HttpClientContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    invoke-virtual {p5}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v0

    .line 370
    .local v0, "config":Lorg/apache/http/client/config/RequestConfig;
    invoke-virtual {v0}, Lorg/apache/http/client/config/RequestConfig;->getConnectTimeout()I

    move-result v1

    .line 371
    .local v1, "timeout":I
    new-instance v2, Lorg/apache/http/conn/routing/RouteTracker;

    invoke-direct {v2, p3}, Lorg/apache/http/conn/routing/RouteTracker;-><init>(Lorg/apache/http/conn/routing/HttpRoute;)V

    .local v2, "tracker":Lorg/apache/http/conn/routing/RouteTracker;
    const/4 v3, 0x0

    .line 374
    :cond_0
    invoke-virtual {v2}, Lorg/apache/http/conn/routing/RouteTracker;->toRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v4

    .line 375
    .local v4, "fact":Lorg/apache/http/conn/routing/HttpRoute;
    iget-object v5, p0, Lorg/apache/http/impl/execchain/MainClientExec;->routeDirector:Lorg/apache/http/conn/routing/HttpRouteDirector;

    invoke-interface {v5, p3, v4}, Lorg/apache/http/conn/routing/HttpRouteDirector;->nextStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I

    move-result v5

    .line 377
    .local v5, "step":I
    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    .line 426
    .local v3, "proxy":Lorg/apache/http/HttpHost;
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

    .line 415
    :pswitch_0
    iget-object v6, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-interface {v6, p2, p3, p5}, Lorg/apache/http/conn/HttpClientConnectionManager;->upgrade(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V

    .line 416
    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->isSecure()Z

    move-result v6

    invoke-virtual {v2, v6}, Lorg/apache/http/conn/routing/RouteTracker;->layerProtocol(Z)V

    .line 417
    goto :goto_1

    .line 408
    :pswitch_1
    invoke-virtual {v4}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 409
    .local v6, "hop":I
    invoke-direct {p0, p3, v6, p5}, Lorg/apache/http/impl/execchain/MainClientExec;->createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/client/protocol/HttpClientContext;)Z

    move-result v7

    .line 410
    .local v7, "secure":Z
    iget-object v8, p0, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    const-string v9, "Tunnel to proxy created."

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 411
    invoke-virtual {p3, v6}, Lorg/apache/http/conn/routing/HttpRoute;->getHopTarget(I)Lorg/apache/http/HttpHost;

    move-result-object v8

    invoke-virtual {v2, v8, v7}, Lorg/apache/http/conn/routing/RouteTracker;->tunnelProxy(Lorg/apache/http/HttpHost;Z)V

    .line 412
    .end local v6    # "hop":I
    .end local v7    # "secure":Z
    goto :goto_1

    .line 397
    :pswitch_2
    invoke-direct/range {p0 .. p5}, Lorg/apache/http/impl/execchain/MainClientExec;->createTunnelToTarget(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/protocol/HttpClientContext;)Z

    move-result v6

    .line 399
    .local v6, "secure":Z
    iget-object v7, p0, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    const-string v8, "Tunnel to target created."

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 400
    invoke-virtual {v2, v6}, Lorg/apache/http/conn/routing/RouteTracker;->tunnelTarget(Z)V

    .line 401
    .end local v6    # "secure":Z
    goto :goto_1

    .line 388
    .end local v3    # "proxy":Lorg/apache/http/HttpHost;
    :pswitch_3
    iget-object v3, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    if-lez v1, :cond_1

    move v7, v1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    invoke-interface {v3, p2, p3, v7, p5}, Lorg/apache/http/conn/HttpClientConnectionManager;->connect(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)V

    .line 393
    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v3

    .line 394
    .restart local v3    # "proxy":Lorg/apache/http/HttpHost;
    invoke-virtual {v2, v3, v6}, Lorg/apache/http/conn/routing/RouteTracker;->connectProxy(Lorg/apache/http/HttpHost;Z)V

    .line 395
    goto :goto_1

    .line 380
    .end local v3    # "proxy":Lorg/apache/http/HttpHost;
    :pswitch_4
    iget-object v7, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    if-lez v1, :cond_2

    move v6, v1

    :cond_2
    invoke-interface {v7, p2, p3, v6, p5}, Lorg/apache/http/conn/HttpClientConnectionManager;->connect(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)V

    .line 385
    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->isSecure()Z

    move-result v6

    invoke-virtual {v2, v6}, Lorg/apache/http/conn/routing/RouteTracker;->connectTarget(Z)V

    .line 386
    goto :goto_1

    .line 423
    .restart local v3    # "proxy":Lorg/apache/http/HttpHost;
    :pswitch_5
    iget-object v6, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-interface {v6, p2, p3, p5}, Lorg/apache/http/conn/HttpClientConnectionManager;->routeComplete(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V

    .line 424
    nop

    .line 430
    .end local v3    # "proxy":Lorg/apache/http/HttpHost;
    .end local v4    # "fact":Lorg/apache/http/conn/routing/HttpRoute;
    :goto_1
    if-gtz v5, :cond_0

    .line 431
    return-void

    .line 420
    .restart local v3    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v4    # "fact":Lorg/apache/http/conn/routing/HttpRoute;
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
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "request"    # Lorg/apache/http/client/methods/HttpRequestWrapper;
    .param p3, "context"    # Lorg/apache/http/client/protocol/HttpClientContext;
    .param p4, "execAware"    # Lorg/apache/http/client/methods/HttpExecutionAware;
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

    .line 154
    const-string v1, "HTTP route"

    invoke-static {v8, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    const-string v1, "HTTP request"

    invoke-static {v9, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    const-string v1, "HTTP context"

    invoke-static {v10, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getTargetAuthState()Lorg/apache/http/auth/AuthState;

    move-result-object v1

    .line 159
    .local v1, "targetAuthState":Lorg/apache/http/auth/AuthState;
    if-nez v1, :cond_0

    .line 160
    new-instance v2, Lorg/apache/http/auth/AuthState;

    invoke-direct {v2}, Lorg/apache/http/auth/AuthState;-><init>()V

    move-object v1, v2

    .line 161
    const-string v2, "http.auth.target-scope"

    invoke-virtual {v10, v2, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v14, v1

    goto :goto_0

    .line 159
    :cond_0
    move-object v14, v1

    .line 163
    .end local v1    # "targetAuthState":Lorg/apache/http/auth/AuthState;
    .local v14, "targetAuthState":Lorg/apache/http/auth/AuthState;
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getProxyAuthState()Lorg/apache/http/auth/AuthState;

    move-result-object v1

    .line 164
    .local v1, "proxyAuthState":Lorg/apache/http/auth/AuthState;
    if-nez v1, :cond_1

    .line 165
    new-instance v2, Lorg/apache/http/auth/AuthState;

    invoke-direct {v2}, Lorg/apache/http/auth/AuthState;-><init>()V

    move-object v1, v2

    .line 166
    const-string v2, "http.auth.proxy-scope"

    invoke-virtual {v10, v2, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v15, v1

    goto :goto_1

    .line 164
    :cond_1
    move-object v15, v1

    .line 169
    .end local v1    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .local v15, "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :goto_1
    instance-of v1, v9, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v1, :cond_2

    .line 170
    move-object v1, v9

    check-cast v1, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-static {v1}, Lorg/apache/http/impl/execchain/RequestEntityProxy;->enhance(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 173
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getUserToken()Ljava/lang/Object;

    move-result-object v6

    .line 175
    .local v6, "userToken":Ljava/lang/Object;
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-interface {v1, v8, v6}, Lorg/apache/http/conn/HttpClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ConnectionRequest;

    move-result-object v5

    .line 176
    .local v5, "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    const-string v4, "Request aborted"

    if-eqz v11, :cond_4

    .line 177
    invoke-interface/range {p4 .. p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 181
    invoke-interface {v11, v5}, Lorg/apache/http/client/methods/HttpExecutionAware;->setCancellable(Lorg/apache/http/concurrent/Cancellable;)V

    goto :goto_2

    .line 178
    :cond_3
    invoke-interface {v5}, Lorg/apache/http/conn/ConnectionRequest;->cancel()Z

    .line 179
    new-instance v1, Lorg/apache/http/impl/execchain/RequestAbortedException;

    invoke-direct {v1, v4}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_4
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v16

    .line 189
    .local v16, "config":Lorg/apache/http/client/config/RequestConfig;
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/client/config/RequestConfig;->getConnectionRequestTimeout()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3a

    .line 190
    .local v1, "timeout":I
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

    .line 200
    .end local v1    # "timeout":I
    .local v4, "managedConn":Lorg/apache/http/HttpClientConnection;
    nop

    .line 202
    const-string v1, "http.connection"

    invoke-virtual {v10, v1, v4}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/client/config/RequestConfig;->isStaleConnectionCheckEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 206
    invoke-interface {v4}, Lorg/apache/http/HttpClientConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 207
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Stale connection check"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 208
    invoke-interface {v4}, Lorg/apache/http/HttpClientConnection;->isStale()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 209
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Stale connection detected"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 210
    invoke-interface {v4}, Lorg/apache/http/HttpClientConnection;->close()V

    .line 215
    :cond_6
    new-instance v1, Lorg/apache/http/impl/execchain/ConnectionHolder;

    iget-object v2, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    iget-object v3, v7, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/impl/execchain/ConnectionHolder;-><init>(Lorg/apache/commons/logging/Log;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/HttpClientConnection;)V

    move-object v3, v1

    .line 217
    .local v3, "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    if-eqz v11, :cond_7

    .line 218
    :try_start_2
    invoke-interface {v11, v3}, Lorg/apache/http/client/methods/HttpExecutionAware;->setCancellable(Lorg/apache/http/concurrent/Cancellable;)V

    goto :goto_4

    .line 354
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v11, v3

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v15

    goto/16 :goto_13

    .line 351
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v11, v3

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v15

    goto/16 :goto_14

    .line 348
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v11, v3

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v15

    goto/16 :goto_15

    .line 343
    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v11, v3

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v15

    goto/16 :goto_16

    .line 222
    :cond_7
    :goto_4
    const/4 v1, 0x1

    move v2, v1

    .line 224
    .local v2, "execCount":I
    :goto_5
    const/4 v1, 0x1

    if-le v2, v1, :cond_9

    invoke-static/range {p2 .. p2}, Lorg/apache/http/impl/execchain/RequestEntityProxy;->isRepeatable(Lorg/apache/http/HttpRequest;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_6

    .line 225
    :cond_8
    new-instance v1, Lorg/apache/http/client/NonRepeatableRequestException;

    const-string v12, "Cannot retry request with a non-repeatable request entity."

    invoke-direct {v1, v12}, Lorg/apache/http/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    .end local v3    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v6    # "userToken":Ljava/lang/Object;
    .end local v14    # "targetAuthState":Lorg/apache/http/auth/AuthState;
    .end local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .end local v16    # "config":Lorg/apache/http/client/config/RequestConfig;
    .end local p1    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local p2    # "request":Lorg/apache/http/client/methods/HttpRequestWrapper;
    .end local p3    # "context":Lorg/apache/http/client/protocol/HttpClientContext;
    .end local p4    # "execAware":Lorg/apache/http/client/methods/HttpExecutionAware;
    throw v1

    .line 229
    .restart local v3    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .restart local v14    # "targetAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v16    # "config":Lorg/apache/http/client/config/RequestConfig;
    .restart local p1    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local p2    # "request":Lorg/apache/http/client/methods/HttpRequestWrapper;
    .restart local p3    # "context":Lorg/apache/http/client/protocol/HttpClientContext;
    .restart local p4    # "execAware":Lorg/apache/http/client/methods/HttpExecutionAware;
    :cond_9
    :goto_6
    if-eqz v11, :cond_b

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_7

    .line 230
    :cond_a
    new-instance v1, Lorg/apache/http/impl/execchain/RequestAbortedException;

    move-object/from16 v12, v19

    invoke-direct {v1, v12}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    .end local v3    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v6    # "userToken":Ljava/lang/Object;
    .end local v14    # "targetAuthState":Lorg/apache/http/auth/AuthState;
    .end local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .end local v16    # "config":Lorg/apache/http/client/config/RequestConfig;
    .end local p1    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local p2    # "request":Lorg/apache/http/client/methods/HttpRequestWrapper;
    .end local p3    # "context":Lorg/apache/http/client/protocol/HttpClientContext;
    .end local p4    # "execAware":Lorg/apache/http/client/methods/HttpExecutionAware;
    throw v1
    :try_end_2
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 233
    .restart local v3    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .restart local v14    # "targetAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v16    # "config":Lorg/apache/http/client/config/RequestConfig;
    .restart local p1    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local p2    # "request":Lorg/apache/http/client/methods/HttpRequestWrapper;
    .restart local p3    # "context":Lorg/apache/http/client/protocol/HttpClientContext;
    .restart local p4    # "execAware":Lorg/apache/http/client/methods/HttpExecutionAware;
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

    .line 234
    :try_start_4
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    move/from16 v21, v2

    .end local v2    # "execCount":I
    .local v21, "execCount":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_9

    move-object/from16 v22, v3

    .end local v3    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .local v22, "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
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

    .line 236
    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v8, v22

    .end local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .local v8, "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    move-object v3, v4

    move-object v8, v4

    move-object/from16 v25, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v25

    .end local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .local v8, "managedConn":Lorg/apache/http/HttpClientConnection;
    .local v19, "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    move-object/from16 v4, p1

    move-object/from16 v20, v5

    .end local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .local v20, "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    move-object/from16 v5, p2

    move-object/from16 v23, v6

    .end local v6    # "userToken":Ljava/lang/Object;
    .local v23, "userToken":Ljava/lang/Object;
    move-object/from16 v6, p3

    :try_start_6
    invoke-virtual/range {v1 .. v6}, Lorg/apache/http/impl/execchain/MainClientExec;->establishRoute(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/protocol/HttpClientContext;)V
    :try_end_6
    .catch Lorg/apache/http/impl/execchain/TunnelRefusedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Lorg/apache/http/HttpException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_d

    .line 243
    goto/16 :goto_8

    .line 237
    :catch_4
    move-exception v0

    move-object v1, v0

    .line 238
    .local v1, "ex":Lorg/apache/http/impl/execchain/TunnelRefusedException;
    :try_start_7
    iget-object v2, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 239
    iget-object v2, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v1}, Lorg/apache/http/impl/execchain/TunnelRefusedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 241
    :cond_c
    invoke-virtual {v1}, Lorg/apache/http/impl/execchain/TunnelRefusedException;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v2
    :try_end_7
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Lorg/apache/http/HttpException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_d

    .line 242
    .local v2, "response":Lorg/apache/http/HttpResponse;
    move-object/from16 v11, v22

    move-object/from16 v22, v19

    goto/16 :goto_10

    .line 354
    .end local v1    # "ex":Lorg/apache/http/impl/execchain/TunnelRefusedException;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .end local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v21    # "execCount":I
    .end local v23    # "userToken":Ljava/lang/Object;
    .restart local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .restart local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :catch_5
    move-exception v0

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v15

    .end local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v6    # "userToken":Ljava/lang/Object;
    .end local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v23    # "userToken":Ljava/lang/Object;
    goto/16 :goto_13

    .line 351
    .end local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .end local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v23    # "userToken":Ljava/lang/Object;
    .restart local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .restart local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :catch_6
    move-exception v0

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v15

    .end local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v6    # "userToken":Ljava/lang/Object;
    .end local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v23    # "userToken":Ljava/lang/Object;
    goto/16 :goto_14

    .line 348
    .end local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .end local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v23    # "userToken":Ljava/lang/Object;
    .restart local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .restart local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :catch_7
    move-exception v0

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v15

    .end local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v6    # "userToken":Ljava/lang/Object;
    .end local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v23    # "userToken":Ljava/lang/Object;
    goto/16 :goto_15

    .line 343
    .end local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .end local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v23    # "userToken":Ljava/lang/Object;
    .restart local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .restart local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :catch_8
    move-exception v0

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v15

    .end local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v6    # "userToken":Ljava/lang/Object;
    .end local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v23    # "userToken":Ljava/lang/Object;
    goto/16 :goto_16

    .line 354
    .end local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .end local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local v23    # "userToken":Ljava/lang/Object;
    .restart local v3    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .restart local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :catch_9
    move-exception v0

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object v1, v0

    move-object v11, v3

    move-object/from16 v22, v15

    .end local v3    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v6    # "userToken":Ljava/lang/Object;
    .end local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v23    # "userToken":Ljava/lang/Object;
    goto/16 :goto_13

    .line 351
    .end local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .end local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local v23    # "userToken":Ljava/lang/Object;
    .restart local v3    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .restart local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :catch_a
    move-exception v0

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object v1, v0

    move-object v11, v3

    move-object/from16 v22, v15

    .end local v3    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v6    # "userToken":Ljava/lang/Object;
    .end local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v23    # "userToken":Ljava/lang/Object;
    goto/16 :goto_14

    .line 348
    .end local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .end local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local v23    # "userToken":Ljava/lang/Object;
    .restart local v3    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .restart local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :catch_b
    move-exception v0

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object v1, v0

    move-object v11, v3

    move-object/from16 v22, v15

    .end local v3    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v6    # "userToken":Ljava/lang/Object;
    .end local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v23    # "userToken":Ljava/lang/Object;
    goto/16 :goto_15

    .line 343
    .end local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .end local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local v23    # "userToken":Ljava/lang/Object;
    .restart local v3    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .restart local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :catch_c
    move-exception v0

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object v1, v0

    move-object v11, v3

    move-object/from16 v22, v15

    .end local v3    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v6    # "userToken":Ljava/lang/Object;
    .end local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v23    # "userToken":Ljava/lang/Object;
    goto/16 :goto_16

    .line 233
    .end local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .end local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local v23    # "userToken":Ljava/lang/Object;
    .local v2, "execCount":I
    .restart local v3    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .restart local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :cond_d
    move/from16 v21, v2

    move-object/from16 v22, v3

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v25, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v25

    .line 245
    .end local v2    # "execCount":I
    .end local v3    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v6    # "userToken":Ljava/lang/Object;
    .end local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v21    # "execCount":I
    .restart local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v23    # "userToken":Ljava/lang/Object;
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

    .line 246
    .local v6, "timeout":I
    if-ltz v6, :cond_e

    .line 247
    :try_start_9
    invoke-interface {v8, v6}, Lorg/apache/http/HttpClientConnection;->setSocketTimeout(I)V

    goto :goto_9

    .line 354
    .end local v6    # "timeout":I
    .end local v21    # "execCount":I
    :catch_d
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    goto/16 :goto_13

    .line 351
    :catch_e
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    goto/16 :goto_14

    .line 348
    :catch_f
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    goto/16 :goto_15

    .line 343
    :catch_10
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    goto/16 :goto_16

    .line 250
    .restart local v6    # "timeout":I
    .restart local v21    # "execCount":I
    :cond_e
    :goto_9
    if-eqz v11, :cond_10

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_a

    .line 251
    :cond_f
    new-instance v1, Lorg/apache/http/impl/execchain/RequestAbortedException;

    invoke-direct {v1, v15}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    .end local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v14    # "targetAuthState":Lorg/apache/http/auth/AuthState;
    .end local v16    # "config":Lorg/apache/http/client/config/RequestConfig;
    .end local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .end local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local v23    # "userToken":Ljava/lang/Object;
    .end local p1    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local p2    # "request":Lorg/apache/http/client/methods/HttpRequestWrapper;
    .end local p3    # "context":Lorg/apache/http/client/protocol/HttpClientContext;
    .end local p4    # "execAware":Lorg/apache/http/client/methods/HttpExecutionAware;
    throw v1
    :try_end_9
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Lorg/apache/http/HttpException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_d

    .line 254
    .restart local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v14    # "targetAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v16    # "config":Lorg/apache/http/client/config/RequestConfig;
    .restart local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v23    # "userToken":Ljava/lang/Object;
    .restart local p1    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local p2    # "request":Lorg/apache/http/client/methods/HttpRequestWrapper;
    .restart local p3    # "context":Lorg/apache/http/client/protocol/HttpClientContext;
    .restart local p4    # "execAware":Lorg/apache/http/client/methods/HttpExecutionAware;
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

    .line 255
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

    .line 258
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

    .line 259
    :try_start_d
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 260
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

    .line 262
    :cond_12
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    invoke-virtual {v1, v9, v14, v10}, Lorg/apache/http/impl/auth/HttpAuthenticator;->generateAuthResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_d
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_d .. :try_end_d} :catch_10
    .catch Lorg/apache/http/HttpException; {:try_start_d .. :try_end_d} :catch_f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_d

    .line 264
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

    .line 265
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1
    :try_end_f
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_f .. :try_end_f} :catch_18
    .catch Lorg/apache/http/HttpException; {:try_start_f .. :try_end_f} :catch_17
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_15

    if-eqz v1, :cond_14

    .line 266
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

    .line 268
    :cond_14
    :try_start_11
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;
    :try_end_11
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_11 .. :try_end_11} :catch_18
    .catch Lorg/apache/http/HttpException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_15

    move-object/from16 v5, v19

    .end local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .local v5, "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :try_start_12
    invoke-virtual {v1, v9, v5, v10}, Lorg/apache/http/impl/auth/HttpAuthenticator;->generateAuthResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_12
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_12 .. :try_end_12} :catch_14
    .catch Lorg/apache/http/HttpException; {:try_start_12 .. :try_end_12} :catch_13
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_11

    goto :goto_b

    .line 354
    .end local v6    # "timeout":I
    .end local v21    # "execCount":I
    :catch_11
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v5

    goto/16 :goto_13

    .line 351
    :catch_12
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v5

    goto/16 :goto_14

    .line 348
    :catch_13
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v5

    goto/16 :goto_15

    .line 343
    :catch_14
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v5

    goto/16 :goto_16

    .line 354
    .end local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :catch_15
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    .end local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    goto/16 :goto_13

    .line 351
    .end local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :catch_16
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    .end local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    goto/16 :goto_14

    .line 348
    .end local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :catch_17
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    .end local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    goto/16 :goto_15

    .line 343
    .end local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :catch_18
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    .end local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    goto/16 :goto_16

    .line 264
    .end local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v6    # "timeout":I
    .restart local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v21    # "execCount":I
    :cond_15
    move-object/from16 v5, v19

    .line 271
    .end local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :goto_b
    :try_start_13
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    invoke-virtual {v1, v9, v8, v10}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    move-object v4, v1

    .line 274
    .local v4, "response":Lorg/apache/http/HttpResponse;
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    invoke-interface {v1, v4, v10}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v1
    :try_end_13
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_13 .. :try_end_13} :catch_30
    .catch Lorg/apache/http/HttpException; {:try_start_13 .. :try_end_13} :catch_2f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2e
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_2d

    if-eqz v1, :cond_18

    .line 276
    :try_start_14
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    invoke-interface {v1, v4, v10}, Lorg/apache/http/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide v1

    .line 277
    .local v1, "duration":J
    iget-object v3, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3
    :try_end_14
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_14 .. :try_end_14} :catch_20
    .catch Lorg/apache/http/HttpException; {:try_start_14 .. :try_end_14} :catch_1f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1d

    if-eqz v3, :cond_17

    .line 279
    cmp-long v3, v1, v17

    if-lez v3, :cond_16

    .line 280
    :try_start_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v4

    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .local v19, "response":Lorg/apache/http/HttpResponse;
    const-string v4, "for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "s":Ljava/lang/String;
    goto :goto_c

    .line 282
    .end local v3    # "s":Ljava/lang/String;
    .end local v19    # "response":Lorg/apache/http/HttpResponse;
    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    :cond_16
    move-object/from16 v19, v4

    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .restart local v19    # "response":Lorg/apache/http/HttpResponse;
    const-string v3, "indefinitely"

    .line 284
    .restart local v3    # "s":Ljava/lang/String;
    :goto_c
    iget-object v4, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    move/from16 v24, v6

    .end local v6    # "timeout":I
    .local v24, "timeout":I
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

    .line 277
    .end local v3    # "s":Ljava/lang/String;
    .end local v19    # "response":Lorg/apache/http/HttpResponse;
    .end local v24    # "timeout":I
    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    .restart local v6    # "timeout":I
    :cond_17
    move-object/from16 v19, v4

    move/from16 v24, v6

    .line 286
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "timeout":I
    .restart local v19    # "response":Lorg/apache/http/HttpResponse;
    .restart local v24    # "timeout":I
    :goto_d
    :try_start_16
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_16
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_16 .. :try_end_16} :catch_20
    .catch Lorg/apache/http/HttpException; {:try_start_16 .. :try_end_16} :catch_1f
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1d

    move-object/from16 v11, v22

    .end local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .local v11, "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    :try_start_17
    invoke-virtual {v11, v1, v2, v3}, Lorg/apache/http/impl/execchain/ConnectionHolder;->setValidFor(JLjava/util/concurrent/TimeUnit;)V

    .line 287
    invoke-virtual {v11}, Lorg/apache/http/impl/execchain/ConnectionHolder;->markReusable()V
    :try_end_17
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_17 .. :try_end_17} :catch_1c
    .catch Lorg/apache/http/HttpException; {:try_start_17 .. :try_end_17} :catch_1b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_19

    .line 288
    .end local v1    # "duration":J
    goto :goto_e

    .line 354
    .end local v19    # "response":Lorg/apache/http/HttpResponse;
    .end local v21    # "execCount":I
    .end local v24    # "timeout":I
    :catch_19
    move-exception v0

    move-object v1, v0

    move-object/from16 v22, v5

    goto/16 :goto_13

    .line 351
    :catch_1a
    move-exception v0

    move-object v1, v0

    move-object/from16 v22, v5

    goto/16 :goto_14

    .line 348
    :catch_1b
    move-exception v0

    move-object v1, v0

    move-object/from16 v22, v5

    goto/16 :goto_15

    .line 343
    :catch_1c
    move-exception v0

    move-object v1, v0

    move-object/from16 v22, v5

    goto/16 :goto_16

    .line 354
    .end local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    :catch_1d
    move-exception v0

    move-object/from16 v11, v22

    move-object v1, v0

    move-object/from16 v22, v5

    .end local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    goto/16 :goto_13

    .line 351
    .end local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    :catch_1e
    move-exception v0

    move-object/from16 v11, v22

    move-object v1, v0

    move-object/from16 v22, v5

    .end local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    goto/16 :goto_14

    .line 348
    .end local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    :catch_1f
    move-exception v0

    move-object/from16 v11, v22

    move-object v1, v0

    move-object/from16 v22, v5

    .end local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    goto/16 :goto_15

    .line 343
    .end local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    :catch_20
    move-exception v0

    move-object/from16 v11, v22

    move-object v1, v0

    move-object/from16 v22, v5

    .end local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    goto/16 :goto_16

    .line 289
    .end local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    .restart local v6    # "timeout":I
    .restart local v21    # "execCount":I
    .restart local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    :cond_18
    move-object/from16 v19, v4

    move/from16 v24, v6

    move-object/from16 v11, v22

    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "timeout":I
    .end local v22    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v19    # "response":Lorg/apache/http/HttpResponse;
    .restart local v24    # "timeout":I
    :try_start_18
    invoke-virtual {v11}, Lorg/apache/http/impl/execchain/ConnectionHolder;->markNonReusable()V
    :try_end_18
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_18 .. :try_end_18} :catch_2c
    .catch Lorg/apache/http/HttpException; {:try_start_18 .. :try_end_18} :catch_2b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_29

    .line 292
    :goto_e
    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v5

    move-object/from16 v4, p1

    move-object/from16 v22, v5

    .end local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .local v22, "proxyAuthState":Lorg/apache/http/auth/AuthState;
    move-object/from16 v5, v19

    move-object/from16 v6, p3

    :try_start_19
    invoke-direct/range {v1 .. v6}, Lorg/apache/http/impl/execchain/MainClientExec;->needAuthentication(Lorg/apache/http/auth/AuthState;Lorg/apache/http/auth/AuthState;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/protocol/HttpClientContext;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 295
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 296
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v11}, Lorg/apache/http/impl/execchain/ConnectionHolder;->isReusable()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 297
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    goto :goto_f

    .line 299
    :cond_19
    invoke-interface {v8}, Lorg/apache/http/HttpClientConnection;->close()V

    .line 300
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

    .line 303
    iget-object v2, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Resetting proxy auth state"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 304
    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/auth/AuthState;->reset()V

    .line 306
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

    .line 309
    iget-object v2, v7, Lorg/apache/http/impl/execchain/MainClientExec;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Resetting target auth state"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 310
    invoke-virtual {v14}, Lorg/apache/http/auth/AuthState;->reset()V

    .line 314
    :cond_1b
    :goto_f
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v2

    .line 315
    .local v2, "original":Lorg/apache/http/HttpRequest;
    invoke-interface {v2, v13}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 316
    invoke-virtual {v9, v13}, Lorg/apache/http/client/methods/HttpRequestWrapper;->removeHeaders(Ljava/lang/String;)V

    .line 318
    :cond_1c
    invoke-interface {v2, v12}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 319
    invoke-virtual {v9, v12}, Lorg/apache/http/client/methods/HttpRequestWrapper;->removeHeaders(Ljava/lang/String;)V

    .line 222
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "original":Lorg/apache/http/HttpRequest;
    .end local v24    # "timeout":I
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

    .end local v21    # "execCount":I
    .local v2, "execCount":I
    goto/16 :goto_5

    .line 292
    .end local v2    # "execCount":I
    .restart local v21    # "execCount":I
    .restart local v24    # "timeout":I
    :cond_1e
    move-object/from16 v2, v19

    .line 326
    .end local v19    # "response":Lorg/apache/http/HttpResponse;
    .end local v21    # "execCount":I
    .end local v24    # "timeout":I
    .local v2, "response":Lorg/apache/http/HttpResponse;
    :goto_10
    if-nez v23, :cond_1f

    .line 327
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    invoke-interface {v1, v10}, Lorg/apache/http/client/UserTokenHandler;->getUserToken(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v1
    :try_end_19
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_19 .. :try_end_19} :catch_24
    .catch Lorg/apache/http/HttpException; {:try_start_19 .. :try_end_19} :catch_23
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_22
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_21

    move-object v6, v1

    .line 328
    .end local v23    # "userToken":Ljava/lang/Object;
    .local v6, "userToken":Ljava/lang/Object;
    :try_start_1a
    const-string v1, "http.user-token"

    invoke-virtual {v10, v1, v6}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_11

    .line 354
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "userToken":Ljava/lang/Object;
    .restart local v23    # "userToken":Ljava/lang/Object;
    :catch_21
    move-exception v0

    move-object v1, v0

    goto/16 :goto_13

    .line 351
    :catch_22
    move-exception v0

    move-object v1, v0

    goto/16 :goto_14

    .line 348
    :catch_23
    move-exception v0

    move-object v1, v0

    goto/16 :goto_15

    .line 343
    :catch_24
    move-exception v0

    move-object v1, v0

    goto/16 :goto_16

    .line 326
    .restart local v2    # "response":Lorg/apache/http/HttpResponse;
    :cond_1f
    move-object/from16 v6, v23

    .line 330
    .end local v23    # "userToken":Ljava/lang/Object;
    .restart local v6    # "userToken":Ljava/lang/Object;
    :goto_11
    if-eqz v6, :cond_20

    .line 331
    invoke-virtual {v11, v6}, Lorg/apache/http/impl/execchain/ConnectionHolder;->setState(Ljava/lang/Object;)V

    .line 335
    :cond_20
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 336
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_22

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_12

    .line 341
    :cond_21
    new-instance v3, Lorg/apache/http/impl/execchain/HttpResponseProxy;

    invoke-direct {v3, v2, v11}, Lorg/apache/http/impl/execchain/HttpResponseProxy;-><init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)V

    return-object v3

    .line 338
    :cond_22
    :goto_12
    invoke-virtual {v11}, Lorg/apache/http/impl/execchain/ConnectionHolder;->releaseConnection()V

    .line 339
    new-instance v3, Lorg/apache/http/impl/execchain/HttpResponseProxy;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lorg/apache/http/impl/execchain/HttpResponseProxy;-><init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)V
    :try_end_1a
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_1a .. :try_end_1a} :catch_28
    .catch Lorg/apache/http/HttpException; {:try_start_1a .. :try_end_1a} :catch_27
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_25

    return-object v3

    .line 354
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    :catch_25
    move-exception v0

    move-object v1, v0

    move-object/from16 v23, v6

    goto/16 :goto_13

    .line 351
    :catch_26
    move-exception v0

    move-object v1, v0

    move-object/from16 v23, v6

    goto/16 :goto_14

    .line 348
    :catch_27
    move-exception v0

    move-object v1, v0

    move-object/from16 v23, v6

    goto/16 :goto_15

    .line 343
    :catch_28
    move-exception v0

    move-object v1, v0

    move-object/from16 v23, v6

    goto/16 :goto_16

    .line 354
    .end local v6    # "userToken":Ljava/lang/Object;
    .end local v22    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v23    # "userToken":Ljava/lang/Object;
    :catch_29
    move-exception v0

    move-object/from16 v22, v5

    move-object v1, v0

    .end local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v22    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    goto/16 :goto_13

    .line 351
    .end local v22    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :catch_2a
    move-exception v0

    move-object/from16 v22, v5

    move-object v1, v0

    .end local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v22    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    goto/16 :goto_14

    .line 348
    .end local v22    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :catch_2b
    move-exception v0

    move-object/from16 v22, v5

    move-object v1, v0

    .end local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v22    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    goto/16 :goto_15

    .line 343
    .end local v22    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :catch_2c
    move-exception v0

    move-object/from16 v22, v5

    move-object v1, v0

    .end local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v22    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    goto/16 :goto_16

    .line 354
    .end local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .local v22, "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    :catch_2d
    move-exception v0

    move-object/from16 v11, v22

    move-object/from16 v22, v5

    move-object v1, v0

    .end local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .local v22, "proxyAuthState":Lorg/apache/http/auth/AuthState;
    goto :goto_13

    .line 351
    .end local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .local v22, "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    :catch_2e
    move-exception v0

    move-object/from16 v11, v22

    move-object/from16 v22, v5

    move-object v1, v0

    .end local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .local v22, "proxyAuthState":Lorg/apache/http/auth/AuthState;
    goto :goto_14

    .line 348
    .end local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .local v22, "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    :catch_2f
    move-exception v0

    move-object/from16 v11, v22

    move-object/from16 v22, v5

    move-object v1, v0

    .end local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .local v22, "proxyAuthState":Lorg/apache/http/auth/AuthState;
    goto/16 :goto_15

    .line 343
    .end local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .local v22, "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    :catch_30
    move-exception v0

    move-object/from16 v11, v22

    move-object/from16 v22, v5

    move-object v1, v0

    .end local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .local v22, "proxyAuthState":Lorg/apache/http/auth/AuthState;
    goto/16 :goto_16

    .line 354
    .end local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .local v19, "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .local v22, "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    :catch_31
    move-exception v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    move-object v1, v0

    .end local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .local v22, "proxyAuthState":Lorg/apache/http/auth/AuthState;
    goto :goto_13

    .line 351
    .end local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .local v22, "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    :catch_32
    move-exception v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    move-object v1, v0

    .end local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .local v22, "proxyAuthState":Lorg/apache/http/auth/AuthState;
    goto :goto_14

    .line 348
    .end local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .local v22, "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    :catch_33
    move-exception v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    move-object v1, v0

    .end local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .local v22, "proxyAuthState":Lorg/apache/http/auth/AuthState;
    goto :goto_15

    .line 343
    .end local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .local v22, "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    :catch_34
    move-exception v0

    move-object/from16 v11, v22

    move-object/from16 v22, v19

    move-object v1, v0

    .end local v19    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .local v22, "proxyAuthState":Lorg/apache/http/auth/AuthState;
    goto :goto_16

    .line 354
    .end local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v22    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .end local v23    # "userToken":Ljava/lang/Object;
    .local v3, "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .local v4, "managedConn":Lorg/apache/http/HttpClientConnection;
    .local v5, "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .restart local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :catch_35
    move-exception v0

    move-object v11, v3

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v15

    move-object v1, v0

    .line 355
    .end local v3    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v6    # "userToken":Ljava/lang/Object;
    .end local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .local v1, "ex":Ljava/lang/RuntimeException;
    .restart local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v22    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v23    # "userToken":Ljava/lang/Object;
    :goto_13
    invoke-virtual {v11}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 356
    throw v1

    .line 351
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .end local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v22    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .end local v23    # "userToken":Ljava/lang/Object;
    .restart local v3    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .restart local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :catch_36
    move-exception v0

    move-object v11, v3

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v15

    move-object v1, v0

    .line 352
    .end local v3    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v6    # "userToken":Ljava/lang/Object;
    .end local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .local v1, "ex":Ljava/io/IOException;
    .restart local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v22    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v23    # "userToken":Ljava/lang/Object;
    :goto_14
    invoke-virtual {v11}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 353
    throw v1

    .line 348
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v22    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .end local v23    # "userToken":Ljava/lang/Object;
    .restart local v3    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .restart local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :catch_37
    move-exception v0

    move-object v11, v3

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v15

    move-object v1, v0

    .line 349
    .end local v3    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v6    # "userToken":Ljava/lang/Object;
    .end local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .local v1, "ex":Lorg/apache/http/HttpException;
    .restart local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v22    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v23    # "userToken":Ljava/lang/Object;
    :goto_15
    invoke-virtual {v11}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 350
    throw v1

    .line 343
    .end local v1    # "ex":Lorg/apache/http/HttpException;
    .end local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v22    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .end local v23    # "userToken":Ljava/lang/Object;
    .restart local v3    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .restart local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :catch_38
    move-exception v0

    move-object v11, v3

    move-object v8, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v15

    move-object v1, v0

    .line 344
    .end local v3    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local v4    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v6    # "userToken":Ljava/lang/Object;
    .end local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .local v1, "ex":Lorg/apache/http/impl/conn/ConnectionShutdownException;
    .restart local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v22    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v23    # "userToken":Ljava/lang/Object;
    :goto_16
    new-instance v2, Ljava/io/InterruptedIOException;

    const-string v3, "Connection has been shut down"

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 346
    .local v2, "ioex":Ljava/io/InterruptedIOException;
    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 347
    throw v2

    .line 191
    .end local v1    # "ex":Lorg/apache/http/impl/conn/ConnectionShutdownException;
    .end local v2    # "ioex":Ljava/io/InterruptedIOException;
    .end local v8    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v11    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v22    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .end local v23    # "userToken":Ljava/lang/Object;
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .restart local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :catch_39
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v15

    move-object/from16 v15, v19

    goto :goto_17

    .line 194
    :catch_3a
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v15

    const/4 v4, 0x0

    .end local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v6    # "userToken":Ljava/lang/Object;
    .end local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v22    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v23    # "userToken":Ljava/lang/Object;
    move-object v1, v4

    move-object v2, v1

    move-object v1, v0

    .line 195
    .local v1, "ex":Ljava/util/concurrent/ExecutionException;
    .local v2, "managedConn":Lorg/apache/http/HttpClientConnection;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 196
    .local v3, "cause":Ljava/lang/Throwable;
    if-nez v3, :cond_23

    .line 197
    move-object v3, v1

    .line 199
    :cond_23
    new-instance v4, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string v5, "Request execution failed"

    invoke-direct {v4, v5, v3}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 191
    .end local v1    # "ex":Ljava/util/concurrent/ExecutionException;
    .end local v2    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v3    # "cause":Ljava/lang/Throwable;
    .end local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v22    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .end local v23    # "userToken":Ljava/lang/Object;
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .restart local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :catch_3b
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v15

    move-object v15, v4

    :goto_17
    const/4 v4, 0x0

    .end local v5    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v6    # "userToken":Ljava/lang/Object;
    .end local v15    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v20    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v22    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .restart local v23    # "userToken":Ljava/lang/Object;
    move-object v1, v4

    move-object v2, v1

    move-object v1, v0

    .line 192
    .local v1, "interrupted":Ljava/lang/InterruptedException;
    .restart local v2    # "managedConn":Lorg/apache/http/HttpClientConnection;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 193
    new-instance v3, Lorg/apache/http/impl/execchain/RequestAbortedException;

    invoke-direct {v3, v15, v1}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19

    :goto_18
    throw v3

    :goto_19
    goto :goto_18
.end method
