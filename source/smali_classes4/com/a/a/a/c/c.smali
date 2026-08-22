.class public final Lcom/a/a/a/c/c;
.super Lcom/a/a/a/k;


# instance fields
.field protected final c:Lcom/a/a/a/c/c;

.field protected final d:Lcom/a/a/a/c/b;

.field protected e:I

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:Lcom/a/a/a/c/c;


# direct methods
.method public constructor <init>(Lcom/a/a/a/c/c;Lcom/a/a/a/c/b;III)V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/a/k;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/c/c;->h:Lcom/a/a/a/c/c;

    iput-object p1, p0, Lcom/a/a/a/c/c;->c:Lcom/a/a/a/c/c;

    iput-object p2, p0, Lcom/a/a/a/c/c;->d:Lcom/a/a/a/c/b;

    iput p3, p0, Lcom/a/a/a/c/c;->a:I

    iput p4, p0, Lcom/a/a/a/c/c;->e:I

    iput p5, p0, Lcom/a/a/a/c/c;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/a/c/c;->b:I

    return-void
.end method

.method public static a(Lcom/a/a/a/c/b;)Lcom/a/a/a/c/c;
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Lcom/a/a/a/c/c;

    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object v2, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/a/a/a/c/c;-><init>(Lcom/a/a/a/c/c;Lcom/a/a/a/c/b;III)V

    return-object v0
.end method

.method private a(Lcom/a/a/a/c/b;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1, p2}, Lcom/a/a/a/c/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/a/a/a/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/a/a/c/b;->c()Lcom/a/a/a/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/g;-><init>(Ljava/lang/String;Lcom/a/a/a/f;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(II)Lcom/a/a/a/c/c;
    .locals 6

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/a/a/a/c/c;->h:Lcom/a/a/a/c/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/a/a/a/c/c;

    iget-object v1, p0, Lcom/a/a/a/c/c;->d:Lcom/a/a/a/c/b;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/a/a/a/c/c;-><init>(Lcom/a/a/a/c/c;Lcom/a/a/a/c/b;III)V

    iput-object v0, p0, Lcom/a/a/a/c/c;->h:Lcom/a/a/a/c/c;

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/a/a/a/c/c;->d:Lcom/a/a/a/c/b;

    invoke-virtual {v1}, Lcom/a/a/a/c/b;->a()Lcom/a/a/a/c/b;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3, p1, p2}, Lcom/a/a/a/c/c;->a(III)V

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;)Lcom/a/a/a/f;
    .locals 6

    const-wide/16 v2, -0x1

    new-instance v0, Lcom/a/a/a/f;

    iget v4, p0, Lcom/a/a/a/c/c;->e:I

    iget v5, p0, Lcom/a/a/a/c/c;->f:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/a/a/a/f;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method protected a(III)V
    .locals 1

    iput p1, p0, Lcom/a/a/a/c/c;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/a/c/c;->b:I

    iput p2, p0, Lcom/a/a/a/c/c;->e:I

    iput p3, p0, Lcom/a/a/a/c/c;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/c/c;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/a/a/a/c/c;->d:Lcom/a/a/a/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/c/c;->d:Lcom/a/a/a/c/b;

    invoke-virtual {v0}, Lcom/a/a/a/c/b;->b()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/a/a/a/c/c;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/a/a/a/c/c;->d:Lcom/a/a/a/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/c/c;->d:Lcom/a/a/a/c/b;

    invoke-direct {p0, v0, p1}, Lcom/a/a/a/c/c;->a(Lcom/a/a/a/c/b;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(II)Lcom/a/a/a/c/c;
    .locals 6

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/a/a/a/c/c;->h:Lcom/a/a/a/c/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/a/a/a/c/c;

    iget-object v1, p0, Lcom/a/a/a/c/c;->d:Lcom/a/a/a/c/b;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/a/a/a/c/c;-><init>(Lcom/a/a/a/c/c;Lcom/a/a/a/c/b;III)V

    iput-object v0, p0, Lcom/a/a/a/c/c;->h:Lcom/a/a/a/c/c;

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/a/a/a/c/c;->d:Lcom/a/a/a/c/b;

    invoke-virtual {v1}, Lcom/a/a/a/c/b;->a()Lcom/a/a/a/c/b;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3, p1, p2}, Lcom/a/a/a/c/c;->a(III)V

    goto :goto_1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/c/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/a/a/a/c/c;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/c/c;->c:Lcom/a/a/a/c/c;

    return-object v0
.end method

.method public h()Z
    .locals 2

    iget v0, p0, Lcom/a/a/a/c/c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/a/c/c;->b:I

    iget v1, p0, Lcom/a/a/a/c/c;->a:I

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x22

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lcom/a/a/a/c/c;->a:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/a/a/c/c;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/a/a/c/c;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/a/a/c/c;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/b/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
