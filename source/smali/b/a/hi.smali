.class public Lb/a/hi;
.super Lb/a/hn;


# static fields
.field private static final d:Lb/a/hs;

.field private static final f:Lb/a/hk;

.field private static final g:[B


# instance fields
.field a:[B

.field b:[B

.field c:[B

.field private h:Lb/a/gj;

.field private i:S

.field private j:Lb/a/hk;

.field private k:Ljava/lang/Boolean;

.field private final l:J

.field private m:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x0

    new-instance v0, Lb/a/hs;

    const-string v1, ""

    invoke-direct {v0, v1}, Lb/a/hs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/hi;->d:Lb/a/hs;

    new-instance v0, Lb/a/hk;

    const-string v1, ""

    invoke-direct {v0, v1, v2, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/hi;->f:Lb/a/hk;

    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lb/a/hi;->g:[B

    sget-object v0, Lb/a/hi;->g:[B

    aput-byte v2, v0, v2

    sget-object v0, Lb/a/hi;->g:[B

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    sget-object v0, Lb/a/hi;->g:[B

    aput-byte v3, v0, v3

    sget-object v0, Lb/a/hi;->g:[B

    aput-byte v4, v0, v5

    sget-object v0, Lb/a/hi;->g:[B

    const/4 v1, 0x5

    aput-byte v1, v0, v6

    sget-object v0, Lb/a/hi;->g:[B

    const/16 v1, 0xa

    aput-byte v5, v0, v1

    sget-object v0, Lb/a/hi;->g:[B

    const/4 v1, 0x7

    aput-byte v1, v0, v4

    sget-object v0, Lb/a/hi;->g:[B

    const/16 v1, 0xb

    aput-byte v6, v0, v1

    sget-object v0, Lb/a/hi;->g:[B

    const/16 v1, 0xf

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    sget-object v0, Lb/a/hi;->g:[B

    const/16 v1, 0xe

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    sget-object v0, Lb/a/hi;->g:[B

    const/16 v1, 0xd

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    sget-object v0, Lb/a/hi;->g:[B

    const/16 v1, 0xc

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lb/a/ia;J)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lb/a/hn;-><init>(Lb/a/ia;)V

    new-instance v0, Lb/a/gj;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lb/a/gj;-><init>(I)V

    iput-object v0, p0, Lb/a/hi;->h:Lb/a/gj;

    const/4 v0, 0x0

    iput-short v0, p0, Lb/a/hi;->i:S

    iput-object v3, p0, Lb/a/hi;->j:Lb/a/hk;

    iput-object v3, p0, Lb/a/hi;->k:Ljava/lang/Boolean;

    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lb/a/hi;->a:[B

    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lb/a/hi;->b:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lb/a/hi;->m:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lb/a/hi;->c:[B

    iput-wide p2, p0, Lb/a/hi;->l:J

    return-void
.end method

.method private A()J
    .locals 11

    const/16 v10, 0x80

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lb/a/hi;->e:Lb/a/ia;

    invoke-virtual {v1}, Lb/a/ia;->d()I

    move-result v1

    const/16 v4, 0xa

    if-lt v1, v4, :cond_2

    iget-object v1, p0, Lb/a/hi;->e:Lb/a/ia;

    invoke-virtual {v1}, Lb/a/ia;->b()[B

    move-result-object v4

    iget-object v1, p0, Lb/a/hi;->e:Lb/a/ia;

    invoke-virtual {v1}, Lb/a/ia;->c()I

    move-result v5

    move v1, v0

    :goto_0
    add-int v6, v5, v0

    aget-byte v6, v4, v6

    and-int/lit8 v7, v6, 0x7f

    int-to-long v8, v7

    shl-long/2addr v8, v1

    or-long/2addr v2, v8

    and-int/lit16 v6, v6, 0x80

    if-eq v6, v10, :cond_0

    iget-object v1, p0, Lb/a/hi;->e:Lb/a/ia;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lb/a/ia;->a(I)V

    :goto_1
    return-wide v2

    :cond_0
    add-int/lit8 v1, v1, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x7

    :cond_2
    invoke-virtual {p0}, Lb/a/hi;->q()B

    move-result v1

    and-int/lit8 v4, v1, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    and-int/lit16 v1, v1, 0x80

    if-eq v1, v10, :cond_1

    goto :goto_1
.end method

.method private a([B)J
    .locals 8

    const-wide/16 v6, 0xff

    const/4 v0, 0x7

    aget-byte v0, p1, v0

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const/4 v2, 0x6

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x0

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private a(J[BI)V
    .locals 7

    const-wide/16 v4, 0xff

    add-int/lit8 v0, p4, 0x0

    and-long v2, p1, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x1

    const/16 v1, 0x8

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x2

    const/16 v1, 0x10

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x3

    const/16 v1, 0x18

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x4

    const/16 v1, 0x20

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x5

    const/16 v1, 0x28

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x6

    const/16 v1, 0x30

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x7

    const/16 v1, 0x38

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    return-void
.end method

.method private a(Lb/a/hk;B)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-byte v0, p1, Lb/a/hk;->b:B

    invoke-direct {p0, v0}, Lb/a/hi;->e(B)B

    move-result p2

    :cond_0
    iget-short v0, p1, Lb/a/hk;->c:S

    iget-short v1, p0, Lb/a/hi;->i:S

    if-le v0, v1, :cond_1

    iget-short v0, p1, Lb/a/hk;->c:S

    iget-short v1, p0, Lb/a/hi;->i:S

    sub-int/2addr v0, v1

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    iget-short v0, p1, Lb/a/hk;->c:S

    iget-short v1, p0, Lb/a/hi;->i:S

    sub-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x4

    or-int/2addr v0, p2

    invoke-direct {p0, v0}, Lb/a/hi;->d(I)V

    :goto_0
    iget-short v0, p1, Lb/a/hk;->c:S

    iput-short v0, p0, Lb/a/hi;->i:S

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lb/a/hi;->b(B)V

    iget-short v0, p1, Lb/a/hk;->c:S

    invoke-virtual {p0, v0}, Lb/a/hi;->a(S)V

    goto :goto_0
.end method

.method private a([BII)V
    .locals 1

    invoke-direct {p0, p3}, Lb/a/hi;->b(I)V

    iget-object v0, p0, Lb/a/hi;->e:Lb/a/ia;

    invoke-virtual {v0, p1, p2, p3}, Lb/a/ia;->b([BII)V

    return-void
.end method

.method private b(B)V
    .locals 2

    iget-object v0, p0, Lb/a/hi;->m:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iget-object v0, p0, Lb/a/hi;->e:Lb/a/ia;

    iget-object v1, p0, Lb/a/hi;->m:[B

    invoke-virtual {v0, v1}, Lb/a/ia;->b([B)V

    return-void
.end method

.method private b(I)V
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_0

    iget-object v2, p0, Lb/a/hi;->a:[B

    add-int/lit8 v3, v0, 0x1

    int-to-byte v4, p1

    aput-byte v4, v2, v0

    iget-object v0, p0, Lb/a/hi;->e:Lb/a/ia;

    iget-object v2, p0, Lb/a/hi;->a:[B

    invoke-virtual {v0, v2, v1, v3}, Lb/a/ia;->b([BII)V

    return-void

    :cond_0
    iget-object v3, p0, Lb/a/hi;->a:[B

    add-int/lit8 v2, v0, 0x1

    and-int/lit8 v4, p1, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    ushr-int/lit8 p1, p1, 0x7

    move v0, v2

    goto :goto_0
.end method

.method private b(J)V
    .locals 9

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const-wide/16 v2, -0x80

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lb/a/hi;->b:[B

    add-int/lit8 v3, v0, 0x1

    long-to-int v4, p1

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    iget-object v0, p0, Lb/a/hi;->e:Lb/a/ia;

    iget-object v2, p0, Lb/a/hi;->b:[B

    invoke-virtual {v0, v2, v1, v3}, Lb/a/ia;->b([BII)V

    return-void

    :cond_0
    iget-object v3, p0, Lb/a/hi;->b:[B

    add-int/lit8 v2, v0, 0x1

    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const-wide/16 v6, 0x80

    or-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    move v0, v2

    goto :goto_0
.end method

.method private c(I)I
    .locals 2

    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p1, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method private c(J)J
    .locals 5

    const/4 v0, 0x1

    shl-long v0, p1, v0

    const/16 v2, 0x3f

    shr-long v2, p1, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private c(B)Z
    .locals 3

    const/4 v0, 0x1

    and-int/lit8 v1, p1, 0xf

    if-eq v1, v0, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(B)B
    .locals 3

    and-int/lit8 v0, p1, 0xf

    int-to-byte v0, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "don\'t know what type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v2, p1, 0xf

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/ho;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_7
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_8
    const/16 v0, 0xf

    goto :goto_0

    :pswitch_9
    const/16 v0, 0xe

    goto :goto_0

    :pswitch_a
    const/16 v0, 0xd

    goto :goto_0

    :pswitch_b
    const/16 v0, 0xc

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private d(J)J
    .locals 5

    const/4 v0, 0x1

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p1

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private d(I)V
    .locals 1

    int-to-byte v0, p1

    invoke-direct {p0, v0}, Lb/a/hi;->b(B)V

    return-void
.end method

.method private e(B)B
    .locals 1

    sget-object v0, Lb/a/hi;->g:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method private e(I)[B
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-array v0, v2, [B

    :goto_0
    return-object v0

    :cond_0
    new-array v0, p1, [B

    iget-object v1, p0, Lb/a/hi;->e:Lb/a/ia;

    invoke-virtual {v1, v0, v2, p1}, Lb/a/ia;->d([BII)I

    goto :goto_0
.end method

.method private f(I)V
    .locals 4

    if-gez p1, :cond_0

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/ho;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lb/a/hi;->l:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    int-to-long v0, p1

    iget-wide v2, p0, Lb/a/hi;->l:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length exceeded max allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/ho;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private g(I)I
    .locals 2

    ushr-int/lit8 v0, p1, 0x1

    and-int/lit8 v1, p1, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private z()I
    .locals 8

    const/16 v7, 0x80

    const/4 v0, 0x0

    iget-object v1, p0, Lb/a/hi;->e:Lb/a/ia;

    invoke-virtual {v1}, Lb/a/ia;->d()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lb/a/hi;->e:Lb/a/ia;

    invoke-virtual {v1}, Lb/a/ia;->b()[B

    move-result-object v3

    iget-object v1, p0, Lb/a/hi;->e:Lb/a/ia;

    invoke-virtual {v1}, Lb/a/ia;->c()I

    move-result v4

    move v1, v0

    move v2, v0

    :goto_0
    add-int v5, v4, v0

    aget-byte v5, v3, v5

    and-int/lit8 v6, v5, 0x7f

    shl-int/2addr v6, v1

    or-int/2addr v2, v6

    and-int/lit16 v5, v5, 0x80

    if-eq v5, v7, :cond_0

    iget-object v1, p0, Lb/a/hi;->e:Lb/a/ia;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lb/a/ia;->a(I)V

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x7

    :goto_2
    invoke-virtual {p0}, Lb/a/hi;->q()B

    move-result v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/2addr v3, v0

    or-int/2addr v1, v3

    and-int/lit16 v2, v2, 0x80

    if-eq v2, v7, :cond_1

    move v2, v1

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lb/a/hi;->h:Lb/a/gj;

    invoke-virtual {v0}, Lb/a/gj;->a()S

    move-result v0

    iput-short v0, p0, Lb/a/hi;->i:S

    return-void
.end method

.method public a(B)V
    .locals 0

    invoke-direct {p0, p1}, Lb/a/hi;->b(B)V

    return-void
.end method

.method protected a(BI)V
    .locals 2

    const/16 v0, 0xe

    if-gt p2, v0, :cond_0

    shl-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1}, Lb/a/hi;->e(B)B

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lb/a/hi;->d(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lb/a/hi;->e(B)B

    move-result v0

    or-int/lit16 v0, v0, 0xf0

    invoke-direct {p0, v0}, Lb/a/hi;->d(I)V

    invoke-direct {p0, p2}, Lb/a/hi;->b(I)V

    goto :goto_0
.end method

.method public a(D)V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lb/a/hi;->a(J[BI)V

    iget-object v1, p0, Lb/a/hi;->e:Lb/a/ia;

    invoke-virtual {v1, v0}, Lb/a/ia;->b([B)V

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public a(I)V
    .locals 1

    invoke-direct {p0, p1}, Lb/a/hi;->c(I)I

    move-result v0

    invoke-direct {p0, v0}, Lb/a/hi;->b(I)V

    return-void
.end method

.method public a(J)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lb/a/hi;->c(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lb/a/hi;->b(J)V

    return-void
.end method

.method public a(Lb/a/hk;)V
    .locals 2

    iget-byte v0, p1, Lb/a/hk;->b:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lb/a/hi;->j:Lb/a/hk;

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lb/a/hi;->a(Lb/a/hk;B)V

    goto :goto_0
.end method

.method public a(Lb/a/hl;)V
    .locals 2

    iget-byte v0, p1, Lb/a/hl;->a:B

    iget v1, p1, Lb/a/hl;->b:I

    invoke-virtual {p0, v0, v1}, Lb/a/hi;->a(BI)V

    return-void
.end method

.method public a(Lb/a/hm;)V
    .locals 2

    iget v0, p1, Lb/a/hm;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/a/hi;->d(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lb/a/hm;->c:I

    invoke-direct {p0, v0}, Lb/a/hi;->b(I)V

    iget-byte v0, p1, Lb/a/hm;->a:B

    invoke-direct {p0, v0}, Lb/a/hi;->e(B)B

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    iget-byte v1, p1, Lb/a/hm;->b:B

    invoke-direct {p0, v1}, Lb/a/hi;->e(B)B

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lb/a/hi;->d(I)V

    goto :goto_0
.end method

.method public a(Lb/a/hs;)V
    .locals 2

    iget-object v0, p0, Lb/a/hi;->h:Lb/a/gj;

    iget-short v1, p0, Lb/a/hi;->i:S

    invoke-virtual {v0, v1}, Lb/a/gj;->a(S)V

    const/4 v0, 0x0

    iput-short v0, p0, Lb/a/hi;->i:S

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v0, v1, v2}, Lb/a/hi;->a([BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lb/a/gp;

    const-string v1, "UTF-8 not supported!"

    invoke-direct {v0, v1}, Lb/a/gp;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0, v1, v2, v0}, Lb/a/hi;->a([BII)V

    return-void
.end method

.method public a(S)V
    .locals 1

    invoke-direct {p0, p1}, Lb/a/hi;->c(I)I

    move-result v0

    invoke-direct {p0, v0}, Lb/a/hi;->b(I)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    const/4 v1, 0x2

    const/4 v0, 0x1

    iget-object v2, p0, Lb/a/hi;->j:Lb/a/hk;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lb/a/hi;->j:Lb/a/hk;

    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {p0, v2, v0}, Lb/a/hi;->a(Lb/a/hk;B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/hi;->j:Lb/a/hk;

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    :goto_2
    invoke-direct {p0, v0}, Lb/a/hi;->b(B)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/a/hi;->b(B)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()Lb/a/hs;
    .locals 2

    iget-object v0, p0, Lb/a/hi;->h:Lb/a/gj;

    iget-short v1, p0, Lb/a/hi;->i:S

    invoke-virtual {v0, v1}, Lb/a/gj;->a(S)V

    const/4 v0, 0x0

    iput-short v0, p0, Lb/a/hi;->i:S

    sget-object v0, Lb/a/hi;->d:Lb/a/hs;

    return-object v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lb/a/hi;->h:Lb/a/gj;

    invoke-virtual {v0}, Lb/a/gj;->a()S

    move-result v0

    iput-short v0, p0, Lb/a/hi;->i:S

    return-void
.end method

.method public h()Lb/a/hk;
    .locals 5

    invoke-virtual {p0}, Lb/a/hi;->q()B

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lb/a/hi;->f:Lb/a/hk;

    :goto_0
    return-object v0

    :cond_0
    and-int/lit16 v0, v2, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lb/a/hi;->r()S

    move-result v0

    :goto_1
    new-instance v1, Lb/a/hk;

    const-string v3, ""

    and-int/lit8 v4, v2, 0xf

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lb/a/hi;->d(B)B

    move-result v4

    invoke-direct {v1, v3, v4, v0}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    invoke-direct {p0, v2}, Lb/a/hi;->c(B)Z

    move-result v0

    if-eqz v0, :cond_1

    and-int/lit8 v0, v2, 0xf

    int-to-byte v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    iput-object v0, p0, Lb/a/hi;->k:Ljava/lang/Boolean;

    :cond_1
    iget-short v0, v1, Lb/a/hk;->c:S

    iput-short v0, p0, Lb/a/hi;->i:S

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-short v1, p0, Lb/a/hi;->i:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_1

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()Lb/a/hm;
    .locals 4

    invoke-direct {p0}, Lb/a/hi;->z()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lb/a/hm;

    shr-int/lit8 v3, v0, 0x4

    int-to-byte v3, v3

    invoke-direct {p0, v3}, Lb/a/hi;->d(B)B

    move-result v3

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lb/a/hi;->d(B)B

    move-result v0

    invoke-direct {v2, v3, v0, v1}, Lb/a/hm;-><init>(BBI)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lb/a/hi;->q()B

    move-result v0

    goto :goto_0
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()Lb/a/hl;
    .locals 3

    invoke-virtual {p0}, Lb/a/hi;->q()B

    move-result v1

    shr-int/lit8 v0, v1, 0x4

    and-int/lit8 v0, v0, 0xf

    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lb/a/hi;->z()I

    move-result v0

    :cond_0
    invoke-direct {p0, v1}, Lb/a/hi;->d(B)B

    move-result v1

    new-instance v2, Lb/a/hl;

    invoke-direct {v2, v1, v0}, Lb/a/hl;-><init>(BI)V

    return-object v2
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public n()Lb/a/hr;
    .locals 2

    new-instance v0, Lb/a/hr;

    invoke-virtual {p0}, Lb/a/hi;->l()Lb/a/hl;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/hr;-><init>(Lb/a/hl;)V

    return-object v0
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public p()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lb/a/hi;->k:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lb/a/hi;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lb/a/hi;->k:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lb/a/hi;->q()B

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()B
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lb/a/hi;->e:Lb/a/ia;

    invoke-virtual {v0}, Lb/a/ia;->d()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lb/a/hi;->e:Lb/a/ia;

    invoke-virtual {v0}, Lb/a/ia;->b()[B

    move-result-object v0

    iget-object v1, p0, Lb/a/hi;->e:Lb/a/ia;

    invoke-virtual {v1}, Lb/a/ia;->c()I

    move-result v1

    aget-byte v0, v0, v1

    iget-object v1, p0, Lb/a/hi;->e:Lb/a/ia;

    invoke-virtual {v1, v3}, Lb/a/ia;->a(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lb/a/hi;->e:Lb/a/ia;

    iget-object v1, p0, Lb/a/hi;->c:[B

    invoke-virtual {v0, v1, v2, v3}, Lb/a/ia;->d([BII)I

    iget-object v0, p0, Lb/a/hi;->c:[B

    aget-byte v0, v0, v2

    goto :goto_0
.end method

.method public r()S
    .locals 1

    invoke-direct {p0}, Lb/a/hi;->z()I

    move-result v0

    invoke-direct {p0, v0}, Lb/a/hi;->g(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public s()I
    .locals 1

    invoke-direct {p0}, Lb/a/hi;->z()I

    move-result v0

    invoke-direct {p0, v0}, Lb/a/hi;->g(I)I

    move-result v0

    return v0
.end method

.method public t()J
    .locals 2

    invoke-direct {p0}, Lb/a/hi;->A()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lb/a/hi;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public u()D
    .locals 4

    const/16 v3, 0x8

    new-array v0, v3, [B

    iget-object v1, p0, Lb/a/hi;->e:Lb/a/ia;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lb/a/ia;->d([BII)I

    invoke-direct {p0, v0}, Lb/a/hi;->a([B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public v()Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lb/a/hi;->z()I

    move-result v1

    invoke-direct {p0, v1}, Lb/a/hi;->f(I)V

    if-nez v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lb/a/hi;->e:Lb/a/ia;

    invoke-virtual {v0}, Lb/a/ia;->d()I

    move-result v0

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lb/a/hi;->e:Lb/a/ia;

    invoke-virtual {v2}, Lb/a/ia;->b()[B

    move-result-object v2

    iget-object v3, p0, Lb/a/hi;->e:Lb/a/ia;

    invoke-virtual {v3}, Lb/a/ia;->c()I

    move-result v3

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v2, p0, Lb/a/hi;->e:Lb/a/ia;

    invoke-virtual {v2, v1}, Lb/a/ia;->a(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lb/a/gp;

    const-string v1, "UTF-8 not supported!"

    invoke-direct {v0, v1}, Lb/a/gp;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, v1}, Lb/a/hi;->e(I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public w()Ljava/nio/ByteBuffer;
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lb/a/hi;->z()I

    move-result v0

    invoke-direct {p0, v0}, Lb/a/hi;->f(I)V

    if-nez v0, :cond_0

    new-array v0, v3, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-array v1, v0, [B

    iget-object v2, p0, Lb/a/hi;->e:Lb/a/ia;

    invoke-virtual {v2, v1, v3, v0}, Lb/a/ia;->d([BII)I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public x()V
    .locals 1

    iget-object v0, p0, Lb/a/hi;->h:Lb/a/gj;

    invoke-virtual {v0}, Lb/a/gj;->b()V

    const/4 v0, 0x0

    iput-short v0, p0, Lb/a/hi;->i:S

    return-void
.end method
