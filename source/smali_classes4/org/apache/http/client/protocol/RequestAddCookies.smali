.class public Lorg/apache/http/client/protocol/RequestAddCookies;
.super Ljava/lang/Object;
.source "RequestAddCookies.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    .line 73
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 27
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "HTTP request"

    invoke-static {v2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    const-string v0, "HTTP context"

    invoke-static {v3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "method":Ljava/lang/String;
    const-string v0, "CONNECT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    return-void

    .line 86
    :cond_0
    invoke-static/range {p2 .. p2}, Lorg/apache/http/client/protocol/HttpClientContext;->adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/protocol/HttpClientContext;

    move-result-object v5

    .line 89
    .local v5, "clientContext":Lorg/apache/http/client/protocol/HttpClientContext;
    invoke-virtual {v5}, Lorg/apache/http/client/protocol/HttpClientContext;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v6

    .line 90
    .local v6, "cookieStore":Lorg/apache/http/client/CookieStore;
    if-nez v6, :cond_1

    .line 91
    iget-object v0, v1, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Cookie store not specified in HTTP context"

    invoke-interface {v0, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 92
    return-void

    .line 96
    :cond_1
    invoke-virtual {v5}, Lorg/apache/http/client/protocol/HttpClientContext;->getCookieSpecRegistry()Lorg/apache/http/config/Lookup;

    move-result-object v7

    .line 97
    .local v7, "registry":Lorg/apache/http/config/Lookup;, "Lorg/apache/http/config/Lookup<Lorg/apache/http/cookie/CookieSpecProvider;>;"
    if-nez v7, :cond_2

    .line 98
    iget-object v0, v1, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    const-string v8, "CookieSpec registry not specified in HTTP context"

    invoke-interface {v0, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 99
    return-void

    .line 103
    :cond_2
    invoke-virtual {v5}, Lorg/apache/http/client/protocol/HttpClientContext;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v8

    .line 104
    .local v8, "targetHost":Lorg/apache/http/HttpHost;
    if-nez v8, :cond_3

    .line 105
    iget-object v0, v1, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    const-string v9, "Target host not set in the context"

    invoke-interface {v0, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 106
    return-void

    .line 110
    :cond_3
    invoke-virtual {v5}, Lorg/apache/http/client/protocol/HttpClientContext;->getHttpRoute()Lorg/apache/http/conn/routing/RouteInfo;

    move-result-object v9

    .line 111
    .local v9, "route":Lorg/apache/http/conn/routing/RouteInfo;
    if-nez v9, :cond_4

    .line 112
    iget-object v0, v1, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    const-string v10, "Connection route not set in the context"

    invoke-interface {v0, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 113
    return-void

    .line 116
    :cond_4
    invoke-virtual {v5}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v10

    .line 117
    .local v10, "config":Lorg/apache/http/client/config/RequestConfig;
    invoke-virtual {v10}, Lorg/apache/http/client/config/RequestConfig;->getCookieSpec()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "policy":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 119
    const-string v0, "default"

    move-object v11, v0

    goto :goto_0

    .line 118
    :cond_5
    move-object v11, v0

    .line 121
    .end local v0    # "policy":Ljava/lang/String;
    .local v11, "policy":Ljava/lang/String;
    :goto_0
    iget-object v0, v1, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 122
    iget-object v0, v1, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CookieSpec selected: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 125
    :cond_6
    const/4 v12, 0x0

    .line 126
    .local v12, "requestURI":Ljava/net/URI;
    instance-of v0, v2, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_7

    .line 127
    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v12

    goto :goto_1

    .line 130
    :cond_7
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v0

    .line 132
    goto :goto_1

    .line 131
    :catch_0
    move-exception v0

    .line 134
    :goto_1
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    .line 135
    .local v0, "path":Ljava/lang/String;
    :goto_2
    invoke-virtual {v8}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v13

    .line 136
    .local v13, "hostName":Ljava/lang/String;
    invoke-virtual {v8}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v14

    .line 137
    .local v14, "port":I
    if-gez v14, :cond_9

    .line 138
    invoke-interface {v9}, Lorg/apache/http/conn/routing/RouteInfo;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v14

    .line 141
    :cond_9
    new-instance v15, Lorg/apache/http/cookie/CookieOrigin;

    if-ltz v14, :cond_a

    move-object/from16 v17, v4

    move v4, v14

    goto :goto_3

    :cond_a
    const/16 v16, 0x0

    move-object/from16 v17, v4

    const/4 v4, 0x0

    .end local v4    # "method":Ljava/lang/String;
    .local v17, "method":Ljava/lang/String;
    :goto_3
    invoke-static {v0}, Lorg/apache/http/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_b

    move-object/from16 v18, v0

    goto :goto_4

    :cond_b
    const-string v16, "/"

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    .end local v0    # "path":Ljava/lang/String;
    .local v18, "path":Ljava/lang/String;
    :goto_4
    move-object/from16 v16, v8

    .end local v8    # "targetHost":Lorg/apache/http/HttpHost;
    .local v16, "targetHost":Lorg/apache/http/HttpHost;
    invoke-interface {v9}, Lorg/apache/http/conn/routing/RouteInfo;->isSecure()Z

    move-result v8

    invoke-direct {v15, v13, v4, v0, v8}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    move-object v0, v15

    .line 148
    .local v0, "cookieOrigin":Lorg/apache/http/cookie/CookieOrigin;
    invoke-interface {v7, v11}, Lorg/apache/http/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/cookie/CookieSpecProvider;

    .line 149
    .local v4, "provider":Lorg/apache/http/cookie/CookieSpecProvider;
    if-nez v4, :cond_d

    .line 150
    iget-object v8, v1, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 151
    iget-object v8, v1, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v7

    .end local v7    # "registry":Lorg/apache/http/config/Lookup;, "Lorg/apache/http/config/Lookup<Lorg/apache/http/cookie/CookieSpecProvider;>;"
    .local v19, "registry":Lorg/apache/http/config/Lookup;, "Lorg/apache/http/config/Lookup<Lorg/apache/http/cookie/CookieSpecProvider;>;"
    const-string v7, "Unsupported cookie policy: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_5

    .line 150
    .end local v19    # "registry":Lorg/apache/http/config/Lookup;, "Lorg/apache/http/config/Lookup<Lorg/apache/http/cookie/CookieSpecProvider;>;"
    .restart local v7    # "registry":Lorg/apache/http/config/Lookup;, "Lorg/apache/http/config/Lookup<Lorg/apache/http/cookie/CookieSpecProvider;>;"
    :cond_c
    move-object/from16 v19, v7

    .line 154
    .end local v7    # "registry":Lorg/apache/http/config/Lookup;, "Lorg/apache/http/config/Lookup<Lorg/apache/http/cookie/CookieSpecProvider;>;"
    .restart local v19    # "registry":Lorg/apache/http/config/Lookup;, "Lorg/apache/http/config/Lookup<Lorg/apache/http/cookie/CookieSpecProvider;>;"
    :goto_5
    return-void

    .line 156
    .end local v19    # "registry":Lorg/apache/http/config/Lookup;, "Lorg/apache/http/config/Lookup<Lorg/apache/http/cookie/CookieSpecProvider;>;"
    .restart local v7    # "registry":Lorg/apache/http/config/Lookup;, "Lorg/apache/http/config/Lookup<Lorg/apache/http/cookie/CookieSpecProvider;>;"
    :cond_d
    move-object/from16 v19, v7

    .end local v7    # "registry":Lorg/apache/http/config/Lookup;, "Lorg/apache/http/config/Lookup<Lorg/apache/http/cookie/CookieSpecProvider;>;"
    .restart local v19    # "registry":Lorg/apache/http/config/Lookup;, "Lorg/apache/http/config/Lookup<Lorg/apache/http/cookie/CookieSpecProvider;>;"
    invoke-interface {v4, v5}, Lorg/apache/http/cookie/CookieSpecProvider;->create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;

    move-result-object v7

    .line 158
    .local v7, "cookieSpec":Lorg/apache/http/cookie/CookieSpec;
    invoke-interface {v6}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v8

    .line 160
    .local v8, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v15, "matchedCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    move-object/from16 v21, v20

    .line 162
    .local v21, "now":Ljava/util/Date;
    const/16 v20, 0x0

    .line 163
    .local v20, "expired":Z
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_12

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v4

    .end local v4    # "provider":Lorg/apache/http/cookie/CookieSpecProvider;
    .local v24, "provider":Lorg/apache/http/cookie/CookieSpecProvider;
    move-object/from16 v4, v23

    check-cast v4, Lorg/apache/http/cookie/Cookie;

    .line 164
    .local v4, "cookie":Lorg/apache/http/cookie/Cookie;
    move-object/from16 v23, v5

    move-object/from16 v5, v21

    .end local v21    # "now":Ljava/util/Date;
    .local v5, "now":Ljava/util/Date;
    .local v23, "clientContext":Lorg/apache/http/client/protocol/HttpClientContext;
    invoke-interface {v4, v5}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v21

    move-object/from16 v25, v8

    .end local v8    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .local v25, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    const-string v8, "Cookie "

    if-nez v21, :cond_10

    .line 165
    invoke-interface {v7, v4, v0}, Lorg/apache/http/cookie/CookieSpec;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 166
    move-object/from16 v21, v9

    .end local v9    # "route":Lorg/apache/http/conn/routing/RouteInfo;
    .local v21, "route":Lorg/apache/http/conn/routing/RouteInfo;
    iget-object v9, v1, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 167
    iget-object v9, v1, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v26, v10

    .end local v10    # "config":Lorg/apache/http/client/config/RequestConfig;
    .local v26, "config":Lorg/apache/http/client/config/RequestConfig;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " match "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_7

    .line 166
    .end local v26    # "config":Lorg/apache/http/client/config/RequestConfig;
    .restart local v10    # "config":Lorg/apache/http/client/config/RequestConfig;
    :cond_e
    move-object/from16 v26, v10

    .line 169
    .end local v10    # "config":Lorg/apache/http/client/config/RequestConfig;
    .restart local v26    # "config":Lorg/apache/http/client/config/RequestConfig;
    :goto_7
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 165
    .end local v21    # "route":Lorg/apache/http/conn/routing/RouteInfo;
    .end local v26    # "config":Lorg/apache/http/client/config/RequestConfig;
    .restart local v9    # "route":Lorg/apache/http/conn/routing/RouteInfo;
    .restart local v10    # "config":Lorg/apache/http/client/config/RequestConfig;
    :cond_f
    move-object/from16 v21, v9

    move-object/from16 v26, v10

    .end local v9    # "route":Lorg/apache/http/conn/routing/RouteInfo;
    .end local v10    # "config":Lorg/apache/http/client/config/RequestConfig;
    .restart local v21    # "route":Lorg/apache/http/conn/routing/RouteInfo;
    .restart local v26    # "config":Lorg/apache/http/client/config/RequestConfig;
    goto :goto_8

    .line 172
    .end local v21    # "route":Lorg/apache/http/conn/routing/RouteInfo;
    .end local v26    # "config":Lorg/apache/http/client/config/RequestConfig;
    .restart local v9    # "route":Lorg/apache/http/conn/routing/RouteInfo;
    .restart local v10    # "config":Lorg/apache/http/client/config/RequestConfig;
    :cond_10
    move-object/from16 v21, v9

    move-object/from16 v26, v10

    .end local v9    # "route":Lorg/apache/http/conn/routing/RouteInfo;
    .end local v10    # "config":Lorg/apache/http/client/config/RequestConfig;
    .restart local v21    # "route":Lorg/apache/http/conn/routing/RouteInfo;
    .restart local v26    # "config":Lorg/apache/http/client/config/RequestConfig;
    iget-object v9, v1, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 173
    iget-object v9, v1, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " expired"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 175
    :cond_11
    const/4 v8, 0x1

    move/from16 v20, v8

    .line 177
    .end local v4    # "cookie":Lorg/apache/http/cookie/Cookie;
    :goto_8
    move-object/from16 v9, v21

    move-object/from16 v4, v24

    move-object/from16 v8, v25

    move-object/from16 v10, v26

    move-object/from16 v21, v5

    move-object/from16 v5, v23

    goto/16 :goto_6

    .line 163
    .end local v23    # "clientContext":Lorg/apache/http/client/protocol/HttpClientContext;
    .end local v24    # "provider":Lorg/apache/http/cookie/CookieSpecProvider;
    .end local v25    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v26    # "config":Lorg/apache/http/client/config/RequestConfig;
    .local v4, "provider":Lorg/apache/http/cookie/CookieSpecProvider;
    .local v5, "clientContext":Lorg/apache/http/client/protocol/HttpClientContext;
    .restart local v8    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v9    # "route":Lorg/apache/http/conn/routing/RouteInfo;
    .restart local v10    # "config":Lorg/apache/http/client/config/RequestConfig;
    .local v21, "now":Ljava/util/Date;
    :cond_12
    move-object/from16 v24, v4

    move-object/from16 v23, v5

    move-object/from16 v25, v8

    move-object/from16 v26, v10

    move-object/from16 v5, v21

    move-object/from16 v21, v9

    .line 181
    .end local v4    # "provider":Lorg/apache/http/cookie/CookieSpecProvider;
    .end local v8    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v9    # "route":Lorg/apache/http/conn/routing/RouteInfo;
    .end local v10    # "config":Lorg/apache/http/client/config/RequestConfig;
    .end local v22    # "i$":Ljava/util/Iterator;
    .local v5, "now":Ljava/util/Date;
    .local v21, "route":Lorg/apache/http/conn/routing/RouteInfo;
    .restart local v23    # "clientContext":Lorg/apache/http/client/protocol/HttpClientContext;
    .restart local v24    # "provider":Lorg/apache/http/cookie/CookieSpecProvider;
    .restart local v25    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v26    # "config":Lorg/apache/http/client/config/RequestConfig;
    if-eqz v20, :cond_13

    .line 182
    invoke-interface {v6, v5}, Lorg/apache/http/client/CookieStore;->clearExpired(Ljava/util/Date;)Z

    .line 185
    :cond_13
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    .line 186
    invoke-interface {v7, v15}, Lorg/apache/http/cookie/CookieSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 187
    .local v4, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/http/Header;

    .line 188
    .local v9, "header":Lorg/apache/http/Header;
    invoke-interface {v2, v9}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 189
    .end local v9    # "header":Lorg/apache/http/Header;
    goto :goto_9

    .line 192
    .end local v4    # "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v7}, Lorg/apache/http/cookie/CookieSpec;->getVersion()I

    move-result v4

    .line 193
    .local v4, "ver":I
    if-lez v4, :cond_15

    .line 194
    invoke-interface {v7}, Lorg/apache/http/cookie/CookieSpec;->getVersionHeader()Lorg/apache/http/Header;

    move-result-object v8

    .line 195
    .local v8, "header":Lorg/apache/http/Header;
    if-eqz v8, :cond_15

    .line 197
    invoke-interface {v2, v8}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 203
    .end local v8    # "header":Lorg/apache/http/Header;
    :cond_15
    const-string v8, "http.cookie-spec"

    invoke-interface {v3, v8, v7}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    const-string v8, "http.cookie-origin"

    invoke-interface {v3, v8, v0}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    return-void
.end method
