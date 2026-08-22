.class Lb/a/ay;
.super Lb/a/hx;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/av;)V
    .locals 0

    invoke-direct {p0}, Lb/a/ay;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/au;)V
    .locals 2

    check-cast p1, Lb/a/ht;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lb/a/au;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {p2}, Lb/a/au;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    invoke-virtual {p2}, Lb/a/au;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    invoke-virtual {p2}, Lb/a/au;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_3
    invoke-virtual {p2}, Lb/a/au;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_4
    invoke-virtual {p2}, Lb/a/au;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_5
    invoke-virtual {p2}, Lb/a/au;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_6
    invoke-virtual {p2}, Lb/a/au;->h()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_7
    invoke-virtual {p2}, Lb/a/au;->i()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_8
    invoke-virtual {p2}, Lb/a/au;->j()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_9
    invoke-virtual {p2}, Lb/a/au;->k()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_a
    invoke-virtual {p2}, Lb/a/au;->l()Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_b
    invoke-virtual {p2}, Lb/a/au;->m()Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_c
    invoke-virtual {p2}, Lb/a/au;->n()Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_d
    invoke-virtual {p2}, Lb/a/au;->o()Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_e
    invoke-virtual {p2}, Lb/a/au;->p()Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_f
    invoke-virtual {p2}, Lb/a/au;->q()Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_10
    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lb/a/au;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p2, Lb/a/au;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p2}, Lb/a/au;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p2, Lb/a/au;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {p2}, Lb/a/au;->c()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p2, Lb/a/au;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {p2}, Lb/a/au;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p2, Lb/a/au;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p2}, Lb/a/au;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p2, Lb/a/au;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_15
    invoke-virtual {p2}, Lb/a/au;->f()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p2, Lb/a/au;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_16
    invoke-virtual {p2}, Lb/a/au;->g()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p2, Lb/a/au;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_17
    invoke-virtual {p2}, Lb/a/au;->h()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p2, Lb/a/au;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_18
    invoke-virtual {p2}, Lb/a/au;->i()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p2, Lb/a/au;->i:Lb/a/em;

    invoke-virtual {v0, p1}, Lb/a/em;->b(Lb/a/hn;)V

    :cond_19
    invoke-virtual {p2}, Lb/a/au;->j()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p2, Lb/a/au;->j:Z

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Z)V

    :cond_1a
    invoke-virtual {p2}, Lb/a/au;->k()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-boolean v0, p2, Lb/a/au;->k:Z

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Z)V

    :cond_1b
    invoke-virtual {p2}, Lb/a/au;->l()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p2, Lb/a/au;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {p2}, Lb/a/au;->m()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p2, Lb/a/au;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_1d
    invoke-virtual {p2}, Lb/a/au;->n()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-wide v0, p2, Lb/a/au;->n:J

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(J)V

    :cond_1e
    invoke-virtual {p2}, Lb/a/au;->o()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p2, Lb/a/au;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_1f
    invoke-virtual {p2}, Lb/a/au;->p()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p2, Lb/a/au;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_20
    invoke-virtual {p2}, Lb/a/au;->q()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p2, Lb/a/au;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public bridge synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/au;

    invoke-virtual {p0, p1, p2}, Lb/a/ay;->a(Lb/a/hn;Lb/a/au;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/au;)V
    .locals 5

    const/4 v4, 0x1

    check-cast p1, Lb/a/ht;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lb/a/ht;->b(I)Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/au;->a:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lb/a/au;->a(Z)V

    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/au;->b:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lb/a/au;->b(Z)V

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/au;->c:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lb/a/au;->c(Z)V

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/au;->d:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lb/a/au;->d(Z)V

    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/au;->e:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lb/a/au;->e(Z)V

    :cond_4
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/au;->f:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lb/a/au;->f(Z)V

    :cond_5
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/au;->g:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lb/a/au;->g(Z)V

    :cond_6
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/au;->h:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lb/a/au;->h(Z)V

    :cond_7
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lb/a/em;

    invoke-direct {v1}, Lb/a/em;-><init>()V

    iput-object v1, p2, Lb/a/au;->i:Lb/a/em;

    iget-object v1, p2, Lb/a/au;->i:Lb/a/em;

    invoke-virtual {v1, p1}, Lb/a/em;->a(Lb/a/hn;)V

    invoke-virtual {p2, v4}, Lb/a/au;->i(Z)V

    :cond_8
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lb/a/ht;->p()Z

    move-result v1

    iput-boolean v1, p2, Lb/a/au;->j:Z

    invoke-virtual {p2, v4}, Lb/a/au;->j(Z)V

    :cond_9
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lb/a/ht;->p()Z

    move-result v1

    iput-boolean v1, p2, Lb/a/au;->k:Z

    invoke-virtual {p2, v4}, Lb/a/au;->k(Z)V

    :cond_a
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/au;->l:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lb/a/au;->l(Z)V

    :cond_b
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/au;->m:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lb/a/au;->m(Z)V

    :cond_c
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lb/a/ht;->t()J

    move-result-wide v2

    iput-wide v2, p2, Lb/a/au;->n:J

    invoke-virtual {p2, v4}, Lb/a/au;->n(Z)V

    :cond_d
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/au;->o:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lb/a/au;->o(Z)V

    :cond_e
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/au;->p:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lb/a/au;->p(Z)V

    :cond_f
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/au;->q:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lb/a/au;->q(Z)V

    :cond_10
    return-void
.end method

.method public bridge synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/au;

    invoke-virtual {p0, p1, p2}, Lb/a/ay;->b(Lb/a/hn;Lb/a/au;)V

    return-void
.end method
