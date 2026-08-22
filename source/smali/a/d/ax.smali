.class La/d/ax;
.super La/d/u;


# instance fields
.field private D:I

.field private E:[B

.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/d/u;-><init>()V

    const/16 v0, 0xb

    iput-byte v0, p0, La/d/ax;->g:B

    return-void
.end method


# virtual methods
.method a(IJI[BII)V
    .locals 2

    iput p1, p0, La/d/ax;->a:I

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p2

    long-to-int v0, v0

    iput v0, p0, La/d/ax;->c:I

    iput p4, p0, La/d/ax;->d:I

    iput-object p5, p0, La/d/ax;->E:[B

    iput p6, p0, La/d/ax;->D:I

    iput p7, p0, La/d/ax;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, La/d/ax;->B:La/d/v;

    return-void
.end method

.method n([BI)I
    .locals 4

    iget v0, p0, La/d/ax;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, La/d/ax;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, La/d/ax;->b:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/ax;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/d/ax;->c:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/ax;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, La/d/ax;->d:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/ax;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0
.end method

.method o([BI)I
    .locals 4

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    aput-byte v1, p1, p2

    iget v1, p0, La/d/ax;->b:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/ax;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, La/d/ax;->E:[B

    iget v2, p0, La/d/ax;->D:I

    iget v3, p0, La/d/ax;->b:I

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, La/d/ax;->b:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method

.method p([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method q([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
