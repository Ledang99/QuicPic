.class La/d/cn;
.super La/d/bg;


# instance fields
.field d:Ljava/lang/Object;

.field private e:[B

.field private f:I

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method constructor <init>(La/d/bj;)V
    .locals 2

    iget v0, p1, La/d/bj;->q:I

    const v1, -0xff01

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    invoke-direct {p0, p1, v0}, La/d/bg;-><init>(La/d/bd;I)V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, La/d/cn;->e:[B

    iget v0, p1, La/d/bj;->q:I

    and-int/lit16 v0, v0, 0x600

    const/16 v1, 0x600

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, La/d/cn;->i:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/d/cn;->d:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2

    iget-object v0, p0, La/d/cn;->a:La/d/bd;

    sget-object v0, La/d/bd;->c:La/e/e;

    sget v0, La/e/e;->a:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, La/d/cn;->a:La/d/bd;

    sget-object v0, La/d/bd;->c:La/e/e;

    const-string v1, "Named Pipe available() does not apply to TRANSACT Named Pipes"

    invoke-virtual {v0, v1}, La/e/e;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method b([BII)I
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, La/d/cn;->e:[B

    array-length v0, v0

    iget v1, p0, La/d/cn;->h:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_1

    iget-object v0, p0, La/d/cn;->e:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, La/d/cn;->h:I

    sub-int v1, v0, v1

    if-le p3, v1, :cond_0

    iget v0, p0, La/d/cn;->h:I

    add-int/2addr v0, p3

    :cond_0
    iget-object v1, p0, La/d/cn;->e:[B

    new-array v0, v0, [B

    iput-object v0, p0, La/d/cn;->e:[B

    array-length v0, v1

    iget v2, p0, La/d/cn;->f:I

    sub-int/2addr v0, v2

    iget v2, p0, La/d/cn;->h:I

    if-le v2, v0, :cond_2

    iget v2, p0, La/d/cn;->f:I

    iget-object v3, p0, La/d/cn;->e:[B

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, La/d/cn;->e:[B

    iget v3, p0, La/d/cn;->h:I

    sub-int/2addr v3, v0

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iput v4, p0, La/d/cn;->f:I

    iget v0, p0, La/d/cn;->h:I

    iput v0, p0, La/d/cn;->g:I

    :cond_1
    iget-object v0, p0, La/d/cn;->e:[B

    array-length v0, v0

    iget v1, p0, La/d/cn;->g:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_3

    iget-object v1, p0, La/d/cn;->e:[B

    iget v2, p0, La/d/cn;->g:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, p2, v0

    iget-object v2, p0, La/d/cn;->e:[B

    sub-int v0, p3, v0

    invoke-static {p1, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iget v0, p0, La/d/cn;->g:I

    add-int/2addr v0, p3

    iget-object v1, p0, La/d/cn;->e:[B

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, La/d/cn;->g:I

    iget v0, p0, La/d/cn;->h:I

    add-int/2addr v0, p3

    iput v0, p0, La/d/cn;->h:I

    return p3

    :cond_2
    iget v0, p0, La/d/cn;->f:I

    iget-object v2, p0, La/d/cn;->e:[B

    iget v3, p0, La/d/cn;->h:I

    invoke-static {v1, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, La/d/cn;->e:[B

    iget v1, p0, La/d/cn;->g:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public read()I
    .locals 4

    iget-object v1, p0, La/d/cn;->d:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget v0, p0, La/d/cn;->h:I

    if-nez v0, :cond_0

    iget-object v0, p0, La/d/cn;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :try_start_2
    iget-object v0, p0, La/d/cn;->e:[B

    iget v2, p0, La/d/cn;->f:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget v2, p0, La/d/cn;->f:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, La/d/cn;->e:[B

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, La/d/cn;->f:I

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, La/d/cn;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, La/d/cn;->d:Ljava/lang/Object;

    monitor-enter v1

    :goto_1
    :try_start_0
    iget v0, p0, La/d/cn;->h:I

    if-nez v0, :cond_1

    iget-object v0, p0, La/d/cn;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, La/d/cn;->e:[B

    array-length v0, v0

    iget v2, p0, La/d/cn;->f:I

    sub-int v2, v0, v2

    iget v0, p0, La/d/cn;->h:I

    if-le p3, v0, :cond_2

    iget v0, p0, La/d/cn;->h:I

    :goto_2
    iget v3, p0, La/d/cn;->h:I

    if-le v3, v2, :cond_3

    if-le v0, v2, :cond_3

    iget-object v3, p0, La/d/cn;->e:[B

    iget v4, p0, La/d/cn;->f:I

    invoke-static {v3, v4, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v3, p2, v2

    iget-object v4, p0, La/d/cn;->e:[B

    const/4 v5, 0x0

    sub-int v2, v0, v2

    invoke-static {v4, v5, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    iget v2, p0, La/d/cn;->h:I

    sub-int/2addr v2, v0

    iput v2, p0, La/d/cn;->h:I

    iget v2, p0, La/d/cn;->f:I

    add-int/2addr v2, v0

    iget-object v3, p0, La/d/cn;->e:[B

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, La/d/cn;->f:I

    monitor-exit v1

    goto :goto_0

    :cond_2
    move v0, p3

    goto :goto_2

    :cond_3
    iget-object v2, p0, La/d/cn;->e:[B

    iget v3, p0, La/d/cn;->f:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method
