.class abstract La/b/f;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:[La/b/g;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:La/b/b;

.field r:La/b/b;

.field s:I

.field t:I

.field u:I

.field v:I

.field w:I

.field x:I

.field y:Ljava/net/InetAddress;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, La/b/f;->n:Z

    iput-boolean v0, p0, La/b/f;->p:Z

    iput v0, p0, La/b/f;->f:I

    iput v0, p0, La/b/f;->t:I

    return-void
.end method

.method static a(I[BI)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method static d([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method static e([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method static f([BI)I
    .locals 1

    invoke-static {p0, p1}, La/b/f;->d([BI)I

    move-result v0

    return v0
.end method


# virtual methods
.method abstract a([BI)I
.end method

.method abstract b([BI)I
.end method

.method abstract c([BI)I
.end method

.method g([BI)I
    .locals 2

    invoke-virtual {p0, p1, p2}, La/b/f;->i([BI)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, La/b/f;->a([BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method

.method h([BI)I
    .locals 2

    invoke-virtual {p0, p1, p2}, La/b/f;->j([BI)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, La/b/f;->b([BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method

.method i([BI)I
    .locals 5

    const/16 v1, 0x80

    const/4 v2, 0x0

    iget v0, p0, La/b/f;->c:I

    invoke-static {v0, p1, p2}, La/b/f;->a(I[BI)V

    add-int/lit8 v3, p2, 0x2

    iget-boolean v0, p0, La/b/f;->k:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget v4, p0, La/b/f;->d:I

    shl-int/lit8 v4, v4, 0x3

    and-int/lit8 v4, v4, 0x78

    add-int/2addr v4, v0

    iget-boolean v0, p0, La/b/f;->l:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_1
    add-int/2addr v4, v0

    iget-boolean v0, p0, La/b/f;->m:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    :goto_2
    add-int/2addr v4, v0

    iget-boolean v0, p0, La/b/f;->n:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    add-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, p1, v3

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    iget-boolean v3, p0, La/b/f;->o:Z

    if-eqz v3, :cond_5

    :goto_4
    iget-boolean v3, p0, La/b/f;->p:Z

    if-eqz v3, :cond_0

    const/16 v2, 0x10

    :cond_0
    add-int/2addr v1, v2

    iget v2, p0, La/b/f;->e:I

    and-int/lit8 v2, v2, 0xf

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    iget v0, p0, La/b/f;->f:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, La/b/f;->a(I[BI)V

    iget v0, p0, La/b/f;->g:I

    add-int/lit8 v1, p2, 0x6

    invoke-static {v0, p1, v1}, La/b/f;->a(I[BI)V

    iget v0, p0, La/b/f;->h:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, La/b/f;->a(I[BI)V

    iget v0, p0, La/b/f;->i:I

    add-int/lit8 v1, p2, 0xa

    invoke-static {v0, p1, v1}, La/b/f;->a(I[BI)V

    const/16 v0, 0xc

    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4
.end method

.method j([BI)I
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2}, La/b/f;->d([BI)I

    move-result v0

    iput v0, p0, La/b/f;->c:I

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, La/b/f;->k:Z

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x78

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, La/b/f;->d:I

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, La/b/f;->l:Z

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, La/b/f;->m:Z

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, La/b/f;->n:Z

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, La/b/f;->o:Z

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_5

    :goto_5
    iput-boolean v1, p0, La/b/f;->p:Z

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, La/b/f;->e:I

    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, La/b/f;->d([BI)I

    move-result v0

    iput v0, p0, La/b/f;->f:I

    add-int/lit8 v0, p2, 0x6

    invoke-static {p1, v0}, La/b/f;->d([BI)I

    move-result v0

    iput v0, p0, La/b/f;->g:I

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, La/b/f;->d([BI)I

    move-result v0

    iput v0, p0, La/b/f;->h:I

    add-int/lit8 v0, p2, 0xa

    invoke-static {p1, v0}, La/b/f;->d([BI)I

    move-result v0

    iput v0, p0, La/b/f;->i:I

    const/16 v0, 0xc

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method

.method k([BI)I
    .locals 2

    iget-object v0, p0, La/b/f;->q:La/b/b;

    invoke-virtual {v0, p1, p2}, La/b/b;->a([BI)I

    move-result v0

    add-int/2addr v0, p2

    iget v1, p0, La/b/f;->s:I

    invoke-static {v1, p1, v0}, La/b/f;->a(I[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/b/f;->t:I

    invoke-static {v1, p1, v0}, La/b/f;->a(I[BI)V

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0
.end method

.method l([BI)I
    .locals 2

    iget-object v0, p0, La/b/f;->q:La/b/b;

    invoke-virtual {v0, p1, p2}, La/b/b;->b([BI)I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {p1, v0}, La/b/f;->d([BI)I

    move-result v1

    iput v1, p0, La/b/f;->s:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/b/f;->d([BI)I

    move-result v1

    iput v1, p0, La/b/f;->t:I

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0
.end method

.method m([BI)I
    .locals 3

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, La/b/f;->q:La/b/b;

    iput-object v0, p0, La/b/f;->r:La/b/b;

    add-int/lit8 v0, p2, 0x2

    :goto_0
    invoke-static {p1, v0}, La/b/f;->d([BI)I

    move-result v1

    iput v1, p0, La/b/f;->u:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/b/f;->d([BI)I

    move-result v1

    iput v1, p0, La/b/f;->v:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/b/f;->e([BI)I

    move-result v1

    iput v1, p0, La/b/f;->w:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, La/b/f;->d([BI)I

    move-result v1

    iput v1, p0, La/b/f;->x:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/b/f;->x:I

    div-int/lit8 v1, v1, 0x6

    new-array v1, v1, [La/b/g;

    iput-object v1, p0, La/b/f;->b:[La/b/g;

    iget v1, p0, La/b/f;->x:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    iput v2, p0, La/b/f;->a:I

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, La/b/f;->c([BI)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, La/b/f;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, La/b/f;->a:I

    goto :goto_1

    :cond_0
    iget-object v0, p0, La/b/f;->r:La/b/b;

    invoke-virtual {v0, p1, p2}, La/b/b;->b([BI)I

    move-result v0

    add-int/2addr v0, p2

    goto :goto_0

    :cond_1
    sub-int/2addr v0, p2

    return v0
.end method
