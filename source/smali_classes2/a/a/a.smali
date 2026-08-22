.class public La/a/a;
.super La/a/f;


# static fields
.field static final a:[Ljava/lang/String;


# instance fields
.field b:La/a/b;

.field c:I

.field d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DCERPC_BIND_ERR_ABSTRACT_SYNTAX_NOT_SUPPORTED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "DCERPC_BIND_ERR_PROPOSED_TRANSFER_SYNTAXES_NOT_SUPPORTED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DCERPC_BIND_ERR_LOCAL_LIMIT_EXCEEDED"

    aput-object v2, v0, v1

    sput-object v0, La/a/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/f;-><init>()V

    return-void
.end method

.method constructor <init>(La/a/b;La/a/e;)V
    .locals 1

    invoke-direct {p0}, La/a/f;-><init>()V

    iput-object p1, p0, La/a/a;->b:La/a/b;

    iget v0, p2, La/a/e;->b:I

    iput v0, p0, La/a/a;->c:I

    iget v0, p2, La/a/e;->c:I

    iput v0, p0, La/a/a;->d:I

    const/16 v0, 0xb

    iput v0, p0, La/a/a;->f:I

    const/4 v0, 0x3

    iput v0, p0, La/a/a;->g:I

    return-void
.end method

.method static a(I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x4

    if-ge p0, v2, :cond_0

    sget-object v0, La/a/a;->a:[Ljava/lang/String;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v2}, La/e/d;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()La/a/d;
    .locals 2

    iget v0, p0, La/a/a;->k:I

    if-eqz v0, :cond_0

    new-instance v0, La/a/d;

    iget v1, p0, La/a/a;->k:I

    invoke-static {v1}, La/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/d;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(La/a/b/a;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, La/a/a;->c:I

    invoke-virtual {p1, v0}, La/a/b/a;->g(I)V

    iget v0, p0, La/a/a;->d:I

    invoke-virtual {p1, v0}, La/a/b/a;->g(I)V

    invoke-virtual {p1, v1}, La/a/b/a;->h(I)V

    invoke-virtual {p1, v2}, La/a/b/a;->f(I)V

    invoke-virtual {p1, v1}, La/a/b/a;->f(I)V

    invoke-virtual {p1, v1}, La/a/b/a;->g(I)V

    invoke-virtual {p1, v1}, La/a/b/a;->g(I)V

    invoke-virtual {p1, v2}, La/a/b/a;->f(I)V

    invoke-virtual {p1, v1}, La/a/b/a;->f(I)V

    iget-object v0, p0, La/a/a;->b:La/a/b;

    iget-object v0, v0, La/a/b;->e:La/a/i;

    invoke-virtual {v0, p1}, La/a/i;->e(La/a/b/a;)V

    iget-object v0, p0, La/a/a;->b:La/a/b;

    iget v0, v0, La/a/b;->f:I

    invoke-virtual {p1, v0}, La/a/b/a;->g(I)V

    iget-object v0, p0, La/a/a;->b:La/a/b;

    iget v0, v0, La/a/b;->g:I

    invoke-virtual {p1, v0}, La/a/b/a;->g(I)V

    sget-object v0, La/a/a;->e:La/a/i;

    invoke-virtual {v0, p1}, La/a/i;->e(La/a/b/a;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, La/a/b/a;->h(I)V

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(La/a/b/a;)V
    .locals 2

    const/4 v1, 0x4

    invoke-virtual {p1}, La/a/b/a;->e()I

    invoke-virtual {p1}, La/a/b/a;->e()I

    invoke-virtual {p1}, La/a/b/a;->f()I

    invoke-virtual {p1}, La/a/b/a;->e()I

    move-result v0

    invoke-virtual {p1, v0}, La/a/b/a;->d(I)V

    invoke-virtual {p1, v1}, La/a/b/a;->e(I)I

    invoke-virtual {p1}, La/a/b/a;->d()I

    invoke-virtual {p1, v1}, La/a/b/a;->e(I)I

    invoke-virtual {p1}, La/a/b/a;->e()I

    move-result v0

    iput v0, p0, La/a/a;->k:I

    invoke-virtual {p1}, La/a/b/a;->e()I

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, La/a/b/a;->d(I)V

    return-void
.end method
