.class public La/a/a/n;
.super La/a/f;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:La/a/b/e;

.field public l:I

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILa/a/b/e;III)V
    .locals 0

    invoke-direct {p0}, La/a/f;-><init>()V

    iput-object p1, p0, La/a/a/n;->b:Ljava/lang/String;

    iput p2, p0, La/a/a/n;->c:I

    iput-object p3, p0, La/a/a/n;->d:La/a/b/e;

    iput p4, p0, La/a/a/n;->l:I

    iput p5, p0, La/a/a/n;->m:I

    iput p6, p0, La/a/a/n;->n:I

    return-void
.end method


# virtual methods
.method public a(La/a/b/a;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, La/a/a/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/b/a;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, La/a/a/n;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/b/a;->a(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, La/a/a/n;->c:I

    invoke-virtual {p1, v0}, La/a/b/a;->h(I)V

    iget v0, p0, La/a/a/n;->c:I

    invoke-virtual {p1, v0}, La/a/b/a;->h(I)V

    iget-object v0, p0, La/a/a/n;->d:La/a/b/e;

    invoke-virtual {p1, v0, v1}, La/a/b/a;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, La/a/a/n;->d:La/a/b/e;

    if-eqz v0, :cond_1

    iget-object p1, p1, La/a/b/a;->g:La/a/b/a;

    iget-object v0, p0, La/a/a/n;->d:La/a/b/e;

    invoke-virtual {v0, p1}, La/a/b/e;->e(La/a/b/a;)V

    :cond_1
    iget v0, p0, La/a/a/n;->l:I

    invoke-virtual {p1, v0}, La/a/b/a;->h(I)V

    iget v0, p0, La/a/a/n;->n:I

    invoke-virtual {p1, v0}, La/a/b/a;->h(I)V

    return-void
.end method

.method public b()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public b(La/a/b/a;)V
    .locals 1

    invoke-virtual {p1}, La/a/b/a;->f()I

    move-result v0

    iput v0, p0, La/a/a/n;->c:I

    invoke-virtual {p1}, La/a/b/a;->f()I

    invoke-virtual {p1}, La/a/b/a;->f()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/n;->d:La/a/b/e;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/q;

    invoke-direct {v0}, La/a/a/q;-><init>()V

    iput-object v0, p0, La/a/a/n;->d:La/a/b/e;

    :cond_0
    iget-object p1, p1, La/a/b/a;->g:La/a/b/a;

    iget-object v0, p0, La/a/a/n;->d:La/a/b/e;

    invoke-virtual {v0, p1}, La/a/b/e;->f(La/a/b/a;)V

    :cond_1
    invoke-virtual {p1}, La/a/b/a;->f()I

    move-result v0

    iput v0, p0, La/a/a/n;->m:I

    invoke-virtual {p1}, La/a/b/a;->f()I

    move-result v0

    iput v0, p0, La/a/a/n;->n:I

    invoke-virtual {p1}, La/a/b/a;->f()I

    move-result v0

    iput v0, p0, La/a/a/n;->a:I

    return-void
.end method
