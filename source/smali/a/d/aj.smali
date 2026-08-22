.class La/d/aj;
.super La/d/b;


# instance fields
.field D:I

.field E:I

.field F:I

.field G:I

.field b:I

.field c:I

.field d:I


# direct methods
.method constructor <init>(Ljava/lang/String;IILa/d/u;)V
    .locals 4

    const/4 v3, 0x2

    const/16 v2, 0x10

    invoke-direct {p0, p4}, La/d/b;-><init>(La/d/u;)V

    iput-object p1, p0, La/d/aj;->A:Ljava/lang/String;

    const/16 v0, 0x2d

    iput-byte v0, p0, La/d/aj;->g:B

    and-int/lit8 v0, p2, 0x3

    iput v0, p0, La/d/aj;->c:I

    iget v0, p0, La/d/aj;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iput v3, p0, La/d/aj;->c:I

    :cond_0
    iget v0, p0, La/d/aj;->c:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, La/d/aj;->c:I

    iget v0, p0, La/d/aj;->c:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, La/d/aj;->c:I

    const/16 v0, 0x16

    iput v0, p0, La/d/aj;->d:I

    const/4 v0, 0x0

    iput v0, p0, La/d/aj;->D:I

    and-int/lit8 v0, p3, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_2

    and-int/lit8 v0, p3, 0x10

    if-ne v0, v2, :cond_1

    const/16 v0, 0x12

    iput v0, p0, La/d/aj;->F:I

    :goto_0
    return-void

    :cond_1
    iput v3, p0, La/d/aj;->F:I

    goto :goto_0

    :cond_2
    and-int/lit8 v0, p3, 0x10

    if-ne v0, v2, :cond_4

    and-int/lit8 v0, p3, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    iput v2, p0, La/d/aj;->F:I

    goto :goto_0

    :cond_3
    const/16 v0, 0x11

    iput v0, p0, La/d/aj;->F:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iput v0, p0, La/d/aj;->F:I

    goto :goto_0
.end method


# virtual methods
.method a(B)I
    .locals 1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method n([BI)I
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, La/d/aj;->b:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, p2}, La/d/aj;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget v2, p0, La/d/aj;->c:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/aj;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, La/d/aj;->d:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/aj;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, La/d/aj;->D:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/aj;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iput v1, p0, La/d/aj;->E:I

    iget v2, p0, La/d/aj;->E:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/aj;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v2, p0, La/d/aj;->F:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/aj;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, La/d/aj;->G:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/aj;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    move v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    :cond_0
    sub-int v0, v2, p2

    return v0
.end method

.method o([BI)I
    .locals 2

    iget-boolean v0, p0, La/d/aj;->t:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    aput-byte v1, p1, p2

    :goto_0
    iget-object v1, p0, La/d/aj;->A:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, La/d/aj;->a(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0

    :cond_0
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
