.class public Lcom/a/a/a/b/c;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected b:Lcom/a/a/a/a;

.field protected final c:Z

.field protected final d:Lcom/a/a/a/e/b;

.field protected e:[B

.field protected f:[B

.field protected g:[B

.field protected h:[C

.field protected i:[C

.field protected j:[C


# direct methods
.method public constructor <init>(Lcom/a/a/a/e/b;Ljava/lang/Object;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/b/c;->e:[B

    iput-object v0, p0, Lcom/a/a/a/b/c;->f:[B

    iput-object v0, p0, Lcom/a/a/a/b/c;->g:[B

    iput-object v0, p0, Lcom/a/a/a/b/c;->h:[C

    iput-object v0, p0, Lcom/a/a/a/b/c;->i:[C

    iput-object v0, p0, Lcom/a/a/a/b/c;->j:[C

    iput-object p1, p0, Lcom/a/a/a/b/c;->d:Lcom/a/a/a/e/b;

    iput-object p2, p0, Lcom/a/a/a/b/c;->a:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/a/a/a/b/c;->c:Z

    return-void
.end method

.method private g()Ljava/lang/IllegalArgumentException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/b/c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcom/a/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/a/b/c;->b:Lcom/a/a/a/a;

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call same allocXxx() method second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/a/a/a/b/c;->e:[B

    invoke-virtual {p0, p1, v0}, Lcom/a/a/a/b/c;->a([B[B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/b/c;->e:[B

    iget-object v0, p0, Lcom/a/a/a/b/c;->d:Lcom/a/a/a/e/b;

    sget-object v1, Lcom/a/a/a/e/c;->a:Lcom/a/a/a/e/c;

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/e/b;->a(Lcom/a/a/a/e/c;[B)V

    :cond_0
    return-void
.end method

.method protected a([B[B)V
    .locals 2

    if-eq p1, p2, :cond_0

    array-length v0, p1

    array-length v1, p2

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/b/c;->g()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public a([C)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/a/a/a/b/c;->h:[C

    invoke-virtual {p0, p1, v0}, Lcom/a/a/a/b/c;->a([C[C)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/b/c;->h:[C

    iget-object v0, p0, Lcom/a/a/a/b/c;->d:Lcom/a/a/a/e/b;

    sget-object v1, Lcom/a/a/a/e/d;->a:Lcom/a/a/a/e/d;

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/e/b;->a(Lcom/a/a/a/e/d;[C)V

    :cond_0
    return-void
.end method

.method protected a([C[C)V
    .locals 2

    if-eq p1, p2, :cond_0

    array-length v0, p1

    array-length v1, p2

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/b/c;->g()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public b()Lcom/a/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/b/c;->b:Lcom/a/a/a/a;

    return-object v0
.end method

.method public b([C)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/a/a/a/b/c;->j:[C

    invoke-virtual {p0, p1, v0}, Lcom/a/a/a/b/c;->a([C[C)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/b/c;->j:[C

    iget-object v0, p0, Lcom/a/a/a/b/c;->d:Lcom/a/a/a/e/b;

    sget-object v1, Lcom/a/a/a/e/d;->d:Lcom/a/a/a/e/d;

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/e/b;->a(Lcom/a/a/a/e/d;[C)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/a/b/c;->c:Z

    return v0
.end method

.method public d()Lcom/a/a/a/e/h;
    .locals 2

    new-instance v0, Lcom/a/a/a/e/h;

    iget-object v1, p0, Lcom/a/a/a/b/c;->d:Lcom/a/a/a/e/b;

    invoke-direct {v0, v1}, Lcom/a/a/a/e/h;-><init>(Lcom/a/a/a/e/b;)V

    return-object v0
.end method

.method public e()[B
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/b/c;->e:[B

    invoke-virtual {p0, v0}, Lcom/a/a/a/b/c;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/a/a/a/b/c;->d:Lcom/a/a/a/e/b;

    sget-object v1, Lcom/a/a/a/e/c;->a:Lcom/a/a/a/e/c;

    invoke-virtual {v0, v1}, Lcom/a/a/a/e/b;->a(Lcom/a/a/a/e/c;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/b/c;->e:[B

    return-object v0
.end method

.method public f()[C
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/b/c;->h:[C

    invoke-virtual {p0, v0}, Lcom/a/a/a/b/c;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/a/a/a/b/c;->d:Lcom/a/a/a/e/b;

    sget-object v1, Lcom/a/a/a/e/d;->a:Lcom/a/a/a/e/d;

    invoke-virtual {v0, v1}, Lcom/a/a/a/e/b;->a(Lcom/a/a/a/e/d;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/b/c;->h:[C

    return-object v0
.end method
