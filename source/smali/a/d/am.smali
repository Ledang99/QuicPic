.class La/d/am;
.super La/d/u;

# interfaces
.implements La/d/k;


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:I


# direct methods
.method constructor <init>(J)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, La/d/u;-><init>()V

    iput v2, p0, La/d/am;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, La/d/am;->b:J

    iput v2, p0, La/d/am;->d:I

    iput-wide p1, p0, La/d/am;->c:J

    const/16 v0, 0x8

    iput-byte v0, p0, La/d/am;->g:B

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, La/d/am;->a:I

    return v0
.end method

.method public b()J
    .locals 4

    iget-wide v0, p0, La/d/am;->b:J

    iget-wide v2, p0, La/d/am;->c:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public c()J
    .locals 4

    iget-wide v0, p0, La/d/am;->b:J

    iget-wide v2, p0, La/d/am;->c:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public d()J
    .locals 2

    iget v0, p0, La/d/am;->d:I

    int-to-long v0, v0

    return-wide v0
.end method

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

    iget v0, p0, La/d/am;->r:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, La/d/am;->f([BI)I

    move-result v0

    iput v0, p0, La/d/am;->a:I

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, La/d/am;->j([BI)J

    move-result-wide v2

    iput-wide v2, p0, La/d/am;->b:J

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, La/d/am;->g([BI)I

    move-result v0

    iput v0, p0, La/d/am;->d:I

    const/16 v0, 0x14

    goto :goto_0
.end method

.method q([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
