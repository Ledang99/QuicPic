.class Lb/a/fr;
.super Lb/a/hw;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hw;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/fq;)V
    .locals 0

    invoke-direct {p0}, Lb/a/fr;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/fp;)V
    .locals 8

    const/16 v7, 0xf

    const/4 v1, 0x0

    const/16 v6, 0xc

    const/4 v5, 0x1

    invoke-virtual {p1}, Lb/a/hn;->f()Lb/a/hs;

    :goto_0
    invoke-virtual {p1}, Lb/a/hn;->h()Lb/a/hk;

    move-result-object v0

    iget-byte v2, v0, Lb/a/hk;->b:B

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lb/a/hn;->g()V

    invoke-virtual {p2}, Lb/a/fp;->k()V

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

    if-ne v2, v6, :cond_1

    new-instance v0, Lb/a/ag;

    invoke-direct {v0}, Lb/a/ag;-><init>()V

    iput-object v0, p2, Lb/a/fp;->a:Lb/a/ag;

    iget-object v0, p2, Lb/a/fp;->a:Lb/a/ag;

    invoke-virtual {v0, p1}, Lb/a/ag;->a(Lb/a/hn;)V

    invoke-virtual {p2, v5}, Lb/a/fp;->a(Z)V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v2, v0, Lb/a/hk;->b:B

    if-ne v2, v6, :cond_2

    new-instance v0, Lb/a/z;

    invoke-direct {v0}, Lb/a/z;-><init>()V

    iput-object v0, p2, Lb/a/fp;->b:Lb/a/z;

    iget-object v0, p2, Lb/a/fp;->b:Lb/a/z;

    invoke-virtual {v0, p1}, Lb/a/z;->a(Lb/a/hn;)V

    invoke-virtual {p2, v5}, Lb/a/fp;->b(Z)V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v2, v0, Lb/a/hk;->b:B

    if-ne v2, v6, :cond_3

    new-instance v0, Lb/a/au;

    invoke-direct {v0}, Lb/a/au;-><init>()V

    iput-object v0, p2, Lb/a/fp;->c:Lb/a/au;

    iget-object v0, p2, Lb/a/fp;->c:Lb/a/au;

    invoke-virtual {v0, p1}, Lb/a/au;->a(Lb/a/hn;)V

    invoke-virtual {p2, v5}, Lb/a/fp;->c(Z)V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v2, v0, Lb/a/hk;->b:B

    if-ne v2, v6, :cond_4

    new-instance v0, Lb/a/dv;

    invoke-direct {v0}, Lb/a/dv;-><init>()V

    iput-object v0, p2, Lb/a/fp;->d:Lb/a/dv;

    iget-object v0, p2, Lb/a/fp;->d:Lb/a/dv;

    invoke-virtual {v0, p1}, Lb/a/dv;->a(Lb/a/hn;)V

    invoke-virtual {p2, v5}, Lb/a/fp;->d(Z)V

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_4
    iget-byte v2, v0, Lb/a/hk;->b:B

    if-ne v2, v6, :cond_5

    new-instance v0, Lb/a/l;

    invoke-direct {v0}, Lb/a/l;-><init>()V

    iput-object v0, p2, Lb/a/fp;->e:Lb/a/l;

    iget-object v0, p2, Lb/a/fp;->e:Lb/a/l;

    invoke-virtual {v0, p1}, Lb/a/l;->a(Lb/a/hn;)V

    invoke-virtual {p2, v5}, Lb/a/fp;->e(Z)V

    goto :goto_1

    :cond_5
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_5
    iget-byte v2, v0, Lb/a/hk;->b:B

    if-ne v2, v7, :cond_7

    invoke-virtual {p1}, Lb/a/hn;->l()Lb/a/hl;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lb/a/hl;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lb/a/fp;->f:Ljava/util/List;

    move v0, v1

    :goto_2
    iget v3, v2, Lb/a/hl;->b:I

    if-ge v0, v3, :cond_6

    new-instance v3, Lb/a/da;

    invoke-direct {v3}, Lb/a/da;-><init>()V

    invoke-virtual {v3, p1}, Lb/a/da;->a(Lb/a/hn;)V

    iget-object v4, p2, Lb/a/fp;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lb/a/hn;->m()V

    invoke-virtual {p2, v5}, Lb/a/fp;->f(Z)V

    goto/16 :goto_1

    :cond_7
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_6
    iget-byte v2, v0, Lb/a/hk;->b:B

    if-ne v2, v7, :cond_9

    invoke-virtual {p1}, Lb/a/hn;->l()Lb/a/hl;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lb/a/hl;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lb/a/fp;->g:Ljava/util/List;

    move v0, v1

    :goto_3
    iget v3, v2, Lb/a/hl;->b:I

    if-ge v0, v3, :cond_8

    new-instance v3, Lb/a/fb;

    invoke-direct {v3}, Lb/a/fb;-><init>()V

    invoke-virtual {v3, p1}, Lb/a/fb;->a(Lb/a/hn;)V

    iget-object v4, p2, Lb/a/fp;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lb/a/hn;->m()V

    invoke-virtual {p2, v5}, Lb/a/fp;->g(Z)V

    goto/16 :goto_1

    :cond_9
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_7
    iget-byte v2, v0, Lb/a/hk;->b:B

    if-ne v2, v6, :cond_a

    new-instance v0, Lb/a/cm;

    invoke-direct {v0}, Lb/a/cm;-><init>()V

    iput-object v0, p2, Lb/a/fp;->h:Lb/a/cm;

    iget-object v0, p2, Lb/a/fp;->h:Lb/a/cm;

    invoke-virtual {v0, p1}, Lb/a/cm;->a(Lb/a/hn;)V

    invoke-virtual {p2, v5}, Lb/a/fp;->h(Z)V

    goto/16 :goto_1

    :cond_a
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_8
    iget-byte v2, v0, Lb/a/hk;->b:B

    if-ne v2, v6, :cond_b

    new-instance v0, Lb/a/ce;

    invoke-direct {v0}, Lb/a/ce;-><init>()V

    iput-object v0, p2, Lb/a/fp;->i:Lb/a/ce;

    iget-object v0, p2, Lb/a/fp;->i:Lb/a/ce;

    invoke-virtual {v0, p1}, Lb/a/ce;->a(Lb/a/hn;)V

    invoke-virtual {p2, v5}, Lb/a/fp;->i(Z)V

    goto/16 :goto_1

    :cond_b
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_9
    iget-byte v2, v0, Lb/a/hk;->b:B

    if-ne v2, v6, :cond_c

    new-instance v0, Lb/a/s;

    invoke-direct {v0}, Lb/a/s;-><init>()V

    iput-object v0, p2, Lb/a/fp;->j:Lb/a/s;

    iget-object v0, p2, Lb/a/fp;->j:Lb/a/s;

    invoke-virtual {v0, p1}, Lb/a/s;->a(Lb/a/hn;)V

    invoke-virtual {p2, v5}, Lb/a/fp;->j(Z)V

    goto/16 :goto_1

    :cond_c
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_a
    iget-byte v2, v0, Lb/a/hk;->b:B

    if-ne v2, v6, :cond_d

    new-instance v0, Lb/a/an;

    invoke-direct {v0}, Lb/a/an;-><init>()V

    iput-object v0, p2, Lb/a/fp;->k:Lb/a/an;

    iget-object v0, p2, Lb/a/fp;->k:Lb/a/an;

    invoke-virtual {v0, p1}, Lb/a/an;->a(Lb/a/hn;)V

    invoke-virtual {p2, v5}, Lb/a/fp;->k(Z)V

    goto/16 :goto_1

    :cond_d
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/fp;

    invoke-virtual {p0, p1, p2}, Lb/a/fr;->b(Lb/a/hn;Lb/a/fp;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/fp;)V
    .locals 3

    const/16 v2, 0xc

    invoke-virtual {p2}, Lb/a/fp;->k()V

    invoke-static {}, Lb/a/fp;->l()Lb/a/hs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hs;)V

    iget-object v0, p2, Lb/a/fp;->a:Lb/a/ag;

    if-eqz v0, :cond_0

    invoke-static {}, Lb/a/fp;->m()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/fp;->a:Lb/a/ag;

    invoke-virtual {v0, p1}, Lb/a/ag;->b(Lb/a/hn;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_0
    iget-object v0, p2, Lb/a/fp;->b:Lb/a/z;

    if-eqz v0, :cond_1

    invoke-static {}, Lb/a/fp;->n()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/fp;->b:Lb/a/z;

    invoke-virtual {v0, p1}, Lb/a/z;->b(Lb/a/hn;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_1
    iget-object v0, p2, Lb/a/fp;->c:Lb/a/au;

    if-eqz v0, :cond_2

    invoke-static {}, Lb/a/fp;->o()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/fp;->c:Lb/a/au;

    invoke-virtual {v0, p1}, Lb/a/au;->b(Lb/a/hn;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_2
    iget-object v0, p2, Lb/a/fp;->d:Lb/a/dv;

    if-eqz v0, :cond_3

    invoke-static {}, Lb/a/fp;->p()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/fp;->d:Lb/a/dv;

    invoke-virtual {v0, p1}, Lb/a/dv;->b(Lb/a/hn;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_3
    iget-object v0, p2, Lb/a/fp;->e:Lb/a/l;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lb/a/fp;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lb/a/fp;->q()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/fp;->e:Lb/a/l;

    invoke-virtual {v0, p1}, Lb/a/l;->b(Lb/a/hn;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_4
    iget-object v0, p2, Lb/a/fp;->f:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lb/a/fp;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lb/a/fp;->r()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    new-instance v0, Lb/a/hl;

    iget-object v1, p2, Lb/a/fp;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lb/a/hl;-><init>(BI)V

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hl;)V

    iget-object v0, p2, Lb/a/fp;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/da;

    invoke-virtual {v0, p1}, Lb/a/da;->b(Lb/a/hn;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lb/a/hn;->e()V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_6
    iget-object v0, p2, Lb/a/fp;->g:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lb/a/fp;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lb/a/fp;->s()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    new-instance v0, Lb/a/hl;

    iget-object v1, p2, Lb/a/fp;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lb/a/hl;-><init>(BI)V

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hl;)V

    iget-object v0, p2, Lb/a/fp;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/fb;

    invoke-virtual {v0, p1}, Lb/a/fb;->b(Lb/a/hn;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lb/a/hn;->e()V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_8
    iget-object v0, p2, Lb/a/fp;->h:Lb/a/cm;

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lb/a/fp;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lb/a/fp;->t()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/fp;->h:Lb/a/cm;

    invoke-virtual {v0, p1}, Lb/a/cm;->b(Lb/a/hn;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_9
    iget-object v0, p2, Lb/a/fp;->i:Lb/a/ce;

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Lb/a/fp;->h()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lb/a/fp;->u()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/fp;->i:Lb/a/ce;

    invoke-virtual {v0, p1}, Lb/a/ce;->b(Lb/a/hn;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_a
    iget-object v0, p2, Lb/a/fp;->j:Lb/a/s;

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Lb/a/fp;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lb/a/fp;->v()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/fp;->j:Lb/a/s;

    invoke-virtual {v0, p1}, Lb/a/s;->b(Lb/a/hn;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_b
    iget-object v0, p2, Lb/a/fp;->k:Lb/a/an;

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Lb/a/fp;->j()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lb/a/fp;->w()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/fp;->k:Lb/a/an;

    invoke-virtual {v0, p1}, Lb/a/an;->b(Lb/a/hn;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_c
    invoke-virtual {p1}, Lb/a/hn;->c()V

    invoke-virtual {p1}, Lb/a/hn;->a()V

    return-void
.end method

.method public synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/fp;

    invoke-virtual {p0, p1, p2}, Lb/a/fr;->a(Lb/a/hn;Lb/a/fp;)V

    return-void
.end method
