.class La/d/ar;
.super La/d/b;


# instance fields
.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field b:Z

.field c:[B

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(La/d/u;)V
    .locals 1

    invoke-direct {p0, p1}, La/d/b;-><init>(La/d/u;)V

    const-string v0, ""

    iput-object v0, p0, La/d/ar;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, La/d/ar;->D:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, La/d/ar;->E:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, La/d/ar;->c:[B

    return-void
.end method


# virtual methods
.method n([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method o([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method p([BI)I
    .locals 2

    const/4 v0, 0x1

    aget-byte v1, p1, p2

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, La/d/ar;->b:Z

    add-int/lit8 v0, p2, 0x2

    iget-boolean v1, p0, La/d/ar;->v:Z

    if-eqz v1, :cond_0

    invoke-static {p1, v0}, La/d/ar;->f([BI)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, La/d/ar;->c:[B

    :cond_0
    sub-int/2addr v0, p2

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method q([BI)I
    .locals 6

    const/16 v4, 0xff

    iget-boolean v0, p0, La/d/ar;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, La/d/ar;->c:[B

    const/4 v1, 0x0

    iget-object v2, p0, La/d/ar;->c:[B

    array-length v2, v2

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, La/d/ar;->c:[B

    array-length v0, v0

    add-int/2addr v0, p2

    :goto_0
    invoke-virtual {p0, p1, v0}, La/d/ar;->k([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La/d/ar;->d:Ljava/lang/String;

    iget-object v1, p0, La/d/ar;->d:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, La/d/ar;->a(Ljava/lang/String;I)I

    move-result v1

    add-int v2, v0, v1

    iget v0, p0, La/d/ar;->s:I

    add-int v3, p2, v0

    iget-boolean v5, p0, La/d/ar;->t:Z

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, La/d/ar;->a([BIIIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/ar;->D:Ljava/lang/String;

    iget-object v0, p0, La/d/ar;->D:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, La/d/ar;->a(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, La/d/ar;->v:Z

    if-nez v0, :cond_0

    iget v0, p0, La/d/ar;->s:I

    add-int v3, p2, v0

    iget-boolean v5, p0, La/d/ar;->t:Z

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, La/d/ar;->a([BIIIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/ar;->E:Ljava/lang/String;

    iget-object v0, p0, La/d/ar;->E:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, La/d/ar;->a(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v2, v0

    :cond_0
    sub-int v0, v2, p2

    return v0

    :cond_1
    move v0, p2

    goto :goto_0
.end method
