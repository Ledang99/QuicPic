.class Lb/a/ex;
.super Lb/a/hx;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/eu;)V
    .locals 0

    invoke-direct {p0}, Lb/a/ex;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/et;)V
    .locals 2

    check-cast p1, Lb/a/ht;

    iget v0, p2, Lb/a/et;->a:I

    invoke-virtual {p1, v0}, Lb/a/ht;->a(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lb/a/et;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {p2}, Lb/a/et;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lb/a/et;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lb/a/et;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lb/a/et;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lb/a/et;->c:Lb/a/cm;

    invoke-virtual {v0, p1}, Lb/a/cm;->b(Lb/a/hn;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/et;

    invoke-virtual {p0, p1, p2}, Lb/a/ex;->a(Lb/a/hn;Lb/a/et;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/et;)V
    .locals 3

    const/4 v2, 0x1

    check-cast p1, Lb/a/ht;

    invoke-virtual {p1}, Lb/a/ht;->s()I

    move-result v0

    iput v0, p2, Lb/a/et;->a:I

    invoke-virtual {p2, v2}, Lb/a/et;->a(Z)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lb/a/ht;->b(I)Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/et;->b:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/et;->b(Z)V

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lb/a/cm;

    invoke-direct {v0}, Lb/a/cm;-><init>()V

    iput-object v0, p2, Lb/a/et;->c:Lb/a/cm;

    iget-object v0, p2, Lb/a/et;->c:Lb/a/cm;

    invoke-virtual {v0, p1}, Lb/a/cm;->a(Lb/a/hn;)V

    invoke-virtual {p2, v2}, Lb/a/et;->c(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/et;

    invoke-virtual {p0, p1, p2}, Lb/a/ex;->b(Lb/a/hn;Lb/a/et;)V

    return-void
.end method
