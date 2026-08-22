.class Lb/a/fd;
.super Lb/a/hw;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hw;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/fc;)V
    .locals 0

    invoke-direct {p0}, Lb/a/fd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/fb;)V
    .locals 8

    const/16 v7, 0xf

    const/4 v1, 0x0

    const/16 v6, 0xa

    const/4 v5, 0x1

    invoke-virtual {p1}, Lb/a/hn;->f()Lb/a/hs;

    :goto_0
    invoke-virtual {p1}, Lb/a/hn;->h()Lb/a/hk;

    move-result-object v0

    iget-byte v2, v0, Lb/a/hk;->b:B

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lb/a/hn;->g()V

    invoke-virtual {p2}, Lb/a/fb;->a()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'start_time\' was not found in serialized data! Struct: "

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

    iput-object v0, p2, Lb/a/fb;->a:Ljava/lang/String;

    invoke-virtual {p2, v5}, Lb/a/fb;->a(Z)V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v2, v0, Lb/a/hk;->b:B

    if-ne v2, v6, :cond_2

    invoke-virtual {p1}, Lb/a/hn;->t()J

    move-result-wide v2

    iput-wide v2, p2, Lb/a/fb;->b:J

    invoke-virtual {p2, v5}, Lb/a/fb;->b(Z)V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v2, v0, Lb/a/hk;->b:B

    if-ne v2, v6, :cond_3

    invoke-virtual {p1}, Lb/a/hn;->t()J

    move-result-wide v2

    iput-wide v2, p2, Lb/a/fb;->c:J

    invoke-virtual {p2, v5}, Lb/a/fb;->c(Z)V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v2, v0, Lb/a/hk;->b:B

    if-ne v2, v6, :cond_4

    invoke-virtual {p1}, Lb/a/hn;->t()J

    move-result-wide v2

    iput-wide v2, p2, Lb/a/fb;->d:J

    invoke-virtual {p2, v5}, Lb/a/fb;->d(Z)V

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_4
    iget-byte v2, v0, Lb/a/hk;->b:B

    if-ne v2, v7, :cond_6

    invoke-virtual {p1}, Lb/a/hn;->l()Lb/a/hl;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lb/a/hl;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lb/a/fb;->e:Ljava/util/List;

    move v0, v1

    :goto_2
    iget v3, v2, Lb/a/hl;->b:I

    if-ge v0, v3, :cond_5

    new-instance v3, Lb/a/ec;

    invoke-direct {v3}, Lb/a/ec;-><init>()V

    invoke-virtual {v3, p1}, Lb/a/ec;->a(Lb/a/hn;)V

    iget-object v4, p2, Lb/a/fb;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lb/a/hn;->m()V

    invoke-virtual {p2, v5}, Lb/a/fb;->e(Z)V

    goto/16 :goto_1

    :cond_6
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_5
    iget-byte v2, v0, Lb/a/hk;->b:B

    if-ne v2, v7, :cond_8

    invoke-virtual {p1}, Lb/a/hn;->l()Lb/a/hl;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lb/a/hl;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lb/a/fb;->f:Ljava/util/List;

    move v0, v1

    :goto_3
    iget v3, v2, Lb/a/hl;->b:I

    if-ge v0, v3, :cond_7

    new-instance v3, Lb/a/do;

    invoke-direct {v3}, Lb/a/do;-><init>()V

    invoke-virtual {v3, p1}, Lb/a/do;->a(Lb/a/hn;)V

    iget-object v4, p2, Lb/a/fb;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lb/a/hn;->m()V

    invoke-virtual {p2, v5}, Lb/a/fb;->f(Z)V

    goto/16 :goto_1

    :cond_8
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_6
    iget-byte v2, v0, Lb/a/hk;->b:B

    const/16 v3, 0xc

    if-ne v2, v3, :cond_9

    new-instance v0, Lb/a/fi;

    invoke-direct {v0}, Lb/a/fi;-><init>()V

    iput-object v0, p2, Lb/a/fb;->g:Lb/a/fi;

    iget-object v0, p2, Lb/a/fb;->g:Lb/a/fi;

    invoke-virtual {v0, p1}, Lb/a/fi;->a(Lb/a/hn;)V

    invoke-virtual {p2, v5}, Lb/a/fb;->g(Z)V

    goto/16 :goto_1

    :cond_9
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p2}, Lb/a/fb;->b()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'end_time\' was not found in serialized data! Struct: "

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

    :cond_b
    invoke-virtual {p2}, Lb/a/fb;->c()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'duration\' was not found in serialized data! Struct: "

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

    :cond_c
    invoke-virtual {p2}, Lb/a/fb;->h()V

    return-void

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
    .end packed-switch
.end method

.method public synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/fb;

    invoke-virtual {p0, p1, p2}, Lb/a/fd;->b(Lb/a/hn;Lb/a/fb;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/fb;)V
    .locals 3

    const/16 v2, 0xc

    invoke-virtual {p2}, Lb/a/fb;->h()V

    invoke-static {}, Lb/a/fb;->i()Lb/a/hs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hs;)V

    iget-object v0, p2, Lb/a/fb;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lb/a/fb;->j()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/fb;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_0
    invoke-static {}, Lb/a/fb;->k()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-wide v0, p2, Lb/a/fb;->b:J

    invoke-virtual {p1, v0, v1}, Lb/a/hn;->a(J)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    invoke-static {}, Lb/a/fb;->l()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-wide v0, p2, Lb/a/fb;->c:J

    invoke-virtual {p1, v0, v1}, Lb/a/hn;->a(J)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    invoke-static {}, Lb/a/fb;->m()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-wide v0, p2, Lb/a/fb;->d:J

    invoke-virtual {p1, v0, v1}, Lb/a/hn;->a(J)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    iget-object v0, p2, Lb/a/fb;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lb/a/fb;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lb/a/fb;->n()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    new-instance v0, Lb/a/hl;

    iget-object v1, p2, Lb/a/fb;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lb/a/hl;-><init>(BI)V

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hl;)V

    iget-object v0, p2, Lb/a/fb;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/ec;

    invoke-virtual {v0, p1}, Lb/a/ec;->b(Lb/a/hn;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lb/a/hn;->e()V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_2
    iget-object v0, p2, Lb/a/fb;->f:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lb/a/fb;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lb/a/fb;->o()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    new-instance v0, Lb/a/hl;

    iget-object v1, p2, Lb/a/fb;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lb/a/hl;-><init>(BI)V

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hl;)V

    iget-object v0, p2, Lb/a/fb;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/do;

    invoke-virtual {v0, p1}, Lb/a/do;->b(Lb/a/hn;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lb/a/hn;->e()V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_4
    iget-object v0, p2, Lb/a/fb;->g:Lb/a/fi;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lb/a/fb;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lb/a/fb;->p()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/fb;->g:Lb/a/fi;

    invoke-virtual {v0, p1}, Lb/a/fi;->b(Lb/a/hn;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_5
    invoke-virtual {p1}, Lb/a/hn;->c()V

    invoke-virtual {p1}, Lb/a/hn;->a()V

    return-void
.end method

.method public synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/fb;

    invoke-virtual {p0, p1, p2}, Lb/a/fd;->a(Lb/a/hn;Lb/a/fb;)V

    return-void
.end method
