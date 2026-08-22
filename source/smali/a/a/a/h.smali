.class public La/a/a/h;
.super La/a/b/e;


# instance fields
.field public a:I

.field public b:La/a/b/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/b/e;-><init>()V

    return-void
.end method


# virtual methods
.method public e(La/a/b/a;)V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, La/a/b/a;->e(I)I

    iget v0, p0, La/a/a/h;->a:I

    invoke-virtual {p1, v0}, La/a/b/a;->h(I)V

    iget v0, p0, La/a/a/h;->a:I

    invoke-virtual {p1, v0}, La/a/b/a;->h(I)V

    iget-object v0, p0, La/a/a/h;->b:La/a/b/e;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, La/a/b/a;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, La/a/a/h;->b:La/a/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p1, La/a/b/a;->g:La/a/b/a;

    iget-object v1, p0, La/a/a/h;->b:La/a/b/e;

    invoke-virtual {v1, v0}, La/a/b/e;->e(La/a/b/a;)V

    :cond_0
    return-void
.end method

.method public f(La/a/b/a;)V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, La/a/b/a;->e(I)I

    invoke-virtual {p1}, La/a/b/a;->f()I

    move-result v0

    iput v0, p0, La/a/a/h;->a:I

    invoke-virtual {p1}, La/a/b/a;->f()I

    invoke-virtual {p1}, La/a/b/a;->f()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/h;->b:La/a/b/e;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/f;

    invoke-direct {v0}, La/a/a/f;-><init>()V

    iput-object v0, p0, La/a/a/h;->b:La/a/b/e;

    :cond_0
    iget-object v0, p1, La/a/b/a;->g:La/a/b/a;

    iget-object v1, p0, La/a/a/h;->b:La/a/b/e;

    invoke-virtual {v1, v0}, La/a/b/e;->f(La/a/b/a;)V

    :cond_1
    return-void
.end method
