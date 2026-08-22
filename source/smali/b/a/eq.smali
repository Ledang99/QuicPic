.class Lb/a/eq;
.super Lb/a/hx;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/en;)V
    .locals 0

    invoke-direct {p0}, Lb/a/eq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/em;)V
    .locals 1

    check-cast p1, Lb/a/ht;

    iget v0, p2, Lb/a/em;->a:I

    invoke-virtual {p1, v0}, Lb/a/ht;->a(I)V

    iget v0, p2, Lb/a/em;->b:I

    invoke-virtual {p1, v0}, Lb/a/ht;->a(I)V

    return-void
.end method

.method public bridge synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/em;

    invoke-virtual {p0, p1, p2}, Lb/a/eq;->a(Lb/a/hn;Lb/a/em;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/em;)V
    .locals 2

    const/4 v1, 0x1

    check-cast p1, Lb/a/ht;

    invoke-virtual {p1}, Lb/a/ht;->s()I

    move-result v0

    iput v0, p2, Lb/a/em;->a:I

    invoke-virtual {p2, v1}, Lb/a/em;->a(Z)V

    invoke-virtual {p1}, Lb/a/ht;->s()I

    move-result v0

    iput v0, p2, Lb/a/em;->b:I

    invoke-virtual {p2, v1}, Lb/a/em;->b(Z)V

    return-void
.end method

.method public bridge synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/em;

    invoke-virtual {p0, p1, p2}, Lb/a/eq;->b(Lb/a/hn;Lb/a/em;)V

    return-void
.end method
