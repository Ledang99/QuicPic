.class La/d/ak;
.super La/d/b;


# instance fields
.field D:I

.field E:I

.field F:I

.field G:I

.field H:I

.field I:J

.field b:I

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

    invoke-static {p1, p2}, La/d/ak;->f([BI)I

    move-result v0

    iput v0, p0, La/d/ak;->b:I

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, La/d/ak;->f([BI)I

    move-result v1

    iput v1, p0, La/d/ak;->c:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/ak;->j([BI)J

    move-result-wide v2

    iput-wide v2, p0, La/d/ak;->I:J

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, La/d/ak;->g([BI)I

    move-result v1

    iput v1, p0, La/d/ak;->d:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, La/d/ak;->f([BI)I

    move-result v1

    iput v1, p0, La/d/ak;->D:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/ak;->f([BI)I

    move-result v1

    iput v1, p0, La/d/ak;->E:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/ak;->f([BI)I

    move-result v1

    iput v1, p0, La/d/ak;->F:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/ak;->f([BI)I

    move-result v1

    iput v1, p0, La/d/ak;->G:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/ak;->g([BI)I

    move-result v1

    iput v1, p0, La/d/ak;->H:I

    add-int/lit8 v0, v0, 0x6

    sub-int/2addr v0, p2

    return v0
.end method

.method q([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
