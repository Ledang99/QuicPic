.class La/d/ab;
.super La/d/u;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, La/d/u;-><init>()V

    iput-object p1, p0, La/d/ab;->A:Ljava/lang/String;

    const/4 v0, 0x1

    iput-byte v0, p0, La/d/ab;->g:B

    return-void
.end method


# virtual methods
.method n([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method o([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x4

    aput-byte v1, p1, p2

    iget-object v1, p0, La/d/ab;->A:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, La/d/ab;->a(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

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
