.class abstract La/d/b;
.super La/d/u;


# instance fields
.field a:La/d/u;

.field private b:B

.field private c:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/d/u;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, La/d/b;->b:B

    const/4 v0, 0x0

    iput v0, p0, La/d/b;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, La/d/b;->a:La/d/u;

    return-void
.end method

.method constructor <init>(La/d/u;)V
    .locals 1

    invoke-direct {p0}, La/d/u;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, La/d/b;->b:B

    const/4 v0, 0x0

    iput v0, p0, La/d/b;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, La/d/b;->a:La/d/u;

    if-eqz p1, :cond_0

    iput-object p1, p0, La/d/b;->a:La/d/u;

    iget-byte v0, p1, La/d/u;->g:B

    iput-byte v0, p0, La/d/b;->b:B

    :cond_0
    return-void
.end method


# virtual methods
.method a(B)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method a([BI)I
    .locals 6

    iput p2, p0, La/d/b;->i:I

    invoke-virtual {p0, p1, p2}, La/d/b;->l([BI)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, La/d/b;->c([BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    iput v0, p0, La/d/b;->j:I

    iget-object v0, p0, La/d/b;->B:La/d/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/d/b;->B:La/d/v;

    iget v2, p0, La/d/b;->i:I

    iget v3, p0, La/d/b;->j:I

    iget-object v5, p0, La/d/b;->C:La/d/u;

    move-object v1, p1

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, La/d/v;->a([BIILa/d/u;La/d/u;)V

    :cond_0
    iget v0, p0, La/d/b;->j:I

    return v0
.end method

.method b([BI)I
    .locals 2

    iput p2, p0, La/d/b;->i:I

    invoke-virtual {p0, p1, p2}, La/d/b;->m([BI)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, La/d/b;->d([BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    iput v0, p0, La/d/b;->j:I

    iget v0, p0, La/d/b;->j:I

    return v0
.end method

.method c([BI)I
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v3, -0x22

    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1, v0}, La/d/b;->n([BI)I

    move-result v0

    iput v0, p0, La/d/b;->r:I

    iget v0, p0, La/d/b;->r:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, La/d/b;->r:I

    iget v0, p0, La/d/b;->r:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p2

    iget v1, p0, La/d/b;->r:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, La/d/b;->r:I

    iget v1, p0, La/d/b;->r:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, p1, v1}, La/d/b;->o([BI)I

    move-result v1

    iput v1, p0, La/d/b;->s:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, La/d/b;->s:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, La/d/b;->s:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    iget v1, p0, La/d/b;->s:I

    add-int/2addr v1, v0

    iget-object v0, p0, La/d/b;->a:La/d/u;

    if-eqz v0, :cond_0

    iget v0, p0, La/d/b;->k:I

    iget-object v2, p0, La/d/b;->a:La/d/u;

    iget-byte v2, v2, La/d/u;->g:B

    invoke-virtual {p0, v2}, La/d/b;->a(B)I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    iput-byte v4, p0, La/d/b;->b:B

    const/4 v0, 0x0

    iput-object v0, p0, La/d/b;->a:La/d/u;

    add-int/lit8 v0, p2, 0x1

    aput-byte v4, p1, v0

    add-int/lit8 v0, p2, 0x2

    aput-byte v5, p1, v0

    add-int/lit8 v0, p2, 0x3

    aput-byte v3, p1, v0

    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v0, v0, 0x1

    aput-byte v3, p1, v0

    sub-int v0, v1, p2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, La/d/b;->a:La/d/u;

    iget v2, p0, La/d/b;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, La/d/u;->k:I

    add-int/lit8 v0, p2, 0x1

    iget-byte v2, p0, La/d/b;->b:B

    aput-byte v2, p1, v0

    add-int/lit8 v0, p2, 0x2

    aput-byte v5, p1, v0

    iget v0, p0, La/d/b;->i:I

    sub-int v0, v1, v0

    iput v0, p0, La/d/b;->c:I

    iget v0, p0, La/d/b;->c:I

    int-to-long v2, v0

    add-int/lit8 v0, p2, 0x3

    invoke-static {v2, v3, p1, v0}, La/d/b;->a(J[BI)V

    iget-object v0, p0, La/d/b;->a:La/d/u;

    iget-boolean v2, p0, La/d/b;->t:Z

    iput-boolean v2, v0, La/d/u;->t:Z

    iget-object v0, p0, La/d/b;->a:La/d/u;

    instance-of v0, v0, La/d/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, La/d/b;->a:La/d/u;

    iget v2, p0, La/d/b;->p:I

    iput v2, v0, La/d/u;->p:I

    iget-object v0, p0, La/d/b;->a:La/d/u;

    check-cast v0, La/d/b;

    invoke-virtual {v0, p1, v1}, La/d/b;->c([BI)I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    sub-int/2addr v0, p2

    goto :goto_0

    :cond_2
    iget-object v0, p0, La/d/b;->a:La/d/u;

    iget-object v2, p0, La/d/b;->a:La/d/u;

    invoke-virtual {v2, p1, v1}, La/d/u;->n([BI)I

    move-result v2

    iput v2, v0, La/d/u;->r:I

    iget-object v0, p0, La/d/b;->a:La/d/u;

    iget v0, v0, La/d/u;->r:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, La/d/b;->a:La/d/u;

    iget v3, v2, La/d/u;->r:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, La/d/u;->r:I

    iget-object v2, p0, La/d/b;->a:La/d/u;

    iget v2, v2, La/d/u;->r:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    iget-object v1, p0, La/d/b;->a:La/d/u;

    iget-object v2, p0, La/d/b;->a:La/d/u;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, p1, v3}, La/d/u;->o([BI)I

    move-result v2

    iput v2, v1, La/d/u;->s:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, La/d/b;->a:La/d/u;

    iget v2, v2, La/d/u;->s:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, La/d/b;->a:La/d/u;

    iget v2, v2, La/d/u;->s:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    iget-object v1, p0, La/d/b;->a:La/d/u;

    iget v1, v1, La/d/u;->s:I

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method d([BI)I
    .locals 4

    const/4 v3, 0x2

    const/4 v2, -0x1

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    iput v1, p0, La/d/b;->r:I

    iget v1, p0, La/d/b;->r:I

    if-eqz v1, :cond_2

    aget-byte v1, p1, v0

    iput-byte v1, p0, La/d/b;->b:B

    add-int/lit8 v1, v0, 0x2

    invoke-static {p1, v1}, La/d/b;->f([BI)I

    move-result v1

    iput v1, p0, La/d/b;->c:I

    iget v1, p0, La/d/b;->c:I

    if-nez v1, :cond_0

    iput-byte v2, p0, La/d/b;->b:B

    :cond_0
    iget v1, p0, La/d/b;->r:I

    if-le v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, p1, v0}, La/d/b;->p([BI)I

    iget-byte v0, p0, La/d/b;->g:B

    const/16 v1, -0x5e

    if-ne v0, v1, :cond_1

    move-object v0, p0

    check-cast v0, La/d/af;

    iget-boolean v0, v0, La/d/af;->N:Z

    if-eqz v0, :cond_1

    iget v0, p0, La/d/b;->r:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, La/d/b;->r:I

    :cond_1
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, La/d/b;->r:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_2
    invoke-static {p1, v0}, La/d/b;->f([BI)I

    move-result v1

    iput v1, p0, La/d/b;->s:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/d/b;->s:I

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, v0}, La/d/b;->q([BI)I

    iget v1, p0, La/d/b;->s:I

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, La/d/b;->l:I

    if-nez v1, :cond_4

    iget-byte v1, p0, La/d/b;->b:B

    if-ne v1, v2, :cond_5

    :cond_4
    iput-byte v2, p0, La/d/b;->b:B

    const/4 v1, 0x0

    iput-object v1, p0, La/d/b;->a:La/d/u;

    :goto_0
    sub-int/2addr v0, p2

    return v0

    :cond_5
    iget-object v0, p0, La/d/b;->a:La/d/u;

    if-nez v0, :cond_6

    iput-byte v2, p0, La/d/b;->b:B

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no andx command supplied with response"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget v0, p0, La/d/b;->i:I

    iget v1, p0, La/d/b;->c:I

    add-int/2addr v1, v0

    iget-object v0, p0, La/d/b;->a:La/d/u;

    iget v2, p0, La/d/b;->i:I

    iput v2, v0, La/d/u;->i:I

    iget-object v0, p0, La/d/b;->a:La/d/u;

    iget-byte v2, p0, La/d/b;->b:B

    iput-byte v2, v0, La/d/u;->g:B

    iget-object v0, p0, La/d/b;->a:La/d/u;

    iget v2, p0, La/d/b;->l:I

    iput v2, v0, La/d/u;->l:I

    iget-object v0, p0, La/d/b;->a:La/d/u;

    iget-byte v2, p0, La/d/b;->h:B

    iput-byte v2, v0, La/d/u;->h:B

    iget-object v0, p0, La/d/b;->a:La/d/u;

    iget v2, p0, La/d/b;->m:I

    iput v2, v0, La/d/u;->m:I

    iget-object v0, p0, La/d/b;->a:La/d/u;

    iget v2, p0, La/d/b;->n:I

    iput v2, v0, La/d/u;->n:I

    iget-object v0, p0, La/d/b;->a:La/d/u;

    iget v2, p0, La/d/b;->o:I

    iput v2, v0, La/d/u;->o:I

    iget-object v0, p0, La/d/b;->a:La/d/u;

    iget v2, p0, La/d/b;->p:I

    iput v2, v0, La/d/u;->p:I

    iget-object v0, p0, La/d/b;->a:La/d/u;

    iget v2, p0, La/d/b;->q:I

    iput v2, v0, La/d/u;->q:I

    iget-object v0, p0, La/d/b;->a:La/d/u;

    iget-boolean v2, p0, La/d/b;->t:Z

    iput-boolean v2, v0, La/d/u;->t:Z

    iget-object v0, p0, La/d/b;->a:La/d/u;

    instance-of v0, v0, La/d/b;

    if-eqz v0, :cond_8

    iget-object v0, p0, La/d/b;->a:La/d/u;

    check-cast v0, La/d/b;

    invoke-virtual {v0, p1, v1}, La/d/b;->d([BI)I

    move-result v0

    add-int/2addr v0, v1

    :cond_7
    :goto_1
    iget-object v1, p0, La/d/b;->a:La/d/u;

    const/4 v2, 0x1

    iput-boolean v2, v1, La/d/u;->u:Z

    goto :goto_0

    :cond_8
    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, La/d/b;->a:La/d/u;

    iget v2, v2, La/d/u;->r:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    iget-object v1, p0, La/d/b;->a:La/d/u;

    iget v1, v1, La/d/u;->r:I

    if-eqz v1, :cond_9

    iget-object v1, p0, La/d/b;->a:La/d/u;

    iget v1, v1, La/d/u;->r:I

    if-le v1, v3, :cond_9

    iget-object v1, p0, La/d/b;->a:La/d/u;

    invoke-virtual {v1, p1, v0}, La/d/u;->p([BI)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, La/d/b;->a:La/d/u;

    invoke-static {p1, v0}, La/d/b;->f([BI)I

    move-result v2

    iput v2, v1, La/d/u;->s:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, La/d/b;->a:La/d/u;

    iget v1, v1, La/d/u;->s:I

    if-eqz v1, :cond_7

    iget-object v1, p0, La/d/b;->a:La/d/u;

    invoke-virtual {v1, p1, v0}, La/d/u;->q([BI)I

    iget-object v1, p0, La/d/b;->a:La/d/u;

    iget v1, v1, La/d/u;->s:I

    add-int/2addr v0, v1

    goto :goto_1
.end method
