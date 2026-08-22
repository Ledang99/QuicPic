.class Lb/a/dz;
.super Lb/a/hx;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/dw;)V
    .locals 0

    invoke-direct {p0}, Lb/a/dz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/dv;)V
    .locals 2

    check-cast p1, Lb/a/ht;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lb/a/dv;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {p2}, Lb/a/dv;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    invoke-virtual {p2}, Lb/a/dv;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    invoke-virtual {p2}, Lb/a/dv;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_3
    invoke-virtual {p2}, Lb/a/dv;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_4
    invoke-virtual {p2}, Lb/a/dv;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_5
    invoke-virtual {p2}, Lb/a/dv;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_6
    invoke-virtual {p2}, Lb/a/dv;->h()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_7
    invoke-virtual {p2}, Lb/a/dv;->i()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_8
    invoke-virtual {p2}, Lb/a/dv;->j()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_9
    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lb/a/dv;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p2, Lb/a/dv;->a:I

    invoke-virtual {p1, v0}, Lb/a/ht;->a(I)V

    :cond_a
    invoke-virtual {p2}, Lb/a/dv;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p2, Lb/a/dv;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p2}, Lb/a/dv;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p2, Lb/a/dv;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p2}, Lb/a/dv;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p2, Lb/a/dv;->d:D

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(D)V

    :cond_d
    invoke-virtual {p2}, Lb/a/dv;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-wide v0, p2, Lb/a/dv;->e:D

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(D)V

    :cond_e
    invoke-virtual {p2}, Lb/a/dv;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p2, Lb/a/dv;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p2}, Lb/a/dv;->g()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p2, Lb/a/dv;->g:I

    invoke-virtual {p1, v0}, Lb/a/ht;->a(I)V

    :cond_10
    invoke-virtual {p2}, Lb/a/dv;->h()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p2, Lb/a/dv;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p2}, Lb/a/dv;->i()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p2, Lb/a/dv;->i:Lb/a/k;

    invoke-virtual {v0}, Lb/a/k;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/ht;->a(I)V

    :cond_12
    invoke-virtual {p2}, Lb/a/dv;->j()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p2, Lb/a/dv;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public bridge synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/dv;

    invoke-virtual {p0, p1, p2}, Lb/a/dz;->a(Lb/a/hn;Lb/a/dv;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/dv;)V
    .locals 5

    const/4 v4, 0x1

    check-cast p1, Lb/a/ht;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lb/a/ht;->b(I)Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lb/a/ht;->s()I

    move-result v1

    iput v1, p2, Lb/a/dv;->a:I

    invoke-virtual {p2, v4}, Lb/a/dv;->a(Z)V

    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/dv;->b:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lb/a/dv;->b(Z)V

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/dv;->c:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lb/a/dv;->c(Z)V

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lb/a/ht;->u()D

    move-result-wide v2

    iput-wide v2, p2, Lb/a/dv;->d:D

    invoke-virtual {p2, v4}, Lb/a/dv;->d(Z)V

    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lb/a/ht;->u()D

    move-result-wide v2

    iput-wide v2, p2, Lb/a/dv;->e:D

    invoke-virtual {p2, v4}, Lb/a/dv;->e(Z)V

    :cond_4
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/dv;->f:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lb/a/dv;->f(Z)V

    :cond_5
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lb/a/ht;->s()I

    move-result v1

    iput v1, p2, Lb/a/dv;->g:I

    invoke-virtual {p2, v4}, Lb/a/dv;->g(Z)V

    :cond_6
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/dv;->h:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lb/a/dv;->h(Z)V

    :cond_7
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lb/a/ht;->s()I

    move-result v1

    invoke-static {v1}, Lb/a/k;->a(I)Lb/a/k;

    move-result-object v1

    iput-object v1, p2, Lb/a/dv;->i:Lb/a/k;

    invoke-virtual {p2, v4}, Lb/a/dv;->i(Z)V

    :cond_8
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/dv;->j:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lb/a/dv;->j(Z)V

    :cond_9
    return-void
.end method

.method public bridge synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/dv;

    invoke-virtual {p0, p1, p2}, Lb/a/dz;->b(Lb/a/hn;Lb/a/dv;)V

    return-void
.end method
