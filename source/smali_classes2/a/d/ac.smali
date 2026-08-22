.class La/d/ac;
.super La/d/u;


# instance fields
.field private a:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, La/d/u;-><init>()V

    iput p1, p0, La/d/ac;->a:I

    const/16 v0, 0x34

    iput-byte v0, p0, La/d/ac;->g:B

    return-void
.end method


# virtual methods
.method n([BI)I
    .locals 2

    iget v0, p0, La/d/ac;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, La/d/ac;->a(J[BI)V

    const/4 v0, 0x2

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
