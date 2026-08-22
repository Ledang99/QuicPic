.class La/d/ay;
.super La/d/b;


# instance fields
.field private D:I

.field private E:I

.field private F:I

.field private G:[B

.field private H:J

.field private I:I

.field b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/d/b;-><init>(La/d/u;)V

    const/16 v0, 0x2f

    iput-byte v0, p0, La/d/ay;->g:B

    return-void
.end method


# virtual methods
.method a(B)I
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x2e

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(IJI[BII)V
    .locals 2

    iput p1, p0, La/d/ay;->c:I

    iput-wide p2, p0, La/d/ay;->H:J

    iput p4, p0, La/d/ay;->d:I

    iput-object p5, p0, La/d/ay;->G:[B

    iput p6, p0, La/d/ay;->F:I

    iput p7, p0, La/d/ay;->D:I

    const/4 v0, 0x0

    iput-object v0, p0, La/d/ay;->B:La/d/v;

    return-void
.end method

.method n([BI)I
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, La/d/ay;->i:I

    sub-int v0, p2, v0

    add-int/lit8 v0, v0, 0x1a

    iput v0, p0, La/d/ay;->E:I

    iget v0, p0, La/d/ay;->E:I

    iget v2, p0, La/d/ay;->i:I

    sub-int/2addr v0, v2

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, La/d/ay;->I:I

    iget v0, p0, La/d/ay;->I:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, La/d/ay;->I:I

    iget v0, p0, La/d/ay;->E:I

    iget v2, p0, La/d/ay;->I:I

    add-int/2addr v0, v2

    iput v0, p0, La/d/ay;->E:I

    iget v0, p0, La/d/ay;->c:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, p2}, La/d/ay;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget-wide v2, p0, La/d/ay;->H:J

    invoke-static {v2, v3, p1, v0}, La/d/ay;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    move v2, v0

    move v0, v1

    :goto_1
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    const/4 v4, -0x1

    aput-byte v4, p1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    :cond_0
    iget v0, p0, La/d/ay;->I:I

    rsub-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    iget v0, p0, La/d/ay;->b:I

    int-to-long v4, v0

    invoke-static {v4, v5, p1, v2}, La/d/ay;->a(J[BI)V

    add-int/lit8 v0, v2, 0x2

    iget v2, p0, La/d/ay;->d:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ay;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    iget v1, p0, La/d/ay;->D:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/ay;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/d/ay;->E:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/ay;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-wide v2, p0, La/d/ay;->H:J

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/ay;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

    return v0
.end method

.method o([BI)I
    .locals 4

    move v0, p2

    :goto_0
    iget v1, p0, La/d/ay;->I:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, La/d/ay;->I:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    const/16 v2, -0x12

    aput-byte v2, p1, v0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, La/d/ay;->G:[B

    iget v2, p0, La/d/ay;->F:I

    iget v3, p0, La/d/ay;->D:I

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, La/d/ay;->D:I

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
