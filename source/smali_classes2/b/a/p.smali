.class Lb/a/p;
.super Lb/a/hx;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/m;)V
    .locals 0

    invoke-direct {p0}, Lb/a/p;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/l;

    invoke-virtual {p0, p1, p2}, Lb/a/p;->a(Lb/a/hn;Lb/a/l;)V

    return-void
.end method

.method public a(Lb/a/hn;Lb/a/l;)V
    .locals 2

    check-cast p1, Lb/a/ht;

    iget-wide v0, p2, Lb/a/l;->a:J

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(J)V

    return-void
.end method

.method public bridge synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/l;

    invoke-virtual {p0, p1, p2}, Lb/a/p;->b(Lb/a/hn;Lb/a/l;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/l;)V
    .locals 2

    check-cast p1, Lb/a/ht;

    invoke-virtual {p1}, Lb/a/ht;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/l;->a:J

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lb/a/l;->a(Z)V

    return-void
.end method
