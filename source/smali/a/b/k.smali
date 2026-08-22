.class La/b/k;
.super La/b/f;


# instance fields
.field private A:La/b/g;

.field private B:I

.field private C:[B

.field private D:[B

.field z:[La/b/g;


# direct methods
.method constructor <init>(La/b/g;)V
    .locals 1

    invoke-direct {p0}, La/b/f;-><init>()V

    iput-object p1, p0, La/b/k;->A:La/b/g;

    new-instance v0, La/b/b;

    invoke-direct {v0}, La/b/b;-><init>()V

    iput-object v0, p0, La/b/k;->r:La/b/b;

    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, La/b/k;->C:[B

    return-void
.end method

.method private n([BI)I
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, La/b/k;->B:I

    new-array v1, v1, [La/b/g;

    move-object/from16 v0, p0

    iput-object v1, v0, La/b/k;->z:[La/b/g;

    move-object/from16 v0, p0

    iget-object v1, v0, La/b/k;->A:La/b/g;

    iget-object v1, v1, La/b/g;->f:La/b/b;

    iget-object v14, v1, La/b/b;->c:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v1, 0x0

    move v12, v1

    move/from16 v13, p2

    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget v1, v0, La/b/k;->B:I

    if-ge v12, v1, :cond_9

    add-int/lit8 v1, v13, 0xe

    :goto_1
    aget-byte v2, p1, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/String;

    sub-int/2addr v1, v13

    add-int/lit8 v1, v1, 0x1

    sget-object v2, La/b/b;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v13, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v13, 0xf

    aget-byte v1, p1, v1

    and-int/lit16 v10, v1, 0xff

    add-int/lit8 v1, v13, 0x10

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_3

    const/4 v4, 0x1

    :goto_2
    add-int/lit8 v1, v13, 0x10

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x60

    shr-int/lit8 v5, v1, 0x5

    add-int/lit8 v1, v13, 0x10

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    const/4 v6, 0x1

    :goto_3
    add-int/lit8 v1, v13, 0x10

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    const/4 v7, 0x1

    :goto_4
    add-int/lit8 v1, v13, 0x10

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    const/4 v8, 0x1

    :goto_5
    add-int/lit8 v1, v13, 0x10

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    const/4 v9, 0x1

    :goto_6
    if-nez v11, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, La/b/k;->A:La/b/g;

    iget-object v1, v1, La/b/g;->f:La/b/b;

    iget v1, v1, La/b/b;->d:I

    if-ne v1, v10, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, La/b/k;->A:La/b/g;

    iget-object v1, v1, La/b/g;->f:La/b/b;

    sget-object v2, La/b/g;->b:La/b/b;

    if-eq v1, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, La/b/k;->A:La/b/g;

    iget-object v1, v1, La/b/g;->f:La/b/b;

    iget-object v1, v1, La/b/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, La/b/k;->A:La/b/g;

    iget-object v1, v1, La/b/g;->f:La/b/b;

    sget-object v2, La/b/g;->b:La/b/b;

    if-ne v1, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, La/b/k;->A:La/b/g;

    new-instance v2, La/b/b;

    invoke-direct {v2, v3, v10, v14}, La/b/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, v1, La/b/g;->f:La/b/b;

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, La/b/k;->A:La/b/g;

    iput-boolean v4, v1, La/b/g;->i:Z

    move-object/from16 v0, p0

    iget-object v1, v0, La/b/k;->A:La/b/g;

    iput v5, v1, La/b/g;->h:I

    move-object/from16 v0, p0

    iget-object v1, v0, La/b/k;->A:La/b/g;

    iput-boolean v6, v1, La/b/g;->j:Z

    move-object/from16 v0, p0

    iget-object v1, v0, La/b/k;->A:La/b/g;

    iput-boolean v7, v1, La/b/g;->k:Z

    move-object/from16 v0, p0

    iget-object v1, v0, La/b/k;->A:La/b/g;

    iput-boolean v8, v1, La/b/g;->l:Z

    move-object/from16 v0, p0

    iget-object v1, v0, La/b/k;->A:La/b/g;

    iput-boolean v9, v1, La/b/g;->m:Z

    move-object/from16 v0, p0

    iget-object v1, v0, La/b/k;->A:La/b/g;

    move-object/from16 v0, p0

    iget-object v2, v0, La/b/k;->C:[B

    iput-object v2, v1, La/b/g;->o:[B

    move-object/from16 v0, p0

    iget-object v1, v0, La/b/k;->A:La/b/g;

    const/4 v2, 0x1

    iput-boolean v2, v1, La/b/g;->n:Z

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, La/b/k;->z:[La/b/g;

    move-object/from16 v0, p0

    iget-object v3, v0, La/b/k;->A:La/b/g;

    aput-object v3, v2, v12

    :goto_7
    add-int/lit8 v3, v13, 0x12

    add-int/lit8 v2, v12, 0x1

    move v12, v2

    move v11, v1

    move v13, v3

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, La/b/k;->z:[La/b/g;

    new-instance v1, La/b/g;

    new-instance v2, La/b/b;

    invoke-direct {v2, v3, v10, v14}, La/b/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, La/b/k;->A:La/b/g;

    iget v3, v3, La/b/g;->g:I

    move-object/from16 v0, p0

    iget-object v10, v0, La/b/k;->C:[B

    invoke-direct/range {v1 .. v10}, La/b/g;-><init>(La/b/b;IZIZZZZ[B)V

    aput-object v1, v15, v12
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v11

    goto :goto_7

    :catch_0
    move-exception v1

    :cond_9
    sub-int v1, v13, p2

    return v1
.end method


# virtual methods
.method a([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method b([BI)I
    .locals 1

    invoke-virtual {p0, p1, p2}, La/b/k;->m([BI)I

    move-result v0

    return v0
.end method

.method c([BI)I
    .locals 6

    const/4 v5, 0x0

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, La/b/k;->B:I

    iget v0, p0, La/b/k;->B:I

    mul-int/lit8 v0, v0, 0x12

    iget v1, p0, La/b/k;->x:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, p2, 0x1

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, La/b/k;->B:I

    add-int/2addr v0, v2

    iget-object v3, p0, La/b/k;->C:[B

    const/4 v4, 0x6

    invoke-static {p1, v0, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p1, v2}, La/b/k;->n([BI)I

    move-result v0

    add-int/2addr v0, v2

    new-array v2, v1, [B

    iput-object v2, p0, La/b/k;->D:[B

    iget-object v2, p0, La/b/k;->D:[B

    invoke-static {p1, v0, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method
