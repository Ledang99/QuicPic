.class La/d/ah;
.super La/d/u;


# instance fields
.field a:I

.field b:La/d/bn;


# direct methods
.method constructor <init>(La/d/bn;)V
    .locals 0

    invoke-direct {p0}, La/d/u;-><init>()V

    iput-object p1, p0, La/d/ah;->b:La/d/bn;

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
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, p2}, La/d/ah;->f([BI)I

    move-result v0

    iput v0, p0, La/d/ah;->a:I

    add-int/lit8 v0, p2, 0x2

    iget v3, p0, La/d/ah;->a:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    sub-int/2addr v0, p2

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, La/d/ah;->b:La/d/bn;

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v3, La/d/bn;->f:I

    iget-object v0, p0, La/d/ah;->b:La/d/bn;

    iget-object v3, p0, La/d/ah;->b:La/d/bn;

    iget v3, v3, La/d/bn;->f:I

    and-int/lit8 v3, v3, 0x1

    iput v3, v0, La/d/bn;->g:I

    iget-object v3, p0, La/d/ah;->b:La/d/bn;

    iget-object v0, p0, La/d/ah;->b:La/d/bn;

    iget v0, v0, La/d/bn;->f:I

    and-int/lit8 v0, v0, 0x2

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, v3, La/d/bn;->h:Z

    iget-object v3, p0, La/d/ah;->b:La/d/bn;

    iget-object v0, p0, La/d/ah;->b:La/d/bn;

    iget v0, v0, La/d/bn;->f:I

    and-int/lit8 v0, v0, 0x4

    const/4 v5, 0x4

    if-ne v0, v5, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, v3, La/d/bn;->i:Z

    iget-object v0, p0, La/d/ah;->b:La/d/bn;

    iget-object v3, p0, La/d/ah;->b:La/d/bn;

    iget v3, v3, La/d/bn;->f:I

    and-int/lit8 v3, v3, 0x8

    const/16 v5, 0x8

    if-ne v3, v5, :cond_3

    :goto_3
    iput-boolean v1, v0, La/d/bn;->j:Z

    iget-object v0, p0, La/d/ah;->b:La/d/bn;

    invoke-static {p1, v4}, La/d/ah;->f([BI)I

    move-result v1

    iput v1, v0, La/d/bn;->a:I

    add-int/lit8 v0, v4, 0x2

    iget-object v1, p0, La/d/ah;->b:La/d/bn;

    invoke-static {p1, v0}, La/d/ah;->f([BI)I

    move-result v2

    iput v2, v1, La/d/bn;->k:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, La/d/ah;->b:La/d/bn;

    invoke-static {p1, v0}, La/d/ah;->g([BI)I

    move-result v2

    iput v2, v1, La/d/bn;->b:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, La/d/ah;->b:La/d/bn;

    invoke-static {p1, v0}, La/d/ah;->g([BI)I

    move-result v2

    iput v2, v1, La/d/bn;->l:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, La/d/ah;->b:La/d/bn;

    invoke-static {p1, v0}, La/d/ah;->g([BI)I

    move-result v2

    iput v2, v1, La/d/bn;->c:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, La/d/ah;->b:La/d/bn;

    invoke-static {p1, v0}, La/d/ah;->g([BI)I

    move-result v2

    iput v2, v1, La/d/bn;->d:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, La/d/ah;->b:La/d/bn;

    invoke-static {p1, v0}, La/d/ah;->i([BI)J

    move-result-wide v2

    iput-wide v2, v1, La/d/bn;->m:J

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, La/d/ah;->b:La/d/bn;

    invoke-static {p1, v0}, La/d/ah;->f([BI)I

    move-result v2

    iput v2, v1, La/d/bn;->n:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, La/d/ah;->b:La/d/bn;

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v1, La/d/bn;->o:I

    sub-int v0, v2, p2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method q([BI)I
    .locals 7

    const v5, 0x8000

    const/16 v4, 0x100

    const/16 v3, 0x10

    const/4 v2, 0x0

    iget-object v0, p0, La/d/ah;->b:La/d/bn;

    iget v0, v0, La/d/bn;->d:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_7

    iget-object v0, p0, La/d/ah;->b:La/d/bn;

    iget-object v1, p0, La/d/ah;->b:La/d/bn;

    iget v1, v1, La/d/bn;->o:I

    new-array v1, v1, [B

    iput-object v1, v0, La/d/bn;->p:[B

    iget-object v0, p0, La/d/ah;->b:La/d/bn;

    iget-object v0, v0, La/d/bn;->p:[B

    iget-object v1, p0, La/d/ah;->b:La/d/bn;

    iget v1, v1, La/d/bn;->o:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, La/d/ah;->b:La/d/bn;

    iget v0, v0, La/d/bn;->o:I

    add-int v1, p2, v0

    iget v0, p0, La/d/ah;->s:I

    iget-object v3, p0, La/d/ah;->b:La/d/bn;

    iget v3, v3, La/d/bn;->o:I

    if-le v0, v3, :cond_6

    :try_start_0
    iget v0, p0, La/d/ah;->m:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_4

    :cond_0
    move v0, v2

    add-int v2, v1, v0

    :try_start_1
    aget-byte v2, p1, v2

    if-nez v2, :cond_1

    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_3

    :cond_1
    add-int/lit8 v2, v0, 0x2

    if-le v2, v4, :cond_0

    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "zero termination not found"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    move-object v6, v0

    move v0, v2

    move-object v2, v6

    :goto_0
    sget-object v3, La/d/ah;->e:La/e/e;

    sget v3, La/e/e;->a:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    sget-object v3, La/d/ah;->e:La/e/e;

    invoke-virtual {v2, v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2
    :goto_1
    add-int/2addr v0, v1

    :goto_2
    sub-int/2addr v0, p2

    return v0

    :cond_3
    :try_start_3
    iget-object v2, p0, La/d/ah;->b:La/d/bn;

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-direct {v3, p1, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, v2, La/d/bn;->e:Ljava/lang/String;

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0

    :cond_4
    move v0, v2

    add-int v2, v1, v0

    aget-byte v2, p1, v2
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v2, :cond_5

    add-int/lit8 v2, v0, 0x1

    if-le v2, v4, :cond_4

    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "zero termination not found"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    :try_start_5
    iget-object v2, p0, La/d/ah;->b:La/d/bn;

    new-instance v3, Ljava/lang/String;

    sget-object v4, La/d/u;->aa:Ljava/lang/String;

    invoke-direct {v3, p1, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, v2, La/d/bn;->e:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :cond_6
    iget-object v0, p0, La/d/ah;->b:La/d/bn;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    iput-object v2, v0, La/d/bn;->e:Ljava/lang/String;

    move v0, v1

    goto :goto_2

    :cond_7
    iget-object v0, p0, La/d/ah;->b:La/d/bn;

    new-array v1, v3, [B

    iput-object v1, v0, La/d/bn;->q:[B

    iget-object v0, p0, La/d/ah;->b:La/d/bn;

    iget-object v0, v0, La/d/bn;->q:[B

    invoke-static {p1, p2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, La/d/ah;->b:La/d/bn;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, v0, La/d/bn;->e:Ljava/lang/String;

    move v0, p2

    goto :goto_2
.end method
