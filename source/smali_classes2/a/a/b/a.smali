.class public La/a/b/a;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Ljava/util/HashMap;

.field public c:[B

.field public d:I

.field public e:I

.field public f:I

.field public g:La/a/b/a;


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/b/a;->c:[B

    iput p2, p0, La/a/b/a;->e:I

    iput p2, p0, La/a/b/a;->d:I

    const/4 v0, 0x0

    iput v0, p0, La/a/b/a;->f:I

    iput-object p0, p0, La/a/b/a;->g:La/a/b/a;

    return-void
.end method

.method private a(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, La/a/b/a;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/a/b/a;->b:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput v0, p0, La/a/b/a;->a:I

    :cond_0
    iget-object v0, p0, La/a/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/b/b;

    if-nez v0, :cond_1

    new-instance v0, La/a/b/b;

    invoke-direct {v0}, La/a/b/b;-><init>()V

    iget v1, p0, La/a/b/a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/b/a;->a:I

    iput v1, v0, La/a/b/b;->a:I

    iput-object p1, v0, La/a/b/b;->b:Ljava/lang/Object;

    iget-object v1, p0, La/a/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v0, v0, La/a/b/b;->a:I

    return v0
.end method


# virtual methods
.method public a(I)La/a/b/a;
    .locals 3

    new-instance v0, La/a/b/a;

    iget-object v1, p0, La/a/b/a;->c:[B

    iget v2, p0, La/a/b/a;->d:I

    invoke-direct {v0, v1, v2}, La/a/b/a;-><init>([BI)V

    iput p1, v0, La/a/b/a;->e:I

    iget-object v1, p0, La/a/b/a;->g:La/a/b/a;

    iput-object v1, v0, La/a/b/a;->g:La/a/b/a;

    return-object v0
.end method

.method public a()V
    .locals 1

    iget v0, p0, La/a/b/a;->d:I

    iput v0, p0, La/a/b/a;->e:I

    const/4 v0, 0x0

    iput v0, p0, La/a/b/a;->f:I

    iput-object p0, p0, La/a/b/a;->g:La/a/b/a;

    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/a/b/a;->h(I)V

    :goto_0
    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, La/a/b/a;->h(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, La/a/b/a;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, La/a/b/a;->h(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, La/a/b/a;->e(I)I

    iget v0, p0, La/a/b/a;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, La/a/b/a;->c:[B

    invoke-static {v2, v3, v0}, La/e/b;->b(I[BI)I

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p0, La/a/b/a;->c:[B

    invoke-static {v6, v2, v0}, La/e/b;->b(I[BI)I

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, La/a/b/a;->c:[B

    invoke-static {v2, v3, v0}, La/e/b;->b(I[BI)I

    add-int/lit8 v0, v0, 0x4

    :try_start_0
    const-string v2, "UTF-16LE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, La/a/b/a;->c:[B

    mul-int/lit8 v5, v1, 0x2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, La/a/b/a;->c:[B

    add-int/lit8 v2, v0, 0x1

    aput-byte v6, v1, v0

    iget-object v0, p0, La/a/b/a;->c:[B

    add-int/lit8 v1, v2, 0x1

    aput-byte v6, v0, v2

    iget v0, p0, La/a/b/a;->e:I

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, La/a/b/a;->d(I)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, La/a/b/a;->e:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, La/a/b/a;->e:I

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, La/a/b/a;->g:La/a/b/a;

    iget v0, v0, La/a/b/a;->f:I

    return v0
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, La/a/b/a;->g:La/a/b/a;

    iput p1, v0, La/a/b/a;->f:I

    return-void
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, La/a/b/a;->c:[B

    iget v1, p0, La/a/b/a;->e:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, La/a/b/a;->d(I)V

    return v0
.end method

.method public d(I)V
    .locals 3

    iget v0, p0, La/a/b/a;->e:I

    add-int/2addr v0, p1

    iput v0, p0, La/a/b/a;->e:I

    iget v0, p0, La/a/b/a;->e:I

    iget v1, p0, La/a/b/a;->d:I

    sub-int/2addr v0, v1

    iget-object v1, p0, La/a/b/a;->g:La/a/b/a;

    iget v1, v1, La/a/b/a;->f:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, La/a/b/a;->g:La/a/b/a;

    iget v1, p0, La/a/b/a;->e:I

    iget v2, p0, La/a/b/a;->d:I

    sub-int/2addr v1, v2

    iput v1, v0, La/a/b/a;->f:I

    :cond_0
    return-void
.end method

.method public e()I
    .locals 3

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, La/a/b/a;->e(I)I

    iget-object v0, p0, La/a/b/a;->c:[B

    iget v1, p0, La/a/b/a;->e:I

    invoke-static {v0, v1}, La/e/b;->b([BI)S

    move-result v0

    invoke-virtual {p0, v2}, La/a/b/a;->d(I)V

    return v0
.end method

.method public e(I)I
    .locals 3

    add-int/lit8 v0, p1, -0x1

    iget v1, p0, La/a/b/a;->e:I

    iget v2, p0, La/a/b/a;->d:I

    sub-int/2addr v1, v2

    add-int v2, v1, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, La/a/b/a;->d(I)V

    return v0
.end method

.method public f()I
    .locals 3

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, La/a/b/a;->e(I)I

    iget-object v0, p0, La/a/b/a;->c:[B

    iget v1, p0, La/a/b/a;->e:I

    invoke-static {v0, v1}, La/e/b;->c([BI)I

    move-result v0

    invoke-virtual {p0, v2}, La/a/b/a;->d(I)V

    return v0
.end method

.method public f(I)V
    .locals 3

    iget-object v0, p0, La/a/b/a;->c:[B

    iget v1, p0, La/a/b/a;->e:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, La/a/b/a;->d(I)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, La/a/b/a;->e(I)I

    iget v0, p0, La/a/b/a;->e:I

    const/4 v1, 0x0

    iget-object v2, p0, La/a/b/a;->c:[B

    invoke-static {v2, v0}, La/e/b;->c([BI)I

    move-result v3

    add-int/lit8 v2, v0, 0xc

    if-eqz v3, :cond_2

    add-int/lit8 v0, v3, -0x1

    mul-int/lit8 v3, v0, 0x2

    if-ltz v3, :cond_0

    const v0, 0xffff

    if-le v3, v0, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, La/a/b/c;

    const-string v3, "invalid array conformance"

    invoke-direct {v0, v3}, La/a/b/c;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object v0, v1

    move v1, v2

    :goto_0
    iget v2, p0, La/a/b/a;->e:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, La/a/b/a;->d(I)V

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, La/a/b/a;->c:[B

    const-string v5, "UTF-16LE"

    invoke-direct {v0, v4, v2, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v3, 0x2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    move-object v0, v1

    move v1, v2

    goto :goto_0
.end method

.method public g(I)V
    .locals 4

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, La/a/b/a;->e(I)I

    int-to-short v0, p1

    iget-object v1, p0, La/a/b/a;->c:[B

    iget v2, p0, La/a/b/a;->e:I

    invoke-static {v0, v1, v2}, La/e/b;->a(S[BI)I

    invoke-virtual {p0, v3}, La/a/b/a;->d(I)V

    return-void
.end method

.method public h(I)V
    .locals 3

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, La/a/b/a;->e(I)I

    iget-object v0, p0, La/a/b/a;->c:[B

    iget v1, p0, La/a/b/a;->e:I

    invoke-static {p1, v0, v1}, La/e/b;->b(I[BI)I

    invoke-virtual {p0, v2}, La/a/b/a;->d(I)V

    return-void
.end method
