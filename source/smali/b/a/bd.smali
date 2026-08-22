.class Lb/a/bd;
.super Lb/a/hw;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hw;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/bc;)V
    .locals 0

    invoke-direct {p0}, Lb/a/bd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/bb;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lb/a/hn;->f()Lb/a/hs;

    :goto_0
    invoke-virtual {p1}, Lb/a/hn;->h()Lb/a/hk;

    move-result-object v0

    iget-byte v1, v0, Lb/a/hk;->b:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lb/a/hn;->g()V

    invoke-virtual {p2}, Lb/a/bb;->a()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/ho;-><init>(Ljava/lang/String;)V

    throw v0

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

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lb/a/hn;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/bb;->a:J

    invoke-virtual {p2, v3}, Lb/a/bb;->a(Z)V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lb/a/hk;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/bb;->b:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lb/a/bb;->b(Z)V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v1, v0, Lb/a/hk;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lb/a/hn;->s()I

    move-result v0

    invoke-static {v0}, Lb/a/bi;->a(I)Lb/a/bi;

    move-result-object v0

    iput-object v0, p2, Lb/a/bb;->c:Lb/a/bi;

    invoke-virtual {p2, v3}, Lb/a/bb;->c(Z)V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lb/a/hk;->b:B

    invoke-static {p1, v0}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lb/a/bb;->c()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/bb;

    invoke-virtual {p0, p1, p2}, Lb/a/bd;->b(Lb/a/hn;Lb/a/bb;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/bb;)V
    .locals 2

    invoke-virtual {p2}, Lb/a/bb;->c()V

    invoke-static {}, Lb/a/bb;->d()Lb/a/hs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hs;)V

    invoke-static {}, Lb/a/bb;->e()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-wide v0, p2, Lb/a/bb;->a:J

    invoke-virtual {p1, v0, v1}, Lb/a/hn;->a(J)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    iget-object v0, p2, Lb/a/bb;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lb/a/bb;->f()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/bb;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_0
    iget-object v0, p2, Lb/a/bb;->c:Lb/a/bi;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lb/a/bb;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lb/a/bb;->g()Lb/a/hk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Lb/a/hk;)V

    iget-object v0, p2, Lb/a/bb;->c:Lb/a/bi;

    invoke-virtual {v0}, Lb/a/bi;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/hn;->a(I)V

    invoke-virtual {p1}, Lb/a/hn;->b()V

    :cond_1
    invoke-virtual {p1}, Lb/a/hn;->c()V

    invoke-virtual {p1}, Lb/a/hn;->a()V

    return-void
.end method

.method public synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/bb;

    invoke-virtual {p0, p1, p2}, Lb/a/bd;->a(Lb/a/hn;Lb/a/bb;)V

    return-void
.end method
