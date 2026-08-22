.class abstract La/d/as;
.super La/d/u;

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field protected D:I

.field protected E:I

.field protected F:I

.field protected G:I

.field protected H:I

.field protected I:I

.field protected J:I

.field protected K:I

.field L:I

.field M:I

.field N:I

.field O:I

.field P:B

.field Q:I

.field R:I

.field S:B

.field T:Ljava/lang/String;

.field U:I

.field V:[B

.field private a:I

.field private ae:Z

.field private af:I

.field private ag:I

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, La/d/u;-><init>()V

    iput v1, p0, La/d/as;->a:I

    iput v1, p0, La/d/as;->b:I

    iput v1, p0, La/d/as;->c:I

    iput-boolean v2, p0, La/d/as;->d:Z

    iput-boolean v2, p0, La/d/as;->ae:Z

    const v0, 0xfdff

    iput v0, p0, La/d/as;->O:I

    iput v1, p0, La/d/as;->Q:I

    iput v2, p0, La/d/as;->R:I

    const-string v0, ""

    iput-object v0, p0, La/d/as;->T:Ljava/lang/String;

    const/16 v0, 0x400

    iput v0, p0, La/d/as;->N:I

    const/16 v0, 0x3d

    iput v0, p0, La/d/as;->D:I

    const/16 v0, 0x33

    iput v0, p0, La/d/as;->E:I

    return-void
.end method


# virtual methods
.method a(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, La/d/as;->e()V

    return-void
.end method

.method abstract c([BI)I
.end method

.method abstract d([BI)I
.end method

.method abstract e([BI)I
.end method

.method e()V
    .locals 1

    invoke-super {p0}, La/d/u;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, La/d/as;->d:Z

    iput-boolean v0, p0, La/d/as;->ae:Z

    return-void
.end method

.method public hasMoreElements()Z
    .locals 1

    iget-boolean v0, p0, La/d/as;->d:Z

    return v0
.end method

.method n([BI)I
    .locals 7

    const/16 v6, 0x26

    const/4 v1, 0x0

    iget v0, p0, La/d/as;->L:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, p2}, La/d/as;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget v2, p0, La/d/as;->M:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/as;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-byte v2, p0, La/d/as;->g:B

    if-eq v2, v6, :cond_0

    iget v2, p0, La/d/as;->N:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/as;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, La/d/as;->O:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/as;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, 0x1

    iget-byte v3, p0, La/d/as;->P:B

    aput-byte v3, p1, v0

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    iget v2, p0, La/d/as;->a:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/as;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, La/d/as;->Q:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/as;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    :cond_0
    iget v2, p0, La/d/as;->F:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/as;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, La/d/as;->G:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/as;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-byte v2, p0, La/d/as;->g:B

    if-ne v2, v6, :cond_1

    iget v2, p0, La/d/as;->H:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/as;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    :cond_1
    iget v2, p0, La/d/as;->I:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/as;->a(J[BI)V

    add-int/lit8 v2, v0, 0x2

    iget v0, p0, La/d/as;->I:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    int-to-long v4, v0

    invoke-static {v4, v5, p1, v2}, La/d/as;->a(J[BI)V

    add-int/lit8 v0, v2, 0x2

    iget-byte v2, p0, La/d/as;->g:B

    if-ne v2, v6, :cond_3

    iget v1, p0, La/d/as;->K:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/as;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    :goto_1
    sub-int/2addr v0, p2

    return v0

    :cond_2
    iget v0, p0, La/d/as;->J:I

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, La/d/as;->R:I

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    invoke-virtual {p0, p1, v0}, La/d/as;->c([BI)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 4

    const/16 v3, -0x60

    const/4 v1, 0x0

    iget-boolean v0, p0, La/d/as;->ae:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p0, La/d/as;->ae:Z

    iget v0, p0, La/d/as;->D:I

    iget v2, p0, La/d/as;->R:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, La/d/as;->G:I

    iget-byte v0, p0, La/d/as;->g:B

    if-eq v0, v3, :cond_2

    iget-byte v0, p0, La/d/as;->g:B

    const/16 v2, 0x25

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, La/d/as;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, La/d/as;->G:I

    iget-object v2, p0, La/d/as;->T:Ljava/lang/String;

    iget v3, p0, La/d/as;->G:I

    invoke-virtual {p0, v2, v3}, La/d/as;->a(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, La/d/as;->G:I

    :cond_0
    :goto_0
    iget v0, p0, La/d/as;->G:I

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, La/d/as;->b:I

    iget v0, p0, La/d/as;->b:I

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput v0, p0, La/d/as;->b:I

    iget v0, p0, La/d/as;->G:I

    iget v2, p0, La/d/as;->b:I

    add-int/2addr v0, v2

    iput v0, p0, La/d/as;->G:I

    iget-object v0, p0, La/d/as;->V:[B

    iget v2, p0, La/d/as;->af:I

    invoke-virtual {p0, v0, v2}, La/d/as;->d([BI)I

    move-result v0

    iput v0, p0, La/d/as;->L:I

    iget v0, p0, La/d/as;->L:I

    iput v0, p0, La/d/as;->ag:I

    iget v0, p0, La/d/as;->U:I

    iget v2, p0, La/d/as;->G:I

    sub-int/2addr v0, v2

    iget v2, p0, La/d/as;->L:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, La/d/as;->F:I

    iget v2, p0, La/d/as;->F:I

    sub-int v2, v0, v2

    iget v0, p0, La/d/as;->G:I

    iget v3, p0, La/d/as;->F:I

    add-int/2addr v0, v3

    iput v0, p0, La/d/as;->J:I

    iget v0, p0, La/d/as;->J:I

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, La/d/as;->c:I

    iget v0, p0, La/d/as;->c:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    iput v0, p0, La/d/as;->c:I

    iget v0, p0, La/d/as;->J:I

    iget v3, p0, La/d/as;->c:I

    add-int/2addr v0, v3

    iput v0, p0, La/d/as;->J:I

    iget-object v0, p0, La/d/as;->V:[B

    iget v3, p0, La/d/as;->ag:I

    invoke-virtual {p0, v0, v3}, La/d/as;->e([BI)I

    move-result v0

    iput v0, p0, La/d/as;->M:I

    iget v0, p0, La/d/as;->M:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, La/d/as;->I:I

    :goto_3
    iget v0, p0, La/d/as;->H:I

    iget v2, p0, La/d/as;->F:I

    add-int/2addr v0, v2

    iget v2, p0, La/d/as;->L:I

    if-lt v0, v2, :cond_1

    iget v0, p0, La/d/as;->K:I

    iget v2, p0, La/d/as;->I:I

    add-int/2addr v0, v2

    iget v2, p0, La/d/as;->M:I

    if-lt v0, v2, :cond_1

    iput-boolean v1, p0, La/d/as;->d:Z

    :cond_1
    return-object p0

    :cond_2
    iget-byte v0, p0, La/d/as;->g:B

    if-ne v0, v3, :cond_0

    iget v0, p0, La/d/as;->G:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, La/d/as;->G:I

    goto :goto_0

    :cond_3
    iget v0, p0, La/d/as;->b:I

    rsub-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_4
    iget v0, p0, La/d/as;->c:I

    rsub-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_5
    iget-byte v0, p0, La/d/as;->g:B

    if-eq v0, v3, :cond_7

    const/16 v0, 0x26

    iput-byte v0, p0, La/d/as;->g:B

    :goto_4
    const/16 v0, 0x33

    iput v0, p0, La/d/as;->G:I

    iget v0, p0, La/d/as;->L:I

    iget v2, p0, La/d/as;->H:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_6

    iget v0, p0, La/d/as;->G:I

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, La/d/as;->b:I

    iget v0, p0, La/d/as;->b:I

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    iput v0, p0, La/d/as;->b:I

    iget v0, p0, La/d/as;->G:I

    iget v2, p0, La/d/as;->b:I

    add-int/2addr v0, v2

    iput v0, p0, La/d/as;->G:I

    :cond_6
    iget v0, p0, La/d/as;->H:I

    iget v2, p0, La/d/as;->F:I

    add-int/2addr v0, v2

    iput v0, p0, La/d/as;->H:I

    iget v0, p0, La/d/as;->U:I

    iget v2, p0, La/d/as;->G:I

    sub-int/2addr v0, v2

    iget v2, p0, La/d/as;->b:I

    sub-int/2addr v0, v2

    iget v2, p0, La/d/as;->L:I

    iget v3, p0, La/d/as;->H:I

    sub-int/2addr v2, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, La/d/as;->F:I

    iget v2, p0, La/d/as;->F:I

    sub-int v2, v0, v2

    iget v0, p0, La/d/as;->G:I

    iget v3, p0, La/d/as;->F:I

    add-int/2addr v0, v3

    iput v0, p0, La/d/as;->J:I

    iget v0, p0, La/d/as;->J:I

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, La/d/as;->c:I

    iget v0, p0, La/d/as;->c:I

    if-nez v0, :cond_9

    move v0, v1

    :goto_6
    iput v0, p0, La/d/as;->c:I

    iget v0, p0, La/d/as;->J:I

    iget v3, p0, La/d/as;->c:I

    add-int/2addr v0, v3

    iput v0, p0, La/d/as;->J:I

    iget v0, p0, La/d/as;->K:I

    iget v3, p0, La/d/as;->I:I

    add-int/2addr v0, v3

    iput v0, p0, La/d/as;->K:I

    iget v0, p0, La/d/as;->c:I

    sub-int v0, v2, v0

    iget v2, p0, La/d/as;->M:I

    iget v3, p0, La/d/as;->K:I

    sub-int/2addr v2, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, La/d/as;->I:I

    goto/16 :goto_3

    :cond_7
    const/16 v0, -0x5f

    iput-byte v0, p0, La/d/as;->g:B

    goto :goto_4

    :cond_8
    iget v0, p0, La/d/as;->b:I

    rsub-int/lit8 v0, v0, 0x2

    goto :goto_5

    :cond_9
    iget v0, p0, La/d/as;->c:I

    rsub-int/lit8 v0, v0, 0x2

    goto :goto_6
.end method

.method o([BI)I
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, La/d/as;->b:I

    iget-byte v0, p0, La/d/as;->g:B

    const/16 v2, 0x25

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, La/d/as;->f()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, La/d/as;->T:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, La/d/as;->a(Ljava/lang/String;[BI)I

    move-result v0

    add-int/2addr v0, p2

    :goto_0
    iget v2, p0, La/d/as;->F:I

    if-lez v2, :cond_1

    move v2, v0

    move v0, v1

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    aput-byte v4, p1, v2

    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_0
    iget-object v0, p0, La/d/as;->V:[B

    iget v1, p0, La/d/as;->af:I

    iget v3, p0, La/d/as;->F:I

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, La/d/as;->F:I

    add-int/2addr v0, v2

    :cond_1
    iget v1, p0, La/d/as;->I:I

    if-lez v1, :cond_3

    iget v1, p0, La/d/as;->c:I

    move v2, v0

    move v0, v1

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    aput-byte v4, p1, v2

    move v2, v0

    move v0, v1

    goto :goto_2

    :cond_2
    iget-object v0, p0, La/d/as;->V:[B

    iget v1, p0, La/d/as;->ag:I

    iget v3, p0, La/d/as;->I:I

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, La/d/as;->ag:I

    iget v1, p0, La/d/as;->I:I

    add-int/2addr v0, v1

    iput v0, p0, La/d/as;->ag:I

    iget v0, p0, La/d/as;->I:I

    add-int/2addr v0, v2

    :cond_3
    sub-int/2addr v0, p2

    return v0

    :cond_4
    move v0, p2

    goto :goto_0
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
