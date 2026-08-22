.class Lb/a/bu;
.super Lb/a/hx;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/br;)V
    .locals 0

    invoke-direct {p0}, Lb/a/bu;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/bq;)V
    .locals 2

    check-cast p1, Lb/a/ht;

    iget-object v0, p2, Lb/a/bq;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    iget-object v0, p2, Lb/a/bq;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    iget-wide v0, p2, Lb/a/bq;->d:J

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(J)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lb/a/bq;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lb/a/bq;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lb/a/bq;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/bq;

    invoke-virtual {p0, p1, p2}, Lb/a/bu;->a(Lb/a/hn;Lb/a/bq;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/bq;)V
    .locals 3

    const/4 v2, 0x1

    check-cast p1, Lb/a/ht;

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/bq;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/bq;->a(Z)V

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/bq;->c:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/bq;->c(Z)V

    invoke-virtual {p1}, Lb/a/ht;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/bq;->d:J

    invoke-virtual {p2, v2}, Lb/a/bq;->d(Z)V

    invoke-virtual {p1, v2}, Lb/a/ht;->b(I)Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/bq;->b:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/bq;->b(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/bq;

    invoke-virtual {p0, p1, p2}, Lb/a/bu;->b(Lb/a/hn;Lb/a/bq;)V

    return-void
.end method
