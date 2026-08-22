.class La/d/cl;
.super La/d/as;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, La/d/as;-><init>()V

    iput-object p1, p0, La/d/cl;->T:Ljava/lang/String;

    const/16 v0, 0x25

    iput-byte v0, p0, La/d/cl;->g:B

    const/16 v0, 0x53

    iput-byte v0, p0, La/d/cl;->S:B

    const/4 v0, -0x1

    iput v0, p0, La/d/cl;->Q:I

    iput v1, p0, La/d/cl;->N:I

    iput v1, p0, La/d/cl;->O:I

    iput-byte v1, p0, La/d/cl;->P:B

    const/4 v0, 0x2

    iput v0, p0, La/d/cl;->R:I

    return-void
.end method


# virtual methods
.method c([BI)I
    .locals 3

    const/4 v2, 0x0

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, La/d/cl;->S:B

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    aput-byte v2, p1, v0

    const/4 v0, 0x4

    return v0
.end method

.method d([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method e([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
