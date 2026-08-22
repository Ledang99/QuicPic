.class public Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;
.super Ljava/lang/Object;
.source "RFC6265CookieSpecProvider.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final compatibilityLevel:Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

.field private volatile cookieSpec:Lorg/apache/http/cookie/CookieSpec;

.field private final publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;->RELAXED:Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;-><init>(Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;Lorg/apache/http/conn/util/PublicSuffixMatcher;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/util/PublicSuffixMatcher;)V
    .locals 1

    sget-object v0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;->RELAXED:Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    invoke-direct {p0, v0, p1}, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;-><init>(Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;Lorg/apache/http/conn/util/PublicSuffixMatcher;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;Lorg/apache/http/conn/util/PublicSuffixMatcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;->RELAXED:Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    :goto_0
    iput-object v0, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->compatibilityLevel:Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    iput-object p2, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;
    .locals 8

    iget-object v0, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    if-nez v0, :cond_2

    sget-object v0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$2;->$SwitchMap$org$apache$http$impl$cookie$RFC6265CookieSpecProvider$CompatibilityLevel:[I

    iget-object v1, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->compatibilityLevel:Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    invoke-virtual {v1}, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_0

    new-instance v0, Lorg/apache/http/impl/cookie/RFC6265LaxSpec;

    new-array v4, v4, [Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    new-instance v7, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v7}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    aput-object v7, v4, v3

    new-instance v3, Lorg/apache/http/impl/cookie/BasicDomainHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/BasicDomainHandler;-><init>()V

    iget-object v7, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    invoke-static {v3, v7}, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->decorate(Lorg/apache/http/cookie/CommonCookieAttributeHandler;Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    move-result-object v3

    aput-object v3, v4, v6

    new-instance v3, Lorg/apache/http/impl/cookie/LaxMaxAgeHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/LaxMaxAgeHandler;-><init>()V

    aput-object v3, v4, v5

    new-instance v3, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v3, v4, v2

    new-instance v2, Lorg/apache/http/impl/cookie/LaxExpiresHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/LaxExpiresHandler;-><init>()V

    aput-object v2, v4, v1

    invoke-direct {v0, v4}, Lorg/apache/http/impl/cookie/RFC6265LaxSpec;-><init>([Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/http/impl/cookie/RFC6265LaxSpec;

    new-array v4, v4, [Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    new-instance v7, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$1;

    invoke-direct {v7, p0}, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$1;-><init>(Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;)V

    aput-object v7, v4, v3

    new-instance v3, Lorg/apache/http/impl/cookie/BasicDomainHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/BasicDomainHandler;-><init>()V

    iget-object v7, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    invoke-static {v3, v7}, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->decorate(Lorg/apache/http/cookie/CommonCookieAttributeHandler;Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    move-result-object v3

    aput-object v3, v4, v6

    new-instance v3, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    aput-object v3, v4, v5

    new-instance v3, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v3, v4, v2

    new-instance v2, Lorg/apache/http/impl/cookie/BasicExpiresHandler;

    sget-object v3, Lorg/apache/http/impl/cookie/RFC6265StrictSpec;->DATE_PATTERNS:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    aput-object v2, v4, v1

    invoke-direct {v0, v4}, Lorg/apache/http/impl/cookie/RFC6265LaxSpec;-><init>([Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/http/impl/cookie/RFC6265StrictSpec;

    new-array v4, v4, [Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    new-instance v7, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v7}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    aput-object v7, v4, v3

    new-instance v3, Lorg/apache/http/impl/cookie/BasicDomainHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/BasicDomainHandler;-><init>()V

    iget-object v7, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    invoke-static {v3, v7}, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->decorate(Lorg/apache/http/cookie/CommonCookieAttributeHandler;Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    move-result-object v3

    aput-object v3, v4, v6

    new-instance v3, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    aput-object v3, v4, v5

    new-instance v3, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v3, v4, v2

    new-instance v2, Lorg/apache/http/impl/cookie/BasicExpiresHandler;

    sget-object v3, Lorg/apache/http/impl/cookie/RFC6265StrictSpec;->DATE_PATTERNS:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    aput-object v2, v4, v1

    invoke-direct {v0, v4}, Lorg/apache/http/impl/cookie/RFC6265StrictSpec;-><init>([Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    :cond_2
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    return-object v0
.end method
