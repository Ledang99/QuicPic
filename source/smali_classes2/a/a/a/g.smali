.class public La/a/a/g;
.super La/a/b/e;


# instance fields
.field public a:I

.field public b:[La/a/a/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/b/e;-><init>()V

    return-void
.end method


# virtual methods
.method public e(La/a/b/a;)V
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, La/a/b/a;->e(I)I

    iget v0, p0, La/a/a/g;->a:I

    invoke-virtual {p1, v0}, La/a/b/a;->h(I)V

    iget-object v0, p0, La/a/a/g;->b:[La/a/a/j;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, La/a/b/a;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, La/a/a/g;->b:[La/a/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p1, La/a/b/a;->g:La/a/b/a;

    iget v1, p0, La/a/a/g;->a:I

    invoke-virtual {v0, v1}, La/a/b/a;->h(I)V

    iget v2, v0, La/a/b/a;->e:I

    mul-int/lit8 v3, v1, 0x4

    invoke-virtual {v0, v3}, La/a/b/a;->d(I)V

    invoke-virtual {v0, v2}, La/a/b/a;->a(I)La/a/b/a;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, La/a/a/g;->b:[La/a/a/j;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, La/a/a/j;->e(La/a/b/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(La/a/b/a;)V
    .locals 5

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, La/a/b/a;->e(I)I

    invoke-virtual {p1}, La/a/b/a;->f()I

    move-result v0

    iput v0, p0, La/a/a/g;->a:I

    invoke-virtual {p1}, La/a/b/a;->f()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, La/a/b/a;->g:La/a/b/a;

    invoke-virtual {v0}, La/a/b/a;->f()I

    move-result v1

    iget v2, v0, La/a/b/a;->e:I

    mul-int/lit8 v3, v1, 0x4

    invoke-virtual {v0, v3}, La/a/b/a;->d(I)V

    iget-object v3, p0, La/a/a/g;->b:[La/a/a/j;

    if-nez v3, :cond_2

    if-ltz v1, :cond_0

    const v3, 0xffff

    if-le v1, v3, :cond_1

    :cond_0
    new-instance v0, La/a/b/c;

    const-string v1, "invalid array conformance"

    invoke-direct {v0, v1}, La/a/b/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v3, v1, [La/a/a/j;

    iput-object v3, p0, La/a/a/g;->b:[La/a/a/j;

    :cond_2
    invoke-virtual {v0, v2}, La/a/b/a;->a(I)La/a/b/a;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    iget-object v3, p0, La/a/a/g;->b:[La/a/a/j;

    aget-object v3, v3, v0

    if-nez v3, :cond_3

    iget-object v3, p0, La/a/a/g;->b:[La/a/a/j;

    new-instance v4, La/a/a/j;

    invoke-direct {v4}, La/a/a/j;-><init>()V

    aput-object v4, v3, v0

    :cond_3
    iget-object v3, p0, La/a/a/g;->b:[La/a/a/j;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, La/a/a/j;->f(La/a/b/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
