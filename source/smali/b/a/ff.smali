.class Lb/a/ff;
.super Lb/a/hx;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/fc;)V
    .locals 0

    invoke-direct {p0}, Lb/a/ff;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/fb;)V
    .locals 2

    check-cast p1, Lb/a/ht;

    iget-object v0, p2, Lb/a/fb;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    iget-wide v0, p2, Lb/a/fb;->b:J

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(J)V

    iget-wide v0, p2, Lb/a/fb;->c:J

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(J)V

    iget-wide v0, p2, Lb/a/fb;->d:J

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(J)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lb/a/fb;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {p2}, Lb/a/fb;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    invoke-virtual {p2}, Lb/a/fb;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lb/a/fb;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lb/a/fb;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/ht;->a(I)V

    iget-object v0, p2, Lb/a/fb;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/ec;

    invoke-virtual {v0, p1}, Lb/a/ec;->b(Lb/a/hn;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lb/a/fb;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Lb/a/fb;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/ht;->a(I)V

    iget-object v0, p2, Lb/a/fb;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/do;

    invoke-virtual {v0, p1}, Lb/a/do;->b(Lb/a/hn;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lb/a/fb;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lb/a/fb;->g:Lb/a/fi;

    invoke-virtual {v0, p1}, Lb/a/fi;->b(Lb/a/hn;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/fb;

    invoke-virtual {p0, p1, p2}, Lb/a/ff;->a(Lb/a/hn;Lb/a/fb;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/fb;)V
    .locals 8

    const/16 v7, 0xc

    const/4 v1, 0x0

    const/4 v6, 0x1

    check-cast p1, Lb/a/ht;

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/fb;->a:Ljava/lang/String;

    invoke-virtual {p2, v6}, Lb/a/fb;->a(Z)V

    invoke-virtual {p1}, Lb/a/ht;->t()J

    move-result-wide v2

    iput-wide v2, p2, Lb/a/fb;->b:J

    invoke-virtual {p2, v6}, Lb/a/fb;->b(Z)V

    invoke-virtual {p1}, Lb/a/ht;->t()J

    move-result-wide v2

    iput-wide v2, p2, Lb/a/fb;->c:J

    invoke-virtual {p2, v6}, Lb/a/fb;->c(Z)V

    invoke-virtual {p1}, Lb/a/ht;->t()J

    move-result-wide v2

    iput-wide v2, p2, Lb/a/fb;->d:J

    invoke-virtual {p2, v6}, Lb/a/fb;->d(Z)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lb/a/ht;->b(I)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v3, Lb/a/hl;

    invoke-virtual {p1}, Lb/a/ht;->s()I

    move-result v0

    invoke-direct {v3, v7, v0}, Lb/a/hl;-><init>(BI)V

    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, Lb/a/hl;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lb/a/fb;->e:Ljava/util/List;

    move v0, v1

    :goto_0
    iget v4, v3, Lb/a/hl;->b:I

    if-ge v0, v4, :cond_0

    new-instance v4, Lb/a/ec;

    invoke-direct {v4}, Lb/a/ec;-><init>()V

    invoke-virtual {v4, p1}, Lb/a/ec;->a(Lb/a/hn;)V

    iget-object v5, p2, Lb/a/fb;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v6}, Lb/a/fb;->e(Z)V

    :cond_1
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lb/a/hl;

    invoke-virtual {p1}, Lb/a/ht;->s()I

    move-result v3

    invoke-direct {v0, v7, v3}, Lb/a/hl;-><init>(BI)V

    new-instance v3, Ljava/util/ArrayList;

    iget v4, v0, Lb/a/hl;->b:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p2, Lb/a/fb;->f:Ljava/util/List;

    :goto_1
    iget v3, v0, Lb/a/hl;->b:I

    if-ge v1, v3, :cond_2

    new-instance v3, Lb/a/do;

    invoke-direct {v3}, Lb/a/do;-><init>()V

    invoke-virtual {v3, p1}, Lb/a/do;->a(Lb/a/hn;)V

    iget-object v4, p2, Lb/a/fb;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v6}, Lb/a/fb;->f(Z)V

    :cond_3
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lb/a/fi;

    invoke-direct {v0}, Lb/a/fi;-><init>()V

    iput-object v0, p2, Lb/a/fb;->g:Lb/a/fi;

    iget-object v0, p2, Lb/a/fb;->g:Lb/a/fi;

    invoke-virtual {v0, p1}, Lb/a/fi;->a(Lb/a/hn;)V

    invoke-virtual {p2, v6}, Lb/a/fb;->g(Z)V

    :cond_4
    return-void
.end method

.method public bridge synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/fb;

    invoke-virtual {p0, p1, p2}, Lb/a/ff;->b(Lb/a/hn;Lb/a/fb;)V

    return-void
.end method
