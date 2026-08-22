.class public Lb/a/ik;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lb/a/ii;

.field private final b:J

.field private final c:I

.field private final d:I

.field private e:Lcom/c/a/i;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Lb/a/ii;)V
    .locals 4

    const/16 v3, 0x2710

    const/4 v2, 0x0

    iput-object p1, p0, Lb/a/ik;->a:Lb/a/ii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x4d3f6400

    iput-wide v0, p0, Lb/a/ik;->b:J

    const v0, 0x1b7740

    iput v0, p0, Lb/a/ik;->c:I

    iput v3, p0, Lb/a/ik;->d:I

    iput-boolean v2, p0, Lb/a/ik;->j:Z

    invoke-static {p1}, Lb/a/ii;->a(Lb/a/ii;)Lcom/c/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/t;->c()I

    move-result v0

    iput v0, p0, Lb/a/ik;->f:I

    invoke-static {p1}, Lb/a/ii;->a(Lb/a/ii;)Lcom/c/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/t;->d()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, v0}, Lb/a/ik;->c(I)I

    move-result v0

    iput v0, p0, Lb/a/ik;->g:I

    :goto_0
    invoke-static {p1}, Lb/a/ii;->a(Lb/a/ii;)Lcom/c/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/t;->b()[I

    move-result-object v0

    aget v1, v0, v2

    iput v1, p0, Lb/a/ik;->h:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lb/a/ik;->i:I

    return-void

    :cond_0
    sget v0, Lcom/c/a/a;->g:I

    if-lez v0, :cond_1

    sget v0, Lcom/c/a/a;->g:I

    invoke-direct {p0, v0}, Lb/a/ik;->c(I)I

    move-result v0

    iput v0, p0, Lb/a/ik;->g:I

    goto :goto_0

    :cond_1
    iput v3, p0, Lb/a/ik;->g:I

    goto :goto_0
.end method

.method private a(II)Lcom/c/a/i;
    .locals 4

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lcom/c/a/f;

    invoke-direct {v0}, Lcom/c/a/f;-><init>()V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/c/a/f;

    invoke-direct {v0}, Lcom/c/a/f;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/c/a/g;

    iget-object v1, p0, Lb/a/ik;->a:Lb/a/ii;

    invoke-static {v1}, Lb/a/ii;->b(Lb/a/ii;)Lb/a/b;

    move-result-object v1

    int-to-long v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/c/a/g;-><init>(Lb/a/b;J)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/c/a/h;

    iget-object v1, p0, Lb/a/ik;->a:Lb/a/ii;

    invoke-static {v1}, Lb/a/ii;->b(Lb/a/ii;)Lb/a/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/c/a/h;-><init>(Lb/a/b;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/c/a/i;

    invoke-direct {v0}, Lcom/c/a/i;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/c/a/j;

    iget-object v1, p0, Lb/a/ik;->a:Lb/a/ii;

    invoke-static {v1}, Lb/a/ii;->d(Lb/a/ii;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/c/a/j;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method private c(I)I
    .locals 1

    const v0, 0x1b7740

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    return p1
.end method


# virtual methods
.method protected a()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lb/a/ik;->f:I

    if-lez v2, :cond_3

    iget-object v2, p0, Lb/a/ik;->e:Lcom/c/a/i;

    instance-of v2, v2, Lcom/c/a/d;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lb/a/ik;->e:Lcom/c/a/i;

    invoke-virtual {v2}, Lcom/c/a/i;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/a/ik;->e:Lcom/c/a/i;

    :goto_1
    iput-object v0, p0, Lb/a/ik;->e:Lcom/c/a/i;

    :cond_0
    :goto_2
    iput-boolean v1, p0, Lb/a/ik;->j:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/c/a/d;

    iget-object v2, p0, Lb/a/ik;->a:Lb/a/ii;

    invoke-static {v2}, Lb/a/ii;->b(Lb/a/ii;)Lb/a/b;

    move-result-object v2

    iget-object v3, p0, Lb/a/ik;->a:Lb/a/ii;

    invoke-static {v3}, Lb/a/ii;->c(Lb/a/ii;)Lb/a/j;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/c/a/d;-><init>(Lb/a/b;Lb/a/j;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lb/a/ik;->e:Lcom/c/a/i;

    instance-of v2, v2, Lcom/c/a/e;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lb/a/ik;->e:Lcom/c/a/i;

    invoke-virtual {v2}, Lcom/c/a/i;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_3
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/ik;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lb/a/ik;->a:Lb/a/ii;

    invoke-static {v0}, Lb/a/ii;->d(Lb/a/ii;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/gf;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lb/a/ik;->g:I

    invoke-static {v2, v0}, Lcom/c/a/l;->a(ILjava/lang/String;)I

    move-result v0

    new-instance v2, Lcom/c/a/e;

    invoke-direct {v2, v0}, Lcom/c/a/e;-><init>(I)V

    iput-object v2, p0, Lb/a/ik;->e:Lcom/c/a/i;

    iget-object v2, p0, Lb/a/ik;->a:Lb/a/ii;

    invoke-static {v2, v0}, Lb/a/ii;->a(Lb/a/ii;I)V

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    iget v0, p0, Lb/a/ik;->h:I

    iget v2, p0, Lb/a/ik;->i:I

    invoke-direct {p0, v0, v2}, Lb/a/ik;->a(II)Lcom/c/a/i;

    move-result-object v0

    iput-object v0, p0, Lb/a/ik;->e:Lcom/c/a/i;

    goto :goto_2
.end method

.method public a(I)V
    .locals 1

    invoke-direct {p0, p1}, Lb/a/ik;->c(I)I

    move-result v0

    iput v0, p0, Lb/a/ik;->g:I

    invoke-virtual {p0}, Lb/a/ik;->d()V

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lb/a/ik;->f:I

    invoke-virtual {p0}, Lb/a/ik;->d()V

    return-void
.end method

.method protected b()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lb/a/ik;->a:Lb/a/ii;

    invoke-static {v1}, Lb/a/ii;->a(Lb/a/ii;)Lcom/c/a/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/c/a/t;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lb/a/ik;->a:Lb/a/ii;

    invoke-static {v1}, Lb/a/ii;->b(Lb/a/ii;)Lb/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lb/a/ik;->a:Lb/a/ii;

    invoke-static {v1}, Lb/a/ii;->b(Lb/a/ii;)Lb/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/b;->j()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x4d3f6400

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()Lcom/c/a/i;
    .locals 1

    invoke-virtual {p0}, Lb/a/ik;->a()V

    iget-object v0, p0, Lb/a/ik;->e:Lcom/c/a/i;

    return-object v0
.end method

.method protected d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/ik;->j:Z

    return-void
.end method
