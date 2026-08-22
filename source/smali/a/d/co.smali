.class La/d/co;
.super La/d/bh;


# instance fields
.field private a:Ljava/lang/String;

.field private b:La/d/bj;

.field private c:[B

.field private d:Z


# direct methods
.method constructor <init>(La/d/bj;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, La/d/bj;->q:I

    const v3, -0xff01

    and-int/2addr v2, v3

    or-int/lit8 v2, v2, 0x20

    invoke-direct {p0, p1, v1, v2}, La/d/bh;-><init>(La/d/bd;ZI)V

    new-array v2, v0, [B

    iput-object v2, p0, La/d/co;->c:[B

    iput-object p1, p0, La/d/co;->b:La/d/bj;

    iget v2, p1, La/d/bj;->q:I

    and-int/lit16 v2, v2, 0x600

    const/16 v3, 0x600

    if-ne v2, v3, :cond_0

    :goto_0
    iput-boolean v0, p0, La/d/co;->d:Z

    iget-object v0, p1, La/d/bj;->h:Ljava/lang/String;

    iput-object v0, p0, La/d/co;->a:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, La/d/co;->b:La/d/bj;

    invoke-virtual {v0}, La/d/bj;->i()V

    return-void
.end method

.method public write(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, La/d/co;->c:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, La/d/co;->c:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, La/d/co;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, La/d/co;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4

    if-gez p3, :cond_0

    const/4 p3, 0x0

    :cond_0
    iget-object v0, p0, La/d/co;->b:La/d/bj;

    iget v0, v0, La/d/bj;->q:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_2

    iget-object v0, p0, La/d/co;->b:La/d/bj;

    new-instance v1, La/d/cl;

    iget-object v2, p0, La/d/co;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, La/d/cl;-><init>(Ljava/lang/String;)V

    new-instance v2, La/d/cm;

    invoke-direct {v2}, La/d/cm;-><init>()V

    invoke-virtual {v0, v1, v2}, La/d/bj;->a(La/d/u;La/d/u;)V

    iget-object v0, p0, La/d/co;->b:La/d/bj;

    new-instance v1, La/d/cf;

    iget-object v2, p0, La/d/co;->a:Ljava/lang/String;

    invoke-direct {v1, v2, p1, p2, p3}, La/d/cf;-><init>(Ljava/lang/String;[BII)V

    new-instance v2, La/d/cg;

    iget-object v3, p0, La/d/co;->b:La/d/bj;

    invoke-direct {v2, v3}, La/d/cg;-><init>(La/d/bj;)V

    invoke-virtual {v0, v1, v2}, La/d/bj;->a(La/d/u;La/d/u;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, La/d/co;->b:La/d/bj;

    iget v0, v0, La/d/bj;->q:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, La/d/co;->b()V

    new-instance v0, La/d/cj;

    iget-object v1, p0, La/d/co;->b:La/d/bj;

    iget v1, v1, La/d/bj;->i:I

    invoke-direct {v0, v1, p1, p2, p3}, La/d/cj;-><init>(I[BII)V

    iget-boolean v1, p0, La/d/co;->d:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x400

    iput v1, v0, La/d/cj;->O:I

    :cond_3
    iget-object v1, p0, La/d/co;->b:La/d/bj;

    new-instance v2, La/d/ck;

    iget-object v3, p0, La/d/co;->b:La/d/bj;

    invoke-direct {v2, v3}, La/d/ck;-><init>(La/d/bj;)V

    invoke-virtual {v1, v0, v2}, La/d/bj;->a(La/d/u;La/d/u;)V

    goto :goto_0
.end method
