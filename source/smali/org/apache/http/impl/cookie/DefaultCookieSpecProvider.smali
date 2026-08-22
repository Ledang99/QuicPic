.class public Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;
.super Ljava/lang/Object;
.source "DefaultCookieSpecProvider.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final compatibilityLevel:Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

.field private volatile cookieSpec:Lorg/apache/http/cookie/CookieSpec;

.field private final datepatterns:[Ljava/lang/String;

.field private final oneHeader:Z

.field private final publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 84
    sget-object v0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->DEFAULT:Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v1, v2}, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;-><init>(Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lorg/apache/http/conn/util/PublicSuffixMatcher;[Ljava/lang/String;Z)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/util/PublicSuffixMatcher;)V
    .locals 3
    .param p1, "publicSuffixMatcher"    # Lorg/apache/http/conn/util/PublicSuffixMatcher;

    .line 80
    sget-object v0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->DEFAULT:Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;-><init>(Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lorg/apache/http/conn/util/PublicSuffixMatcher;[Ljava/lang/String;Z)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lorg/apache/http/conn/util/PublicSuffixMatcher;)V
    .locals 2
    .param p1, "compatibilityLevel"    # Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;
    .param p2, "publicSuffixMatcher"    # Lorg/apache/http/conn/util/PublicSuffixMatcher;

    .line 76
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;-><init>(Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lorg/apache/http/conn/util/PublicSuffixMatcher;[Ljava/lang/String;Z)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lorg/apache/http/conn/util/PublicSuffixMatcher;[Ljava/lang/String;Z)V
    .locals 1
    .param p1, "compatibilityLevel"    # Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;
    .param p2, "publicSuffixMatcher"    # Lorg/apache/http/conn/util/PublicSuffixMatcher;
    .param p3, "datepatterns"    # [Ljava/lang/String;
    .param p4, "oneHeader"    # Z

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->DEFAULT:Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    :goto_0
    iput-object v0, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->compatibilityLevel:Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    .line 68
    iput-object p2, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    .line 69
    iput-object p3, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->datepatterns:[Ljava/lang/String;

    .line 70
    iput-boolean p4, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->oneHeader:Z

    .line 71
    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;
    .locals 12
    .param p1, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 89
    iget-object v0, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    if-nez v0, :cond_3

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    if-nez v0, :cond_2

    .line 92
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2965Spec;

    iget-boolean v1, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->oneHeader:Z

    const/16 v2, 0x9

    new-array v2, v2, [Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    new-instance v3, Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandler;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandler;-><init>()V

    iget-object v6, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    invoke-static {v3, v6}, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->decorate(Lorg/apache/http/cookie/CommonCookieAttributeHandler;Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;-><init>()V

    const/4 v7, 0x3

    aput-object v3, v2, v7

    new-instance v3, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    const/4 v8, 0x4

    aput-object v3, v2, v8

    new-instance v3, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    const/4 v9, 0x5

    aput-object v3, v2, v9

    new-instance v3, Lorg/apache/http/impl/cookie/BasicCommentHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    const/4 v10, 0x6

    aput-object v3, v2, v10

    const/4 v3, 0x7

    new-instance v11, Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandler;

    invoke-direct {v11}, Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandler;-><init>()V

    aput-object v11, v2, v3

    const/16 v3, 0x8

    new-instance v11, Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;

    invoke-direct {v11}, Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;-><init>()V

    aput-object v11, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/cookie/RFC2965Spec;-><init>(Z[Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V

    .line 103
    .local v0, "strict":Lorg/apache/http/impl/cookie/RFC2965Spec;
    new-instance v1, Lorg/apache/http/impl/cookie/RFC2109Spec;

    iget-boolean v2, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->oneHeader:Z

    new-array v3, v10, [Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    new-instance v10, Lorg/apache/http/impl/cookie/RFC2109VersionHandler;

    invoke-direct {v10}, Lorg/apache/http/impl/cookie/RFC2109VersionHandler;-><init>()V

    aput-object v10, v3, v4

    new-instance v10, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v10}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    aput-object v10, v3, v5

    new-instance v10, Lorg/apache/http/impl/cookie/RFC2109DomainHandler;

    invoke-direct {v10}, Lorg/apache/http/impl/cookie/RFC2109DomainHandler;-><init>()V

    iget-object v11, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    invoke-static {v10, v11}, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->decorate(Lorg/apache/http/cookie/CommonCookieAttributeHandler;Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    move-result-object v10

    aput-object v10, v3, v6

    new-instance v10, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v10}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    aput-object v10, v3, v7

    new-instance v10, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v10}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v10, v3, v8

    new-instance v10, Lorg/apache/http/impl/cookie/BasicCommentHandler;

    invoke-direct {v10}, Lorg/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    aput-object v10, v3, v9

    invoke-direct {v1, v2, v3}, Lorg/apache/http/impl/cookie/RFC2109Spec;-><init>(Z[Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V

    .line 111
    .local v1, "obsoleteStrict":Lorg/apache/http/impl/cookie/RFC2109Spec;
    new-instance v2, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    new-array v3, v9, [Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    new-instance v9, Lorg/apache/http/impl/cookie/BasicDomainHandler;

    invoke-direct {v9}, Lorg/apache/http/impl/cookie/BasicDomainHandler;-><init>()V

    iget-object v10, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    invoke-static {v9, v10}, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->decorate(Lorg/apache/http/cookie/CommonCookieAttributeHandler;Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    move-result-object v9

    aput-object v9, v3, v4

    iget-object v9, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->compatibilityLevel:Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    sget-object v10, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->IE_MEDIUM_SECURITY:Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    if-ne v9, v10, :cond_0

    new-instance v9, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$1;

    invoke-direct {v9, p0}, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$1;-><init>(Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;)V

    goto :goto_0

    :cond_0
    new-instance v9, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v9}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    :goto_0
    aput-object v9, v3, v5

    new-instance v9, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v9}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v9, v3, v6

    new-instance v6, Lorg/apache/http/impl/cookie/BasicCommentHandler;

    invoke-direct {v6}, Lorg/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    aput-object v6, v3, v7

    new-instance v6, Lorg/apache/http/impl/cookie/BasicExpiresHandler;

    iget-object v7, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->datepatterns:[Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v4, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->datepatterns:[Ljava/lang/String;

    invoke-virtual {v4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-array v5, v5, [Ljava/lang/String;

    const-string v7, "EEE, dd-MMM-yy HH:mm:ss z"

    aput-object v7, v5, v4

    move-object v4, v5

    :goto_1
    invoke-direct {v6, v4}, Lorg/apache/http/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    aput-object v6, v3, v8

    invoke-direct {v2, v3}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;-><init>([Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V

    .line 127
    .local v2, "netscapeDraft":Lorg/apache/http/impl/cookie/NetscapeDraftSpec;
    new-instance v3, Lorg/apache/http/impl/cookie/DefaultCookieSpec;

    invoke-direct {v3, v0, v1, v2}, Lorg/apache/http/impl/cookie/DefaultCookieSpec;-><init>(Lorg/apache/http/impl/cookie/RFC2965Spec;Lorg/apache/http/impl/cookie/RFC2109Spec;Lorg/apache/http/impl/cookie/NetscapeDraftSpec;)V

    iput-object v3, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    .line 129
    .end local v0    # "strict":Lorg/apache/http/impl/cookie/RFC2965Spec;
    .end local v1    # "obsoleteStrict":Lorg/apache/http/impl/cookie/RFC2109Spec;
    .end local v2    # "netscapeDraft":Lorg/apache/http/impl/cookie/NetscapeDraftSpec;
    :cond_2
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 131
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    return-object v0
.end method
