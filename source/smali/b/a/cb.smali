.class Lb/a/cb;
.super Lb/a/hx;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/by;)V
    .locals 0

    invoke-direct {p0}, Lb/a/cb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/bx;)V
    .locals 2

    check-cast p1, Lb/a/ht;

    iget-object v0, p2, Lb/a/bx;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    iget-wide v0, p2, Lb/a/bx;->b:J

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(J)V

    iget v0, p2, Lb/a/bx;->c:I

    invoke-virtual {p1, v0}, Lb/a/ht;->a(I)V

    return-void
.end method

.method public bridge synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/bx;

    invoke-virtual {p0, p1, p2}, Lb/a/cb;->a(Lb/a/hn;Lb/a/bx;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/bx;)V
    .locals 3

    const/4 v2, 0x1

    check-cast p1, Lb/a/ht;

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/bx;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/bx;->a(Z)V

    invoke-virtual {p1}, Lb/a/ht;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/bx;->b:J

    invoke-virtual {p2, v2}, Lb/a/bx;->b(Z)V

    invoke-virtual {p1}, Lb/a/ht;->s()I

    move-result v0

    iput v0, p2, Lb/a/bx;->c:I

    invoke-virtual {p2, v2}, Lb/a/bx;->c(Z)V

    return-void
.end method

.method public bridge synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/bx;

    invoke-virtual {p0, p1, p2}, Lb/a/cb;->b(Lb/a/hn;Lb/a/bx;)V

    return-void
.end method
