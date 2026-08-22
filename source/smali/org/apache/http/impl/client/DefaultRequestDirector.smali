.class public Lorg/apache/http/impl/client/DefaultRequestDirector;
.super Ljava/lang/Object;
.source "DefaultRequestDirector.java"

# interfaces
.implements Lorg/apache/http/client/RequestDirector;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final authenticator:Lorg/apache/http/impl/client/HttpAuthenticator;

.field protected final connManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private execCount:I

.field protected final httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

.field protected final keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

.field private final log:Lorg/apache/commons/logging/Log;

.field protected managedConn:Lorg/apache/http/conn/ManagedClientConnection;

.field private final maxRedirects:I

.field protected final params:Lorg/apache/http/params/HttpParams;

.field protected final proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final proxyAuthState:Lorg/apache/http/auth/AuthState;

.field protected final proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

.field private redirectCount:I

.field protected final redirectHandler:Lorg/apache/http/client/RedirectHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

.field protected final requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

.field protected final retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

.field protected final reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

.field protected final routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

.field protected final targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final targetAuthState:Lorg/apache/http/auth/AuthState;

.field protected final targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

.field protected final userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

.field private virtualHost:Lorg/apache/http/HttpHost;


# direct methods
.method public constructor <init>(Lorg/apache/commons/logging/Log;Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectStrategy;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V
    .locals 16
    .param p1, "log"    # Lorg/apache/commons/logging/Log;
    .param p2, "requestExec"    # Lorg/apache/http/protocol/HttpRequestExecutor;
    .param p3, "conman"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p4, "reustrat"    # Lorg/apache/http/ConnectionReuseStrategy;
    .param p5, "kastrat"    # Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .param p6, "rouplan"    # Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .param p7, "httpProcessor"    # Lorg/apache/http/protocol/HttpProcessor;
    .param p8, "retryHandler"    # Lorg/apache/http/client/HttpRequestRetryHandler;
    .param p9, "redirectStrategy"    # Lorg/apache/http/client/RedirectStrategy;
    .param p10, "targetAuthHandler"    # Lorg/apache/http/client/AuthenticationHandler;
    .param p11, "proxyAuthHandler"    # Lorg/apache/http/client/AuthenticationHandler;
    .param p12, "userTokenHandler"    # Lorg/apache/http/client/UserTokenHandler;
    .param p13, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    const-class v0, Lorg/apache/http/impl/client/DefaultRequestDirector;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v11, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 v0, p10

    invoke-direct {v11, v0}, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;-><init>(Lorg/apache/http/client/AuthenticationHandler;)V

    new-instance v12, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 v15, p11

    invoke-direct {v12, v15}, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;-><init>(Lorg/apache/http/client/AuthenticationHandler;)V

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lorg/apache/http/impl/client/DefaultRequestDirector;-><init>(Lorg/apache/commons/logging/Log;Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V

    .line 251
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/logging/Log;Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V
    .locals 16
    .param p1, "log"    # Lorg/apache/commons/logging/Log;
    .param p2, "requestExec"    # Lorg/apache/http/protocol/HttpRequestExecutor;
    .param p3, "conman"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p4, "reustrat"    # Lorg/apache/http/ConnectionReuseStrategy;
    .param p5, "kastrat"    # Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .param p6, "rouplan"    # Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .param p7, "httpProcessor"    # Lorg/apache/http/protocol/HttpProcessor;
    .param p8, "retryHandler"    # Lorg/apache/http/client/HttpRequestRetryHandler;
    .param p9, "redirectStrategy"    # Lorg/apache/http/client/RedirectStrategy;
    .param p10, "targetAuthStrategy"    # Lorg/apache/http/client/AuthenticationStrategy;
    .param p11, "proxyAuthStrategy"    # Lorg/apache/http/client/AuthenticationStrategy;
    .param p12, "userTokenHandler"    # Lorg/apache/http/client/UserTokenHandler;
    .param p13, "params"    # Lorg/apache/http/params/HttpParams;

    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 271
    const-string v14, "Log"

    invoke-static {v1, v14}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 272
    const-string v14, "Request executor"

    invoke-static {v2, v14}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 273
    const-string v14, "Client connection manager"

    invoke-static {v3, v14}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    const-string v14, "Connection reuse strategy"

    invoke-static {v4, v14}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    const-string v14, "Connection keep alive strategy"

    invoke-static {v5, v14}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    const-string v14, "Route planner"

    invoke-static {v6, v14}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    const-string v14, "HTTP protocol processor"

    invoke-static {v7, v14}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    const-string v14, "HTTP request retry handler"

    invoke-static {v8, v14}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    const-string v14, "Redirect strategy"

    invoke-static {v9, v14}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    const-string v14, "Target authentication strategy"

    invoke-static {v10, v14}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    const-string v14, "Proxy authentication strategy"

    invoke-static {v11, v14}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 282
    const-string v14, "User token handler"

    invoke-static {v12, v14}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 283
    const-string v14, "HTTP parameters"

    invoke-static {v13, v14}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 284
    iput-object v1, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    .line 285
    new-instance v14, Lorg/apache/http/impl/client/HttpAuthenticator;

    invoke-direct {v14, v1}, Lorg/apache/http/impl/client/HttpAuthenticator;-><init>(Lorg/apache/commons/logging/Log;)V

    iput-object v14, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->authenticator:Lorg/apache/http/impl/client/HttpAuthenticator;

    .line 286
    iput-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    .line 287
    iput-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 288
    iput-object v4, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 289
    iput-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    .line 290
    iput-object v6, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    .line 291
    iput-object v7, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    .line 292
    iput-object v8, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    .line 293
    iput-object v9, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

    .line 294
    iput-object v10, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    .line 295
    iput-object v11, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    .line 296
    iput-object v12, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    .line 297
    iput-object v13, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    .line 299
    instance-of v14, v9, Lorg/apache/http/impl/client/DefaultRedirectStrategyAdaptor;

    const/4 v15, 0x0

    if-eqz v14, :cond_0

    .line 300
    move-object v14, v9

    check-cast v14, Lorg/apache/http/impl/client/DefaultRedirectStrategyAdaptor;

    invoke-virtual {v14}, Lorg/apache/http/impl/client/DefaultRedirectStrategyAdaptor;->getHandler()Lorg/apache/http/client/RedirectHandler;

    move-result-object v14

    iput-object v14, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    goto :goto_0

    .line 302
    :cond_0
    iput-object v15, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    .line 304
    :goto_0
    instance-of v14, v10, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;

    if-eqz v14, :cond_1

    .line 305
    move-object v14, v10

    check-cast v14, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;

    invoke-virtual {v14}, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;->getHandler()Lorg/apache/http/client/AuthenticationHandler;

    move-result-object v14

    iput-object v14, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    goto :goto_1

    .line 307
    :cond_1
    iput-object v15, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    .line 309
    :goto_1
    instance-of v14, v11, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;

    if-eqz v14, :cond_2

    .line 310
    move-object v14, v11

    check-cast v14, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;

    invoke-virtual {v14}, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;->getHandler()Lorg/apache/http/client/AuthenticationHandler;

    move-result-object v14

    iput-object v14, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    goto :goto_2

    .line 312
    :cond_2
    iput-object v15, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    .line 315
    :goto_2
    iput-object v15, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 317
    const/4 v14, 0x0

    iput v14, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->execCount:I

    .line 318
    iput v14, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    .line 319
    new-instance v14, Lorg/apache/http/auth/AuthState;

    invoke-direct {v14}, Lorg/apache/http/auth/AuthState;-><init>()V

    iput-object v14, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    .line 320
    new-instance v14, Lorg/apache/http/auth/AuthState;

    invoke-direct {v14}, Lorg/apache/http/auth/AuthState;-><init>()V

    iput-object v14, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    .line 321
    iget-object v14, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    const/16 v15, 0x64

    const-string v1, "http.protocol.max-redirects"

    invoke-interface {v14, v1, v15}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    .line 322
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V
    .locals 16
    .param p1, "requestExec"    # Lorg/apache/http/protocol/HttpRequestExecutor;
    .param p2, "conman"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p3, "reustrat"    # Lorg/apache/http/ConnectionReuseStrategy;
    .param p4, "kastrat"    # Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .param p5, "rouplan"    # Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .param p6, "httpProcessor"    # Lorg/apache/http/protocol/HttpProcessor;
    .param p7, "retryHandler"    # Lorg/apache/http/client/HttpRequestRetryHandler;
    .param p8, "redirectHandler"    # Lorg/apache/http/client/RedirectHandler;
    .param p9, "targetAuthHandler"    # Lorg/apache/http/client/AuthenticationHandler;
    .param p10, "proxyAuthHandler"    # Lorg/apache/http/client/AuthenticationHandler;
    .param p11, "userTokenHandler"    # Lorg/apache/http/client/UserTokenHandler;
    .param p12, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    const-class v0, Lorg/apache/http/impl/client/DefaultRequestDirector;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v10, Lorg/apache/http/impl/client/DefaultRedirectStrategyAdaptor;

    move-object/from16 v0, p8

    invoke-direct {v10, v0}, Lorg/apache/http/impl/client/DefaultRedirectStrategyAdaptor;-><init>(Lorg/apache/http/client/RedirectHandler;)V

    new-instance v11, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 v15, p9

    invoke-direct {v11, v15}, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;-><init>(Lorg/apache/http/client/AuthenticationHandler;)V

    new-instance v12, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 v14, p10

    invoke-direct {v12, v14}, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;-><init>(Lorg/apache/http/client/AuthenticationHandler;)V

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v1 .. v14}, Lorg/apache/http/impl/client/DefaultRequestDirector;-><init>(Lorg/apache/commons/logging/Log;Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V

    .line 226
    return-void
.end method

.method private abortConnection()V
    .locals 4

    .line 1128
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 1129
    .local v0, "mcc":Lorg/apache/http/conn/ManagedClientConnection;
    if-eqz v0, :cond_1

    .line 1132
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 1134
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->abortConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    goto :goto_0

    .line 1135
    :catch_0
    move-exception v1

    .line 1136
    .local v1, "ex":Ljava/io/IOException;
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1137
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1142
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1145
    goto :goto_1

    .line 1143
    :catch_1
    move-exception v1

    .line 1144
    .local v1, "ignored":Ljava/io/IOException;
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Error releasing connection"

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1147
    .end local v1    # "ignored":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void
.end method

.method private tryConnect(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 7
    .param p1, "req"    # Lorg/apache/http/impl/client/RoutedRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    .line 602
    .local v0, "route":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v1

    .line 604
    .local v1, "wrapper":Lorg/apache/http/HttpRequest;
    const/4 v2, 0x0

    .line 606
    .local v2, "connectCount":I
    :goto_0
    const-string v3, "http.request"

    invoke-interface {p2, v3, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 608
    add-int/lit8 v2, v2, 0x1

    .line 610
    :try_start_0
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v3}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 611
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v3, v0, p2, v4}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    goto :goto_1

    .line 613
    :cond_0
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v4}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v4

    invoke-interface {v3, v4}, Lorg/apache/http/conn/ManagedClientConnection;->setSocketTimeout(I)V

    .line 615
    :goto_1
    invoke-virtual {p0, v0, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->establishRoute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    nop

    .line 639
    return-void

    .line 617
    :catch_0
    move-exception v3

    .line 619
    .local v3, "ex":Ljava/io/IOException;
    :try_start_1
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v4}, Lorg/apache/http/conn/ManagedClientConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 621
    goto :goto_2

    .line 620
    :catch_1
    move-exception v4

    .line 622
    :goto_2
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-interface {v4, v3, v2, p2}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 623
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 624
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "I/O exception ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") caught when connecting to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 629
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 630
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 632
    :cond_1
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrying connect to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 637
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_2
    goto/16 :goto_0

    .line 635
    .restart local v3    # "ex":Ljava/io/IOException;
    :cond_3
    goto :goto_4

    :goto_3
    throw v3

    :goto_4
    goto :goto_3
.end method

.method private tryExecute(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 8
    .param p1, "req"    # Lorg/apache/http/impl/client/RoutedRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v0

    .line 647
    .local v0, "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v1

    .line 648
    .local v1, "route":Lorg/apache/http/conn/routing/HttpRoute;
    const/4 v2, 0x0

    .line 650
    .local v2, "response":Lorg/apache/http/HttpResponse;
    const/4 v3, 0x0

    .line 653
    .local v3, "retryReason":Ljava/lang/Exception;
    :goto_0
    iget v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->execCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->execCount:I

    .line 655
    invoke-virtual {v0}, Lorg/apache/http/impl/client/RequestWrapper;->incrementExecCount()V

    .line 656
    invoke-virtual {v0}, Lorg/apache/http/impl/client/RequestWrapper;->isRepeatable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 657
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Cannot retry non-repeatable request"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 658
    if-eqz v3, :cond_0

    .line 659
    new-instance v4, Lorg/apache/http/client/NonRepeatableRequestException;

    const-string v5, "Cannot retry request with a non-repeatable request entity.  The cause lists the reason the original request failed."

    invoke-direct {v4, v5, v3}, Lorg/apache/http/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 663
    :cond_0
    new-instance v4, Lorg/apache/http/client/NonRepeatableRequestException;

    const-string v5, "Cannot retry request with a non-repeatable request entity."

    invoke-direct {v4, v5}, Lorg/apache/http/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 669
    :cond_1
    :try_start_0
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v4}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v4

    if-nez v4, :cond_3

    .line 672
    invoke-virtual {v1}, Lorg/apache/http/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 673
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Reopening the direct connection."

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 674
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v4, v1, p2, v5}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    goto :goto_1

    .line 677
    :cond_2
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Proxied connection. Need to start over."

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 678
    goto :goto_2

    .line 682
    :cond_3
    :goto_1
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 683
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->execCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to execute request"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 685
    :cond_4
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-virtual {v4, v0, v5, p2}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 686
    nop

    .line 721
    :goto_2
    return-object v2

    .line 688
    :catch_0
    move-exception v4

    .line 689
    .local v4, "ex":Ljava/io/IOException;
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Closing the connection."

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 691
    :try_start_1
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 693
    goto :goto_3

    .line 692
    :catch_1
    move-exception v5

    .line 694
    :goto_3
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/RequestWrapper;->getExecCount()I

    move-result v6

    invoke-interface {v5, v4, v6, p2}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 695
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 696
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "I/O exception ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") caught when processing request to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 702
    :cond_5
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 703
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 705
    :cond_6
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 706
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retrying request to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 708
    :cond_7
    move-object v3, v4

    .line 719
    .end local v4    # "ex":Ljava/io/IOException;
    goto/16 :goto_0

    .line 710
    .restart local v4    # "ex":Ljava/io/IOException;
    :cond_8
    instance-of v5, v4, Lorg/apache/http/NoHttpResponseException;

    if-eqz v5, :cond_9

    .line 711
    new-instance v5, Lorg/apache/http/NoHttpResponseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " failed to respond"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/http/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    .line 713
    .local v5, "updatedex":Lorg/apache/http/NoHttpResponseException;
    invoke-virtual {v4}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/http/NoHttpResponseException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 714
    throw v5

    .line 716
    .end local v5    # "updatedex":Lorg/apache/http/NoHttpResponseException;
    :cond_9
    goto :goto_5

    :goto_4
    throw v4

    :goto_5
    goto :goto_4
.end method

.method private wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;
    .locals 2
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .line 327
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    .line 328
    new-instance v0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    move-object v1, p1

    check-cast v1, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    return-object v0

    .line 331
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V

    return-object v0
.end method


# virtual methods
.method protected createConnectRequest(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpRequest;
    .locals 8
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 988
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 990
    .local v0, "target":Lorg/apache/http/HttpHost;
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 991
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    .line 992
    .local v2, "port":I
    if-gez v2, :cond_0

    .line 993
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v3

    .line 995
    .local v3, "scheme":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v3}, Lorg/apache/http/conn/scheme/Scheme;->getDefaultPort()I

    move-result v2

    .line 998
    .end local v3    # "scheme":Lorg/apache/http/conn/scheme/Scheme;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 999
    .local v3, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1001
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1004
    .local v4, "authority":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v5}, Lorg/apache/http/params/HttpProtocolParams;->getVersion(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/ProtocolVersion;

    move-result-object v5

    .line 1005
    .local v5, "ver":Lorg/apache/http/ProtocolVersion;
    new-instance v6, Lorg/apache/http/message/BasicHttpRequest;

    const-string v7, "CONNECT"

    invoke-direct {v6, v7, v4, v5}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    .line 1008
    .local v6, "req":Lorg/apache/http/HttpRequest;
    return-object v6
.end method

.method protected createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 2
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "hop"    # I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 968
    new-instance v0, Lorg/apache/http/HttpException;

    const-string v1, "Proxy chains are not supported."

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createTunnelToTarget(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 11
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 856
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v6

    .line 857
    .local v6, "proxy":Lorg/apache/http/HttpHost;
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v7

    .line 858
    .local v7, "target":Lorg/apache/http/HttpHost;
    const/4 v0, 0x0

    .line 861
    .local v0, "response":Lorg/apache/http/HttpResponse;
    :goto_0
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 862
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1, p1, p2, v2}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 865
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createConnectRequest(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpRequest;

    move-result-object v8

    .line 866
    .local v8, "connect":Lorg/apache/http/HttpRequest;
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v8, v1}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 869
    const-string v1, "http.target_host"

    invoke-interface {p2, v1, v7}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 870
    const-string v1, "http.route"

    invoke-interface {p2, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 871
    const-string v1, "http.proxy_host"

    invoke-interface {p2, v1, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 872
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    const-string v2, "http.connection"

    invoke-interface {p2, v2, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 873
    const-string v1, "http.request"

    invoke-interface {p2, v1, v8}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 875
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-virtual {v1, v8, v2, p2}, Lorg/apache/http/protocol/HttpRequestExecutor;->preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 877
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-virtual {v1, v8, v2, p2}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 879
    .end local v0    # "response":Lorg/apache/http/HttpResponse;
    .local v9, "response":Lorg/apache/http/HttpResponse;
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v9, v0}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 880
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-virtual {v0, v9, v1, p2}, Lorg/apache/http/protocol/HttpRequestExecutor;->postProcess(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 882
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 883
    .local v10, "status":I
    const/16 v0, 0xc8

    if-lt v10, v0, :cond_6

    .line 888
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0}, Lorg/apache/http/client/params/HttpClientParams;->isAuthenticating(Lorg/apache/http/params/HttpParams;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 889
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->authenticator:Lorg/apache/http/impl/client/HttpAuthenticator;

    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object v1, v6

    move-object v2, v9

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/http/impl/client/HttpAuthenticator;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 891
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->authenticator:Lorg/apache/http/impl/client/HttpAuthenticator;

    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object v1, v6

    move-object v2, v9

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/http/impl/client/HttpAuthenticator;->authenticate(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 894
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    invoke-interface {v0, v9, p2}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 895
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Connection kept alive"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 897
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 898
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    .line 899
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    goto :goto_1

    .line 900
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    goto :goto_1

    .line 911
    .end local v8    # "connect":Lorg/apache/http/HttpRequest;
    .end local v10    # "status":I
    :cond_2
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 913
    .local v0, "status":I
    const/16 v1, 0x12b

    if-le v0, v1, :cond_4

    .line 916
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 917
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_3

    .line 918
    new-instance v2, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v2, v1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v9, v2}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 921
    :cond_3
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 922
    new-instance v2, Lorg/apache/http/impl/client/TunnelRefusedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CONNECT refused by proxy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v9}, Lorg/apache/http/impl/client/TunnelRefusedException;-><init>(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V

    throw v2

    .line 926
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    :cond_4
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 932
    const/4 v1, 0x0

    return v1

    .line 909
    .end local v0    # "status":I
    :cond_5
    :goto_1
    move-object v0, v9

    goto/16 :goto_0

    .line 884
    .restart local v8    # "connect":Lorg/apache/http/HttpRequest;
    .restart local v10    # "status":I
    :cond_6
    new-instance v0, Lorg/apache/http/HttpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected response to CONNECT request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method protected determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;
    .locals 3
    .param p1, "targetHost"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 762
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.default-host"

    invoke-interface {v1, v2}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpHost;

    :goto_0
    invoke-interface {v0, v1, p2, p3}, Lorg/apache/http/conn/routing/HttpRoutePlanner;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    return-object v0
.end method

.method protected establishRoute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    .locals 8
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 781
    new-instance v0, Lorg/apache/http/conn/routing/BasicRouteDirector;

    invoke-direct {v0}, Lorg/apache/http/conn/routing/BasicRouteDirector;-><init>()V

    .line 784
    .local v0, "rowdy":Lorg/apache/http/conn/routing/HttpRouteDirector;
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1}, Lorg/apache/http/conn/ManagedClientConnection;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v1

    .line 785
    .local v1, "fact":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-interface {v0, p1, v1}, Lorg/apache/http/conn/routing/HttpRouteDirector;->nextStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I

    move-result v2

    .line 787
    .local v2, "step":I
    packed-switch v2, :pswitch_data_0

    .line 824
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown step indicator "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " from RouteDirector."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 814
    :pswitch_0
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v3, p2, v4}, Lorg/apache/http/conn/ManagedClientConnection;->layerProtocol(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 815
    goto :goto_0

    .line 805
    :pswitch_1
    invoke-virtual {v1}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 806
    .local v3, "hop":I
    invoke-virtual {p0, p1, v3, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v4

    .line 807
    .local v4, "secure":Z
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Tunnel to proxy created."

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 808
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-virtual {p1, v3}, Lorg/apache/http/conn/routing/HttpRoute;->getHopTarget(I)Lorg/apache/http/HttpHost;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v5, v6, v4, v7}, Lorg/apache/http/conn/ManagedClientConnection;->tunnelProxy(Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    .line 810
    .end local v3    # "hop":I
    .end local v4    # "secure":Z
    goto :goto_0

    .line 795
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createTunnelToTarget(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    .line 796
    .local v3, "secure":Z
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Tunnel to target created."

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 797
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v4, v3, v5}, Lorg/apache/http/conn/ManagedClientConnection;->tunnelTarget(ZLorg/apache/http/params/HttpParams;)V

    .line 798
    .end local v3    # "secure":Z
    goto :goto_0

    .line 791
    :pswitch_3
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v3, p1, p2, v4}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 792
    goto :goto_0

    .line 822
    :pswitch_4
    nop

    .line 828
    .end local v1    # "fact":Lorg/apache/http/conn/routing/HttpRoute;
    :goto_0
    if-gtz v2, :cond_0

    .line 830
    return-void

    .line 818
    .restart local v1    # "fact":Lorg/apache/http/conn/routing/HttpRoute;
    :pswitch_5
    new-instance v3, Lorg/apache/http/HttpException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to establish route: planned = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; current = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v3

    :goto_2
    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 24
    .param p1, "targetHost"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const-string v3, "http.user-token"

    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    const-string v5, "http.auth.target-scope"

    invoke-interface {v2, v5, v4}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 374
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    const-string v5, "http.auth.proxy-scope"

    invoke-interface {v2, v5, v4}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 376
    move-object/from16 v4, p1

    .line 378
    .local v4, "target":Lorg/apache/http/HttpHost;
    move-object/from16 v5, p2

    .line 379
    .local v5, "orig":Lorg/apache/http/HttpRequest;
    invoke-direct {v1, v5}, Lorg/apache/http/impl/client/DefaultRequestDirector;->wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v6

    .line 380
    .local v6, "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    iget-object v7, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v6, v7}, Lorg/apache/http/impl/client/RequestWrapper;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 381
    invoke-virtual {v1, v4, v6, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v7

    .line 383
    .local v7, "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-virtual {v6}, Lorg/apache/http/impl/client/RequestWrapper;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    const-string v9, "http.virtual-host"

    invoke-interface {v8, v9}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/http/HttpHost;

    iput-object v8, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->virtualHost:Lorg/apache/http/HttpHost;

    .line 386
    iget-object v8, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->virtualHost:Lorg/apache/http/HttpHost;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 387
    if-eqz v4, :cond_0

    move-object v8, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v8

    .line 388
    .local v8, "host":Lorg/apache/http/HttpHost;
    :goto_0
    invoke-virtual {v8}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v10

    .line 389
    .local v10, "port":I
    if-eq v10, v9, :cond_1

    .line 390
    new-instance v9, Lorg/apache/http/HttpHost;

    iget-object v11, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->virtualHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v11}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->virtualHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v12}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v11, v10, v12}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v9, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->virtualHost:Lorg/apache/http/HttpHost;

    .line 394
    .end local v8    # "host":Lorg/apache/http/HttpHost;
    .end local v10    # "port":I
    :cond_1
    new-instance v8, Lorg/apache/http/impl/client/RoutedRequest;

    invoke-direct {v8, v6, v7}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 396
    .local v8, "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    const/4 v9, 0x0

    .line 397
    .local v9, "reuse":Z
    const/4 v10, 0x0

    .line 399
    .local v10, "done":Z
    const/4 v11, 0x0

    .line 400
    .local v11, "response":Lorg/apache/http/HttpResponse;
    :goto_1
    if-nez v10, :cond_18

    .line 406
    :try_start_0
    invoke-virtual {v8}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v12

    .line 407
    .local v12, "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual {v8}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v13

    .line 408
    .local v13, "route":Lorg/apache/http/conn/routing/HttpRoute;
    const/4 v11, 0x0

    .line 411
    invoke-interface {v2, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 414
    .local v14, "userToken":Ljava/lang/Object;
    iget-object v15, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;
    :try_end_0
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_0 .. :try_end_0} :catch_32
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_31
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_30
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2f

    if-nez v15, :cond_5

    .line 415
    :try_start_1
    iget-object v15, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v15, v13, v14}, Lorg/apache/http/conn/ClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;

    move-result-object v15
    :try_end_1
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_a

    .line 417
    .local v15, "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    move-object/from16 v16, v4

    .end local v4    # "target":Lorg/apache/http/HttpHost;
    .local v16, "target":Lorg/apache/http/HttpHost;
    :try_start_2
    instance-of v4, v5, Lorg/apache/http/client/methods/AbortableHttpRequest;
    :try_end_2
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6

    if-eqz v4, :cond_2

    .line 418
    :try_start_3
    move-object v4, v5

    check-cast v4, Lorg/apache/http/client/methods/AbortableHttpRequest;

    invoke-interface {v4, v15}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setConnectionRequest(Lorg/apache/http/conn/ClientConnectionRequest;)V
    :try_end_3
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 589
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v13    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v14    # "userToken":Ljava/lang/Object;
    .end local v15    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v19, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v20, v10

    goto/16 :goto_10

    .line 586
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object/from16 v19, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v20, v10

    goto/16 :goto_11

    .line 583
    :catch_2
    move-exception v0

    move-object v3, v0

    move-object/from16 v19, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v20, v10

    goto/16 :goto_12

    .line 578
    :catch_3
    move-exception v0

    move-object v3, v0

    move-object/from16 v19, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v20, v10

    goto/16 :goto_13

    .line 421
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v13    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v14    # "userToken":Ljava/lang/Object;
    .restart local v15    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    :cond_2
    :goto_2
    :try_start_4
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v4}, Lorg/apache/http/client/params/HttpClientParams;->getConnectionManagerTimeout(Lorg/apache/http/params/HttpParams;)J

    move-result-wide v17
    :try_end_4
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6

    move-wide/from16 v19, v17

    .line 423
    .local v19, "timeout":J
    :try_start_5
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Lorg/apache/http/HttpException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-wide/from16 v6, v19

    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v19    # "timeout":J
    .local v6, "timeout":J
    .local v17, "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .local v18, "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    :try_start_6
    invoke-interface {v15, v6, v7, v4}, Lorg/apache/http/conn/ClientConnectionRequest;->getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;

    move-result-object v4

    iput-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Lorg/apache/http/HttpException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_e

    .line 427
    nop

    .line 429
    :try_start_7
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v4}, Lorg/apache/http/params/HttpConnectionParams;->isStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 431
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v4}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 432
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-wide/from16 v19, v6

    .end local v6    # "timeout":J
    .restart local v19    # "timeout":J
    const-string v6, "Stale connection check"

    invoke-interface {v4, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 433
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v4}, Lorg/apache/http/conn/ManagedClientConnection;->isStale()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 434
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Stale connection detected"

    invoke-interface {v4, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 435
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v4}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    goto/16 :goto_4

    .line 431
    .end local v19    # "timeout":J
    .restart local v6    # "timeout":J
    :cond_3
    move-wide/from16 v19, v6

    .end local v6    # "timeout":J
    .restart local v19    # "timeout":J
    goto/16 :goto_4

    .line 429
    .end local v19    # "timeout":J
    .restart local v6    # "timeout":J
    :cond_4
    move-wide/from16 v19, v6

    .end local v6    # "timeout":J
    .restart local v19    # "timeout":J
    goto/16 :goto_4

    .line 424
    .end local v19    # "timeout":J
    .restart local v6    # "timeout":J
    :catch_4
    move-exception v0

    move-wide/from16 v19, v6

    move-object v3, v0

    .end local v6    # "timeout":J
    .restart local v19    # "timeout":J
    goto :goto_3

    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .local v6, "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    :catch_5
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object v3, v0

    .line 425
    .end local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .local v3, "interrupted":Ljava/lang/InterruptedException;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 426
    new-instance v4, Ljava/io/InterruptedIOException;

    invoke-direct {v4}, Ljava/io/InterruptedIOException;-><init>()V

    .end local v5    # "orig":Lorg/apache/http/HttpRequest;
    .end local v8    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v9    # "reuse":Z
    .end local v10    # "done":Z
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local p1    # "targetHost":Lorg/apache/http/HttpHost;
    .end local p2    # "request":Lorg/apache/http/HttpRequest;
    .end local p3    # "context":Lorg/apache/http/protocol/HttpContext;
    throw v4
    :try_end_7
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Lorg/apache/http/HttpException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_e

    .line 589
    .end local v3    # "interrupted":Ljava/lang/InterruptedException;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v13    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v14    # "userToken":Ljava/lang/Object;
    .end local v15    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .end local v19    # "timeout":J
    .restart local v5    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v8    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .restart local v9    # "reuse":Z
    .restart local v10    # "done":Z
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    .restart local p1    # "targetHost":Lorg/apache/http/HttpHost;
    .restart local p2    # "request":Lorg/apache/http/HttpRequest;
    .restart local p3    # "context":Lorg/apache/http/protocol/HttpContext;
    :catch_6
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object v3, v0

    move-object/from16 v19, v5

    move/from16 v20, v10

    .end local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    goto/16 :goto_10

    .line 586
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    :catch_7
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object v3, v0

    move-object/from16 v19, v5

    move/from16 v20, v10

    .end local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    goto/16 :goto_11

    .line 583
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    :catch_8
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object v3, v0

    move-object/from16 v19, v5

    move/from16 v20, v10

    .end local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    goto/16 :goto_12

    .line 578
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    :catch_9
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object v3, v0

    move-object/from16 v19, v5

    move/from16 v20, v10

    .end local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    goto/16 :goto_13

    .line 589
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v4    # "target":Lorg/apache/http/HttpHost;
    .restart local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    :catch_a
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object v3, v0

    move-object/from16 v19, v5

    move/from16 v20, v10

    .end local v4    # "target":Lorg/apache/http/HttpHost;
    .end local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    goto/16 :goto_10

    .line 586
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v4    # "target":Lorg/apache/http/HttpHost;
    .restart local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    :catch_b
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object v3, v0

    move-object/from16 v19, v5

    move/from16 v20, v10

    .end local v4    # "target":Lorg/apache/http/HttpHost;
    .end local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    goto/16 :goto_11

    .line 583
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v4    # "target":Lorg/apache/http/HttpHost;
    .restart local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    :catch_c
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object v3, v0

    move-object/from16 v19, v5

    move/from16 v20, v10

    .end local v4    # "target":Lorg/apache/http/HttpHost;
    .end local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    goto/16 :goto_12

    .line 578
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v4    # "target":Lorg/apache/http/HttpHost;
    .restart local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    :catch_d
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object v3, v0

    move-object/from16 v19, v5

    move/from16 v20, v10

    .end local v4    # "target":Lorg/apache/http/HttpHost;
    .end local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    goto/16 :goto_13

    .line 414
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v4    # "target":Lorg/apache/http/HttpHost;
    .restart local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v13    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v14    # "userToken":Ljava/lang/Object;
    :cond_5
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .line 441
    .end local v4    # "target":Lorg/apache/http/HttpHost;
    .end local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    :cond_6
    :goto_4
    :try_start_8
    instance-of v4, v5, Lorg/apache/http/client/methods/AbortableHttpRequest;
    :try_end_8
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_8 .. :try_end_8} :catch_2e
    .catch Lorg/apache/http/HttpException; {:try_start_8 .. :try_end_8} :catch_2d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2b

    if-eqz v4, :cond_7

    .line 442
    :try_start_9
    move-object v4, v5

    check-cast v4, Lorg/apache/http/client/methods/AbortableHttpRequest;

    iget-object v6, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v4, v6}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setReleaseTrigger(Lorg/apache/http/conn/ConnectionReleaseTrigger;)V
    :try_end_9
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Lorg/apache/http/HttpException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_e

    goto :goto_5

    .line 589
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v13    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v14    # "userToken":Ljava/lang/Object;
    :catch_e
    move-exception v0

    move-object v3, v0

    move-object/from16 v19, v5

    move/from16 v20, v10

    goto/16 :goto_10

    .line 586
    :catch_f
    move-exception v0

    move-object v3, v0

    move-object/from16 v19, v5

    move/from16 v20, v10

    goto/16 :goto_11

    .line 583
    :catch_10
    move-exception v0

    move-object v3, v0

    move-object/from16 v19, v5

    move/from16 v20, v10

    goto/16 :goto_12

    .line 578
    :catch_11
    move-exception v0

    move-object v3, v0

    move-object/from16 v19, v5

    move/from16 v20, v10

    goto/16 :goto_13

    .line 446
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v13    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v14    # "userToken":Ljava/lang/Object;
    :cond_7
    :goto_5
    :try_start_a
    invoke-direct {v1, v8, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->tryConnect(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_a
    .catch Lorg/apache/http/impl/client/TunnelRefusedException; {:try_start_a .. :try_end_a} :catch_2a
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_a .. :try_end_a} :catch_2e
    .catch Lorg/apache/http/HttpException; {:try_start_a .. :try_end_a} :catch_2d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2b

    .line 453
    nop

    .line 455
    :try_start_b
    invoke-virtual {v12}, Lorg/apache/http/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v4
    :try_end_b
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_b .. :try_end_b} :catch_2e
    .catch Lorg/apache/http/HttpException; {:try_start_b .. :try_end_b} :catch_2d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2b

    .line 456
    .local v4, "userinfo":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 457
    :try_start_c
    iget-object v6, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    new-instance v7, Lorg/apache/http/impl/auth/BasicScheme;

    invoke-direct {v7}, Lorg/apache/http/impl/auth/BasicScheme;-><init>()V

    new-instance v15, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v15, v4}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v15}, Lorg/apache/http/auth/AuthState;->update(Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/Credentials;)V
    :try_end_c
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_c .. :try_end_c} :catch_11
    .catch Lorg/apache/http/HttpException; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_e

    .line 462
    :cond_8
    :try_start_d
    iget-object v6, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->virtualHost:Lorg/apache/http/HttpHost;
    :try_end_d
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_d .. :try_end_d} :catch_2e
    .catch Lorg/apache/http/HttpException; {:try_start_d .. :try_end_d} :catch_2d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2b

    if-eqz v6, :cond_9

    .line 463
    :try_start_e
    iget-object v6, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->virtualHost:Lorg/apache/http/HttpHost;
    :try_end_e
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_e .. :try_end_e} :catch_11
    .catch Lorg/apache/http/HttpException; {:try_start_e .. :try_end_e} :catch_10
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_e

    move-object/from16 v16, v6

    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .local v6, "target":Lorg/apache/http/HttpHost;
    goto :goto_6

    .line 465
    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    :cond_9
    :try_start_f
    invoke-virtual {v12}, Lorg/apache/http/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v6

    .line 466
    .local v6, "requestURI":Ljava/net/URI;
    invoke-virtual {v6}, Ljava/net/URI;->isAbsolute()Z

    move-result v7
    :try_end_f
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_f .. :try_end_f} :catch_2e
    .catch Lorg/apache/http/HttpException; {:try_start_f .. :try_end_f} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2b

    if-eqz v7, :cond_a

    .line 467
    :try_start_10
    invoke-static {v6}, Lorg/apache/http/client/utils/URIUtils;->extractHost(Ljava/net/URI;)Lorg/apache/http/HttpHost;

    move-result-object v7

    move-object/from16 v16, v7

    .line 470
    .end local v6    # "requestURI":Ljava/net/URI;
    :cond_a
    :goto_6
    if-nez v16, :cond_b

    .line 471
    invoke-virtual {v13}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v6
    :try_end_10
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_10 .. :try_end_10} :catch_11
    .catch Lorg/apache/http/HttpException; {:try_start_10 .. :try_end_10} :catch_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_e

    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .local v6, "target":Lorg/apache/http/HttpHost;
    goto :goto_7

    .line 470
    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    :cond_b
    move-object/from16 v6, v16

    .line 475
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .restart local v6    # "target":Lorg/apache/http/HttpHost;
    :goto_7
    :try_start_11
    invoke-virtual {v12}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    .line 477
    invoke-virtual {v1, v12, v13}, Lorg/apache/http/impl/client/DefaultRequestDirector;->rewriteRequestURI(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 480
    const-string v7, "http.target_host"

    invoke-interface {v2, v7, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 481
    const-string v7, "http.route"

    invoke-interface {v2, v7, v13}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    const-string v7, "http.connection"

    iget-object v15, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v2, v7, v15}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    iget-object v7, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v15, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-virtual {v7, v12, v15, v2}, Lorg/apache/http/protocol/HttpRequestExecutor;->preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 487
    invoke-direct {v1, v8, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->tryExecute(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    move-object v11, v7

    .line 488
    if-nez v11, :cond_c

    .line 490
    move-object v4, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    goto/16 :goto_1

    .line 494
    :cond_c
    iget-object v7, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v11, v7}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 495
    iget-object v7, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v15, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-virtual {v7, v11, v15, v2}, Lorg/apache/http/protocol/HttpRequestExecutor;->postProcess(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 499
    iget-object v7, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    invoke-interface {v7, v11, v2}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v7

    move v9, v7

    .line 500
    if-eqz v9, :cond_f

    .line 502
    iget-object v7, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    invoke-interface {v7, v11, v2}, Lorg/apache/http/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide v15

    move-wide/from16 v19, v15

    .line 503
    .local v19, "duration":J
    iget-object v7, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v7
    :try_end_11
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_11 .. :try_end_11} :catch_29
    .catch Lorg/apache/http/HttpException; {:try_start_11 .. :try_end_11} :catch_28
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_27
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_26

    if-eqz v7, :cond_e

    .line 505
    const-wide/16 v15, 0x0

    move-object/from16 v21, v4

    move-object v7, v5

    move-wide/from16 v4, v19

    .end local v5    # "orig":Lorg/apache/http/HttpRequest;
    .end local v19    # "duration":J
    .local v4, "duration":J
    .local v7, "orig":Lorg/apache/http/HttpRequest;
    .local v21, "userinfo":Ljava/lang/String;
    cmp-long v19, v4, v15

    if-lez v19, :cond_d

    .line 506
    :try_start_12
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_12
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_12 .. :try_end_12} :catch_19
    .catch Lorg/apache/http/HttpException; {:try_start_12 .. :try_end_12} :catch_18
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_16

    move-object/from16 v16, v6

    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    :try_start_13
    const-string v6, "for "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_13
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_13 .. :try_end_13} :catch_15
    .catch Lorg/apache/http/HttpException; {:try_start_13 .. :try_end_13} :catch_14
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_12

    .local v6, "s":Ljava/lang/String;
    goto :goto_8

    .line 589
    .end local v4    # "duration":J
    .end local v6    # "s":Ljava/lang/String;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v13    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v14    # "userToken":Ljava/lang/Object;
    .end local v21    # "userinfo":Ljava/lang/String;
    :catch_12
    move-exception v0

    move-object v3, v0

    move-object/from16 v19, v7

    move/from16 v20, v10

    goto/16 :goto_10

    .line 586
    :catch_13
    move-exception v0

    move-object v3, v0

    move-object/from16 v19, v7

    move/from16 v20, v10

    goto/16 :goto_11

    .line 583
    :catch_14
    move-exception v0

    move-object v3, v0

    move-object/from16 v19, v7

    move/from16 v20, v10

    goto/16 :goto_12

    .line 578
    :catch_15
    move-exception v0

    move-object v3, v0

    move-object/from16 v19, v7

    move/from16 v20, v10

    goto/16 :goto_13

    .line 589
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .local v6, "target":Lorg/apache/http/HttpHost;
    :catch_16
    move-exception v0

    move-object/from16 v16, v6

    move-object v3, v0

    move-object/from16 v19, v7

    move/from16 v20, v10

    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    goto/16 :goto_10

    .line 586
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .restart local v6    # "target":Lorg/apache/http/HttpHost;
    :catch_17
    move-exception v0

    move-object/from16 v16, v6

    move-object v3, v0

    move-object/from16 v19, v7

    move/from16 v20, v10

    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    goto/16 :goto_11

    .line 583
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .restart local v6    # "target":Lorg/apache/http/HttpHost;
    :catch_18
    move-exception v0

    move-object/from16 v16, v6

    move-object v3, v0

    move-object/from16 v19, v7

    move/from16 v20, v10

    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    goto/16 :goto_12

    .line 578
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .restart local v6    # "target":Lorg/apache/http/HttpHost;
    :catch_19
    move-exception v0

    move-object/from16 v16, v6

    move-object v3, v0

    move-object/from16 v19, v7

    move/from16 v20, v10

    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    goto/16 :goto_13

    .line 508
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .restart local v4    # "duration":J
    .restart local v6    # "target":Lorg/apache/http/HttpHost;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v13    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v14    # "userToken":Ljava/lang/Object;
    .restart local v21    # "userinfo":Ljava/lang/String;
    :cond_d
    move-object/from16 v16, v6

    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    :try_start_14
    const-string v6, "indefinitely"

    .line 510
    .local v6, "s":Ljava/lang/String;
    :goto_8
    iget-object v15, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;
    :try_end_14
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_14 .. :try_end_14} :catch_21
    .catch Lorg/apache/http/HttpException; {:try_start_14 .. :try_end_14} :catch_20
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1e

    move-object/from16 v19, v7

    .end local v7    # "orig":Lorg/apache/http/HttpRequest;
    .local v19, "orig":Lorg/apache/http/HttpRequest;
    :try_start_15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_15
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_15 .. :try_end_15} :catch_1d
    .catch Lorg/apache/http/HttpException; {:try_start_15 .. :try_end_15} :catch_1c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1a

    move/from16 v20, v10

    .end local v10    # "done":Z
    .local v20, "done":Z
    :try_start_16
    const-string v10, "Connection can be kept alive "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v15, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_9

    .line 589
    .end local v4    # "duration":J
    .end local v6    # "s":Ljava/lang/String;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v13    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v14    # "userToken":Ljava/lang/Object;
    .end local v20    # "done":Z
    .end local v21    # "userinfo":Ljava/lang/String;
    .restart local v10    # "done":Z
    :catch_1a
    move-exception v0

    move/from16 v20, v10

    move-object v3, v0

    .end local v10    # "done":Z
    .restart local v20    # "done":Z
    goto/16 :goto_10

    .line 586
    .end local v20    # "done":Z
    .restart local v10    # "done":Z
    :catch_1b
    move-exception v0

    move/from16 v20, v10

    move-object v3, v0

    .end local v10    # "done":Z
    .restart local v20    # "done":Z
    goto/16 :goto_11

    .line 583
    .end local v20    # "done":Z
    .restart local v10    # "done":Z
    :catch_1c
    move-exception v0

    move/from16 v20, v10

    move-object v3, v0

    .end local v10    # "done":Z
    .restart local v20    # "done":Z
    goto/16 :goto_12

    .line 578
    .end local v20    # "done":Z
    .restart local v10    # "done":Z
    :catch_1d
    move-exception v0

    move/from16 v20, v10

    move-object v3, v0

    .end local v10    # "done":Z
    .restart local v20    # "done":Z
    goto/16 :goto_13

    .line 589
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v20    # "done":Z
    .restart local v7    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v10    # "done":Z
    :catch_1e
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v20, v10

    move-object v3, v0

    .end local v7    # "orig":Lorg/apache/http/HttpRequest;
    .end local v10    # "done":Z
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v20    # "done":Z
    goto/16 :goto_10

    .line 586
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v20    # "done":Z
    .restart local v7    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v10    # "done":Z
    :catch_1f
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v20, v10

    move-object v3, v0

    .end local v7    # "orig":Lorg/apache/http/HttpRequest;
    .end local v10    # "done":Z
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v20    # "done":Z
    goto/16 :goto_11

    .line 583
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v20    # "done":Z
    .restart local v7    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v10    # "done":Z
    :catch_20
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v20, v10

    move-object v3, v0

    .end local v7    # "orig":Lorg/apache/http/HttpRequest;
    .end local v10    # "done":Z
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v20    # "done":Z
    goto/16 :goto_12

    .line 578
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v20    # "done":Z
    .restart local v7    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v10    # "done":Z
    :catch_21
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v20, v10

    move-object v3, v0

    .end local v7    # "orig":Lorg/apache/http/HttpRequest;
    .end local v10    # "done":Z
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v20    # "done":Z
    goto/16 :goto_13

    .line 503
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .end local v20    # "done":Z
    .local v4, "userinfo":Ljava/lang/String;
    .restart local v5    # "orig":Lorg/apache/http/HttpRequest;
    .local v6, "target":Lorg/apache/http/HttpHost;
    .restart local v10    # "done":Z
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v13    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v14    # "userToken":Ljava/lang/Object;
    .local v19, "duration":J
    :cond_e
    move-object/from16 v21, v4

    move-object/from16 v16, v6

    move-wide/from16 v22, v19

    move-object/from16 v19, v5

    move/from16 v20, v10

    move-wide/from16 v4, v22

    .line 512
    .end local v5    # "orig":Lorg/apache/http/HttpRequest;
    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .end local v10    # "done":Z
    .local v4, "duration":J
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    .local v19, "orig":Lorg/apache/http/HttpRequest;
    .restart local v20    # "done":Z
    .restart local v21    # "userinfo":Ljava/lang/String;
    :goto_9
    iget-object v6, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v4, v5, v7}, Lorg/apache/http/conn/ManagedClientConnection;->setIdleDuration(JLjava/util/concurrent/TimeUnit;)V

    goto :goto_a

    .line 500
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v20    # "done":Z
    .end local v21    # "userinfo":Ljava/lang/String;
    .local v4, "userinfo":Ljava/lang/String;
    .restart local v5    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v6    # "target":Lorg/apache/http/HttpHost;
    .restart local v10    # "done":Z
    :cond_f
    move-object/from16 v21, v4

    move-object/from16 v19, v5

    move-object/from16 v16, v6

    move/from16 v20, v10

    .line 515
    .end local v4    # "userinfo":Ljava/lang/String;
    .end local v5    # "orig":Lorg/apache/http/HttpRequest;
    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .end local v10    # "done":Z
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v20    # "done":Z
    .restart local v21    # "userinfo":Ljava/lang/String;
    :goto_a
    invoke-virtual {v1, v8, v11, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->handleResponse(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;

    move-result-object v4

    .line 516
    .local v4, "followup":Lorg/apache/http/impl/client/RoutedRequest;
    if-nez v4, :cond_10

    .line 517
    const/4 v5, 0x1

    move v10, v5

    .end local v20    # "done":Z
    .local v5, "done":Z
    goto/16 :goto_c

    .line 519
    .end local v5    # "done":Z
    .restart local v20    # "done":Z
    :cond_10
    if-eqz v9, :cond_11

    .line 521
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 522
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    .line 525
    iget-object v6, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v6}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 526
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    goto :goto_b

    .line 527
    :cond_11
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 528
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v5}, Lorg/apache/http/auth/AuthState;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v5

    sget-object v6, Lorg/apache/http/auth/AuthProtocolState;->CHALLENGED:Lorg/apache/http/auth/AuthProtocolState;

    invoke-virtual {v5, v6}, Lorg/apache/http/auth/AuthProtocolState;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-lez v5, :cond_12

    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v5}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v5

    if-eqz v5, :cond_12

    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v5}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 531
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Resetting proxy auth state"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 532
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v5}, Lorg/apache/http/auth/AuthState;->reset()V

    .line 534
    :cond_12
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v5}, Lorg/apache/http/auth/AuthState;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v5

    sget-object v6, Lorg/apache/http/auth/AuthProtocolState;->CHALLENGED:Lorg/apache/http/auth/AuthProtocolState;

    invoke-virtual {v5, v6}, Lorg/apache/http/auth/AuthProtocolState;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-lez v5, :cond_13

    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v5}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v5

    if-eqz v5, :cond_13

    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v5}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 537
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Resetting target auth state"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 538
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v5}, Lorg/apache/http/auth/AuthState;->reset()V

    .line 542
    :cond_13
    :goto_b
    invoke-virtual {v4}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v5

    invoke-virtual {v8}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 543
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V
    :try_end_16
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_16 .. :try_end_16} :catch_36
    .catch Lorg/apache/http/HttpException; {:try_start_16 .. :try_end_16} :catch_35
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_34
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_33

    .line 545
    :cond_14
    move-object v5, v4

    move-object v8, v5

    move/from16 v10, v20

    .line 548
    .end local v20    # "done":Z
    .restart local v10    # "done":Z
    :goto_c
    :try_start_17
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v5, :cond_16

    .line 549
    if-nez v14, :cond_15

    .line 550
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    invoke-interface {v5, v2}, Lorg/apache/http/client/UserTokenHandler;->getUserToken(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    .line 551
    invoke-interface {v2, v3, v14}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 553
    :cond_15
    if-eqz v14, :cond_16

    .line 554
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5, v14}, Lorg/apache/http/conn/ManagedClientConnection;->setState(Ljava/lang/Object;)V
    :try_end_17
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_17 .. :try_end_17} :catch_25
    .catch Lorg/apache/http/HttpException; {:try_start_17 .. :try_end_17} :catch_24
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_23
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_22

    .line 558
    .end local v4    # "followup":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v12    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v13    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v14    # "userToken":Ljava/lang/Object;
    .end local v21    # "userinfo":Ljava/lang/String;
    :cond_16
    move-object/from16 v4, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v5, v19

    goto/16 :goto_1

    .line 589
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    :catch_22
    move-exception v0

    move-object v3, v0

    move/from16 v20, v10

    goto/16 :goto_10

    .line 586
    :catch_23
    move-exception v0

    move-object v3, v0

    move/from16 v20, v10

    goto/16 :goto_11

    .line 583
    :catch_24
    move-exception v0

    move-object v3, v0

    move/from16 v20, v10

    goto/16 :goto_12

    .line 578
    :catch_25
    move-exception v0

    move-object v3, v0

    move/from16 v20, v10

    goto/16 :goto_13

    .line 589
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .local v5, "orig":Lorg/apache/http/HttpRequest;
    .restart local v6    # "target":Lorg/apache/http/HttpHost;
    :catch_26
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v16, v6

    move/from16 v20, v10

    move-object v3, v0

    .end local v5    # "orig":Lorg/apache/http/HttpRequest;
    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .end local v10    # "done":Z
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v20    # "done":Z
    goto/16 :goto_10

    .line 586
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v20    # "done":Z
    .restart local v5    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v6    # "target":Lorg/apache/http/HttpHost;
    .restart local v10    # "done":Z
    :catch_27
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v16, v6

    move/from16 v20, v10

    move-object v3, v0

    .end local v5    # "orig":Lorg/apache/http/HttpRequest;
    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .end local v10    # "done":Z
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v20    # "done":Z
    goto/16 :goto_11

    .line 583
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v20    # "done":Z
    .restart local v5    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v6    # "target":Lorg/apache/http/HttpHost;
    .restart local v10    # "done":Z
    :catch_28
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v16, v6

    move/from16 v20, v10

    move-object v3, v0

    .end local v5    # "orig":Lorg/apache/http/HttpRequest;
    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .end local v10    # "done":Z
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v20    # "done":Z
    goto/16 :goto_12

    .line 578
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v20    # "done":Z
    .restart local v5    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v6    # "target":Lorg/apache/http/HttpHost;
    .restart local v10    # "done":Z
    :catch_29
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v16, v6

    move/from16 v20, v10

    move-object v3, v0

    .end local v5    # "orig":Lorg/apache/http/HttpRequest;
    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .end local v10    # "done":Z
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v20    # "done":Z
    goto/16 :goto_13

    .line 447
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v20    # "done":Z
    .restart local v5    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v10    # "done":Z
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v13    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v14    # "userToken":Ljava/lang/Object;
    :catch_2a
    move-exception v0

    move-object/from16 v19, v5

    move/from16 v20, v10

    move-object v3, v0

    .line 448
    .end local v5    # "orig":Lorg/apache/http/HttpRequest;
    .end local v10    # "done":Z
    .local v3, "ex":Lorg/apache/http/impl/client/TunnelRefusedException;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v20    # "done":Z
    :try_start_18
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 449
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/TunnelRefusedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 451
    :cond_17
    invoke-virtual {v3}, Lorg/apache/http/impl/client/TunnelRefusedException;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v4

    move-object v11, v4

    .line 452
    goto/16 :goto_d

    .line 589
    .end local v3    # "ex":Lorg/apache/http/impl/client/TunnelRefusedException;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v13    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v14    # "userToken":Ljava/lang/Object;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v20    # "done":Z
    .restart local v5    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v10    # "done":Z
    :catch_2b
    move-exception v0

    move-object/from16 v19, v5

    move/from16 v20, v10

    move-object v3, v0

    .end local v5    # "orig":Lorg/apache/http/HttpRequest;
    .end local v10    # "done":Z
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v20    # "done":Z
    goto/16 :goto_10

    .line 586
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v20    # "done":Z
    .restart local v5    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v10    # "done":Z
    :catch_2c
    move-exception v0

    move-object/from16 v19, v5

    move/from16 v20, v10

    move-object v3, v0

    .end local v5    # "orig":Lorg/apache/http/HttpRequest;
    .end local v10    # "done":Z
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v20    # "done":Z
    goto/16 :goto_11

    .line 583
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v20    # "done":Z
    .restart local v5    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v10    # "done":Z
    :catch_2d
    move-exception v0

    move-object/from16 v19, v5

    move/from16 v20, v10

    move-object v3, v0

    .end local v5    # "orig":Lorg/apache/http/HttpRequest;
    .end local v10    # "done":Z
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v20    # "done":Z
    goto/16 :goto_12

    .line 578
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v20    # "done":Z
    .restart local v5    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v10    # "done":Z
    :catch_2e
    move-exception v0

    move-object/from16 v19, v5

    move/from16 v20, v10

    move-object v3, v0

    .end local v5    # "orig":Lorg/apache/http/HttpRequest;
    .end local v10    # "done":Z
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v20    # "done":Z
    goto/16 :goto_13

    .line 589
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v20    # "done":Z
    .local v4, "target":Lorg/apache/http/HttpHost;
    .restart local v5    # "orig":Lorg/apache/http/HttpRequest;
    .local v6, "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .local v7, "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v10    # "done":Z
    :catch_2f
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v19, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v20, v10

    move-object v3, v0

    .end local v4    # "target":Lorg/apache/http/HttpHost;
    .end local v5    # "orig":Lorg/apache/http/HttpRequest;
    .end local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v10    # "done":Z
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v20    # "done":Z
    goto/16 :goto_10

    .line 586
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v20    # "done":Z
    .restart local v4    # "target":Lorg/apache/http/HttpHost;
    .restart local v5    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v10    # "done":Z
    :catch_30
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v19, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v20, v10

    move-object v3, v0

    .end local v4    # "target":Lorg/apache/http/HttpHost;
    .end local v5    # "orig":Lorg/apache/http/HttpRequest;
    .end local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v10    # "done":Z
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v20    # "done":Z
    goto/16 :goto_11

    .line 583
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v20    # "done":Z
    .restart local v4    # "target":Lorg/apache/http/HttpHost;
    .restart local v5    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v10    # "done":Z
    :catch_31
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v19, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v20, v10

    move-object v3, v0

    .end local v4    # "target":Lorg/apache/http/HttpHost;
    .end local v5    # "orig":Lorg/apache/http/HttpRequest;
    .end local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v10    # "done":Z
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v20    # "done":Z
    goto/16 :goto_12

    .line 578
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v20    # "done":Z
    .restart local v4    # "target":Lorg/apache/http/HttpHost;
    .restart local v5    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v10    # "done":Z
    :catch_32
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v19, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v20, v10

    move-object v3, v0

    .end local v4    # "target":Lorg/apache/http/HttpHost;
    .end local v5    # "orig":Lorg/apache/http/HttpRequest;
    .end local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v10    # "done":Z
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v20    # "done":Z
    goto :goto_13

    .line 400
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v20    # "done":Z
    .restart local v4    # "target":Lorg/apache/http/HttpHost;
    .restart local v5    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v10    # "done":Z
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    :cond_18
    move-object/from16 v16, v4

    move-object/from16 v19, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v20, v10

    .line 562
    .end local v4    # "target":Lorg/apache/http/HttpHost;
    .end local v5    # "orig":Lorg/apache/http/HttpRequest;
    .end local v6    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v10    # "done":Z
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v18    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v20    # "done":Z
    :goto_d
    if-eqz v11, :cond_1a

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_e

    .line 571
    :cond_19
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 572
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    new-instance v4, Lorg/apache/http/conn/BasicManagedEntity;

    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-direct {v4, v3, v5, v9}, Lorg/apache/http/conn/BasicManagedEntity;-><init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/conn/ManagedClientConnection;Z)V

    move-object v3, v4

    .line 573
    invoke-interface {v11, v3}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_f

    .line 589
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    :catch_33
    move-exception v0

    move-object v3, v0

    goto :goto_10

    .line 586
    :catch_34
    move-exception v0

    move-object v3, v0

    goto :goto_11

    .line 583
    :catch_35
    move-exception v0

    move-object v3, v0

    goto :goto_12

    .line 578
    :catch_36
    move-exception v0

    move-object v3, v0

    goto :goto_13

    .line 565
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    :cond_1a
    :goto_e
    if-eqz v9, :cond_1b

    .line 566
    iget-object v3, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v3}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 568
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V
    :try_end_18
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_18 .. :try_end_18} :catch_36
    .catch Lorg/apache/http/HttpException; {:try_start_18 .. :try_end_18} :catch_35
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_34
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_33

    .line 576
    :goto_f
    return-object v11

    .line 590
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .local v3, "ex":Ljava/lang/RuntimeException;
    :goto_10
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 591
    throw v3

    .line 587
    .local v3, "ex":Ljava/io/IOException;
    :goto_11
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 588
    throw v3

    .line 584
    .local v3, "ex":Lorg/apache/http/HttpException;
    :goto_12
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 585
    throw v3

    .line 579
    .local v3, "ex":Lorg/apache/http/impl/conn/ConnectionShutdownException;
    :goto_13
    new-instance v4, Ljava/io/InterruptedIOException;

    const-string v5, "Connection has been shut down"

    invoke-direct {v4, v5}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 581
    .local v4, "ioex":Ljava/io/InterruptedIOException;
    invoke-virtual {v4, v3}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 582
    goto :goto_15

    :goto_14
    throw v4

    :goto_15
    goto :goto_14
.end method

.method protected handleResponse(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;
    .locals 16
    .param p1, "roureq"    # Lorg/apache/http/impl/client/RoutedRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1030
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v9

    .line 1031
    .local v9, "route":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v10

    .line 1033
    .local v10, "request":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual {v10}, Lorg/apache/http/impl/client/RequestWrapper;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    .line 1035
    .local v11, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v11}, Lorg/apache/http/client/params/HttpClientParams;->isAuthenticating(Lorg/apache/http/params/HttpParams;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1036
    const-string v1, "http.target_host"

    invoke-interface {v8, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpHost;

    .line 1037
    .local v1, "target":Lorg/apache/http/HttpHost;
    if-nez v1, :cond_0

    .line 1038
    invoke-virtual {v9}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 1040
    :cond_0
    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    if-gez v2, :cond_1

    .line 1041
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Lorg/apache/http/HttpHost;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v2

    .line 1042
    .local v2, "scheme":Lorg/apache/http/conn/scheme/Scheme;
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getDefaultPort()I

    move-result v5

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v1, v3

    move-object v12, v1

    goto :goto_0

    .line 1040
    .end local v2    # "scheme":Lorg/apache/http/conn/scheme/Scheme;
    :cond_1
    move-object v12, v1

    .line 1045
    .end local v1    # "target":Lorg/apache/http/HttpHost;
    .local v12, "target":Lorg/apache/http/HttpHost;
    :goto_0
    iget-object v1, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->authenticator:Lorg/apache/http/impl/client/HttpAuthenticator;

    iget-object v4, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    move-object v2, v12

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/http/impl/client/HttpAuthenticator;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v13

    .line 1048
    .local v13, "targetAuthRequested":Z
    invoke-virtual {v9}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 1050
    .local v1, "proxy":Lorg/apache/http/HttpHost;
    if-nez v1, :cond_2

    .line 1051
    invoke-virtual {v9}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    move-object v14, v1

    goto :goto_1

    .line 1050
    :cond_2
    move-object v14, v1

    .line 1053
    .end local v1    # "proxy":Lorg/apache/http/HttpHost;
    .local v14, "proxy":Lorg/apache/http/HttpHost;
    :goto_1
    iget-object v1, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->authenticator:Lorg/apache/http/impl/client/HttpAuthenticator;

    iget-object v4, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/http/impl/client/HttpAuthenticator;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v15

    .line 1056
    .local v15, "proxyAuthRequested":Z
    if-eqz v13, :cond_3

    .line 1057
    iget-object v1, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->authenticator:Lorg/apache/http/impl/client/HttpAuthenticator;

    iget-object v4, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    move-object v2, v12

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/http/impl/client/HttpAuthenticator;->authenticate(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1060
    return-object p1

    .line 1063
    :cond_3
    if-eqz v15, :cond_4

    .line 1064
    iget-object v1, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->authenticator:Lorg/apache/http/impl/client/HttpAuthenticator;

    iget-object v4, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/http/impl/client/HttpAuthenticator;->authenticate(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1067
    return-object p1

    .line 1072
    .end local v12    # "target":Lorg/apache/http/HttpHost;
    .end local v13    # "targetAuthRequested":Z
    .end local v14    # "proxy":Lorg/apache/http/HttpHost;
    .end local v15    # "proxyAuthRequested":Z
    :cond_4
    invoke-static {v11}, Lorg/apache/http/client/params/HttpClientParams;->isRedirecting(Lorg/apache/http/params/HttpParams;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    iget-object v1, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

    invoke-interface {v1, v10, v7, v8}, Lorg/apache/http/client/RedirectStrategy;->isRedirected(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1075
    iget v1, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    iget v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    if-ge v1, v3, :cond_8

    .line 1079
    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    .line 1082
    iput-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->virtualHost:Lorg/apache/http/HttpHost;

    .line 1084
    iget-object v1, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

    invoke-interface {v1, v10, v7, v8}, Lorg/apache/http/client/RedirectStrategy;->getRedirect(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    .line 1085
    .local v1, "redirect":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-virtual {v10}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v2

    .line 1086
    .local v2, "orig":Lorg/apache/http/HttpRequest;
    invoke-interface {v2}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 1088
    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    .line 1089
    .local v3, "uri":Ljava/net/URI;
    invoke-static {v3}, Lorg/apache/http/client/utils/URIUtils;->extractHost(Ljava/net/URI;)Lorg/apache/http/HttpHost;

    move-result-object v4

    .line 1090
    .local v4, "newTarget":Lorg/apache/http/HttpHost;
    if-eqz v4, :cond_7

    .line 1095
    invoke-virtual {v9}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1096
    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Resetting target auth state"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1097
    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v5}, Lorg/apache/http/auth/AuthState;->reset()V

    .line 1098
    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v5}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v5

    .line 1099
    .local v5, "authScheme":Lorg/apache/http/auth/AuthScheme;
    if-eqz v5, :cond_5

    invoke-interface {v5}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1100
    iget-object v6, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v12, "Resetting proxy auth state"

    invoke-interface {v6, v12}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1101
    iget-object v6, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v6}, Lorg/apache/http/auth/AuthState;->reset()V

    .line 1105
    .end local v5    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    :cond_5
    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultRequestDirector;->wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v5

    .line 1106
    .local v5, "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual {v5, v11}, Lorg/apache/http/impl/client/RequestWrapper;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 1108
    invoke-virtual {v0, v4, v5, v8}, Lorg/apache/http/impl/client/DefaultRequestDirector;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v6

    .line 1109
    .local v6, "newRoute":Lorg/apache/http/conn/routing/HttpRoute;
    new-instance v12, Lorg/apache/http/impl/client/RoutedRequest;

    invoke-direct {v12, v5, v6}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 1111
    .local v12, "newRequest":Lorg/apache/http/impl/client/RoutedRequest;
    iget-object v13, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v13}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1112
    iget-object v13, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Redirecting to \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "\' via "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1115
    :cond_6
    return-object v12

    .line 1091
    .end local v5    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v6    # "newRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v12    # "newRequest":Lorg/apache/http/impl/client/RoutedRequest;
    :cond_7
    new-instance v5, Lorg/apache/http/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Redirect URI does not specify a valid host name: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1076
    .end local v1    # "redirect":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v2    # "orig":Lorg/apache/http/HttpRequest;
    .end local v3    # "uri":Ljava/net/URI;
    .end local v4    # "newTarget":Lorg/apache/http/HttpHost;
    :cond_8
    new-instance v1, Lorg/apache/http/client/RedirectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum redirects ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") exceeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1118
    :cond_9
    return-object v2
.end method

.method protected releaseConnection()V
    .locals 3

    .line 734
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    goto :goto_0

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "ignored":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "IOException releasing connection"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 738
    .end local v0    # "ignored":Ljava/io/IOException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 739
    return-void
.end method

.method protected rewriteRequestURI(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 4
    .param p1, "request"    # Lorg/apache/http/impl/client/RequestWrapper;
    .param p2, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .line 342
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 343
    .local v0, "uri":Ljava/net/URI;
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 345
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 347
    .local v1, "target":Lorg/apache/http/HttpHost;
    invoke-static {v0, v1, v2}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;

    move-result-object v2

    move-object v0, v2

    .line 348
    .end local v1    # "target":Lorg/apache/http/HttpHost;
    goto :goto_0

    .line 349
    :cond_0
    invoke-static {v0}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 356
    :cond_2
    invoke-static {v0}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    move-object v0, v1

    .line 359
    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v0    # "uri":Ljava/net/URI;
    nop

    .line 365
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "ex":Ljava/net/URISyntaxException;
    new-instance v1, Lorg/apache/http/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/http/impl/client/RequestWrapper;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
