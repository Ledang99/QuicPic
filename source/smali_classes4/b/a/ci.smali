.class Lb/a/ci;
.super Lb/a/hx;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/cf;)V
    .locals 0

    invoke-direct {p0}, Lb/a/ci;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/ce;)V
    .locals 3

    check-cast p1, Lb/a/ht;

    iget-object v0, p2, Lb/a/ce;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/ht;->a(I)V

    iget-object v0, p2, Lb/a/ce;->a:Ljava/util/Map;

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

    check-cast v0, Lb/a/bx;

    invoke-virtual {v0, p1}, Lb/a/bx;->b(Lb/a/hn;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lb/a/ce;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    invoke-virtual {p2}, Lb/a/ce;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lb/a/ce;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lb/a/ce;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/ht;->a(I)V

    iget-object v0, p2, Lb/a/ce;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bq;

    invoke-virtual {v0, p1}, Lb/a/bq;->b(Lb/a/hn;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lb/a/ce;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Lb/a/ce;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/ce;

    invoke-virtual {p0, p1, p2}, Lb/a/ci;->a(Lb/a/hn;Lb/a/ce;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/ce;)V
    .locals 8

    const/16 v7, 0xc

    const/4 v1, 0x0

    const/4 v6, 0x1

    check-cast p1, Lb/a/ht;

    new-instance v2, Lb/a/hm;

    const/16 v0, 0xb

    invoke-virtual {p1}, Lb/a/ht;->s()I

    move-result v3

    invoke-direct {v2, v0, v7, v3}, Lb/a/hm;-><init>(BBI)V

    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lb/a/hm;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lb/a/ce;->a:Ljava/util/Map;

    move v0, v1

    :goto_0
    iget v3, v2, Lb/a/hm;->c:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lb/a/bx;

    invoke-direct {v4}, Lb/a/bx;-><init>()V

    invoke-virtual {v4, p1}, Lb/a/bx;->a(Lb/a/hn;)V

    iget-object v5, p2, Lb/a/ce;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v6}, Lb/a/ce;->a(Z)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lb/a/ht;->b(I)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lb/a/hl;

    invoke-virtual {p1}, Lb/a/ht;->s()I

    move-result v3

    invoke-direct {v2, v7, v3}, Lb/a/hl;-><init>(BI)V

    new-instance v3, Ljava/util/ArrayList;

    iget v4, v2, Lb/a/hl;->b:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p2, Lb/a/ce;->b:Ljava/util/List;

    :goto_1
    iget v3, v2, Lb/a/hl;->b:I

    if-ge v1, v3, :cond_1

    new-instance v3, Lb/a/bq;

    invoke-direct {v3}, Lb/a/bq;-><init>()V

    invoke-virtual {v3, p1}, Lb/a/bq;->a(Lb/a/hn;)V

    iget-object v4, p2, Lb/a/ce;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v6}, Lb/a/ce;->b(Z)V

    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/ce;->c:Ljava/lang/String;

    invoke-virtual {p2, v6}, Lb/a/ce;->c(Z)V

    :cond_3
    return-void
.end method

.method public bridge synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/ce;

    invoke-virtual {p0, p1, p2}, Lb/a/ci;->b(Lb/a/hn;Lb/a/ce;)V

    return-void
.end method
