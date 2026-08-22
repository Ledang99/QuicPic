.class Lb/a/eg;
.super Lb/a/hx;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/ed;)V
    .locals 0

    invoke-direct {p0}, Lb/a/eg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/ec;)V
    .locals 2

    check-cast p1, Lb/a/ht;

    iget-object v0, p2, Lb/a/ec;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    iget-wide v0, p2, Lb/a/ec;->b:J

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(J)V

    return-void
.end method

.method public bridge synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/ec;

    invoke-virtual {p0, p1, p2}, Lb/a/eg;->a(Lb/a/hn;Lb/a/ec;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/ec;)V
    .locals 3

    const/4 v2, 0x1

    check-cast p1, Lb/a/ht;

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/ec;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/ec;->a(Z)V

    invoke-virtual {p1}, Lb/a/ht;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/ec;->b:J

    invoke-virtual {p2, v2}, Lb/a/ec;->b(Z)V

    return-void
.end method

.method public bridge synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/ec;

    invoke-virtual {p0, p1, p2}, Lb/a/eg;->b(Lb/a/hn;Lb/a/ec;)V

    return-void
.end method
