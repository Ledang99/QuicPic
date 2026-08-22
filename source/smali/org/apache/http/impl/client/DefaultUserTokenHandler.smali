.class public Lorg/apache/http/impl/client/DefaultUserTokenHandler;
.super Ljava/lang/Object;
.source "DefaultUserTokenHandler.java"

# interfaces
.implements Lorg/apache/http/client/UserTokenHandler;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/client/DefaultUserTokenHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lorg/apache/http/impl/client/DefaultUserTokenHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultUserTokenHandler;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/DefaultUserTokenHandler;->INSTANCE:Lorg/apache/http/impl/client/DefaultUserTokenHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAuthPrincipal(Lorg/apache/http/auth/AuthState;)Ljava/security/Principal;
    .locals 3
    .param p0, "authState"    # Lorg/apache/http/auth/AuthState;

    .line 92
    invoke-virtual {p0}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 93
    .local v0, "scheme":Lorg/apache/http/auth/AuthScheme;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v1

    .line 95
    .local v1, "creds":Lorg/apache/http/auth/Credentials;
    if-eqz v1, :cond_0

    .line 96
    invoke-interface {v1}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v2

    return-object v2

    .line 99
    .end local v1    # "creds":Lorg/apache/http/auth/Credentials;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getUserToken(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 5
    .param p1, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 65
    invoke-static {p1}, Lorg/apache/http/client/protocol/HttpClientContext;->adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/protocol/HttpClientContext;

    move-result-object v0

    .line 67
    .local v0, "clientContext":Lorg/apache/http/client/protocol/HttpClientContext;
    const/4 v1, 0x0

    .line 69
    .local v1, "userPrincipal":Ljava/security/Principal;
    invoke-virtual {v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getTargetAuthState()Lorg/apache/http/auth/AuthState;

    move-result-object v2

    .line 70
    .local v2, "targetAuthState":Lorg/apache/http/auth/AuthState;
    if-eqz v2, :cond_0

    .line 71
    invoke-static {v2}, Lorg/apache/http/impl/client/DefaultUserTokenHandler;->getAuthPrincipal(Lorg/apache/http/auth/AuthState;)Ljava/security/Principal;

    move-result-object v1

    .line 72
    if-nez v1, :cond_0

    .line 73
    invoke-virtual {v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getProxyAuthState()Lorg/apache/http/auth/AuthState;

    move-result-object v3

    .line 74
    .local v3, "proxyAuthState":Lorg/apache/http/auth/AuthState;
    invoke-static {v3}, Lorg/apache/http/impl/client/DefaultUserTokenHandler;->getAuthPrincipal(Lorg/apache/http/auth/AuthState;)Ljava/security/Principal;

    move-result-object v1

    .line 78
    .end local v3    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :cond_0
    if-nez v1, :cond_1

    .line 79
    invoke-virtual {v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getConnection()Lorg/apache/http/HttpConnection;

    move-result-object v3

    .line 80
    .local v3, "conn":Lorg/apache/http/HttpConnection;
    invoke-interface {v3}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    instance-of v4, v3, Lorg/apache/http/conn/ManagedHttpClientConnection;

    if-eqz v4, :cond_1

    .line 81
    move-object v4, v3

    check-cast v4, Lorg/apache/http/conn/ManagedHttpClientConnection;

    invoke-interface {v4}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    .line 82
    .local v4, "sslsession":Ljavax/net/ssl/SSLSession;
    if-eqz v4, :cond_1

    .line 83
    invoke-interface {v4}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v1

    .line 88
    .end local v3    # "conn":Lorg/apache/http/HttpConnection;
    .end local v4    # "sslsession":Ljavax/net/ssl/SSLSession;
    :cond_1
    return-object v1
.end method
