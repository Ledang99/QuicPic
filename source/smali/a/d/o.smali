.class La/d/o;
.super La/d/as;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, La/d/as;-><init>()V

    const/16 v0, 0x25

    iput-byte v0, p0, La/d/o;->g:B

    iput-byte v2, p0, La/d/o;->S:B

    new-instance v0, Ljava/lang/String;

    const-string v1, "\\PIPE\\LANMAN"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, La/d/o;->T:Ljava/lang/String;

    const/16 v0, 0x8

    iput v0, p0, La/d/o;->N:I

    iput-byte v2, p0, La/d/o;->P:B

    iput v2, p0, La/d/o;->R:I

    const/16 v0, 0x1388

    iput v0, p0, La/d/o;->Q:I

    return-void
.end method


# virtual methods
.method c([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method d([BI)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "WrLeh\u0000B13BWz\u0000"

    const-string v2, "ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, p2}, La/d/o;->a(J[BI)V

    add-int/lit8 v2, p2, 0x2

    array-length v3, v1

    invoke-static {v1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v1

    add-int/2addr v0, v2

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, p1, v0}, La/d/o;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/d/o;->O:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/o;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method e([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
