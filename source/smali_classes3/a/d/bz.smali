.class La/d/bz;
.super La/d/as;


# instance fields
.field private a:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, La/d/as;-><init>()V

    iput-object p1, p0, La/d/bz;->A:Ljava/lang/String;

    iput p2, p0, La/d/bz;->a:I

    const/16 v0, 0x32

    iput-byte v0, p0, La/d/bz;->g:B

    const/4 v0, 0x5

    iput-byte v0, p0, La/d/bz;->S:B

    iput v1, p0, La/d/bz;->M:I

    const/4 v0, 0x2

    iput v0, p0, La/d/bz;->N:I

    const/16 v0, 0x28

    iput v0, p0, La/d/bz;->O:I

    iput-byte v1, p0, La/d/bz;->P:B

    return-void
.end method


# virtual methods
.method c([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, La/d/bz;->S:B

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    return v0
.end method

.method d([BI)I
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, La/d/bz;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, La/d/bz;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, v0, 0x1

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v2, p1, v1

    iget-object v1, p0, La/d/bz;->A:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, La/d/bz;->a(Ljava/lang/String;[BI)I

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
