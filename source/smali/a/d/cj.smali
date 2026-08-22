.class La/d/cj;
.super La/d/as;


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(I[BII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, La/d/as;-><init>()V

    iput p1, p0, La/d/cj;->b:I

    iput-object p2, p0, La/d/cj;->a:[B

    iput p3, p0, La/d/cj;->c:I

    iput p4, p0, La/d/cj;->d:I

    const/16 v0, 0x25

    iput-byte v0, p0, La/d/cj;->g:B

    const/16 v0, 0x26

    iput-byte v0, p0, La/d/cj;->S:B

    iput v1, p0, La/d/cj;->N:I

    const v0, 0xffff

    iput v0, p0, La/d/cj;->O:I

    iput-byte v1, p0, La/d/cj;->P:B

    const/4 v0, 0x2

    iput v0, p0, La/d/cj;->R:I

    const-string v0, "\\PIPE\\"

    iput-object v0, p0, La/d/cj;->T:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method c([BI)I
    .locals 4

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, La/d/cj;->S:B

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    aput-byte v2, p1, v0

    iget v0, p0, La/d/cj;->b:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, v1}, La/d/cj;->a(J[BI)V

    add-int/lit8 v0, v1, 0x2

    const/4 v0, 0x4

    return v0
.end method

.method d([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method e([BI)I
    .locals 3

    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, La/d/cj;->d:I

    if-ge v0, v1, :cond_1

    sget-object v0, La/d/cj;->e:La/e/e;

    sget v0, La/e/e;->a:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    sget-object v0, La/d/cj;->e:La/e/e;

    const-string v1, "TransTransactNamedPipe data too long for buffer"

    invoke-virtual {v0, v1}, La/e/e;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, La/d/cj;->a:[B

    iget v1, p0, La/d/cj;->c:I

    iget v2, p0, La/d/cj;->d:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, La/d/cj;->d:I

    goto :goto_0
.end method
