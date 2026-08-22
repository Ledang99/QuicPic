.class Lb/a/w;
.super Lb/a/hx;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/t;)V
    .locals 0

    invoke-direct {p0}, Lb/a/w;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/s;

    invoke-virtual {p0, p1, p2}, Lb/a/w;->a(Lb/a/hn;Lb/a/s;)V

    return-void
.end method

.method public a(Lb/a/hn;Lb/a/s;)V
    .locals 1

    check-cast p1, Lb/a/ht;

    iget-object v0, p2, Lb/a/s;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    iget-object v0, p2, Lb/a/s;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/s;

    invoke-virtual {p0, p1, p2}, Lb/a/w;->b(Lb/a/hn;Lb/a/s;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/s;)V
    .locals 2

    const/4 v1, 0x1

    check-cast p1, Lb/a/ht;

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/s;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lb/a/s;->a(Z)V

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/s;->b:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lb/a/s;->b(Z)V

    return-void
.end method
