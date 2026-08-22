.class public La/d/bj;
.super La/d/bd;


# instance fields
.field o:Ljava/io/InputStream;

.field p:Ljava/io/OutputStream;

.field q:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILa/d/t;)V
    .locals 1

    invoke-direct {p0, p1, p3}, La/d/bd;-><init>(Ljava/lang/String;La/d/t;)V

    iput p2, p0, La/d/bj;->q:I

    const/16 v0, 0x10

    iput v0, p0, La/d/bj;->j:I

    return-void
.end method


# virtual methods
.method public A()Ljava/io/InputStream;
    .locals 3

    iget-object v0, p0, La/d/bj;->o:Ljava/io/InputStream;

    if-nez v0, :cond_1

    iget v0, p0, La/d/bj;->q:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    iget v0, p0, La/d/bj;->q:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_2

    :cond_0
    new-instance v0, La/d/cn;

    invoke-direct {v0, p0}, La/d/cn;-><init>(La/d/bj;)V

    iput-object v0, p0, La/d/bj;->o:Ljava/io/InputStream;

    :cond_1
    :goto_0
    iget-object v0, p0, La/d/bj;->o:Ljava/io/InputStream;

    return-object v0

    :cond_2
    new-instance v0, La/d/bg;

    iget v1, p0, La/d/bj;->q:I

    const v2, -0xff01

    and-int/2addr v1, v2

    or-int/lit8 v1, v1, 0x20

    invoke-direct {v0, p0, v1}, La/d/bg;-><init>(La/d/bd;I)V

    iput-object v0, p0, La/d/bj;->o:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public B()Ljava/io/OutputStream;
    .locals 4

    iget-object v0, p0, La/d/bj;->p:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    iget v0, p0, La/d/bj;->q:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    iget v0, p0, La/d/bj;->q:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_2

    :cond_0
    new-instance v0, La/d/co;

    invoke-direct {v0, p0}, La/d/co;-><init>(La/d/bj;)V

    iput-object v0, p0, La/d/bj;->p:Ljava/io/OutputStream;

    :cond_1
    :goto_0
    iget-object v0, p0, La/d/bj;->p:Ljava/io/OutputStream;

    return-object v0

    :cond_2
    new-instance v0, La/d/bh;

    const/4 v1, 0x0

    iget v2, p0, La/d/bj;->q:I

    const v3, -0xff01

    and-int/2addr v2, v3

    or-int/lit8 v2, v2, 0x20

    invoke-direct {v0, p0, v1, v2}, La/d/bh;-><init>(La/d/bd;ZI)V

    iput-object v0, p0, La/d/bj;->p:Ljava/io/OutputStream;

    goto :goto_0
.end method
