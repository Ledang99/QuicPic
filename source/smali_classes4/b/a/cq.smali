.class Lb/a/cq;
.super Lb/a/hx;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/cn;)V
    .locals 0

    invoke-direct {p0}, Lb/a/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/cm;)V
    .locals 3

    check-cast p1, Lb/a/ht;

    iget-object v0, p2, Lb/a/cm;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/ht;->a(I)V

    iget-object v0, p2, Lb/a/cm;->a:Ljava/util/Map;

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

    check-cast v0, Lb/a/ct;

    invoke-virtual {v0, p1}, Lb/a/ct;->b(Lb/a/hn;)V

    goto :goto_0

    :cond_0
    iget v0, p2, Lb/a/cm;->b:I

    invoke-virtual {p1, v0}, Lb/a/ht;->a(I)V

    iget-object v0, p2, Lb/a/cm;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/cm;

    invoke-virtual {p0, p1, p2}, Lb/a/cq;->a(Lb/a/hn;Lb/a/cm;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/cm;)V
    .locals 6

    const/4 v5, 0x1

    check-cast p1, Lb/a/ht;

    new-instance v1, Lb/a/hm;

    const/16 v0, 0xb

    const/16 v2, 0xc

    invoke-virtual {p1}, Lb/a/ht;->s()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lb/a/hm;-><init>(BBI)V

    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, Lb/a/hm;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lb/a/cm;->a:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_0
    iget v2, v1, Lb/a/hm;->c:I

    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lb/a/ct;

    invoke-direct {v3}, Lb/a/ct;-><init>()V

    invoke-virtual {v3, p1}, Lb/a/ct;->a(Lb/a/hn;)V

    iget-object v4, p2, Lb/a/cm;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v5}, Lb/a/cm;->a(Z)V

    invoke-virtual {p1}, Lb/a/ht;->s()I

    move-result v0

    iput v0, p2, Lb/a/cm;->b:I

    invoke-virtual {p2, v5}, Lb/a/cm;->b(Z)V

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/cm;->c:Ljava/lang/String;

    invoke-virtual {p2, v5}, Lb/a/cm;->c(Z)V

    return-void
.end method

.method public bridge synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/cm;

    invoke-virtual {p0, p1, p2}, Lb/a/cq;->b(Lb/a/hn;Lb/a/cm;)V

    return-void
.end method
