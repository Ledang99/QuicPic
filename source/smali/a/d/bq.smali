.class La/d/bq;
.super La/d/at;


# instance fields
.field S:Z

.field T:I

.field U:I

.field V:I

.field a:I

.field ae:Ljava/lang/String;

.field af:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/d/at;-><init>()V

    const/16 v0, 0x32

    iput-byte v0, p0, La/d/bq;->g:B

    const/4 v0, 0x1

    iput-byte v0, p0, La/d/bq;->L:B

    return-void
.end method


# virtual methods
.method a([BII)I
    .locals 3

    const/4 v1, 0x1

    iget-byte v0, p0, La/d/bq;->L:B

    if-ne v0, v1, :cond_1

    invoke-static {p1, p2}, La/d/bq;->f([BI)I

    move-result v0

    iput v0, p0, La/d/bq;->a:I

    add-int/lit8 v0, p2, 0x2

    :goto_0
    invoke-static {p1, v0}, La/d/bq;->f([BI)I

    move-result v2

    iput v2, p0, La/d/bq;->Q:I

    add-int/lit8 v2, v0, 0x2

    aget-byte v0, p1, v2

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, La/d/bq;->S:Z

    add-int/lit8 v0, v2, 0x2

    invoke-static {p1, v0}, La/d/bq;->f([BI)I

    move-result v1

    iput v1, p0, La/d/bq;->T:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/bq;->f([BI)I

    move-result v1

    iput v1, p0, La/d/bq;->U:I

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method b([BII)I
    .locals 6

    iget v0, p0, La/d/bq;->U:I

    add-int/2addr v0, p2

    iput v0, p0, La/d/bq;->V:I

    iget v0, p0, La/d/bq;->Q:I

    new-array v0, v0, [La/d/br;

    iput-object v0, p0, La/d/bq;->R:[La/d/i;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, La/d/bq;->Q:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, La/d/bq;->R:[La/d/i;

    new-instance v2, La/d/br;

    invoke-direct {v2, p0}, La/d/br;-><init>(La/d/bq;)V

    aput-object v2, v1, v0

    invoke-static {p1, p2}, La/d/bq;->g([BI)I

    move-result v1

    iput v1, v2, La/d/br;->a:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, La/d/bq;->g([BI)I

    move-result v1

    iput v1, v2, La/d/br;->b:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, La/d/bq;->i([BI)J

    move-result-wide v4

    iput-wide v4, v2, La/d/br;->c:J

    add-int/lit8 v1, p2, 0x18

    invoke-static {p1, v1}, La/d/bq;->i([BI)J

    move-result-wide v4

    iput-wide v4, v2, La/d/br;->d:J

    add-int/lit8 v1, p2, 0x28

    invoke-static {p1, v1}, La/d/bq;->h([BI)J

    move-result-wide v4

    iput-wide v4, v2, La/d/br;->e:J

    add-int/lit8 v1, p2, 0x38

    invoke-static {p1, v1}, La/d/bq;->g([BI)I

    move-result v1

    iput v1, v2, La/d/br;->f:I

    add-int/lit8 v1, p2, 0x3c

    invoke-static {p1, v1}, La/d/bq;->g([BI)I

    move-result v1

    iput v1, v2, La/d/br;->g:I

    add-int/lit8 v1, p2, 0x5e

    iget v3, v2, La/d/br;->g:I

    invoke-virtual {p0, p1, v1, v3}, La/d/bq;->d([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, La/d/br;->h:Ljava/lang/String;

    iget v1, p0, La/d/bq;->V:I

    if-lt v1, p2, :cond_1

    iget v1, v2, La/d/br;->a:I

    if-eqz v1, :cond_0

    iget v1, p0, La/d/bq;->V:I

    iget v3, v2, La/d/br;->a:I

    add-int/2addr v3, p2

    if-ge v1, v3, :cond_1

    :cond_0
    iget-object v1, v2, La/d/br;->h:Ljava/lang/String;

    iput-object v1, p0, La/d/bq;->ae:Ljava/lang/String;

    iget v1, v2, La/d/br;->b:I

    iput v1, p0, La/d/bq;->af:I

    :cond_1
    iget v1, v2, La/d/br;->a:I

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, La/d/bq;->K:I

    return v0
.end method

.method d([BII)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v0, p0, La/d/bq;->t:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-direct {v0, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    if-lez p3, :cond_1

    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    if-nez v0, :cond_1

    add-int/lit8 p3, p3, -0x1

    :cond_1
    new-instance v0, Ljava/lang/String;

    sget-object v2, La/d/u;->aa:Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, La/d/bq;->e:La/e/e;

    sget v2, La/e/e;->a:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    sget-object v2, La/d/bq;->e:La/e/e;

    invoke-virtual {v0, v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
