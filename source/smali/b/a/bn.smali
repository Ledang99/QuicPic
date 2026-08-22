.class Lb/a/bn;
.super Lb/a/hx;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/bk;)V
    .locals 0

    invoke-direct {p0}, Lb/a/bn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/bj;)V
    .locals 3

    check-cast p1, Lb/a/ht;

    iget-object v0, p2, Lb/a/bj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    iget-object v0, p2, Lb/a/bj;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/ht;->a(I)V

    iget-object v0, p2, Lb/a/bj;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lb/a/ht;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/ej;

    invoke-virtual {v0, p1}, Lb/a/ej;->b(Lb/a/hn;)V

    goto :goto_0

    :cond_0
    iget-wide v0, p2, Lb/a/bj;->e:J

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(J)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lb/a/bj;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    invoke-virtual {p2}, Lb/a/bj;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lb/a/bj;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p2, Lb/a/bj;->c:J

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(J)V

    :cond_3
    invoke-virtual {p2}, Lb/a/bj;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p2, Lb/a/bj;->d:I

    invoke-virtual {p1, v0}, Lb/a/ht;->a(I)V

    :cond_4
    return-void
.end method

.method public bridge synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/bj;

    invoke-virtual {p0, p1, p2}, Lb/a/bn;->a(Lb/a/hn;Lb/a/bj;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/bj;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    check-cast p1, Lb/a/ht;

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/bj;->a:Ljava/lang/String;

    invoke-virtual {p2, v6}, Lb/a/bj;->a(Z)V

    new-instance v2, Lb/a/hm;

    const/16 v0, 0xb

    const/16 v3, 0xc

    invoke-virtual {p1}, Lb/a/ht;->s()I

    move-result v4

    invoke-direct {v2, v0, v3, v4}, Lb/a/hm;-><init>(BBI)V

    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lb/a/hm;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lb/a/bj;->b:Ljava/util/Map;

    move v0, v1

    :goto_0
    iget v3, v2, Lb/a/hm;->c:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lb/a/ej;

    invoke-direct {v4}, Lb/a/ej;-><init>()V

    invoke-virtual {v4, p1}, Lb/a/ej;->a(Lb/a/hn;)V

    iget-object v5, p2, Lb/a/bj;->b:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v6}, Lb/a/bj;->b(Z)V

    invoke-virtual {p1}, Lb/a/ht;->t()J

    move-result-wide v2

    iput-wide v2, p2, Lb/a/bj;->e:J

    invoke-virtual {p2, v6}, Lb/a/bj;->e(Z)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lb/a/ht;->b(I)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lb/a/ht;->t()J

    move-result-wide v2

    iput-wide v2, p2, Lb/a/bj;->c:J

    invoke-virtual {p2, v6}, Lb/a/bj;->c(Z)V

    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lb/a/ht;->s()I

    move-result v0

    iput v0, p2, Lb/a/bj;->d:I

    invoke-virtual {p2, v6}, Lb/a/bj;->d(Z)V

    :cond_2
    return-void
.end method

.method public bridge synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/bj;

    invoke-virtual {p0, p1, p2}, Lb/a/bn;->b(Lb/a/hn;Lb/a/bj;)V

    return-void
.end method
