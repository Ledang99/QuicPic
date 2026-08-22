.class La/d/l;
.super La/d/as;


# static fields
.field static final a:[Ljava/lang/String;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "WrLehDO\u0000B16BBDz\u0000"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "WrLehDz\u0000B16BBDz\u0000"

    aput-object v2, v0, v1

    sput-object v0, La/d/l;->a:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, La/d/as;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/d/l;->c:Ljava/lang/String;

    iput-object p1, p0, La/d/l;->b:Ljava/lang/String;

    iput p2, p0, La/d/l;->d:I

    const/16 v0, 0x25

    iput-byte v0, p0, La/d/l;->g:B

    const/16 v0, 0x68

    iput-byte v0, p0, La/d/l;->S:B

    const-string v0, "\\PIPE\\LANMAN"

    iput-object v0, p0, La/d/l;->T:Ljava/lang/String;

    const/16 v0, 0x8

    iput v0, p0, La/d/l;->N:I

    const/16 v0, 0x4000

    iput v0, p0, La/d/l;->O:I

    iput-byte v1, p0, La/d/l;->P:B

    iput v1, p0, La/d/l;->R:I

    const/16 v0, 0x1388

    iput v0, p0, La/d/l;->Q:I

    return-void
.end method


# virtual methods
.method a(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0}, La/d/as;->e()V

    iput-object p2, p0, La/d/l;->c:Ljava/lang/String;

    return-void
.end method

.method c([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method d([BI)I
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-byte v0, p0, La/d/l;->S:B

    const/16 v3, 0x68

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    :try_start_0
    sget-object v3, La/d/l;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, "ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    iget-byte v4, p0, La/d/l;->S:B

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    invoke-static {v4, v5, p1, p2}, La/d/l;->a(J[BI)V

    add-int/lit8 v4, p2, 0x2

    array-length v5, v3

    invoke-static {v3, v1, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v3, v4

    const-wide/16 v4, 0x1

    invoke-static {v4, v5, p1, v3}, La/d/l;->a(J[BI)V

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, La/d/l;->O:I

    int-to-long v4, v4

    invoke-static {v4, v5, p1, v3}, La/d/l;->a(J[BI)V

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, La/d/l;->d:I

    int-to-long v4, v4

    invoke-static {v4, v5, p1, v3}, La/d/l;->b(J[BI)V

    add-int/lit8 v3, v3, 0x4

    iget-object v4, p0, La/d/l;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p1, v3, v1}, La/d/l;->a(Ljava/lang/String;[BIZ)I

    move-result v4

    add-int/2addr v3, v4

    if-ne v0, v2, :cond_1

    iget-object v0, p0, La/d/l;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v3, v1}, La/d/l;->a(Ljava/lang/String;[BIZ)I

    move-result v0

    add-int/2addr v0, v3

    :goto_1
    sub-int v1, v0, p2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method e([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
