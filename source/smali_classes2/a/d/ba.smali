.class La/d/ba;
.super La/d/u;


# instance fields
.field a:J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/d/u;-><init>()V

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

    invoke-static {p1, p2}, La/d/ba;->f([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    iput-wide v0, p0, La/d/ba;->a:J

    const/16 v0, 0x8

    return v0
.end method

.method q([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
