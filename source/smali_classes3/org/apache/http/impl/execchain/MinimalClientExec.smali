.class public Lorg/apache/http/impl/execchain/MinimalClientExec;
.super Ljava/lang/Object;
.source "MinimalClientExec.java"

# interfaces
.implements Lorg/apache/http/impl/execchain/ClientExecChain;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

.field private final httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

.field private final keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

.field private final log:Lorg/apache/commons/logging/Log;

.field private final requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

.field private final reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V
    .locals 6
    .param p1, "requestExecutor"    # Lorg/apache/http/protocol/HttpRequestExecutor;
    .param p2, "connManager"    # Lorg/apache/http/conn/HttpClientConnectionManager;
    .param p3, "reuseStrategy"    # Lorg/apache/http/ConnectionReuseStrategy;
    .param p4, "keepAliveStrategy"    # Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->log:Lorg/apache/commons/logging/Log;

    .line 96
    const-string v0, "HTTP request executor"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    const-string v0, "Client connection manager"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    const-string v0, "Connection reuse strategy"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    const-string v0, "Connection keep alive strategy"

    invoke-static {p4, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    new-instance v0, Lorg/apache/http/protocol/ImmutableHttpProcessor;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/http/HttpRequestInterceptor;

    new-instance v2, Lorg/apache/http/protocol/RequestContent;

    invoke-direct {v2}, Lorg/apache/http/protocol/RequestContent;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/protocol/RequestTargetHost;

    invoke-direct {v2}, Lorg/apache/http/protocol/RequestTargetHost;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/client/protocol/RequestClientConnControl;

    invoke-direct {v2}, Lorg/apache/http/client/protocol/RequestClientConnControl;-><init>()V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/protocol/RequestUserAgent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "Apache-HttpClient"

    const-string v5, "org.apache.http.client"

    invoke-static {v4, v5, v3}, Lorg/apache/http/util/VersionInfo;->getUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/apache/http/protocol/ImmutableHttpProcessor;-><init>([Lorg/apache/http/HttpRequestInterceptor;)V

    iput-object v0, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    .line 106
    iput-object p1, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    .line 107
    iput-object p2, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    .line 108
    iput-object p3, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 109
    iput-object p4, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    .line 110
    return-void
.end method

.method static rewriteRequestURI(Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 4
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpRequestWrapper;
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .line 116
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 117
    .local v0, "uri":Ljava/net/URI;
    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {v0}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    move-object v0, v1

    .line 124
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpRequestWrapper;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v0    # "uri":Ljava/net/URI;
    :cond_1
    nop

    .line 129
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "ex":Ljava/net/URISyntaxException;
    new-instance v1, Lorg/apache/http/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    .locals 17
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

    .line 137
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const-string v0, "HTTP route"

    invoke-static {v2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    const-string v0, "HTTP request"

    invoke-static {v3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    const-string v0, "HTTP context"

    invoke-static {v4, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    invoke-static {v3, v2}, Lorg/apache/http/impl/execchain/MinimalClientExec;->rewriteRequestURI(Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 143
    iget-object v0, v1, Lorg/apache/http/impl/execchain/MinimalClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Lorg/apache/http/conn/HttpClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ConnectionRequest;

    move-result-object v7

    .line 144
    .local v7, "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    const-string v8, "Request aborted"

    if-eqz v5, :cond_1

    .line 145
    invoke-interface/range {p4 .. p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-interface {v5, v7}, Lorg/apache/http/client/methods/HttpExecutionAware;->setCancellable(Lorg/apache/http/concurrent/Cancellable;)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-interface {v7}, Lorg/apache/http/conn/ConnectionRequest;->cancel()Z

    .line 147
    new-instance v0, Lorg/apache/http/impl/execchain/RequestAbortedException;

    invoke-direct {v0, v8}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_1
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v9

    .line 157
    .local v9, "config":Lorg/apache/http/client/config/RequestConfig;
    :try_start_0
    invoke-virtual {v9}, Lorg/apache/http/client/config/RequestConfig;->getConnectionRequestTimeout()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_6

    .line 158
    .local v0, "timeout":I
    if-lez v0, :cond_2

    int-to-long v10, v0

    goto :goto_1

    :cond_2
    const-wide/16 v10, 0x0

    :goto_1
    :try_start_1
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    invoke-interface {v7, v10, v11, v12}, Lorg/apache/http/conn/ConnectionRequest;->get(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/HttpClientConnection;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    .line 168
    .end local v0    # "timeout":I
    .local v10, "managedConn":Lorg/apache/http/HttpClientConnection;
    nop

    .line 170
    new-instance v0, Lorg/apache/http/impl/execchain/ConnectionHolder;

    iget-object v11, v1, Lorg/apache/http/impl/execchain/MinimalClientExec;->log:Lorg/apache/commons/logging/Log;

    iget-object v12, v1, Lorg/apache/http/impl/execchain/MinimalClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-direct {v0, v11, v12, v10}, Lorg/apache/http/impl/execchain/ConnectionHolder;-><init>(Lorg/apache/commons/logging/Log;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/HttpClientConnection;)V

    move-object v11, v0

    .line 172
    .local v11, "releaseTrigger":Lorg/apache/http/impl/execchain/ConnectionHolder;
    if-eqz v5, :cond_4

    .line 173
    :try_start_3
    invoke-interface/range {p4 .. p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 177
    invoke-interface {v5, v11}, Lorg/apache/http/client/methods/HttpExecutionAware;->setCancellable(Lorg/apache/http/concurrent/Cancellable;)V

    goto :goto_2

    .line 174
    :cond_3
    invoke-virtual {v11}, Lorg/apache/http/impl/execchain/ConnectionHolder;->close()V

    .line 175
    new-instance v0, Lorg/apache/http/impl/execchain/RequestAbortedException;

    invoke-direct {v0, v8}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    .end local v7    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .end local v9    # "config":Lorg/apache/http/client/config/RequestConfig;
    .end local v10    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v11    # "releaseTrigger":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local p1    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local p2    # "request":Lorg/apache/http/client/methods/HttpRequestWrapper;
    .end local p3    # "context":Lorg/apache/http/client/protocol/HttpClientContext;
    .end local p4    # "execAware":Lorg/apache/http/client/methods/HttpExecutionAware;
    throw v0

    .line 181
    .restart local v7    # "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    .restart local v9    # "config":Lorg/apache/http/client/config/RequestConfig;
    .restart local v10    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v11    # "releaseTrigger":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local p1    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local p2    # "request":Lorg/apache/http/client/methods/HttpRequestWrapper;
    .restart local p3    # "context":Lorg/apache/http/client/protocol/HttpClientContext;
    .restart local p4    # "execAware":Lorg/apache/http/client/methods/HttpExecutionAware;
    :cond_4
    :goto_2
    invoke-interface {v10}, Lorg/apache/http/HttpClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_6

    .line 182
    invoke-virtual {v9}, Lorg/apache/http/client/config/RequestConfig;->getConnectTimeout()I

    move-result v0

    .line 183
    .restart local v0    # "timeout":I
    iget-object v8, v1, Lorg/apache/http/impl/execchain/MinimalClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    if-lez v0, :cond_5

    move v12, v0

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    :goto_3
    invoke-interface {v8, v10, v2, v12, v4}, Lorg/apache/http/conn/HttpClientConnectionManager;->connect(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)V

    .line 188
    iget-object v8, v1, Lorg/apache/http/impl/execchain/MinimalClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-interface {v8, v10, v2, v4}, Lorg/apache/http/conn/HttpClientConnectionManager;->routeComplete(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V

    .line 190
    .end local v0    # "timeout":I
    :cond_6
    invoke-virtual {v9}, Lorg/apache/http/client/config/RequestConfig;->getSocketTimeout()I

    move-result v0

    .line 191
    .restart local v0    # "timeout":I
    if-ltz v0, :cond_7

    .line 192
    invoke-interface {v10, v0}, Lorg/apache/http/HttpClientConnection;->setSocketTimeout(I)V

    .line 195
    :cond_7
    const/4 v8, 0x0

    .line 196
    .local v8, "target":Lorg/apache/http/HttpHost;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v12

    .line 197
    .local v12, "original":Lorg/apache/http/HttpRequest;
    instance-of v13, v12, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v13, :cond_9

    .line 198
    move-object v13, v12

    check-cast v13, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v13}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v13

    .line 199
    .local v13, "uri":Ljava/net/URI;
    invoke-virtual {v13}, Ljava/net/URI;->isAbsolute()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 200
    new-instance v14, Lorg/apache/http/HttpHost;

    invoke-virtual {v13}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Ljava/net/URI;->getPort()I

    move-result v6

    move/from16 v16, v0

    .end local v0    # "timeout":I
    .local v16, "timeout":I
    invoke-virtual {v13}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v15, v6, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v8, v14

    goto :goto_4

    .line 199
    .end local v16    # "timeout":I
    .restart local v0    # "timeout":I
    :cond_8
    move/from16 v16, v0

    .end local v0    # "timeout":I
    .restart local v16    # "timeout":I
    goto :goto_4

    .line 197
    .end local v13    # "uri":Ljava/net/URI;
    .end local v16    # "timeout":I
    .restart local v0    # "timeout":I
    :cond_9
    move/from16 v16, v0

    .line 203
    .end local v0    # "timeout":I
    .restart local v16    # "timeout":I
    :goto_4
    if-nez v8, :cond_a

    .line 204
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    move-object v8, v0

    .line 207
    :cond_a
    const-string v0, "http.target_host"

    invoke-virtual {v4, v0, v8}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    const-string v0, "http.request"

    invoke-virtual {v4, v0, v3}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    const-string v0, "http.connection"

    invoke-virtual {v4, v0, v10}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    const-string v0, "http.route"

    invoke-virtual {v4, v0, v2}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    iget-object v0, v1, Lorg/apache/http/impl/execchain/MinimalClientExec;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-interface {v0, v3, v4}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 213
    iget-object v0, v1, Lorg/apache/http/impl/execchain/MinimalClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    invoke-virtual {v0, v3, v10, v4}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 214
    .local v0, "response":Lorg/apache/http/HttpResponse;
    iget-object v6, v1, Lorg/apache/http/impl/execchain/MinimalClientExec;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-interface {v6, v0, v4}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    .line 217
    iget-object v6, v1, Lorg/apache/http/impl/execchain/MinimalClientExec;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    invoke-interface {v6, v0, v4}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 219
    iget-object v6, v1, Lorg/apache/http/impl/execchain/MinimalClientExec;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    invoke-interface {v6, v0, v4}, Lorg/apache/http/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide v13

    .line 220
    .local v13, "duration":J
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v13, v14, v6}, Lorg/apache/http/impl/execchain/ConnectionHolder;->setValidFor(JLjava/util/concurrent/TimeUnit;)V

    .line 221
    invoke-virtual {v11}, Lorg/apache/http/impl/execchain/ConnectionHolder;->markReusable()V

    .line 222
    .end local v13    # "duration":J
    goto :goto_5

    .line 223
    :cond_b
    invoke-virtual {v11}, Lorg/apache/http/impl/execchain/ConnectionHolder;->markNonReusable()V

    .line 227
    :goto_5
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 228
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v6, :cond_d

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v13

    if-nez v13, :cond_c

    goto :goto_6

    .line 233
    :cond_c
    new-instance v13, Lorg/apache/http/impl/execchain/HttpResponseProxy;

    invoke-direct {v13, v0, v11}, Lorg/apache/http/impl/execchain/HttpResponseProxy;-><init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)V

    return-object v13

    .line 230
    :cond_d
    :goto_6
    invoke-virtual {v11}, Lorg/apache/http/impl/execchain/ConnectionHolder;->releaseConnection()V

    .line 231
    new-instance v13, Lorg/apache/http/impl/execchain/HttpResponseProxy;

    const/4 v14, 0x0

    invoke-direct {v13, v0, v14}, Lorg/apache/http/impl/execchain/HttpResponseProxy;-><init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)V
    :try_end_3
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v13

    .line 246
    .end local v0    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "target":Lorg/apache/http/HttpHost;
    .end local v12    # "original":Lorg/apache/http/HttpRequest;
    .end local v16    # "timeout":I
    :catch_0
    move-exception v0

    .line 247
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v11}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 248
    throw v0

    .line 243
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 244
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v11}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 245
    throw v0

    .line 240
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 241
    .local v0, "ex":Lorg/apache/http/HttpException;
    invoke-virtual {v11}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 242
    throw v0

    .line 235
    .end local v0    # "ex":Lorg/apache/http/HttpException;
    :catch_3
    move-exception v0

    .line 236
    .local v0, "ex":Lorg/apache/http/impl/conn/ConnectionShutdownException;
    new-instance v6, Ljava/io/InterruptedIOException;

    const-string v8, "Connection has been shut down"

    invoke-direct {v6, v8}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 238
    .local v6, "ioex":Ljava/io/InterruptedIOException;
    invoke-virtual {v6, v0}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 239
    throw v6

    .line 162
    .end local v0    # "ex":Lorg/apache/http/impl/conn/ConnectionShutdownException;
    .end local v6    # "ioex":Ljava/io/InterruptedIOException;
    .end local v10    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v11    # "releaseTrigger":Lorg/apache/http/impl/execchain/ConnectionHolder;
    :catch_4
    move-exception v0

    const/4 v6, 0x0

    goto :goto_7

    .line 159
    :catch_5
    move-exception v0

    goto :goto_8

    .line 162
    :catch_6
    move-exception v0

    .line 163
    .local v0, "ex":Ljava/util/concurrent/ExecutionException;
    .local v6, "managedConn":Lorg/apache/http/HttpClientConnection;
    :goto_7
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    .line 164
    .local v8, "cause":Ljava/lang/Throwable;
    if-nez v8, :cond_e

    .line 165
    move-object v8, v0

    .line 167
    :cond_e
    new-instance v10, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string v11, "Request execution failed"

    invoke-direct {v10, v11, v8}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 159
    .end local v0    # "ex":Ljava/util/concurrent/ExecutionException;
    .end local v6    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v8    # "cause":Ljava/lang/Throwable;
    :catch_7
    move-exception v0

    const/4 v6, 0x0

    .line 160
    .local v0, "interrupted":Ljava/lang/InterruptedException;
    .restart local v6    # "managedConn":Lorg/apache/http/HttpClientConnection;
    :goto_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    .line 161
    new-instance v10, Lorg/apache/http/impl/execchain/RequestAbortedException;

    invoke-direct {v10, v8, v0}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method
