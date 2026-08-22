.class La/d/q;
.super La/d/ai;


# instance fields
.field a:I

.field b:I


# virtual methods
.method c([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method d([BI)I
    .locals 4

    const/4 v2, 0x0

    iget v0, p0, La/d/q;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, La/d/q;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, v0, 0x1

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v2, p1, v1

    iget v1, p0, La/d/q;->b:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/q;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

    return v0
.end method

.method e([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
