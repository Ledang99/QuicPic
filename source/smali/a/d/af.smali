.class La/d/af;
.super La/d/b;


# instance fields
.field D:I

.field E:I

.field F:I

.field G:J

.field H:J

.field I:J

.field J:J

.field K:J

.field L:J

.field M:Z

.field N:Z

.field b:B

.field c:I

.field d:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method n([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method o([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method p([BI)I
    .locals 4

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    iput-byte v1, p0, La/d/af;->b:B

    invoke-static {p1, v0}, La/d/af;->f([BI)I

    move-result v1

    iput v1, p0, La/d/af;->c:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/af;->g([BI)I

    move-result v1

    iput v1, p0, La/d/af;->d:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, La/d/af;->i([BI)J

    move-result-wide v2

    iput-wide v2, p0, La/d/af;->G:J

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, La/d/af;->i([BI)J

    move-result-wide v2

    iput-wide v2, p0, La/d/af;->H:J

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, La/d/af;->i([BI)J

    move-result-wide v2

    iput-wide v2, p0, La/d/af;->I:J

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, La/d/af;->i([BI)J

    move-result-wide v2

    iput-wide v2, p0, La/d/af;->J:J

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, La/d/af;->g([BI)I

    move-result v1

    iput v1, p0, La/d/af;->D:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, La/d/af;->h([BI)J

    move-result-wide v2

    iput-wide v2, p0, La/d/af;->K:J

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, La/d/af;->h([BI)J

    move-result-wide v2

    iput-wide v2, p0, La/d/af;->L:J

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, La/d/af;->f([BI)I

    move-result v1

    iput v1, p0, La/d/af;->E:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/af;->f([BI)I

    move-result v1

    iput v1, p0, La/d/af;->F:I

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, La/d/af;->M:Z

    sub-int v0, v1, p2

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method q([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
