.class public final Lcom/a/a/a/c/a;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/a/a/a/b/c;

.field protected final b:Ljava/io/InputStream;

.field protected final c:[B

.field protected d:I

.field protected e:Z

.field protected f:I

.field private g:I

.field private h:I

.field private final i:Z


# direct methods
.method public constructor <init>(Lcom/a/a/a/b/c;Ljava/io/InputStream;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/a/a/a/c/a;->e:Z

    iput v1, p0, Lcom/a/a/a/c/a;->f:I

    iput-object p1, p0, Lcom/a/a/a/c/a;->a:Lcom/a/a/a/b/c;

    iput-object p2, p0, Lcom/a/a/a/c/a;->b:Ljava/io/InputStream;

    invoke-virtual {p1}, Lcom/a/a/a/b/c;->e()[B

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/c/a;->c:[B

    iput v1, p0, Lcom/a/a/a/c/a;->g:I

    iput v1, p0, Lcom/a/a/a/c/a;->h:I

    iput v1, p0, Lcom/a/a/a/c/a;->d:I

    iput-boolean v2, p0, Lcom/a/a/a/c/a;->i:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/CharConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported UCS-4 endianness ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") detected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(I)Z
    .locals 5

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    ushr-int/lit8 v2, p1, 0x10

    const v3, 0xfeff

    if-ne v2, v3, :cond_0

    iget v1, p0, Lcom/a/a/a/c/a;->g:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/a/a/a/c/a;->g:I

    iput v4, p0, Lcom/a/a/a/c/a;->f:I

    iput-boolean v0, p0, Lcom/a/a/a/c/a;->e:Z

    :goto_1
    return v0

    :sswitch_0
    iput-boolean v0, p0, Lcom/a/a/a/c/a;->e:Z

    iget v1, p0, Lcom/a/a/a/c/a;->g:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/a/a/a/c/a;->g:I

    iput v3, p0, Lcom/a/a/a/c/a;->f:I

    goto :goto_1

    :sswitch_1
    iget v2, p0, Lcom/a/a/a/c/a;->g:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/a/a/a/c/a;->g:I

    iput v3, p0, Lcom/a/a/a/c/a;->f:I

    iput-boolean v1, p0, Lcom/a/a/a/c/a;->e:Z

    goto :goto_1

    :sswitch_2
    const-string v2, "2143"

    invoke-direct {p0, v2}, Lcom/a/a/a/c/a;->a(Ljava/lang/String;)V

    :sswitch_3
    const-string v2, "3412"

    invoke-direct {p0, v2}, Lcom/a/a/a/c/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const v3, 0xfffe

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/a/a/a/c/a;->g:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/a/a/a/c/a;->g:I

    iput v4, p0, Lcom/a/a/a/c/a;->f:I

    iput-boolean v1, p0, Lcom/a/a/a/c/a;->e:Z

    goto :goto_1

    :cond_1
    ushr-int/lit8 v2, p1, 0x8

    const v3, 0xefbbbf

    if-ne v2, v3, :cond_2

    iget v1, p0, Lcom/a/a/a/c/a;->g:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/a/a/a/c/a;->g:I

    iput v0, p0, Lcom/a/a/a/c/a;->f:I

    iput-boolean v0, p0, Lcom/a/a/a/c/a;->e:Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x1010000 -> :sswitch_3
        -0x20000 -> :sswitch_1
        0xfeff -> :sswitch_0
        0xfffe -> :sswitch_2
    .end sparse-switch
.end method

.method private c(I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    shr-int/lit8 v2, p1, 0x8

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lcom/a/a/a/c/a;->e:Z

    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/a/a/a/c/a;->f:I

    move v0, v1

    :cond_0
    return v0

    :cond_1
    const v2, 0xffffff

    and-int/2addr v2, p1

    if-nez v2, :cond_2

    iput-boolean v0, p0, Lcom/a/a/a/c/a;->e:Z

    goto :goto_0

    :cond_2
    const v2, -0xff0001

    and-int/2addr v2, p1

    if-nez v2, :cond_3

    const-string v0, "3412"

    invoke-direct {p0, v0}, Lcom/a/a/a/c/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const v2, -0xff01

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    const-string v0, "2143"

    invoke-direct {p0, v0}, Lcom/a/a/a/c/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d(I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    const v2, 0xff00

    and-int/2addr v2, p1

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lcom/a/a/a/c/a;->e:Z

    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/a/a/a/c/a;->f:I

    move v0, v1

    :cond_0
    return v0

    :cond_1
    and-int/lit16 v2, p1, 0xff

    if-nez v2, :cond_0

    iput-boolean v0, p0, Lcom/a/a/a/c/a;->e:Z

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/a/a/a/a;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/a/a/a/c/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/a/a/a/c/a;->c:[B

    iget v3, p0, Lcom/a/a/a/c/a;->g:I

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x18

    iget-object v3, p0, Lcom/a/a/a/c/a;->c:[B

    iget v4, p0, Lcom/a/a/a/c/a;->g:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/a/a/a/c/a;->c:[B

    iget v4, p0, Lcom/a/a/a/c/a;->g:I

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/a/a/a/c/a;->c:[B

    iget v4, p0, Lcom/a/a/a/c/a;->g:I

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/a/a/a/c/a;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    if-nez v0, :cond_4

    sget-object v0, Lcom/a/a/a/a;->a:Lcom/a/a/a/a;

    :goto_1
    iget-object v1, p0, Lcom/a/a/a/c/a;->a:Lcom/a/a/a/b/c;

    invoke-virtual {v1, v0}, Lcom/a/a/a/b/c;->a(Lcom/a/a/a/a;)V

    return-object v0

    :cond_1
    invoke-direct {p0, v2}, Lcom/a/a/a/c/a;->c(I)Z

    move-result v3

    if-nez v3, :cond_0

    ushr-int/lit8 v2, v2, 0x10

    invoke-direct {p0, v2}, Lcom/a/a/a/c/a;->d(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/a/a/a/c/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/a/a/a/c/a;->c:[B

    iget v3, p0, Lcom/a/a/a/c/a;->g:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/a/a/a/c/a;->c:[B

    iget v4, p0, Lcom/a/a/a/c/a;->g:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/a/a/a/c/a;->d(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/a/a/a/c/a;->f:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v0, Lcom/a/a/a/a;->a:Lcom/a/a/a/a;

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/a/a/a/c/a;->e:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/a/a/a/a;->b:Lcom/a/a/a/a;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/a/a/a/a;->c:Lcom/a/a/a/a;

    goto :goto_1

    :pswitch_3
    iget-boolean v0, p0, Lcom/a/a/a/c/a;->e:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/a/a/a/a;->d:Lcom/a/a/a/a;

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/a/a/a/a;->e:Lcom/a/a/a/a;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public a(ILcom/a/a/a/m;Lcom/a/a/a/d/a;Lcom/a/a/a/d/d;ZZ)Lcom/a/a/a/h;
    .locals 12

    invoke-virtual {p0}, Lcom/a/a/a/c/a;->a()Lcom/a/a/a/a;

    move-result-object v2

    sget-object v3, Lcom/a/a/a/a;->a:Lcom/a/a/a/a;

    if-ne v2, v3, :cond_0

    if-eqz p5, :cond_0

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {p3, v0, v1}, Lcom/a/a/a/d/a;->a(ZZ)Lcom/a/a/a/d/a;

    move-result-object v7

    new-instance v2, Lcom/a/a/a/c/e;

    iget-object v3, p0, Lcom/a/a/a/c/a;->a:Lcom/a/a/a/b/c;

    iget-object v5, p0, Lcom/a/a/a/c/a;->b:Ljava/io/InputStream;

    iget-object v8, p0, Lcom/a/a/a/c/a;->c:[B

    iget v9, p0, Lcom/a/a/a/c/a;->g:I

    iget v10, p0, Lcom/a/a/a/c/a;->h:I

    iget-boolean v11, p0, Lcom/a/a/a/c/a;->i:Z

    move v4, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v11}, Lcom/a/a/a/c/e;-><init>(Lcom/a/a/a/b/c;ILjava/io/InputStream;Lcom/a/a/a/m;Lcom/a/a/a/d/a;[BIIZ)V

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/a/a/a/c/d;

    iget-object v3, p0, Lcom/a/a/a/c/a;->a:Lcom/a/a/a/b/c;

    invoke-virtual {p0}, Lcom/a/a/a/c/a;->b()Ljava/io/Reader;

    move-result-object v5

    invoke-virtual/range {p4 .. p6}, Lcom/a/a/a/d/d;->a(ZZ)Lcom/a/a/a/d/d;

    move-result-object v7

    move v4, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/a/a/a/c/d;-><init>(Lcom/a/a/a/b/c;ILjava/io/Reader;Lcom/a/a/a/m;Lcom/a/a/a/d/d;)V

    goto :goto_0
.end method

.method protected a(I)Z
    .locals 7

    const/4 v0, 0x1

    iget v1, p0, Lcom/a/a/a/c/a;->h:I

    iget v2, p0, Lcom/a/a/a/c/a;->g:I

    sub-int/2addr v1, v2

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    iget-object v1, p0, Lcom/a/a/a/c/a;->b:Ljava/io/InputStream;

    if-nez v1, :cond_1

    const/4 v1, -0x1

    :goto_1
    if-ge v1, v0, :cond_2

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/a/a/a/c/a;->b:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/a/a/a/c/a;->c:[B

    iget v4, p0, Lcom/a/a/a/c/a;->h:I

    iget-object v5, p0, Lcom/a/a/a/c/a;->c:[B

    array-length v5, v5

    iget v6, p0, Lcom/a/a/a/c/a;->h:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/a/a/a/c/a;->h:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/a/a/a/c/a;->h:I

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_0
.end method

.method public b()Ljava/io/Reader;
    .locals 7

    iget-object v0, p0, Lcom/a/a/a/c/a;->a:Lcom/a/a/a/b/c;

    invoke-virtual {v0}, Lcom/a/a/a/b/c;->b()Lcom/a/a/a/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/a/a/a;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v2, p0, Lcom/a/a/a/c/a;->b:Ljava/io/InputStream;

    if-nez v2, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/a/a/a/c/a;->c:[B

    iget v2, p0, Lcom/a/a/a/c/a;->g:I

    iget v3, p0, Lcom/a/a/a/c/a;->h:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    :goto_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Lcom/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    iget v0, p0, Lcom/a/a/a/c/a;->g:I

    iget v1, p0, Lcom/a/a/a/c/a;->h:I

    if-ge v0, v1, :cond_1

    new-instance v0, Lcom/a/a/a/b/e;

    iget-object v1, p0, Lcom/a/a/a/c/a;->a:Lcom/a/a/a/b/c;

    iget-object v3, p0, Lcom/a/a/a/c/a;->c:[B

    iget v4, p0, Lcom/a/a/a/c/a;->g:I

    iget v5, p0, Lcom/a/a/a/c/a;->h:I

    invoke-direct/range {v0 .. v5}, Lcom/a/a/a/b/e;-><init>(Lcom/a/a/a/b/c;Ljava/io/InputStream;[BII)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/a/a/a/b/h;

    iget-object v1, p0, Lcom/a/a/a/c/a;->a:Lcom/a/a/a/b/c;

    iget-object v2, p0, Lcom/a/a/a/c/a;->b:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/a/a/a/c/a;->c:[B

    iget v4, p0, Lcom/a/a/a/c/a;->g:I

    iget v5, p0, Lcom/a/a/a/c/a;->h:I

    iget-object v6, p0, Lcom/a/a/a/c/a;->a:Lcom/a/a/a/b/c;

    invoke-virtual {v6}, Lcom/a/a/a/b/c;->b()Lcom/a/a/a/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/a/a/a;->b()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/a/a/a/b/h;-><init>(Lcom/a/a/a/b/c;Ljava/io/InputStream;[BIIZ)V

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method
