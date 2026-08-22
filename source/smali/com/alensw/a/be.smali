.class Lcom/alensw/a/be;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alensw/b/a/a;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alensw/b/a/a;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/alensw/b/a/a;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/a/be;->a:Lcom/alensw/b/a/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alensw/a/bd;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/a/be;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/be;->a:Lcom/alensw/b/a/a;

    invoke-virtual {v0}, Lcom/alensw/b/a/a;->a()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;IJ[B)V
    .locals 7

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/alensw/a/be;->a:Lcom/alensw/b/a/a;

    new-instance v1, Lcom/alensw/a/bf;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/alensw/a/bf;-><init>(Ljava/lang/String;IJ[B)V

    invoke-virtual {v0, p1, v1}, Lcom/alensw/b/a/a;->a(Ljava/lang/Object;Lcom/alensw/b/a/c;)Lcom/alensw/b/a/c;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/alensw/a/be;->a:Lcom/alensw/b/a/a;

    invoke-virtual {v0, p1}, Lcom/alensw/b/a/a;->b(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/bf;

    if-eqz v0, :cond_0

    iput p2, v0, Lcom/alensw/a/bf;->a:I

    iput-object p5, v0, Lcom/alensw/a/bf;->c:[B

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/alensw/a/be;->a:Lcom/alensw/b/a/a;

    invoke-virtual {v0, p1}, Lcom/alensw/b/a/a;->b(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/bf;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/alensw/a/bf;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iput p2, v0, Lcom/alensw/a/bf;->a:I

    :cond_1
    iput-wide p3, v0, Lcom/alensw/a/bf;->b:J

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/alensw/a/be;->a:Lcom/alensw/b/a/a;

    invoke-virtual {v0, p1}, Lcom/alensw/b/a/a;->c(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/alensw/a/be;->a:Lcom/alensw/b/a/a;

    invoke-virtual {v0}, Lcom/alensw/b/a/a;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)[B
    .locals 2

    iget-object v0, p0, Lcom/alensw/a/be;->a:Lcom/alensw/b/a/a;

    invoke-virtual {v0, p1}, Lcom/alensw/b/a/a;->b(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/bf;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alensw/a/bf;->c:[B

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/alensw/a/bf;->c:[B

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alensw/a/bc;->e()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/alensw/a/bf;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/be;->a:Lcom/alensw/b/a/a;

    invoke-virtual {v0}, Lcom/alensw/b/a/a;->b()Lcom/alensw/b/a/c;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/bf;

    return-object v0
.end method
