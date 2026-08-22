.class Lb/a/dx;
.super Lb/a/hw;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hw;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/dw;)V
    .locals 0

    invoke-direct {p0}, Lb/a/dx;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/dv;)V
    .locals 6

    const/4 v5, 0x4

    const/16 v4, 0x8

    const/16 v3, 0xb

    const/4 v2, 0x1

    invoke-virtual {p1}, Lb/a/hn;->f()Lb/a/hs;

    :goto_0
    invoke-virtual {p1}, Lb/a/hn;->h()Lb/a/hk;

    move-result-object v0

    iget-byte v1, v0, Lb/a/hk;->b:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lb/a/hn;->g()V

    invoke-virtual {p2}, Lb/a/dv;->k()V

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

    invoke-virtual {p1}, Lb/a/hn;->s()I

    move-result v0

    iput v0, p2, Lb/a/dv;->a:I

    invoke-virtual {p2, v2}, Lb/a/dv;->a(Z)V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/dv;->b:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/dv;->b(Z)V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v3, :cond_3

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/dv;->c:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/dv;->c(Z)V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v5, :cond_4

    invoke-virtual {p1}, Lb/a/hn;->u()D

    move-result-wide v0

    iput-wide v0, p2, Lb/a/dv;->d:D

    invoke-virtual {p2, v2}, Lb/a/dv;->d(Z)V

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_4
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v5, :cond_5

    invoke-virtual {p1}, Lb/a/hn;->u()D

    move-result-wide v0

    iput-wide v0, p2, Lb/a/dv;->e:D

    invoke-virtual {p2, v2}, Lb/a/dv;->e(Z)V

    goto :goto_1

    :cond_5
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_5
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v3, :cond_6

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/dv;->f:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/dv;->f(Z)V

    goto :goto_1

    :cond_6
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_6
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v4, :cond_7

    invoke-virtual {p1}, Lb/a/hn;->s()I

    move-result v0

    iput v0, p2, Lb/a/dv;->g:I

    invoke-virtual {p2, v2}, Lb/a/dv;->g(Z)V

    goto/16 :goto_1

    :cond_7
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_7
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v3, :cond_8

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/dv;->h:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/dv;->h(Z)V

    goto/16 :goto_1

    :cond_8
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_8
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v4, :cond_9

    invoke-virtual {p1}, Lb/a/hn;->s()I

    move-result v0

    invoke-static {v0}, Lb/a/k;->a(I)Lb/a/k;

    move-result-object v0

    iput-object v0, p2, Lb/a/dv;->i:Lb/a/k;

    invoke-virtual {p2, v2}, Lb/a/dv;->i(Z)V

    goto/16 :goto_1

    :cond_9
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_9
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v3, :cond_a

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/dv;->j:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/dv;->j(Z)V

    goto/16 :goto_1

    :cond_a
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
    .end packed-switch
.end method

.method public synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/dv;

    invoke-virtual {p0, p1, p2}, Lb/a/dx;->b(Lb/a/hn;Lb/a/dv;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/dv;)V
    .locals 2

    invoke-virtual {p2}, Lb/a/dv;->k()V

    invoke-static {}, Lb/a/dv;->l()Lb/a/hs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hs;)V

    invoke-virtual {p2}, Lb/a/dv;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lb/a/dv;->m()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget v0, p2, Lb/a/dv;->a:I

    invoke-virtual {p1, v0}, Lb/a/hn;->a(I)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_0
    iget-object v0, p2, Lb/a/dv;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lb/a/dv;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lb/a/dv;->n()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/dv;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_1
    iget-object v0, p2, Lb/a/dv;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lb/a/dv;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lb/a/dv;->o()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/dv;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_2
    invoke-virtual {p2}, Lb/a/dv;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lb/a/dv;->p()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-wide v0, p2, Lb/a/dv;->d:D

    invoke-virtual {p1, v0, v1}, Lb/a/hn;->a(D)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_3
    invoke-virtual {p2}, Lb/a/dv;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lb/a/dv;->q()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-wide v0, p2, Lb/a/dv;->e:D

    invoke-virtual {p1, v0, v1}, Lb/a/hn;->a(D)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_4
    iget-object v0, p2, Lb/a/dv;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lb/a/dv;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lb/a/dv;->r()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/dv;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_5
    invoke-virtual {p2}, Lb/a/dv;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lb/a/dv;->s()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget v0, p2, Lb/a/dv;->g:I

    invoke-virtual {p1, v0}, Lb/a/hn;->a(I)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_6
    iget-object v0, p2, Lb/a/dv;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lb/a/dv;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lb/a/dv;->t()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/dv;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_7
    iget-object v0, p2, Lb/a/dv;->i:Lb/a/k;

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lb/a/dv;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lb/a/dv;->u()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/dv;->i:Lb/a/k;

    invoke-virtual {v0}, Lb/a/k;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(I)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_8
    iget-object v0, p2, Lb/a/dv;->j:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lb/a/dv;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lb/a/dv;->v()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/dv;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_9
    invoke-virtual {p1}, Lb/a/hn;->c()V

    invoke-virtual {p1}, Lb/a/hn;->a()V

    return-void
.end method

.method public synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/dv;

    invoke-virtual {p0, p1, p2}, Lb/a/dx;->a(Lb/a/hn;Lb/a/dv;)V

    return-void
.end method
