.class public Lorg/apache/http/cookie/CookiePriorityComparator;
.super Ljava/lang/Object;
.source "CookiePriorityComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/http/cookie/Cookie;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/http/cookie/CookiePriorityComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/http/cookie/CookiePriorityComparator;

    invoke-direct {v0}, Lorg/apache/http/cookie/CookiePriorityComparator;-><init>()V

    sput-object v0, Lorg/apache/http/cookie/CookiePriorityComparator;->INSTANCE:Lorg/apache/http/cookie/CookiePriorityComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPathLength(Lorg/apache/http/cookie/Cookie;)I
    .locals 2

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    move-object v0, p1

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    move-object v1, p2

    check-cast v1, Lorg/apache/http/cookie/Cookie;

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/cookie/CookiePriorityComparator;->compare(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/Cookie;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/Cookie;)I
    .locals 9

    invoke-direct {p0, p1}, Lorg/apache/http/cookie/CookiePriorityComparator;->getPathLength(Lorg/apache/http/cookie/Cookie;)I

    move-result v0

    invoke-direct {p0, p2}, Lorg/apache/http/cookie/CookiePriorityComparator;->getPathLength(Lorg/apache/http/cookie/Cookie;)I

    move-result v1

    sub-int v2, v1, v0

    if-nez v2, :cond_0

    instance-of v3, p1, Lorg/apache/http/impl/cookie/BasicClientCookie;

    if-eqz v3, :cond_0

    instance-of v3, p2, Lorg/apache/http/impl/cookie/BasicClientCookie;

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-virtual {v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->getCreationDate()Ljava/util/Date;

    move-result-object v3

    move-object v4, p2

    check-cast v4, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-virtual {v4}, Lorg/apache/http/impl/cookie/BasicClientCookie;->getCreationDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v6, v5

    return v6

    :cond_0
    return v2
.end method
