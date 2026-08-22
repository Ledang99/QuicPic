.class Lb/a/ds;
.super Lb/a/hx;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/dp;)V
    .locals 0

    invoke-direct {p0}, Lb/a/ds;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/do;)V
    .locals 2

    check-cast p1, Lb/a/ht;

    iget-wide v0, p2, Lb/a/do;->a:D

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(D)V

    iget-wide v0, p2, Lb/a/do;->b:D

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(D)V

    iget-wide v0, p2, Lb/a/do;->c:J

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(J)V

    return-void
.end method

.method public bridge synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/do;

    invoke-virtual {p0, p1, p2}, Lb/a/ds;->a(Lb/a/hn;Lb/a/do;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/do;)V
    .locals 3

    const/4 v2, 0x1

    check-cast p1, Lb/a/ht;

    invoke-virtual {p1}, Lb/a/ht;->u()D

    move-result-wide v0

    iput-wide v0, p2, Lb/a/do;->a:D

    invoke-virtual {p2, v2}, Lb/a/do;->a(Z)V

    invoke-virtual {p1}, Lb/a/ht;->u()D

    move-result-wide v0

    iput-wide v0, p2, Lb/a/do;->b:D

    invoke-virtual {p2, v2}, Lb/a/do;->b(Z)V

    invoke-virtual {p1}, Lb/a/ht;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/do;->c:J

    invoke-virtual {p2, v2}, Lb/a/do;->c(Z)V

    return-void
.end method

.method public bridge synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/do;

    invoke-virtual {p0, p1, p2}, Lb/a/ds;->b(Lb/a/hn;Lb/a/do;)V

    return-void
.end method
