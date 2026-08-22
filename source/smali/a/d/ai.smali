.class abstract La/d/ai;
.super La/d/as;


# instance fields
.field c:I


# virtual methods
.method n([BI)I
    .locals 7

    const/16 v6, -0x5f

    const/4 v1, 0x0

    iget-byte v0, p0, La/d/ai;->g:B

    if-eq v0, v6, :cond_2

    add-int/lit8 v0, p2, 0x1

    iget-byte v2, p0, La/d/ai;->P:B

    aput-byte v2, p1, p2

    :goto_0
    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    iget v2, p0, La/d/ai;->L:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ai;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v2, p0, La/d/ai;->M:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ai;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget-byte v2, p0, La/d/ai;->g:B

    if-eq v2, v6, :cond_0

    iget v2, p0, La/d/ai;->N:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ai;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v2, p0, La/d/ai;->O:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ai;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    :cond_0
    iget v2, p0, La/d/ai;->F:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ai;->b(J[BI)V

    add-int/lit8 v2, v0, 0x4

    iget v0, p0, La/d/ai;->F:I

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    int-to-long v4, v0

    invoke-static {v4, v5, p1, v2}, La/d/ai;->b(J[BI)V

    add-int/lit8 v0, v2, 0x4

    iget-byte v2, p0, La/d/ai;->g:B

    if-ne v2, v6, :cond_1

    iget v2, p0, La/d/ai;->H:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ai;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    :cond_1
    iget v2, p0, La/d/ai;->I:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ai;->b(J[BI)V

    add-int/lit8 v2, v0, 0x4

    iget v0, p0, La/d/ai;->I:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    int-to-long v4, v0

    invoke-static {v4, v5, p1, v2}, La/d/ai;->b(J[BI)V

    add-int/lit8 v0, v2, 0x4

    iget-byte v2, p0, La/d/ai;->g:B

    if-ne v2, v6, :cond_5

    iget v2, p0, La/d/ai;->K:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ai;->b(J[BI)V

    add-int/lit8 v2, v0, 0x4

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    :goto_3
    sub-int/2addr v0, p2

    return v0

    :cond_2
    add-int/lit8 v0, p2, 0x1

    aput-byte v1, p1, p2

    goto :goto_0

    :cond_3
    iget v0, p0, La/d/ai;->G:I

    goto :goto_1

    :cond_4
    iget v0, p0, La/d/ai;->J:I

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, La/d/ai;->R:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    iget v0, p0, La/d/ai;->c:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, v1}, La/d/ai;->a(J[BI)V

    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p0, p1, v0}, La/d/ai;->c([BI)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3
.end method
