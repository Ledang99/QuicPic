.class La/d/aq;
.super La/d/b;


# instance fields
.field private D:[B

.field private E:[B

.field private F:I

.field private G:I

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field b:La/d/bk;

.field c:Ljava/lang/Object;

.field private d:[B


# direct methods
.method constructor <init>(La/d/bk;La/d/u;Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p2}, La/d/b;-><init>(La/d/u;)V

    const/4 v0, 0x0

    iput-object v0, p0, La/d/aq;->E:[B

    const/16 v0, 0x73

    iput-byte v0, p0, La/d/aq;->g:B

    iput-object p1, p0, La/d/aq;->b:La/d/bk;

    iput-object p3, p0, La/d/aq;->c:Ljava/lang/Object;

    iget-object v0, p1, La/d/bk;->e:La/d/bm;

    iget v0, v0, La/d/bm;->y:I

    iput v0, p0, La/d/aq;->F:I

    iget-object v0, p1, La/d/bk;->e:La/d/bm;

    iget v0, v0, La/d/bm;->x:I

    iput v0, p0, La/d/aq;->G:I

    iget-object v0, p1, La/d/bk;->e:La/d/bm;

    iget-object v0, v0, La/d/bm;->s:La/d/bn;

    iget v0, v0, La/d/bn;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    instance-of v0, p3, La/d/t;

    if-eqz v0, :cond_4

    check-cast p3, La/d/t;

    sget-object v0, La/d/t;->d:La/d/t;

    if-ne p3, v0, :cond_2

    new-array v0, v2, [B

    iput-object v0, p0, La/d/aq;->d:[B

    new-array v0, v2, [B

    iput-object v0, p0, La/d/aq;->D:[B

    iget v0, p0, La/d/aq;->G:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, La/d/aq;->G:I

    :cond_0
    iget-object v0, p3, La/d/t;->i:Ljava/lang/String;

    iput-object v0, p0, La/d/aq;->H:Ljava/lang/String;

    iget-boolean v0, p0, La/d/aq;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, La/d/aq;->H:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/aq;->H:Ljava/lang/String;

    :cond_1
    iget-object v0, p3, La/d/t;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/aq;->I:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p1, La/d/bk;->e:La/d/bm;

    iget-object v0, v0, La/d/bm;->s:La/d/bn;

    iget-boolean v0, v0, La/d/bn;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, La/d/bk;->e:La/d/bm;

    iget-object v0, v0, La/d/bm;->s:La/d/bn;

    iget-object v0, v0, La/d/bn;->p:[B

    invoke-virtual {p3, v0}, La/d/t;->a([B)[B

    move-result-object v0

    iput-object v0, p0, La/d/aq;->d:[B

    iget-object v0, p1, La/d/bk;->e:La/d/bm;

    iget-object v0, v0, La/d/bm;->s:La/d/bn;

    iget-object v0, v0, La/d/bn;->p:[B

    invoke-virtual {p3, v0}, La/d/t;->b([B)[B

    move-result-object v0

    iput-object v0, p0, La/d/aq;->D:[B

    iget-object v0, p0, La/d/aq;->d:[B

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, La/d/aq;->D:[B

    array-length v0, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Null setup prohibited."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Plain text passwords are disabled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    instance-of v0, p3, [B

    if-eqz v0, :cond_5

    check-cast p3, [B

    check-cast p3, [B

    iput-object p3, p0, La/d/aq;->E:[B

    goto :goto_0

    :cond_5
    new-instance v0, La/d/bc;

    const-string v1, "Unsupported credential type"

    invoke-direct {v0, v1}, La/d/bc;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p1, La/d/bk;->e:La/d/bm;

    iget-object v0, v0, La/d/bm;->s:La/d/bn;

    iget v0, v0, La/d/bn;->g:I

    if-nez v0, :cond_9

    instance-of v0, p3, La/d/t;

    if-eqz v0, :cond_8

    check-cast p3, La/d/t;

    new-array v0, v2, [B

    iput-object v0, p0, La/d/aq;->d:[B

    new-array v0, v2, [B

    iput-object v0, p0, La/d/aq;->D:[B

    iget-object v0, p3, La/d/t;->i:Ljava/lang/String;

    iput-object v0, p0, La/d/aq;->H:Ljava/lang/String;

    iget-boolean v0, p0, La/d/aq;->t:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, La/d/aq;->H:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/aq;->H:Ljava/lang/String;

    :cond_7
    iget-object v0, p3, La/d/t;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/aq;->I:Ljava/lang/String;

    goto :goto_0

    :cond_8
    new-instance v0, La/d/bc;

    const-string v1, "Unsupported credential type"

    invoke-direct {v0, v1}, La/d/bc;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, La/d/bc;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1}, La/d/bc;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a(B)I
    .locals 1

    const/16 v0, 0x75

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method n([BI)I
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, La/d/aq;->b:La/d/bk;

    iget-object v0, v0, La/d/bk;->e:La/d/bm;

    iget v0, v0, La/d/bm;->v:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, La/d/aq;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget-object v1, p0, La/d/aq;->b:La/d/bk;

    iget-object v1, v1, La/d/bk;->e:La/d/bm;

    iget v1, v1, La/d/bm;->u:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/aq;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, La/d/aq;->b:La/d/bk;

    iget-object v1, v1, La/d/bk;->e:La/d/bm;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, p1, v0}, La/d/aq;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/d/aq;->F:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/aq;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, La/d/aq;->E:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, La/d/aq;->E:[B

    array-length v1, v1

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/aq;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    :goto_0
    add-int/lit8 v1, v0, 0x1

    aput-byte v4, p1, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v4, p1, v1

    add-int/lit8 v1, v0, 0x1

    aput-byte v4, p1, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v4, p1, v1

    iget v1, p0, La/d/aq;->G:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/aq;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

    return v0

    :cond_0
    iget-object v1, p0, La/d/aq;->d:[B

    array-length v1, v1

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/aq;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, La/d/aq;->D:[B

    array-length v1, v1

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/aq;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method o([BI)I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, La/d/aq;->E:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, La/d/aq;->E:[B

    iget-object v1, p0, La/d/aq;->E:[B

    array-length v1, v1

    invoke-static {v0, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, La/d/aq;->E:[B

    array-length v0, v0

    add-int/2addr v0, p2

    :goto_0
    iget-object v1, p0, La/d/aq;->b:La/d/bk;

    iget-object v1, v1, La/d/bk;->e:La/d/bm;

    sget-object v1, La/d/bm;->ac:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, La/d/aq;->a(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, La/d/aq;->b:La/d/bk;

    iget-object v1, v1, La/d/bk;->e:La/d/bm;

    const-string v1, "jCIFS"

    invoke-virtual {p0, v1, p1, v0}, La/d/aq;->a(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0

    :cond_0
    iget-object v0, p0, La/d/aq;->d:[B

    iget-object v1, p0, La/d/aq;->d:[B

    array-length v1, v1

    invoke-static {v0, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, La/d/aq;->d:[B

    array-length v0, v0

    add-int/2addr v0, p2

    iget-object v1, p0, La/d/aq;->D:[B

    iget-object v2, p0, La/d/aq;->D:[B

    array-length v2, v2

    invoke-static {v1, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, La/d/aq;->D:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, La/d/aq;->H:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, La/d/aq;->a(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, La/d/aq;->I:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, La/d/aq;->a(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

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
