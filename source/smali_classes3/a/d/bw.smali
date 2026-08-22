.class La/d/bw;
.super La/d/as;


# instance fields
.field private a:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, La/d/as;-><init>()V

    const/16 v0, 0x32

    iput-byte v0, p0, La/d/bw;->g:B

    const/4 v0, 0x3

    iput-byte v0, p0, La/d/bw;->S:B

    iput p1, p0, La/d/bw;->a:I

    const/4 v0, 0x2

    iput v0, p0, La/d/bw;->L:I

    iput v1, p0, La/d/bw;->M:I

    iput v1, p0, La/d/bw;->N:I

    const/16 v0, 0x320

    iput v0, p0, La/d/bw;->O:I

    iput-byte v1, p0, La/d/bw;->P:B

    return-void
.end method


# virtual methods
.method c([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, La/d/bw;->S:B

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    return v0
.end method

.method d([BI)I
    .locals 2

    iget v0, p0, La/d/bw;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, La/d/bw;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    sub-int/2addr v0, p2

    return v0
.end method

.method e([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
