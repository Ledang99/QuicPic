.class Lb/a/dc;
.super Lb/a/hw;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hw;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/db;)V
    .locals 0

    invoke-direct {p0}, Lb/a/dc;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/da;)V
    .locals 7

    const/16 v6, 0xf

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Lb/a/hn;->f()Lb/a/hs;

    :goto_0
    invoke-virtual {p1}, Lb/a/hn;->h()Lb/a/hk;

    move-result-object v0

    iget-byte v2, v0, Lb/a/hk;->b:B

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lb/a/hn;->g()V

    invoke-virtual {p2}, Lb/a/da;->e()V

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

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/da;->a:Ljava/lang/String;

    invoke-virtual {p2, v5}, Lb/a/da;->a(Z)V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v2, v0, Lb/a/hk;->b:B

    if-ne v2, v6, :cond_3

    invoke-virtual {p1}, Lb/a/hn;->l()Lb/a/hl;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lb/a/hl;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lb/a/da;->b:Ljava/util/List;

    move v0, v1

    :goto_2
    iget v3, v2, Lb/a/hl;->b:I

    if-ge v0, v3, :cond_2

    new-instance v3, Lb/a/bb;

    invoke-direct {v3}, Lb/a/bb;-><init>()V

    invoke-virtual {v3, p1}, Lb/a/bb;->a(Lb/a/hn;)V

    iget-object v4, p2, Lb/a/da;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lb/a/hn;->m()V

    invoke-virtual {p2, v5}, Lb/a/da;->b(Z)V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v2, v0, Lb/a/hk;->b:B

    if-ne v2, v6, :cond_5

    invoke-virtual {p1}, Lb/a/hn;->l()Lb/a/hl;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lb/a/hl;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lb/a/da;->c:Ljava/util/List;

    move v0, v1

    :goto_3
    iget v3, v2, Lb/a/hl;->b:I

    if-ge v0, v3, :cond_4

    new-instance v3, Lb/a/bj;

    invoke-direct {v3}, Lb/a/bj;-><init>()V

    invoke-virtual {v3, p1}, Lb/a/bj;->a(Lb/a/hn;)V

    iget-object v4, p2, Lb/a/da;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lb/a/hn;->m()V

    invoke-virtual {p2, v5}, Lb/a/da;->c(Z)V

    goto :goto_1

    :cond_5
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v2, v0, Lb/a/hk;->b:B

    if-ne v2, v6, :cond_7

    invoke-virtual {p1}, Lb/a/hn;->l()Lb/a/hl;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lb/a/hl;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lb/a/da;->d:Ljava/util/List;

    move v0, v1

    :goto_4
    iget v3, v2, Lb/a/hl;->b:I

    if-ge v0, v3, :cond_6

    new-instance v3, Lb/a/bj;

    invoke-direct {v3}, Lb/a/bj;-><init>()V

    invoke-virtual {v3, p1}, Lb/a/bj;->a(Lb/a/hn;)V

    iget-object v4, p2, Lb/a/da;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lb/a/hn;->m()V

    invoke-virtual {p2, v5}, Lb/a/da;->d(Z)V

    goto/16 :goto_1

    :cond_7
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
    .end packed-switch
.end method

.method public synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/da;

    invoke-virtual {p0, p1, p2}, Lb/a/dc;->b(Lb/a/hn;Lb/a/da;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/da;)V
    .locals 3

    const/16 v2, 0xc

    invoke-virtual {p2}, Lb/a/da;->e()V

    invoke-static {}, Lb/a/da;->f()Lb/a/hs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hs;)V

    iget-object v0, p2, Lb/a/da;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lb/a/da;->g()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/da;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_0
    iget-object v0, p2, Lb/a/da;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lb/a/da;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lb/a/da;->h()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    new-instance v0, Lb/a/hl;

    iget-object v1, p2, Lb/a/da;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lb/a/hl;-><init>(BI)V

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hl;)V

    iget-object v0, p2, Lb/a/da;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bb;

    invoke-virtual {v0, p1}, Lb/a/bb;->b(Lb/a/hn;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lb/a/hn;->e()V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_2
    iget-object v0, p2, Lb/a/da;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lb/a/da;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lb/a/da;->i()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    new-instance v0, Lb/a/hl;

    iget-object v1, p2, Lb/a/da;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lb/a/hl;-><init>(BI)V

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hl;)V

    iget-object v0, p2, Lb/a/da;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bj;

    invoke-virtual {v0, p1}, Lb/a/bj;->b(Lb/a/hn;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lb/a/hn;->e()V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_4
    iget-object v0, p2, Lb/a/da;->d:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lb/a/da;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lb/a/da;->j()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    new-instance v0, Lb/a/hl;

    iget-object v1, p2, Lb/a/da;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lb/a/hl;-><init>(BI)V

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hl;)V

    iget-object v0, p2, Lb/a/da;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bj;

    invoke-virtual {v0, p1}, Lb/a/bj;->b(Lb/a/hn;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lb/a/hn;->e()V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_6
    invoke-virtual {p1}, Lb/a/hn;->c()V

    invoke-virtual {p1}, Lb/a/hn;->a()V

    return-void
.end method

.method public synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/da;

    invoke-virtual {p0, p1, p2}, Lb/a/dc;->a(Lb/a/hn;Lb/a/da;)V

    return-void
.end method
