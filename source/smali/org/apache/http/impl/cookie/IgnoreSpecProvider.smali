.class public Lorg/apache/http/impl/cookie/IgnoreSpecProvider;
.super Ljava/lang/Object;
.source "IgnoreSpecProvider.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecProvider;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private volatile cookieSpec:Lorg/apache/http/cookie/CookieSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/cookie/IgnoreSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/cookie/IgnoreSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/http/impl/cookie/IgnoreSpec;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/IgnoreSpec;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/IgnoreSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/http/impl/cookie/IgnoreSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    return-object v0
.end method
