.class La/d/an;
.super La/d/b;


# instance fields
.field private D:J

.field private E:I

.field private F:I

.field b:I

.field c:I

.field d:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/d/b;-><init>(La/d/u;)V

    const/16 v0, 0x2e

    iput-byte v0, p0, La/d/an;->g:B

    const/4 v0, -0x1

    iput v0, p0, La/d/an;->F:I

    return-void
.end method


# virtual methods
.method a(B)I
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(IJI)V
    .locals 0

    iput p1, p0, La/d/an;->E:I

    iput-wide p2, p0, La/d/an;->D:J

    iput p4, p0, La/d/an;->c:I

    iput p4, p0, La/d/an;->b:I

    return-void
.end method

.method n([BI)I
    .locals 4

    iget v0, p0, La/d/an;->E:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, La/d/an;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget-wide v2, p0, La/d/an;->D:J

    invoke-static {v2, v3, p1, v0}, La/d/an;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, La/d/an;->b:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/an;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/d/an;->c:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/an;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/d/an;->F:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/an;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, La/d/an;->d:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/an;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-wide v2, p0, La/d/an;->D:J

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/an;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

    return v0
.end method

.method o([BI)I
    .locals 1

    const/4 v0, 0x0

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
