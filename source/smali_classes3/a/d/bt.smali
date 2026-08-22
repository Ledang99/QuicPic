.class La/d/bt;
.super La/d/as;


# instance fields
.field private a:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, La/d/as;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, La/d/bt;->a:I

    iput-object p1, p0, La/d/bt;->A:Ljava/lang/String;

    const/16 v0, 0x32

    iput-byte v0, p0, La/d/bt;->g:B

    const/16 v0, 0x10

    iput-byte v0, p0, La/d/bt;->S:B

    iput v1, p0, La/d/bt;->M:I

    iput v1, p0, La/d/bt;->N:I

    const/16 v0, 0x1000

    iput v0, p0, La/d/bt;->O:I

    iput-byte v1, p0, La/d/bt;->P:B

    return-void
.end method


# virtual methods
.method c([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, La/d/bt;->S:B

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    return v0
.end method

.method d([BI)I
    .locals 2

    iget v0, p0, La/d/bt;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, La/d/bt;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget-object v1, p0, La/d/bt;->A:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, La/d/bt;->a(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method

.method e([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
