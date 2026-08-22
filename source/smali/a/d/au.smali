.class La/d/au;
.super La/d/b;


# static fields
.field private static G:[B


# instance fields
.field private D:Ljava/lang/String;

.field private E:[B

.field private F:I

.field b:Ljava/lang/String;

.field private c:La/d/bk;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, La/d/au;->G:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method constructor <init>(La/d/bk;Ljava/lang/String;Ljava/lang/String;La/d/u;)V
    .locals 1

    invoke-direct {p0, p4}, La/d/b;-><init>(La/d/u;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/d/au;->d:Z

    iput-object p1, p0, La/d/au;->c:La/d/bk;

    iput-object p2, p0, La/d/au;->b:Ljava/lang/String;

    iput-object p3, p0, La/d/au;->D:Ljava/lang/String;

    const/16 v0, 0x75

    iput-byte v0, p0, La/d/au;->g:B

    return-void
.end method


# virtual methods
.method a(B)I
    .locals 2

    const/4 v0, 0x0

    and-int/lit16 v1, p1, 0xff

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    sget-object v1, La/d/au;->G:[B

    aget-byte v0, v1, v0

    goto :goto_0

    :sswitch_1
    sget-object v0, La/d/au;->G:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    goto :goto_0

    :sswitch_2
    sget-object v0, La/d/au;->G:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    goto :goto_0

    :sswitch_3
    sget-object v0, La/d/au;->G:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    goto :goto_0

    :sswitch_4
    sget-object v0, La/d/au;->G:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    goto :goto_0

    :sswitch_5
    sget-object v0, La/d/au;->G:[B

    const/4 v1, 0x6

    aget-byte v0, v0, v1

    goto :goto_0

    :sswitch_6
    sget-object v0, La/d/au;->G:[B

    const/4 v1, 0x7

    aget-byte v0, v0, v1

    goto :goto_0

    :sswitch_7
    sget-object v0, La/d/au;->G:[B

    const/16 v1, 0x8

    aget-byte v0, v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_3
        0x6 -> :sswitch_2
        0x7 -> :sswitch_5
        0x8 -> :sswitch_7
        0x10 -> :sswitch_0
        0x25 -> :sswitch_6
        0x2d -> :sswitch_4
    .end sparse-switch
.end method

.method n([BI)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, La/d/au;->c:La/d/bk;

    iget-object v2, v2, La/d/bk;->e:La/d/bm;

    iget-object v2, v2, La/d/bm;->s:La/d/bn;

    iget v2, v2, La/d/bn;->g:I

    if-nez v2, :cond_2

    iget-object v2, p0, La/d/au;->c:La/d/bk;

    iget-object v2, v2, La/d/bk;->f:La/d/t;

    iget-boolean v2, v2, La/d/t;->m:Z

    if-nez v2, :cond_0

    iget-object v2, p0, La/d/au;->c:La/d/bk;

    iget-object v2, v2, La/d/bk;->f:La/d/t;

    iget-object v2, v2, La/d/t;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    :cond_0
    iget-object v2, p0, La/d/au;->c:La/d/bk;

    iget-object v2, v2, La/d/bk;->e:La/d/bm;

    iget-object v2, v2, La/d/bm;->s:La/d/bn;

    iget-boolean v2, v2, La/d/bn;->h:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, La/d/au;->c:La/d/bk;

    iget-object v2, v2, La/d/bk;->f:La/d/t;

    iget-object v3, p0, La/d/au;->c:La/d/bk;

    iget-object v3, v3, La/d/bk;->e:La/d/bm;

    iget-object v3, v3, La/d/bm;->s:La/d/bn;

    iget-object v3, v3, La/d/bn;->p:[B

    invoke-virtual {v2, v3}, La/d/t;->a([B)[B

    move-result-object v2

    iput-object v2, p0, La/d/au;->E:[B

    iget-object v2, p0, La/d/au;->E:[B

    array-length v2, v2

    iput v2, p0, La/d/au;->F:I

    :goto_0
    add-int/lit8 v2, p2, 0x1

    iget-boolean v3, p0, La/d/au;->d:Z

    if-eqz v3, :cond_3

    :goto_1
    aput-byte v0, p1, p2

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    iget v1, p0, La/d/au;->F:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/au;->a(J[BI)V

    const/4 v0, 0x4

    return v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Plain text passwords are disabled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput v0, p0, La/d/au;->F:I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method o([BI)I
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, La/d/au;->c:La/d/bk;

    iget-object v0, v0, La/d/bk;->e:La/d/bm;

    iget-object v0, v0, La/d/bm;->s:La/d/bn;

    iget v0, v0, La/d/bn;->g:I

    if-nez v0, :cond_1

    iget-object v0, p0, La/d/au;->c:La/d/bk;

    iget-object v0, v0, La/d/bk;->f:La/d/t;

    iget-boolean v0, v0, La/d/t;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, La/d/au;->c:La/d/bk;

    iget-object v0, v0, La/d/bk;->f:La/d/t;

    iget-object v0, v0, La/d/t;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, La/d/au;->E:[B

    iget v2, p0, La/d/au;->F:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, La/d/au;->F:I

    add-int/2addr v0, p2

    :goto_0
    iget-object v2, p0, La/d/au;->b:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, v0}, La/d/au;->a(Ljava/lang/String;[BI)I

    move-result v2

    add-int/2addr v0, v2

    :try_start_0
    iget-object v2, p0, La/d/au;->D:Ljava/lang/String;

    const-string v3, "ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, La/d/au;->D:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v3, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, La/d/au;->D:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v0

    sub-int v0, v2, p2

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, p2, 0x1

    aput-byte v1, p1, p2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
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
