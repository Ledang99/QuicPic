.class La/d/bx;
.super La/d/at;


# instance fields
.field private S:I

.field a:La/d/a;


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, La/d/at;-><init>()V

    iput p1, p0, La/d/bx;->S:I

    const/16 v0, 0x32

    iput-byte v0, p0, La/d/bx;->g:B

    const/4 v0, 0x3

    iput-byte v0, p0, La/d/bx;->L:B

    return-void
.end method


# virtual methods
.method a([BII)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method b([BII)I
    .locals 1

    iget v0, p0, La/d/bx;->S:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0, p1, p2}, La/d/bx;->c([BI)I

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p1, p2}, La/d/bx;->d([BI)I

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1, p2}, La/d/bx;->e([BI)I

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x103 -> :sswitch_1
        0x3ef -> :sswitch_2
    .end sparse-switch
.end method

.method c([BI)I
    .locals 4

    new-instance v0, La/d/by;

    invoke-direct {v0, p0}, La/d/by;-><init>(La/d/bx;)V

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, La/d/bx;->g([BI)I

    move-result v2

    iput v2, v0, La/d/by;->c:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, La/d/bx;->g([BI)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, La/d/by;->a:J

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, La/d/bx;->g([BI)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, La/d/by;->b:J

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, La/d/bx;->f([BI)I

    move-result v2

    iput v2, v0, La/d/by;->d:I

    add-int/lit8 v1, v1, 0x4

    iput-object v0, p0, La/d/bx;->a:La/d/a;

    sub-int v0, v1, p2

    return v0
.end method

.method d([BI)I
    .locals 4

    new-instance v0, La/d/by;

    invoke-direct {v0, p0}, La/d/by;-><init>(La/d/bx;)V

    invoke-static {p1, p2}, La/d/bx;->h([BI)J

    move-result-wide v2

    iput-wide v2, v0, La/d/by;->a:J

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, La/d/bx;->h([BI)J

    move-result-wide v2

    iput-wide v2, v0, La/d/by;->b:J

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, La/d/bx;->g([BI)I

    move-result v2

    iput v2, v0, La/d/by;->c:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, La/d/bx;->g([BI)I

    move-result v2

    iput v2, v0, La/d/by;->d:I

    add-int/lit8 v1, v1, 0x4

    iput-object v0, p0, La/d/bx;->a:La/d/a;

    sub-int v0, v1, p2

    return v0
.end method

.method e([BI)I
    .locals 4

    new-instance v0, La/d/by;

    invoke-direct {v0, p0}, La/d/by;-><init>(La/d/bx;)V

    invoke-static {p1, p2}, La/d/bx;->h([BI)J

    move-result-wide v2

    iput-wide v2, v0, La/d/by;->a:J

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, La/d/bx;->h([BI)J

    move-result-wide v2

    iput-wide v2, v0, La/d/by;->b:J

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, La/d/bx;->g([BI)I

    move-result v2

    iput v2, v0, La/d/by;->c:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, La/d/bx;->g([BI)I

    move-result v2

    iput v2, v0, La/d/by;->d:I

    add-int/lit8 v1, v1, 0x4

    iput-object v0, p0, La/d/bx;->a:La/d/a;

    sub-int v0, v1, p2

    return v0
.end method
