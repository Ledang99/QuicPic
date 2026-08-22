.class Lb/a/dl;
.super Lb/a/hx;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/di;)V
    .locals 0

    invoke-direct {p0}, Lb/a/dl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/dh;)V
    .locals 2

    check-cast p1, Lb/a/ht;

    iget v0, p2, Lb/a/dh;->a:I

    invoke-virtual {p1, v0}, Lb/a/ht;->a(I)V

    iget-wide v0, p2, Lb/a/dh;->b:J

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(J)V

    return-void
.end method

.method public bridge synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/dh;

    invoke-virtual {p0, p1, p2}, Lb/a/dl;->a(Lb/a/hn;Lb/a/dh;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/dh;)V
    .locals 3

    const/4 v2, 0x1

    check-cast p1, Lb/a/ht;

    invoke-virtual {p1}, Lb/a/ht;->s()I

    move-result v0

    iput v0, p2, Lb/a/dh;->a:I

    invoke-virtual {p2, v2}, Lb/a/dh;->a(Z)V

    invoke-virtual {p1}, Lb/a/ht;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/dh;->b:J

    invoke-virtual {p2, v2}, Lb/a/dh;->b(Z)V

    return-void
.end method

.method public bridge synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/dh;

    invoke-virtual {p0, p1, p2}, Lb/a/dl;->b(Lb/a/hn;Lb/a/dh;)V

    return-void
.end method
