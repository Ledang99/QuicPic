.class public Lorg/apache/http/impl/client/AIMDBackoffManager;
.super Ljava/lang/Object;
.source "AIMDBackoffManager.java"

# interfaces
.implements Lorg/apache/http/client/BackoffManager;


# instance fields
.field private backoffFactor:D

.field private cap:I

.field private final clock:Lorg/apache/http/impl/client/Clock;

.field private final connPerRoute:Lorg/apache/http/pool/ConnPoolControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/pool/ConnPoolControl<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            ">;"
        }
    .end annotation
.end field

.field private coolDown:J

.field private final lastRouteBackoffs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final lastRouteProbes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/http/pool/ConnPoolControl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/pool/ConnPoolControl<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/apache/http/impl/client/SystemClock;

    invoke-direct {v0}, Lorg/apache/http/impl/client/SystemClock;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/client/AIMDBackoffManager;-><init>(Lorg/apache/http/pool/ConnPoolControl;Lorg/apache/http/impl/client/Clock;)V

    return-void
.end method

.method constructor <init>(Lorg/apache/http/pool/ConnPoolControl;Lorg/apache/http/impl/client/Clock;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/pool/ConnPoolControl<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            ">;",
            "Lorg/apache/http/impl/client/Clock;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->coolDown:J

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->backoffFactor:D

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->cap:I

    iput-object p2, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->clock:Lorg/apache/http/impl/client/Clock;

    iput-object p1, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->connPerRoute:Lorg/apache/http/pool/ConnPoolControl;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->lastRouteProbes:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->lastRouteBackoffs:Ljava/util/Map;

    return-void
.end method

.method private getBackedOffPoolSize(I)I
    .locals 4

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->backoffFactor:D

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private getLastUpdate(Ljava/util/Map;Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public backOff(Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 10

    iget-object v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->connPerRoute:Lorg/apache/http/pool/ConnPoolControl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->connPerRoute:Lorg/apache/http/pool/ConnPoolControl;

    invoke-interface {v1, p1}, Lorg/apache/http/pool/ConnPoolControl;->getMaxPerRoute(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->lastRouteBackoffs:Ljava/util/Map;

    invoke-direct {p0, v2, p1}, Lorg/apache/http/impl/client/AIMDBackoffManager;->getLastUpdate(Ljava/util/Map;Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->clock:Lorg/apache/http/impl/client/Clock;

    invoke-interface {v3}, Lorg/apache/http/impl/client/Clock;->getCurrentTime()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v3, v5

    iget-wide v7, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->coolDown:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v5, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->connPerRoute:Lorg/apache/http/pool/ConnPoolControl;

    invoke-direct {p0, v1}, Lorg/apache/http/impl/client/AIMDBackoffManager;->getBackedOffPoolSize(I)I

    move-result v6

    invoke-interface {v5, p1, v6}, Lorg/apache/http/pool/ConnPoolControl;->setMaxPerRoute(Ljava/lang/Object;I)V

    iget-object v5, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->lastRouteBackoffs:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public probe(Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 12

    iget-object v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->connPerRoute:Lorg/apache/http/pool/ConnPoolControl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->connPerRoute:Lorg/apache/http/pool/ConnPoolControl;

    invoke-interface {v1, p1}, Lorg/apache/http/pool/ConnPoolControl;->getMaxPerRoute(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->cap:I

    if-lt v1, v2, :cond_0

    iget v2, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->cap:I

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    :goto_0
    iget-object v3, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->lastRouteProbes:Ljava/util/Map;

    invoke-direct {p0, v3, p1}, Lorg/apache/http/impl/client/AIMDBackoffManager;->getLastUpdate(Ljava/util/Map;Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->lastRouteBackoffs:Ljava/util/Map;

    invoke-direct {p0, v4, p1}, Lorg/apache/http/impl/client/AIMDBackoffManager;->getLastUpdate(Ljava/util/Map;Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->clock:Lorg/apache/http/impl/client/Clock;

    invoke-interface {v5}, Lorg/apache/http/impl/client/Clock;->getCurrentTime()J

    move-result-wide v5

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, v5, v7

    iget-wide v9, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->coolDown:J

    cmp-long v11, v7, v9

    if-ltz v11, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, v5, v7

    iget-wide v9, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->coolDown:J

    cmp-long v11, v7, v9

    if-gez v11, :cond_1

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->connPerRoute:Lorg/apache/http/pool/ConnPoolControl;

    invoke-interface {v7, p1, v2}, Lorg/apache/http/pool/ConnPoolControl;->setMaxPerRoute(Ljava/lang/Object;I)V

    iget-object v7, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->lastRouteProbes:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit v0

    return-void

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBackoffFactor(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Backoff factor must be 0.0 < f < 1.0"

    invoke-static {v0, v1}, Lorg/apache/http/util/Args;->check(ZLjava/lang/String;)V

    iput-wide p1, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->backoffFactor:D

    return-void
.end method

.method public setCooldownMillis(J)V
    .locals 3

    iget-wide v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->coolDown:J

    const-string v2, "Cool down"

    invoke-static {v0, v1, v2}, Lorg/apache/http/util/Args;->positive(JLjava/lang/String;)J

    iput-wide p1, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->coolDown:J

    return-void
.end method

.method public setPerHostConnectionCap(I)V
    .locals 1

    const-string v0, "Per host connection cap"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->positive(ILjava/lang/String;)I

    iput p1, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->cap:I

    return-void
.end method
