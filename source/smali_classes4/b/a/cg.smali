.class Lb/a/cg;
.super Lb/a/hw;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hw;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/cf;)V
    .locals 0

    invoke-direct {p0}, Lb/a/cg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/ce;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Lb/a/hn;->f()Lb/a/hs;

    :goto_0
    invoke-virtual {p1}, Lb/a/hn;->h()Lb/a/hk;

    move-result-object v0

    iget-byte v2, v0, Lb/a/hk;->b:B

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lb/a/hn;->g()V

    invoke-virtual {p2}, Lb/a/ce;->e()V

    return-void

    :cond_0
    iget-short v2, v0, Lb/a/hk;->c:S

    packed-switch v2, :pswitch_data_0

    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    :goto_1
    invoke-virtual {p1}, Lb/a/hn;->i()V

    goto :goto_0

    :pswitch_0
    iget-byte v2, v0, Lb/a/hk;->b:B

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Lb/a/hn;->j()Lb/a/hm;

    move-result-object v2

    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lb/a/hm;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lb/a/ce;->a:Ljava/util/Map;

    move v0, v1

    :goto_2
    iget v3, v2, Lb/a/hm;->c:I

    if-ge v0, v3, :cond_1

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lb/a/bx;

    invoke-direct {v4}, Lb/a/bx;-><init>()V

    invoke-virtual {v4, p1}, Lb/a/bx;->a(Lb/a/hn;)V

    iget-object v5, p2, Lb/a/ce;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lb/a/hn;->k()V

    invoke-virtual {p2, v6}, Lb/a/ce;->a(Z)V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v2, v0, Lb/a/hk;->b:B

    const/16 v3, 0xf

    if-ne v2, v3, :cond_4

    invoke-virtual {p1}, Lb/a/hn;->l()Lb/a/hl;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lb/a/hl;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lb/a/ce;->b:Ljava/util/List;

    move v0, v1

    :goto_3
    iget v3, v2, Lb/a/hl;->b:I

    if-ge v0, v3, :cond_3

    new-instance v3, Lb/a/bq;

    invoke-direct {v3}, Lb/a/bq;-><init>()V

    invoke-virtual {v3, p1}, Lb/a/bq;->a(Lb/a/hn;)V

    iget-object v4, p2, Lb/a/ce;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lb/a/hn;->m()V

    invoke-virtual {p2, v6}, Lb/a/ce;->b(Z)V

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v2, v0, Lb/a/hk;->b:B

    const/16 v3, 0xb

    if-ne v2, v3, :cond_5

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/ce;->c:Ljava/lang/String;

    invoke-virtual {p2, v6}, Lb/a/ce;->c(Z)V

    goto/16 :goto_1

    :cond_5
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/ce;

    invoke-virtual {p0, p1, p2}, Lb/a/cg;->b(Lb/a/hn;Lb/a/ce;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/ce;)V
    .locals 4

    const/16 v3, 0xc

    invoke-virtual {p2}, Lb/a/ce;->e()V

    invoke-static {}, Lb/a/ce;->f()Lb/a/hs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hs;)V

    iget-object v0, p2, Lb/a/ce;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-static {}, Lb/a/ce;->g()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    new-instance v0, Lb/a/hm;

    const/16 v1, 0xb

    iget-object v2, p2, Lb/a/ce;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Lb/a/hm;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hm;)V

    iget-object v0, p2, Lb/a/ce;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bx;

    invoke-virtual {v0, p1}, Lb/a/bx;->b(Lb/a/hn;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lb/a/hn;->d()V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_1
    iget-object v0, p2, Lb/a/ce;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lb/a/ce;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lb/a/ce;->h()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    new-instance v0, Lb/a/hl;

    iget-object v1, p2, Lb/a/ce;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lb/a/hl;-><init>(BI)V

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hl;)V

    iget-object v0, p2, Lb/a/ce;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bq;

    invoke-virtual {v0, p1}, Lb/a/bq;->b(Lb/a/hn;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lb/a/hn;->e()V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_3
    iget-object v0, p2, Lb/a/ce;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lb/a/ce;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lb/a/ce;->i()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/ce;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_4
    invoke-virtual {p1}, Lb/a/hn;->c()V

    invoke-virtual {p1}, Lb/a/hn;->a()V

    return-void
.end method

.method public synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/ce;

    invoke-virtual {p0, p1, p2}, Lb/a/cg;->a(Lb/a/hn;Lb/a/ce;)V

    return-void
.end method
