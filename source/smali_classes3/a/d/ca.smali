.class La/d/ca;
.super La/d/at;


# instance fields
.field private S:I

.field a:La/d/k;


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, La/d/at;-><init>()V

    iput p1, p0, La/d/ca;->S:I

    const/4 v0, 0x5

    iput-byte v0, p0, La/d/ca;->L:B

    return-void
.end method


# virtual methods
.method a([BII)I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method b([BII)I
    .locals 1

    iget v0, p0, La/d/ca;->S:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, La/d/ca;->d([BI)I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, La/d/ca;->c([BI)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method c([BI)I
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, La/d/cc;

    invoke-direct {v3, p0}, La/d/cc;-><init>(La/d/ca;)V

    invoke-static {p1, p2}, La/d/ca;->h([BI)J

    move-result-wide v4

    iput-wide v4, v3, La/d/cc;->a:J

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, La/d/ca;->h([BI)J

    move-result-wide v4

    iput-wide v4, v3, La/d/cc;->b:J

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, La/d/ca;->g([BI)I

    move-result v4

    iput v4, v3, La/d/cc;->c:I

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, La/d/cc;->d:Z

    add-int/lit8 v0, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    if-lez v4, :cond_1

    :goto_1
    iput-boolean v1, v3, La/d/cc;->e:Z

    iput-object v3, p0, La/d/ca;->a:La/d/k;

    sub-int/2addr v0, p2

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method d([BI)I
    .locals 4

    new-instance v0, La/d/cb;

    invoke-direct {v0, p0}, La/d/cb;-><init>(La/d/ca;)V

    invoke-static {p1, p2}, La/d/ca;->i([BI)J

    move-result-wide v2

    iput-wide v2, v0, La/d/cb;->a:J

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, La/d/ca;->i([BI)J

    move-result-wide v2

    iput-wide v2, v0, La/d/cb;->b:J

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, La/d/ca;->i([BI)J

    move-result-wide v2

    iput-wide v2, v0, La/d/cb;->c:J

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, La/d/ca;->i([BI)J

    move-result-wide v2

    iput-wide v2, v0, La/d/cb;->d:J

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, La/d/ca;->f([BI)I

    move-result v2

    iput v2, v0, La/d/cb;->e:I

    add-int/lit8 v1, v1, 0x2

    iput-object v0, p0, La/d/ca;->a:La/d/k;

    sub-int v0, v1, p2

    return v0
.end method
