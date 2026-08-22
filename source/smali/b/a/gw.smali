.class Lb/a/gw;
.super Lb/a/hx;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/gt;)V
    .locals 0

    invoke-direct {p0}, Lb/a/gw;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/gs;

    invoke-virtual {p0, p1, p2}, Lb/a/gw;->b(Lb/a/hn;Lb/a/gs;)V

    return-void
.end method

.method public a(Lb/a/hn;Lb/a/gs;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p2, Lb/a/gs;->c:Lb/a/gq;

    iput-object v0, p2, Lb/a/gs;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Lb/a/hn;->r()S

    move-result v0

    invoke-virtual {p2, p1, v0}, Lb/a/gs;->a(Lb/a/hn;S)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lb/a/gs;->b:Ljava/lang/Object;

    iget-object v1, p2, Lb/a/gs;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Lb/a/gs;->b(S)Lb/a/gq;

    move-result-object v0

    iput-object v0, p2, Lb/a/gs;->c:Lb/a/gq;

    :cond_0
    return-void
.end method

.method public synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/gs;

    invoke-virtual {p0, p1, p2}, Lb/a/gw;->a(Lb/a/hn;Lb/a/gs;)V

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
    iget-object v0, p2, Lb/a/gs;->c:Lb/a/gq;

    invoke-interface {v0}, Lb/a/gq;->a()S

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(S)V

    invoke-virtual {p2, p1}, Lb/a/gs;->d(Lb/a/hn;)V

    return-void
.end method
