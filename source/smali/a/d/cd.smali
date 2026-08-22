.class La/d/cd;
.super La/d/as;


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:J


# direct methods
.method constructor <init>(IIJJ)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, La/d/as;-><init>()V

    iput p1, p0, La/d/cd;->a:I

    iput p2, p0, La/d/cd;->b:I

    iput-wide p3, p0, La/d/cd;->c:J

    iput-wide p5, p0, La/d/cd;->d:J

    const/16 v0, 0x32

    iput-byte v0, p0, La/d/cd;->g:B

    const/16 v0, 0x8

    iput-byte v0, p0, La/d/cd;->S:B

    const/4 v0, 0x6

    iput v0, p0, La/d/cd;->N:I

    iput v1, p0, La/d/cd;->O:I

    iput-byte v1, p0, La/d/cd;->P:B

    return-void
.end method


# virtual methods
.method c([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, La/d/cd;->S:B

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    return v0
.end method

.method d([BI)I
    .locals 4

    iget v0, p0, La/d/cd;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, La/d/cd;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    const-wide/16 v2, 0x101

    invoke-static {v2, v3, p1, v0}, La/d/cd;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, v0}, La/d/cd;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0
.end method

.method e([BI)I
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v0, p0, La/d/cd;->c:J

    invoke-static {v0, v1, p1, p2}, La/d/cd;->d(J[BI)V

    add-int/lit8 v0, p2, 0x8

    invoke-static {v4, v5, p1, v0}, La/d/cd;->c(J[BI)V

    add-int/lit8 v0, v0, 0x8

    iget-wide v2, p0, La/d/cd;->d:J

    invoke-static {v2, v3, p1, v0}, La/d/cd;->d(J[BI)V

    add-int/lit8 v0, v0, 0x8

    invoke-static {v4, v5, p1, v0}, La/d/cd;->c(J[BI)V

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, La/d/cd;->b:I

    or-int/lit16 v1, v1, 0x80

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/cd;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    invoke-static {v4, v5, p1, v0}, La/d/cd;->c(J[BI)V

    add-int/lit8 v0, v0, 0x6

    sub-int/2addr v0, p2

    return v0
.end method
