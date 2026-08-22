.class public Lb/a/f;
.super Lb/a/bj;

# interfaces
.implements Lb/a/is;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;JI)V
    .locals 3

    invoke-direct {p0}, Lb/a/bj;-><init>()V

    invoke-virtual {p0, p1}, Lb/a/f;->a(Ljava/lang/String;)Lb/a/bj;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lb/a/f;->b(J)Lb/a/bj;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p2}, Lb/a/f;->b(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/f;->a(Ljava/util/Map;)Lb/a/bj;

    :cond_0
    if-lez p5, :cond_2

    :goto_0
    invoke-virtual {p0, p5}, Lb/a/f;->a(I)Lb/a/bj;

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, p3, p4}, Lb/a/f;->a(J)Lb/a/bj;

    :cond_1
    return-void

    :cond_2
    const/4 p5, 0x1

    goto :goto_0
.end method

.method private b(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 10

    const/4 v0, 0x0

    const/16 v3, 0xa

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v2, v0

    :cond_0
    :goto_0
    if-ge v2, v3, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v6, Lb/a/ej;

    invoke-direct {v6}, Lb/a/ej;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v7, v0, Ljava/lang/String;

    if-eqz v7, :cond_2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lb/a/ej;->a(Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {v6}, Lb/a/ej;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    instance-of v7, v0, Ljava/lang/Long;

    if-eqz v7, :cond_3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lb/a/ej;->a(J)V

    goto :goto_1

    :cond_3
    instance-of v7, v0, Ljava/lang/Integer;

    if-eqz v7, :cond_4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lb/a/ej;->a(J)V

    goto :goto_1

    :cond_4
    instance-of v7, v0, Ljava/lang/Float;

    if-eqz v7, :cond_5

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lb/a/ej;->a(J)V

    goto :goto_1

    :cond_5
    instance-of v7, v0, Ljava/lang/Double;

    if-eqz v7, :cond_1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lb/a/ej;->a(J)V

    goto :goto_1

    :cond_6
    return-object v5
.end method


# virtual methods
.method public a(Lb/a/fp;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Lb/a/fp;->b()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lb/a/fp;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/da;

    invoke-virtual {v0}, Lb/a/da;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lb/a/da;

    invoke-direct {v0}, Lb/a/da;-><init>()V

    invoke-virtual {v0, p2}, Lb/a/da;->a(Ljava/lang/String;)Lb/a/da;

    invoke-virtual {p1, v0}, Lb/a/fp;->a(Lb/a/da;)V

    :cond_1
    invoke-virtual {v0, p0}, Lb/a/da;->a(Lb/a/bj;)V

    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
