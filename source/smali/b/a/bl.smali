.class Lb/a/bl;
.super Lb/a/hw;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hw;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/bk;)V
    .locals 0

    invoke-direct {p0}, Lb/a/bl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/bj;)V
    .locals 7

    const/16 v6, 0xa

    const/4 v5, 0x1

    invoke-virtual {p1}, Lb/a/hn;->f()Lb/a/hs;

    :goto_0
    invoke-virtual {p1}, Lb/a/hn;->h()Lb/a/hk;

    move-result-object v0

    iget-byte v1, v0, Lb/a/hk;->b:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lb/a/hn;->g()V

    invoke-virtual {p2}, Lb/a/bj;->c()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/ho;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-short v1, v0, Lb/a/hk;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    :goto_1
    invoke-virtual {p1}, Lb/a/hn;->i()V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lb/a/hk;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/bj;->a:Ljava/lang/String;

    invoke-virtual {p2, v5}, Lb/a/bj;->a(Z)V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lb/a/hk;->b:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lb/a/hn;->j()Lb/a/hm;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, Lb/a/hm;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lb/a/bj;->b:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lb/a/hm;->c:I

    if-ge v0, v2, :cond_2

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lb/a/ej;

    invoke-direct {v3}, Lb/a/ej;-><init>()V

    invoke-virtual {v3, p1}, Lb/a/ej;->a(Lb/a/hn;)V

    iget-object v4, p2, Lb/a/bj;->b:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lb/a/hn;->k()V

    invoke-virtual {p2, v5}, Lb/a/bj;->b(Z)V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v6, :cond_4

    invoke-virtual {p1}, Lb/a/hn;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/bj;->c:J

    invoke-virtual {p2, v5}, Lb/a/bj;->c(Z)V

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v1, v0, Lb/a/hk;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Lb/a/hn;->s()I

    move-result v0

    iput v0, p2, Lb/a/bj;->d:I

    invoke-virtual {p2, v5}, Lb/a/bj;->d(Z)V

    goto :goto_1

    :cond_5
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_4
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v6, :cond_6

    invoke-virtual {p1}, Lb/a/hn;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/bj;->e:J

    invoke-virtual {p2, v5}, Lb/a/bj;->e(Z)V

    goto/16 :goto_1

    :cond_6
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p2}, Lb/a/bj;->d()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/bj;

    invoke-virtual {p0, p1, p2}, Lb/a/bl;->b(Lb/a/hn;Lb/a/bj;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/bj;)V
    .locals 4

    invoke-virtual {p2}, Lb/a/bj;->d()V

    invoke-static {}, Lb/a/bj;->e()Lb/a/hs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hs;)V

    iget-object v0, p2, Lb/a/bj;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lb/a/bj;->f()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/bj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_0
    iget-object v0, p2, Lb/a/bj;->b:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-static {}, Lb/a/bj;->g()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    new-instance v0, Lb/a/hm;

    const/16 v1, 0xb

    const/16 v2, 0xc

    iget-object v3, p2, Lb/a/bj;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lb/a/hm;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hm;)V

    iget-object v0, p2, Lb/a/bj;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/ej;

    invoke-virtual {v0, p1}, Lb/a/ej;->b(Lb/a/hn;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lb/a/hn;->d()V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_2
    invoke-virtual {p2}, Lb/a/bj;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lb/a/bj;->h()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-wide v0, p2, Lb/a/bj;->c:J

    invoke-virtual {p1, v0, v1}, Lb/a/hn;->a(J)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_3
    invoke-virtual {p2}, Lb/a/bj;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lb/a/bj;->i()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget v0, p2, Lb/a/bj;->d:I

    invoke-virtual {p1, v0}, Lb/a/hn;->a(I)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_4
    invoke-static {}, Lb/a/bj;->j()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-wide v0, p2, Lb/a/bj;->e:J

    invoke-virtual {p1, v0, v1}, Lb/a/hn;->a(J)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    invoke-virtual {p1}, Lb/a/hn;->c()V

    invoke-virtual {p1}, Lb/a/hn;->a()V

    return-void
.end method

.method public synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/bj;

    invoke-virtual {p0, p1, p2}, Lb/a/bl;->a(Lb/a/hn;Lb/a/bj;)V

    return-void
.end method
