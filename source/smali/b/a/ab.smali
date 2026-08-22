.class Lb/a/ab;
.super Lb/a/hw;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hw;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/aa;)V
    .locals 0

    invoke-direct {p0}, Lb/a/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/z;

    invoke-virtual {p0, p1, p2}, Lb/a/ab;->b(Lb/a/hn;Lb/a/z;)V

    return-void
.end method

.method public a(Lb/a/hn;Lb/a/z;)V
    .locals 5

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

    invoke-virtual {p2}, Lb/a/z;->g()V

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

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/z;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/z;->a(Z)V

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

    iput-object v0, p2, Lb/a/z;->b:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/z;->b(Z)V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v4, :cond_3

    invoke-virtual {p1}, Lb/a/hn;->s()I

    move-result v0

    iput v0, p2, Lb/a/z;->c:I

    invoke-virtual {p2, v2}, Lb/a/z;->c(Z)V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v3, :cond_4

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/z;->d:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/z;->d(Z)V

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_4
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v4, :cond_5

    invoke-virtual {p1}, Lb/a/hn;->s()I

    move-result v0

    invoke-static {v0}, Lb/a/fa;->a(I)Lb/a/fa;

    move-result-object v0

    iput-object v0, p2, Lb/a/z;->e:Lb/a/fa;

    invoke-virtual {p2, v2}, Lb/a/z;->e(Z)V

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

    iput-object v0, p2, Lb/a/z;->f:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/z;->f(Z)V

    goto :goto_1

    :cond_6
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_6
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/z;->g:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/z;->g(Z)V

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

    iput-object v0, p2, Lb/a/z;->h:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/z;->h(Z)V

    goto/16 :goto_1

    :cond_8
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_8
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v3, :cond_9

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/z;->i:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/z;->i(Z)V

    goto/16 :goto_1

    :cond_9
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto/16 :goto_1

    :pswitch_9
    iget-byte v1, v0, Lb/a/hk;->b:B

    if-ne v1, v4, :cond_a

    invoke-virtual {p1}, Lb/a/hn;->s()I

    move-result v0

    iput v0, p2, Lb/a/z;->j:I

    invoke-virtual {p2, v2}, Lb/a/z;->j(Z)V

    goto/16 :goto_1

    :cond_a
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
    .end packed-switch
.end method

.method public synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/z;

    invoke-virtual {p0, p1, p2}, Lb/a/ab;->a(Lb/a/hn;Lb/a/z;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/z;)V
    .locals 1

    invoke-virtual {p2}, Lb/a/z;->g()V

    invoke-static {}, Lb/a/z;->h()Lb/a/hs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hs;)V

    iget-object v0, p2, Lb/a/z;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lb/a/z;->i()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/z;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_0
    iget-object v0, p2, Lb/a/z;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lb/a/z;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lb/a/z;->j()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/z;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_1
    invoke-virtual {p2}, Lb/a/z;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lb/a/z;->k()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget v0, p2, Lb/a/z;->c:I

    invoke-virtual {p1, v0}, Lb/a/hn;->a(I)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_2
    iget-object v0, p2, Lb/a/z;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lb/a/z;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lb/a/z;->l()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/z;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_3
    iget-object v0, p2, Lb/a/z;->e:Lb/a/fa;

    if-eqz v0, :cond_4

    invoke-static {}, Lb/a/z;->m()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/z;->e:Lb/a/fa;

    invoke-virtual {v0}, Lb/a/fa;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(I)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_4
    iget-object v0, p2, Lb/a/z;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {}, Lb/a/z;->n()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/z;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_5
    iget-object v0, p2, Lb/a/z;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-static {}, Lb/a/z;->o()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/z;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_6
    iget-object v0, p2, Lb/a/z;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lb/a/z;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lb/a/z;->p()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/z;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_7
    iget-object v0, p2, Lb/a/z;->i:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lb/a/z;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lb/a/z;->q()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/z;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_8
    invoke-virtual {p2}, Lb/a/z;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lb/a/z;->r()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget v0, p2, Lb/a/z;->j:I

    invoke-virtual {p1, v0}, Lb/a/hn;->a(I)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_9
    invoke-virtual {p1}, Lb/a/hn;->c()V

    invoke-virtual {p1}, Lb/a/hn;->a()V

    return-void
.end method
