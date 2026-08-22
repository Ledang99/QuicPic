.class Lb/a/cx;
.super Lb/a/hx;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/cu;)V
    .locals 0

    invoke-direct {p0}, Lb/a/cx;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/ct;)V
    .locals 2

    check-cast p1, Lb/a/ht;

    iget-wide v0, p2, Lb/a/ct;->b:J

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(J)V

    iget-object v0, p2, Lb/a/ct;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lb/a/ct;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lb/a/ct;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lb/a/ct;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/ct;

    invoke-virtual {p0, p1, p2}, Lb/a/cx;->a(Lb/a/hn;Lb/a/ct;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/ct;)V
    .locals 3

    const/4 v2, 0x1

    check-cast p1, Lb/a/ht;

    invoke-virtual {p1}, Lb/a/ht;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/ct;->b:J

    invoke-virtual {p2, v2}, Lb/a/ct;->b(Z)V

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/ct;->c:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/ct;->c(Z)V

    invoke-virtual {p1, v2}, Lb/a/ht;->b(I)Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/ct;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/ct;->a(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/ct;

    invoke-virtual {p0, p1, p2}, Lb/a/cx;->b(Lb/a/hn;Lb/a/ct;)V

    return-void
.end method
