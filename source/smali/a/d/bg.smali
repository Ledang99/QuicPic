.class public La/d/bg;
.super Ljava/io/InputStream;


# instance fields
.field a:La/d/bd;

.field b:La/d/ao;

.field c:La/d/an;

.field private d:J

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:[B


# direct methods
.method public constructor <init>(La/d/bd;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, La/d/bg;-><init>(La/d/bd;I)V

    return-void
.end method

.method constructor <init>(La/d/bd;I)V
    .locals 4

    const v1, 0xffff

    const v3, 0xffb9

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, La/d/bg;->i:[B

    new-instance v0, La/d/ao;

    invoke-direct {v0}, La/d/ao;-><init>()V

    iput-object v0, p0, La/d/bg;->b:La/d/ao;

    new-instance v0, La/d/an;

    invoke-direct {v0}, La/d/an;-><init>()V

    iput-object v0, p0, La/d/bg;->c:La/d/an;

    iput-object p1, p0, La/d/bg;->a:La/d/bd;

    and-int v0, p2, v1

    iput v0, p0, La/d/bg;->g:I

    ushr-int/lit8 v0, p2, 0x10

    and-int/2addr v0, v1

    iput v0, p0, La/d/bg;->h:I

    iget v0, p1, La/d/bd;->j:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    iget v0, p0, La/d/bg;->h:I

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, La/d/bd;->b(IIII)V

    iget v0, p0, La/d/bg;->g:I

    and-int/lit8 v0, v0, -0x51

    iput v0, p0, La/d/bg;->g:I

    :goto_0
    iget-object v0, p1, La/d/bd;->g:La/d/bo;

    iget-object v0, v0, La/d/bo;->f:La/d/bk;

    iget-object v0, v0, La/d/bk;->e:La/d/bm;

    iget v0, v0, La/d/bm;->w:I

    add-int/lit8 v0, v0, -0x46

    iget-object v1, p1, La/d/bd;->g:La/d/bo;

    iget-object v1, v1, La/d/bo;->f:La/d/bk;

    iget-object v1, v1, La/d/bk;->e:La/d/bm;

    iget-object v1, v1, La/d/bm;->s:La/d/bn;

    iget v1, v1, La/d/bn;->b:I

    add-int/lit8 v1, v1, -0x46

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, La/d/bg;->e:I

    iget-object v0, p1, La/d/bd;->g:La/d/bo;

    iget-object v0, v0, La/d/bo;->f:La/d/bk;

    iget-object v0, v0, La/d/bk;->e:La/d/bm;

    iget-object v0, v0, La/d/bm;->s:La/d/bn;

    iget v0, v0, La/d/bn;->d:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_1

    invoke-static {v3, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, La/d/bg;->f:I

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, La/d/bd;->e()V

    goto :goto_0

    :cond_1
    iget v0, p0, La/d/bg;->e:I

    iput v0, p0, La/d/bg;->f:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, La/d/bd;

    invoke-direct {v0, p1}, La/d/bd;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, La/d/bg;-><init>(La/d/bd;)V

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v9, 0x4

    const/4 v0, 0x0

    const/16 v8, 0x10

    if-gtz p3, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, La/d/bg;->d:J

    iget-object v1, p0, La/d/bg;->i:[B

    if-nez v1, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad file descriptor"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, La/d/bg;->a:La/d/bd;

    iget v4, p0, La/d/bg;->g:I

    iget v5, p0, La/d/bg;->h:I

    const/16 v6, 0x80

    invoke-virtual {v1, v4, v5, v6, v0}, La/d/bd;->b(IIII)V

    iget-object v0, p0, La/d/bg;->a:La/d/bd;

    sget-object v0, La/d/bd;->c:La/e/e;

    sget v0, La/e/e;->a:I

    if-lt v0, v9, :cond_2

    iget-object v0, p0, La/d/bg;->a:La/d/bd;

    sget-object v0, La/d/bd;->c:La/e/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read: fid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, La/d/bg;->a:La/d/bd;

    iget v4, v4, La/d/bd;->i:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",off="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",len="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/e/e;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, La/d/bg;->b:La/d/ao;

    invoke-virtual {v0, p1, p2}, La/d/ao;->e([BI)V

    iget-object v0, p0, La/d/bg;->a:La/d/bd;

    iget v0, v0, La/d/bd;->j:I

    if-ne v0, v8, :cond_3

    iget-object v0, p0, La/d/bg;->b:La/d/ao;

    iput-wide v10, v0, La/d/ao;->w:J

    :cond_3
    iget-object v0, p0, La/d/bg;->a:La/d/bd;

    invoke-virtual {v0}, La/d/bd;->n()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget v0, p0, La/d/bg;->f:I

    :goto_1
    if-le p3, v0, :cond_7

    :goto_2
    iget-object v1, p0, La/d/bg;->a:La/d/bd;

    sget-object v1, La/d/bd;->c:La/e/e;

    sget v1, La/e/e;->a:I

    if-lt v1, v9, :cond_4

    iget-object v1, p0, La/d/bg;->a:La/d/bd;

    sget-object v1, La/d/bd;->c:La/e/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read: len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",fp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, La/d/bg;->d:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, La/e/e;->println(Ljava/lang/String;)V

    :cond_4
    :try_start_0
    iget-object v1, p0, La/d/bg;->c:La/d/an;

    iget-object v4, p0, La/d/bg;->a:La/d/bd;

    iget v4, v4, La/d/bd;->i:I

    iget-wide v6, p0, La/d/bg;->d:J

    invoke-virtual {v1, v4, v6, v7, v0}, La/d/an;->a(IJI)V

    iget-object v1, p0, La/d/bg;->a:La/d/bd;

    iget v1, v1, La/d/bd;->j:I

    if-ne v1, v8, :cond_5

    iget-object v1, p0, La/d/bg;->c:La/d/an;

    iget-object v4, p0, La/d/bg;->c:La/d/an;

    iget-object v5, p0, La/d/bg;->c:La/d/an;

    const/16 v6, 0x400

    iput v6, v5, La/d/an;->d:I

    iput v6, v4, La/d/an;->b:I

    iput v6, v1, La/d/an;->c:I

    :cond_5
    iget-object v1, p0, La/d/bg;->a:La/d/bd;

    iget-object v4, p0, La/d/bg;->c:La/d/an;

    iget-object v5, p0, La/d/bg;->b:La/d/ao;

    invoke-virtual {v1, v4, v5}, La/d/bd;->a(La/d/u;La/d/u;)V
    :try_end_0
    .catch La/d/bc; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, La/d/bg;->b:La/d/ao;

    iget v1, v1, La/d/ao;->D:I

    if-gtz v1, :cond_a

    iget-wide v0, p0, La/d/bg;->d:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v10

    if-lez v0, :cond_9

    iget-wide v0, p0, La/d/bg;->d:J

    sub-long/2addr v0, v2

    :goto_3
    long-to-int v0, v0

    goto/16 :goto_0

    :cond_6
    iget v0, p0, La/d/bg;->e:I

    goto :goto_1

    :cond_7
    move v0, p3

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, La/d/bg;->a:La/d/bd;

    iget v1, v1, La/d/bd;->j:I

    if-ne v1, v8, :cond_8

    invoke-virtual {v0}, La/d/bc;->a()I

    move-result v1

    const v2, -0x3ffffeb5    # -2.000079f

    if-ne v1, v2, :cond_8

    const/4 v0, -0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, v0}, La/d/bg;->a(La/d/bc;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_9
    const-wide/16 v0, -0x1

    goto :goto_3

    :cond_a
    iget-wide v4, p0, La/d/bg;->d:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, La/d/bg;->d:J

    sub-int/2addr p3, v1

    iget-object v4, p0, La/d/bg;->b:La/d/ao;

    iget v5, v4, La/d/ao;->c:I

    add-int/2addr v5, v1

    iput v5, v4, La/d/ao;->c:I

    if-lez p3, :cond_b

    if-eq v1, v0, :cond_3

    :cond_b
    iget-wide v0, p0, La/d/bg;->d:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto/16 :goto_0
.end method

.method protected a(La/d/bc;)Ljava/io/IOException;
    .locals 2

    invoke-virtual {p1}, La/d/bc;->b()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, La/e/a/d;

    if-eqz v1, :cond_0

    check-cast v0, La/e/a/d;

    move-object v1, v0

    check-cast v1, La/e/a/d;

    invoke-virtual {v1}, La/e/a/d;->a()Ljava/lang/Throwable;

    move-result-object v1

    move-object p1, v0

    move-object v0, v1

    :cond_0
    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_1

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_1
    return-object p1
.end method

.method public available()I
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, La/d/bg;->a:La/d/bd;

    iget v0, v0, La/d/bd;->j:I

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    iget-object v0, p0, La/d/bg;->a:La/d/bd;

    invoke-virtual {v0}, La/d/bd;->v()J

    move-result-wide v0

    iget-wide v2, p0, La/d/bg;->d:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, La/d/bg;->a:La/d/bd;

    check-cast v0, La/d/bj;

    iget-object v2, p0, La/d/bg;->a:La/d/bd;

    const/16 v3, 0x20

    iget v4, v0, La/d/bj;->q:I

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    const/16 v5, 0x80

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, La/d/bd;->b(IIII)V

    new-instance v2, La/d/ch;

    iget-object v3, p0, La/d/bg;->a:La/d/bd;

    iget-object v3, v3, La/d/bd;->h:Ljava/lang/String;

    iget-object v4, p0, La/d/bg;->a:La/d/bd;

    iget v4, v4, La/d/bd;->i:I

    invoke-direct {v2, v3, v4}, La/d/ch;-><init>(Ljava/lang/String;I)V

    new-instance v3, La/d/ci;

    invoke-direct {v3, v0}, La/d/ci;-><init>(La/d/bj;)V

    invoke-virtual {v0, v2, v3}, La/d/bj;->a(La/d/u;La/d/u;)V

    iget v0, v3, La/d/ci;->a:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget v0, v3, La/d/ci;->a:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, La/d/bg;->a:La/d/bd;

    const/4 v2, 0x0

    iput-boolean v2, v0, La/d/bd;->k:Z

    move v0, v1

    goto :goto_0

    :cond_2
    iget v0, v3, La/d/ci;->S:I
    :try_end_0
    .catch La/d/bc; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, La/d/bg;->a(La/d/bc;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, La/d/bg;->a:La/d/bd;

    invoke-virtual {v0}, La/d/bd;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, La/d/bg;->i:[B
    :try_end_0
    .catch La/d/bc; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, La/d/bg;->a(La/d/bc;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public read()I
    .locals 4

    const/4 v3, 0x0

    const/4 v0, -0x1

    iget-object v1, p0, La/d/bg;->i:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, La/d/bg;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, La/d/bg;->i:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, La/d/bg;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, La/d/bg;->a([BII)I

    move-result v0

    return v0
.end method

.method public skip(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, La/d/bg;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, La/d/bg;->d:J

    :goto_0
    return-wide p1

    :cond_0
    move-wide p1, v0

    goto :goto_0
.end method
