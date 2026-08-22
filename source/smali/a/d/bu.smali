.class La/d/bu;
.super La/d/at;


# instance fields
.field S:I

.field T:I

.field U:[La/d/bv;

.field a:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/d/at;-><init>()V

    const/16 v0, 0x10

    iput-byte v0, p0, La/d/bu;->L:B

    return-void
.end method


# virtual methods
.method a([BII)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method b([BII)I
    .locals 4

    invoke-static {p1, p2}, La/d/bu;->f([BI)I

    move-result v0

    iput v0, p0, La/d/bu;->a:I

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, La/d/bu;->m:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, La/d/bu;->a:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, La/d/bu;->a:I

    :cond_0
    invoke-static {p1, v0}, La/d/bu;->f([BI)I

    move-result v1

    iput v1, p0, La/d/bu;->S:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/bu;->f([BI)I

    move-result v1

    iput v1, p0, La/d/bu;->T:I

    add-int/lit8 v1, v0, 0x4

    iget v0, p0, La/d/bu;->S:I

    new-array v0, v0, [La/d/bv;

    iput-object v0, p0, La/d/bu;->U:[La/d/bv;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, La/d/bu;->S:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, La/d/bu;->U:[La/d/bv;

    new-instance v3, La/d/bv;

    invoke-direct {v3, p0}, La/d/bv;-><init>(La/d/bu;)V

    aput-object v3, v2, v0

    iget-object v2, p0, La/d/bu;->U:[La/d/bv;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, v1, p3}, La/d/bv;->a([BII)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sub-int v0, v1, p2

    return v0
.end method
