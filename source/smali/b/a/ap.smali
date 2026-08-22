.class Lb/a/ap;
.super Lb/a/hw;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hw;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/ao;)V
    .locals 0

    invoke-direct {p0}, Lb/a/ap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/an;)V
    .locals 3

    invoke-virtual {p1}, Lb/a/hn;->f()Lb/a/hs;

    :goto_0
    invoke-virtual {p1}, Lb/a/hn;->h()Lb/a/hk;

    move-result-object v0

    iget-byte v1, v0, Lb/a/hk;->b:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lb/a/hn;->g()V

    invoke-virtual {p2}, Lb/a/an;->b()V

    return-void

    :cond_0
    iget-short v1, v0, Lb/a/hk;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    :goto_1
    invoke-virtual {p1}, Lb/a/hn;->i()V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lb/a/hk;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    new-instance v0, Lb/a/dh;

    invoke-direct {v0}, Lb/a/dh;-><init>()V

    iput-object v0, p2, Lb/a/an;->a:Lb/a/dh;

    iget-object v0, p2, Lb/a/an;->a:Lb/a/dh;

    invoke-virtual {v0, p1}, Lb/a/dh;->a(Lb/a/hn;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lb/a/an;->a(Z)V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/an;

    invoke-virtual {p0, p1, p2}, Lb/a/ap;->b(Lb/a/hn;Lb/a/an;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/an;)V
    .locals 1

    invoke-virtual {p2}, Lb/a/an;->b()V

    invoke-static {}, Lb/a/an;->c()Lb/a/hs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hs;)V

    iget-object v0, p2, Lb/a/an;->a:Lb/a/dh;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lb/a/an;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lb/a/an;->d()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/an;->a:Lb/a/dh;

    invoke-virtual {v0, p1}, Lb/a/dh;->b(Lb/a/hn;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_0
    invoke-virtual {p1}, Lb/a/hn;->c()V

    invoke-virtual {p1}, Lb/a/hn;->a()V

    return-void
.end method

.method public synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/an;

    invoke-virtual {p0, p1, p2}, Lb/a/ap;->a(Lb/a/hn;Lb/a/an;)V

    return-void
.end method
