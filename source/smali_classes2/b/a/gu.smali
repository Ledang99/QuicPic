.class Lb/a/gu;
.super Lb/a/hw;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hw;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/gt;)V
    .locals 0

    invoke-direct {p0}, Lb/a/gu;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/gs;

    invoke-virtual {p0, p1, p2}, Lb/a/gu;->b(Lb/a/hn;Lb/a/gs;)V

    return-void
.end method

.method public a(Lb/a/hn;Lb/a/gs;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p2, Lb/a/gs;->c:Lb/a/gq;

    iput-object v0, p2, Lb/a/gs;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Lb/a/hn;->f()Lb/a/hs;

    invoke-virtual {p1}, Lb/a/hn;->h()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lb/a/gs;->a(Lb/a/hn;Lb/a/hk;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lb/a/gs;->b:Ljava/lang/Object;

    iget-object v1, p2, Lb/a/gs;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-short v0, v0, Lb/a/hk;->c:S

    invoke-virtual {p2, v0}, Lb/a/gs;->b(S)Lb/a/gq;

    move-result-object v0

    iput-object v0, p2, Lb/a/gs;->c:Lb/a/gq;

    :cond_0
    invoke-virtual {p1}, Lb/a/hn;->i()V

    invoke-virtual {p1}, Lb/a/hn;->h()Lb/a/hk;

    invoke-virtual {p1}, Lb/a/hn;->g()V

    return-void
.end method

.method public synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/gs;

    invoke-virtual {p0, p1, p2}, Lb/a/gu;->a(Lb/a/hn;Lb/a/gs;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/gs;)V
    .locals 2

    invoke-virtual {p2}, Lb/a/gs;->b()Lb/a/gq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lb/a/gs;->c()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lb/a/ho;

    const-string v1, "Cannot write a TUnion with no set value!"

    invoke-direct {v0, v1}, Lb/a/ho;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p2}, Lb/a/gs;->a()Lb/a/hs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hs;)V

    iget-object v0, p2, Lb/a/gs;->c:Lb/a/gq;

    invoke-virtual {p2, v0}, Lb/a/gs;->a(Lb/a/gq;)Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    invoke-virtual {p2, p1}, Lb/a/gs;->c(Lb/a/hn;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    invoke-virtual {p1}, Lb/a/hn;->c()V

    invoke-virtual {p1}, Lb/a/hn;->a()V

    return-void
.end method
