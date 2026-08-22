.class Lb/a/ft;
.super Lb/a/hx;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/fq;)V
    .locals 0

    invoke-direct {p0}, Lb/a/ft;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/fp;)V
    .locals 2

    check-cast p1, Lb/a/ht;

    iget-object v0, p2, Lb/a/fp;->a:Lb/a/ag;

    invoke-virtual {v0, p1}, Lb/a/ag;->b(Lb/a/hn;)V

    iget-object v0, p2, Lb/a/fp;->b:Lb/a/z;

    invoke-virtual {v0, p1}, Lb/a/z;->b(Lb/a/hn;)V

    iget-object v0, p2, Lb/a/fp;->c:Lb/a/au;

    invoke-virtual {v0, p1}, Lb/a/au;->b(Lb/a/hn;)V

    iget-object v0, p2, Lb/a/fp;->d:Lb/a/dv;

    invoke-virtual {v0, p1}, Lb/a/dv;->b(Lb/a/hn;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lb/a/fp;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {p2}, Lb/a/fp;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    invoke-virtual {p2}, Lb/a/fp;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    invoke-virtual {p2}, Lb/a/fp;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_3
    invoke-virtual {p2}, Lb/a/fp;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_4
    invoke-virtual {p2}, Lb/a/fp;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_5
    invoke-virtual {p2}, Lb/a/fp;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_6
    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lb/a/fp;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p2, Lb/a/fp;->e:Lb/a/l;

    invoke-virtual {v0, p1}, Lb/a/l;->b(Lb/a/hn;)V

    :cond_7
    invoke-virtual {p2}, Lb/a/fp;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p2, Lb/a/fp;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/ht;->a(I)V

    iget-object v0, p2, Lb/a/fp;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/da;

    invoke-virtual {v0, p1}, Lb/a/da;->b(Lb/a/hn;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p2}, Lb/a/fp;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p2, Lb/a/fp;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/ht;->a(I)V

    iget-object v0, p2, Lb/a/fp;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/fb;

    invoke-virtual {v0, p1}, Lb/a/fb;->b(Lb/a/hn;)V

    goto :goto_1

    :cond_9
    invoke-virtual {p2}, Lb/a/fp;->g()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p2, Lb/a/fp;->h:Lb/a/cm;

    invoke-virtual {v0, p1}, Lb/a/cm;->b(Lb/a/hn;)V

    :cond_a
    invoke-virtual {p2}, Lb/a/fp;->h()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p2, Lb/a/fp;->i:Lb/a/ce;

    invoke-virtual {v0, p1}, Lb/a/ce;->b(Lb/a/hn;)V

    :cond_b
    invoke-virtual {p2}, Lb/a/fp;->i()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p2, Lb/a/fp;->j:Lb/a/s;

    invoke-virtual {v0, p1}, Lb/a/s;->b(Lb/a/hn;)V

    :cond_c
    invoke-virtual {p2}, Lb/a/fp;->j()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p2, Lb/a/fp;->k:Lb/a/an;

    invoke-virtual {v0, p1}, Lb/a/an;->b(Lb/a/hn;)V

    :cond_d
    return-void
.end method

.method public bridge synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/fp;

    invoke-virtual {p0, p1, p2}, Lb/a/ft;->a(Lb/a/hn;Lb/a/fp;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/fp;)V
    .locals 8

    const/16 v7, 0xc

    const/4 v1, 0x0

    const/4 v6, 0x1

    check-cast p1, Lb/a/ht;

    new-instance v0, Lb/a/ag;

    invoke-direct {v0}, Lb/a/ag;-><init>()V

    iput-object v0, p2, Lb/a/fp;->a:Lb/a/ag;

    iget-object v0, p2, Lb/a/fp;->a:Lb/a/ag;

    invoke-virtual {v0, p1}, Lb/a/ag;->a(Lb/a/hn;)V

    invoke-virtual {p2, v6}, Lb/a/fp;->a(Z)V

    new-instance v0, Lb/a/z;

    invoke-direct {v0}, Lb/a/z;-><init>()V

    iput-object v0, p2, Lb/a/fp;->b:Lb/a/z;

    iget-object v0, p2, Lb/a/fp;->b:Lb/a/z;

    invoke-virtual {v0, p1}, Lb/a/z;->a(Lb/a/hn;)V

    invoke-virtual {p2, v6}, Lb/a/fp;->b(Z)V

    new-instance v0, Lb/a/au;

    invoke-direct {v0}, Lb/a/au;-><init>()V

    iput-object v0, p2, Lb/a/fp;->c:Lb/a/au;

    iget-object v0, p2, Lb/a/fp;->c:Lb/a/au;

    invoke-virtual {v0, p1}, Lb/a/au;->a(Lb/a/hn;)V

    invoke-virtual {p2, v6}, Lb/a/fp;->c(Z)V

    new-instance v0, Lb/a/dv;

    invoke-direct {v0}, Lb/a/dv;-><init>()V

    iput-object v0, p2, Lb/a/fp;->d:Lb/a/dv;

    iget-object v0, p2, Lb/a/fp;->d:Lb/a/dv;

    invoke-virtual {v0, p1}, Lb/a/dv;->a(Lb/a/hn;)V

    invoke-virtual {p2, v6}, Lb/a/fp;->d(Z)V

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lb/a/ht;->b(I)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lb/a/l;

    invoke-direct {v0}, Lb/a/l;-><init>()V

    iput-object v0, p2, Lb/a/fp;->e:Lb/a/l;

    iget-object v0, p2, Lb/a/fp;->e:Lb/a/l;

    invoke-virtual {v0, p1}, Lb/a/l;->a(Lb/a/hn;)V

    invoke-virtual {p2, v6}, Lb/a/fp;->e(Z)V

    :cond_0
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v3, Lb/a/hl;

    invoke-virtual {p1}, Lb/a/ht;->s()I

    move-result v0

    invoke-direct {v3, v7, v0}, Lb/a/hl;-><init>(BI)V

    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, Lb/a/hl;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lb/a/fp;->f:Ljava/util/List;

    move v0, v1

    :goto_0
    iget v4, v3, Lb/a/hl;->b:I

    if-ge v0, v4, :cond_1

    new-instance v4, Lb/a/da;

    invoke-direct {v4}, Lb/a/da;-><init>()V

    invoke-virtual {v4, p1}, Lb/a/da;->a(Lb/a/hn;)V

    iget-object v5, p2, Lb/a/fp;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v6}, Lb/a/fp;->f(Z)V

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lb/a/hl;

    invoke-virtual {p1}, Lb/a/ht;->s()I

    move-result v3

    invoke-direct {v0, v7, v3}, Lb/a/hl;-><init>(BI)V

    new-instance v3, Ljava/util/ArrayList;

    iget v4, v0, Lb/a/hl;->b:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p2, Lb/a/fp;->g:Ljava/util/List;

    :goto_1
    iget v3, v0, Lb/a/hl;->b:I

    if-ge v1, v3, :cond_3

    new-instance v3, Lb/a/fb;

    invoke-direct {v3}, Lb/a/fb;-><init>()V

    invoke-virtual {v3, p1}, Lb/a/fb;->a(Lb/a/hn;)V

    iget-object v4, p2, Lb/a/fp;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v6}, Lb/a/fp;->g(Z)V

    :cond_4
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lb/a/cm;

    invoke-direct {v0}, Lb/a/cm;-><init>()V

    iput-object v0, p2, Lb/a/fp;->h:Lb/a/cm;

    iget-object v0, p2, Lb/a/fp;->h:Lb/a/cm;

    invoke-virtual {v0, p1}, Lb/a/cm;->a(Lb/a/hn;)V

    invoke-virtual {p2, v6}, Lb/a/fp;->h(Z)V

    :cond_5
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lb/a/ce;

    invoke-direct {v0}, Lb/a/ce;-><init>()V

    iput-object v0, p2, Lb/a/fp;->i:Lb/a/ce;

    iget-object v0, p2, Lb/a/fp;->i:Lb/a/ce;

    invoke-virtual {v0, p1}, Lb/a/ce;->a(Lb/a/hn;)V

    invoke-virtual {p2, v6}, Lb/a/fp;->i(Z)V

    :cond_6
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lb/a/s;

    invoke-direct {v0}, Lb/a/s;-><init>()V

    iput-object v0, p2, Lb/a/fp;->j:Lb/a/s;

    iget-object v0, p2, Lb/a/fp;->j:Lb/a/s;

    invoke-virtual {v0, p1}, Lb/a/s;->a(Lb/a/hn;)V

    invoke-virtual {p2, v6}, Lb/a/fp;->j(Z)V

    :cond_7
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lb/a/an;

    invoke-direct {v0}, Lb/a/an;-><init>()V

    iput-object v0, p2, Lb/a/fp;->k:Lb/a/an;

    iget-object v0, p2, Lb/a/fp;->k:Lb/a/an;

    invoke-virtual {v0, p1}, Lb/a/an;->a(Lb/a/hn;)V

    invoke-virtual {p2, v6}, Lb/a/fp;->k(Z)V

    :cond_8
    return-void
.end method

.method public bridge synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/fp;

    invoke-virtual {p0, p1, p2}, Lb/a/ft;->b(Lb/a/hn;Lb/a/fp;)V

    return-void
.end method
