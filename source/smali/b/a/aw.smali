.class Lb/a/aw;
.super Lb/a/hw;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hw;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/av;)V
    .locals 0

    invoke-direct {p0}, Lb/a/aw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/au;)V
    .locals 6

    const/4 v5, 0x2

    const/16 v4, 0xb

    const/4 v3, 0x1

    invoke-virtual {p1}, Lb/a/hn;->f()Lb/a/hs;

    :goto_0
    invoke-virtual {p1}, Lb/a/hn;->h()Lb/a/hk;

    move-result-object v0

    iget-byte v1, v0, Lb/a/hk;->b:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lb/a/hn;->g()V

    invoke-virtual {p2}, Lb/a/au;->r()V

    return-void

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

    if-ne v1, v4, :cond_1

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/au;->a:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lb/a/au;->a(Z)V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/au;->b:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lb/a/au;->b(Z)V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v4, :cond_3

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/au;->c:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lb/a/au;->c(Z)V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v4, :cond_4

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/au;->d:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lb/a/au;->d(Z)V

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_4
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v4, :cond_5

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/au;->e:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lb/a/au;->e(Z)V

    goto :goto_1

    :cond_5
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_5
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v4, :cond_6

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/au;->f:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lb/a/au;->f(Z)V

    goto :goto_1

    :cond_6
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_6
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v4, :cond_7

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/au;->g:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lb/a/au;->g(Z)V

    goto/16 :goto_1

    :cond_7
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_7
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v4, :cond_8

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/au;->h:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lb/a/au;->h(Z)V

    goto/16 :goto_1

    :cond_8
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_8
    iget-byte v1, v0, Lb/a/hk;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_9

    new-instance v0, Lb/a/em;

    invoke-direct {v0}, Lb/a/em;-><init>()V

    iput-object v0, p2, Lb/a/au;->i:Lb/a/em;

    iget-object v0, p2, Lb/a/au;->i:Lb/a/em;

    invoke-virtual {v0, p1}, Lb/a/em;->a(Lb/a/hn;)V

    invoke-virtual {p2, v3}, Lb/a/au;->i(Z)V

    goto/16 :goto_1

    :cond_9
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_9
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v5, :cond_a

    invoke-virtual {p1}, Lb/a/hn;->p()Z

    move-result v0

    iput-boolean v0, p2, Lb/a/au;->j:Z

    invoke-virtual {p2, v3}, Lb/a/au;->j(Z)V

    goto/16 :goto_1

    :cond_a
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_a
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v5, :cond_b

    invoke-virtual {p1}, Lb/a/hn;->p()Z

    move-result v0

    iput-boolean v0, p2, Lb/a/au;->k:Z

    invoke-virtual {p2, v3}, Lb/a/au;->k(Z)V

    goto/16 :goto_1

    :cond_b
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_b
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v4, :cond_c

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/au;->l:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lb/a/au;->l(Z)V

    goto/16 :goto_1

    :cond_c
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_c
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v4, :cond_d

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/au;->m:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lb/a/au;->m(Z)V

    goto/16 :goto_1

    :cond_d
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_d
    iget-byte v1, v0, Lb/a/hk;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_e

    invoke-virtual {p1}, Lb/a/hn;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/au;->n:J

    invoke-virtual {p2, v3}, Lb/a/au;->n(Z)V

    goto/16 :goto_1

    :cond_e
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_e
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v4, :cond_f

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/au;->o:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lb/a/au;->o(Z)V

    goto/16 :goto_1

    :cond_f
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_f
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v4, :cond_10

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/au;->p:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lb/a/au;->p(Z)V

    goto/16 :goto_1

    :cond_10
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_10
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v4, :cond_11

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/au;->q:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lb/a/au;->q(Z)V

    goto/16 :goto_1

    :cond_11
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/au;

    invoke-virtual {p0, p1, p2}, Lb/a/aw;->b(Lb/a/hn;Lb/a/au;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/au;)V
    .locals 2

    invoke-virtual {p2}, Lb/a/au;->r()V

    invoke-static {}, Lb/a/au;->s()Lb/a/hs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hs;)V

    iget-object v0, p2, Lb/a/au;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lb/a/au;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lb/a/au;->t()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/au;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_0
    iget-object v0, p2, Lb/a/au;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lb/a/au;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lb/a/au;->u()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/au;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_1
    iget-object v0, p2, Lb/a/au;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lb/a/au;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lb/a/au;->v()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/au;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_2
    iget-object v0, p2, Lb/a/au;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lb/a/au;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lb/a/au;->w()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/au;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_3
    iget-object v0, p2, Lb/a/au;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lb/a/au;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lb/a/au;->x()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/au;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_4
    iget-object v0, p2, Lb/a/au;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lb/a/au;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lb/a/au;->y()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/au;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_5
    iget-object v0, p2, Lb/a/au;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lb/a/au;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lb/a/au;->z()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/au;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_6
    iget-object v0, p2, Lb/a/au;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lb/a/au;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lb/a/au;->A()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/au;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_7
    iget-object v0, p2, Lb/a/au;->i:Lb/a/em;

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lb/a/au;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lb/a/au;->B()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/au;->i:Lb/a/em;

    invoke-virtual {v0, p1}, Lb/a/em;->b(Lb/a/hn;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_8
    invoke-virtual {p2}, Lb/a/au;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lb/a/au;->C()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-boolean v0, p2, Lb/a/au;->j:Z

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Z)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_9
    invoke-virtual {p2}, Lb/a/au;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lb/a/au;->D()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-boolean v0, p2, Lb/a/au;->k:Z

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Z)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_a
    iget-object v0, p2, Lb/a/au;->l:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Lb/a/au;->l()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lb/a/au;->E()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/au;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_b
    iget-object v0, p2, Lb/a/au;->m:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Lb/a/au;->m()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lb/a/au;->F()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/au;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_c
    invoke-virtual {p2}, Lb/a/au;->n()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lb/a/au;->G()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-wide v0, p2, Lb/a/au;->n:J

    invoke-virtual {p1, v0, v1}, Lb/a/hn;->a(J)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_d
    iget-object v0, p2, Lb/a/au;->o:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Lb/a/au;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lb/a/au;->H()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/au;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_e
    iget-object v0, p2, Lb/a/au;->p:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {p2}, Lb/a/au;->p()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lb/a/au;->I()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/au;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_f
    iget-object v0, p2, Lb/a/au;->q:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {p2}, Lb/a/au;->q()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lb/a/au;->J()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/au;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_10
    invoke-virtual {p1}, Lb/a/hn;->c()V

    invoke-virtual {p1}, Lb/a/hn;->a()V

    return-void
.end method

.method public synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/au;

    invoke-virtual {p0, p1, p2}, Lb/a/aw;->a(Lb/a/hn;Lb/a/au;)V

    return-void
.end method
