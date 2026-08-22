.class La/d/y;
.super La/d/u;


# instance fields
.field private a:I

.field private b:J


# direct methods
.method constructor <init>(IJ)V
    .locals 2

    invoke-direct {p0}, La/d/u;-><init>()V

    iput p1, p0, La/d/y;->a:I

    iput-wide p2, p0, La/d/y;->b:J

    const/4 v0, 0x4

    iput-byte v0, p0, La/d/y;->g:B

    return-void
.end method


# virtual methods
.method n([BI)I
    .locals 4

    iget v0, p0, La/d/y;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, La/d/y;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget-wide v2, p0, La/d/y;->b:J

    invoke-static {v2, v3, p1, v0}, La/d/y;->e(J[BI)V

    const/4 v0, 0x6

    return v0
.end method

.method o([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method p([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method q([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
