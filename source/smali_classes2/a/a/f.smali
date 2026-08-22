.class public abstract La/a/f;
.super La/a/b/e;

# interfaces
.implements La/a/c;


# instance fields
.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, La/a/b/e;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, La/a/f;->f:I

    iput v1, p0, La/a/f;->g:I

    iput v1, p0, La/a/f;->h:I

    iput v1, p0, La/a/f;->i:I

    iput v1, p0, La/a/f;->j:I

    iput v1, p0, La/a/f;->k:I

    return-void
.end method


# virtual methods
.method public a()La/a/d;
    .locals 2

    iget v0, p0, La/a/f;->k:I

    if-eqz v0, :cond_0

    new-instance v0, La/a/d;

    iget v1, p0, La/a/f;->k:I

    invoke-direct {v0, v1}, La/a/d;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract a(La/a/b/a;)V
.end method

.method public abstract b()I
.end method

.method public abstract b(La/a/b/a;)V
.end method

.method public b(I)Z
    .locals 1

    iget v0, p0, La/a/f;->g:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(La/a/b/a;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, La/a/b/a;->f(I)V

    invoke-virtual {p1, v1}, La/a/b/a;->f(I)V

    iget v0, p0, La/a/f;->f:I

    invoke-virtual {p1, v0}, La/a/b/a;->f(I)V

    iget v0, p0, La/a/f;->g:I

    invoke-virtual {p1, v0}, La/a/b/a;->f(I)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, La/a/b/a;->h(I)V

    iget v0, p0, La/a/f;->h:I

    invoke-virtual {p1, v0}, La/a/b/a;->g(I)V

    invoke-virtual {p1, v1}, La/a/b/a;->g(I)V

    iget v0, p0, La/a/f;->i:I

    invoke-virtual {p1, v0}, La/a/b/a;->h(I)V

    return-void
.end method

.method d(La/a/b/a;)V
    .locals 2

    invoke-virtual {p1}, La/a/b/a;->d()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, La/a/b/a;->d()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, La/a/b/c;

    const-string v1, "DCERPC version not supported"

    invoke-direct {v0, v1}, La/a/b/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, La/a/b/a;->d()I

    move-result v0

    iput v0, p0, La/a/f;->f:I

    invoke-virtual {p1}, La/a/b/a;->d()I

    move-result v0

    iput v0, p0, La/a/f;->g:I

    invoke-virtual {p1}, La/a/b/a;->f()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    new-instance v0, La/a/b/c;

    const-string v1, "Data representation not supported"

    invoke-direct {v0, v1}, La/a/b/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, La/a/b/a;->e()I

    move-result v0

    iput v0, p0, La/a/f;->h:I

    invoke-virtual {p1}, La/a/b/a;->e()I

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, La/a/b/c;

    const-string v1, "DCERPC authentication not supported"

    invoke-direct {v0, v1}, La/a/b/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p1}, La/a/b/a;->f()I

    move-result v0

    iput v0, p0, La/a/f;->i:I

    return-void
.end method

.method public e(La/a/b/a;)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, La/a/b/a;->b()I

    move-result v2

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, La/a/b/a;->d(I)V

    iget v0, p0, La/a/f;->f:I

    if-nez v0, :cond_1

    invoke-virtual {p1}, La/a/b/a;->b()I

    move-result v0

    invoke-virtual {p1, v1}, La/a/b/a;->h(I)V

    invoke-virtual {p1, v1}, La/a/b/a;->g(I)V

    invoke-virtual {p0}, La/a/f;->b()I

    move-result v1

    invoke-virtual {p1, v1}, La/a/b/a;->g(I)V

    :goto_0
    invoke-virtual {p0, p1}, La/a/f;->a(La/a/b/a;)V

    invoke-virtual {p1}, La/a/b/a;->b()I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, p0, La/a/f;->h:I

    iget v1, p0, La/a/f;->f:I

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, La/a/b/a;->b(I)V

    iget v1, p0, La/a/f;->h:I

    sub-int v0, v1, v0

    iput v0, p0, La/a/f;->j:I

    iget v0, p0, La/a/f;->j:I

    invoke-virtual {p1, v0}, La/a/b/a;->h(I)V

    :cond_0
    invoke-virtual {p1, v2}, La/a/b/a;->b(I)V

    invoke-virtual {p0, p1}, La/a/f;->c(La/a/b/a;)V

    iget v0, p0, La/a/f;->h:I

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, La/a/b/a;->b(I)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public f(La/a/b/a;)V
    .locals 5

    const/16 v4, 0xd

    const/4 v3, 0x2

    const/4 v2, 0x3

    invoke-virtual {p0, p1}, La/a/f;->d(La/a/b/a;)V

    iget v0, p0, La/a/f;->f:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget v0, p0, La/a/f;->f:I

    if-eq v0, v3, :cond_0

    iget v0, p0, La/a/f;->f:I

    if-eq v0, v2, :cond_0

    iget v0, p0, La/a/f;->f:I

    if-eq v0, v4, :cond_0

    new-instance v0, La/a/b/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ptype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/a/f;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/b/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, La/a/f;->f:I

    if-eq v0, v3, :cond_1

    iget v0, p0, La/a/f;->f:I

    if-ne v0, v2, :cond_2

    :cond_1
    invoke-virtual {p1}, La/a/b/a;->f()I

    move-result v0

    iput v0, p0, La/a/f;->j:I

    invoke-virtual {p1}, La/a/b/a;->e()I

    invoke-virtual {p1}, La/a/b/a;->e()I

    :cond_2
    iget v0, p0, La/a/f;->f:I

    if-eq v0, v2, :cond_3

    iget v0, p0, La/a/f;->f:I

    if-ne v0, v4, :cond_4

    :cond_3
    invoke-virtual {p1}, La/a/b/a;->f()I

    move-result v0

    iput v0, p0, La/a/f;->k:I

    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0, p1}, La/a/f;->b(La/a/b/a;)V

    goto :goto_0
.end method
