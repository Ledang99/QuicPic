.class public La/a/a/k;
.super La/a/f;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public l:La/a/a/h;

.field public m:La/a/b/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILa/a/a/h;La/a/b/d;)V
    .locals 0

    invoke-direct {p0}, La/a/f;-><init>()V

    iput-object p1, p0, La/a/a/k;->b:Ljava/lang/String;

    iput p2, p0, La/a/a/k;->c:I

    iput p3, p0, La/a/a/k;->d:I

    iput-object p4, p0, La/a/a/k;->l:La/a/a/h;

    iput-object p5, p0, La/a/a/k;->m:La/a/b/d;

    return-void
.end method


# virtual methods
.method public a(La/a/b/a;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, La/a/a/k;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/b/a;->a(Ljava/lang/String;)V

    iget v0, p0, La/a/a/k;->c:I

    invoke-virtual {p1, v0}, La/a/b/a;->h(I)V

    iget v0, p0, La/a/a/k;->d:I

    invoke-virtual {p1, v0}, La/a/b/a;->h(I)V

    iget-object v0, p0, La/a/a/k;->l:La/a/a/h;

    invoke-virtual {p1, v0, v1}, La/a/b/a;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, La/a/a/k;->l:La/a/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/k;->l:La/a/a/h;

    invoke-virtual {v0, p1}, La/a/a/h;->e(La/a/b/a;)V

    :cond_0
    iget-object v0, p0, La/a/a/k;->m:La/a/b/d;

    invoke-virtual {p1, v0, v1}, La/a/b/a;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, La/a/a/k;->m:La/a/b/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/k;->m:La/a/b/d;

    invoke-virtual {v0, p1}, La/a/b/d;->e(La/a/b/a;)V

    :cond_1
    return-void
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method

.method public b(La/a/b/a;)V
    .locals 1

    invoke-virtual {p1}, La/a/b/a;->f()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/k;->l:La/a/a/h;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/h;

    invoke-direct {v0}, La/a/a/h;-><init>()V

    iput-object v0, p0, La/a/a/k;->l:La/a/a/h;

    :cond_0
    iget-object v0, p0, La/a/a/k;->l:La/a/a/h;

    invoke-virtual {v0, p1}, La/a/a/h;->f(La/a/b/a;)V

    :cond_1
    invoke-virtual {p1}, La/a/b/a;->f()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/k;->m:La/a/b/d;

    invoke-virtual {v0, p1}, La/a/b/d;->f(La/a/b/a;)V

    :cond_2
    invoke-virtual {p1}, La/a/b/a;->f()I

    move-result v0

    iput v0, p0, La/a/a/k;->a:I

    return-void
.end method
