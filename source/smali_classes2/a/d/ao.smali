.class La/d/ao;
.super La/d/b;


# instance fields
.field D:I

.field E:I

.field b:[B

.field c:I

.field d:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method e([BI)V
    .locals 0

    iput-object p1, p0, La/d/ao;->b:[B

    iput p2, p0, La/d/ao;->c:I

    return-void
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
    .locals 2

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, La/d/ao;->f([BI)I

    move-result v1

    iput v1, p0, La/d/ao;->d:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, La/d/ao;->f([BI)I

    move-result v1

    iput v1, p0, La/d/ao;->D:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/ao;->f([BI)I

    move-result v1

    iput v1, p0, La/d/ao;->E:I

    add-int/lit8 v0, v0, 0xc

    sub-int/2addr v0, p2

    return v0
.end method

.method q([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
