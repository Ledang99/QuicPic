.class Lb/a/ar;
.super Lb/a/hx;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/ao;)V
    .locals 0

    invoke-direct {p0}, Lb/a/ar;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/an;)V
    .locals 2

    check-cast p1, Lb/a/ht;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lb/a/an;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lb/a/an;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lb/a/an;->a:Lb/a/dh;

    invoke-virtual {v0, p1}, Lb/a/dh;->b(Lb/a/hn;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/an;

    invoke-virtual {p0, p1, p2}, Lb/a/ar;->a(Lb/a/hn;Lb/a/an;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/an;)V
    .locals 3

    const/4 v2, 0x1

    check-cast p1, Lb/a/ht;

    invoke-virtual {p1, v2}, Lb/a/ht;->b(I)Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lb/a/dh;

    invoke-direct {v0}, Lb/a/dh;-><init>()V

    iput-object v0, p2, Lb/a/an;->a:Lb/a/dh;

    iget-object v0, p2, Lb/a/an;->a:Lb/a/dh;

    invoke-virtual {v0, p1}, Lb/a/dh;->a(Lb/a/hn;)V

    invoke-virtual {p2, v2}, Lb/a/an;->a(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/an;

    invoke-virtual {p0, p1, p2}, Lb/a/ar;->b(Lb/a/hn;Lb/a/an;)V

    return-void
.end method
