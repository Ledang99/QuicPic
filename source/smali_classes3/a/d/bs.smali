.class La/d/bs;
.super La/d/as;


# instance fields
.field private a:I

.field private ae:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, La/d/as;-><init>()V

    iput p1, p0, La/d/bs;->a:I

    iput p2, p0, La/d/bs;->c:I

    iput-object p3, p0, La/d/bs;->ae:Ljava/lang/String;

    const/16 v0, 0x32

    iput-byte v0, p0, La/d/bs;->g:B

    const/4 v0, 0x2

    iput-byte v0, p0, La/d/bs;->S:B

    const/16 v0, 0x104

    iput v0, p0, La/d/bs;->b:I

    iput v1, p0, La/d/bs;->d:I

    const/16 v0, 0x8

    iput v0, p0, La/d/bs;->N:I

    const v0, 0xffff

    iput v0, p0, La/d/bs;->O:I

    iput-byte v1, p0, La/d/bs;->P:B

    return-void
.end method


# virtual methods
.method a(ILjava/lang/String;)V
    .locals 1

    invoke-super {p0}, La/d/as;->e()V

    iput p1, p0, La/d/bs;->c:I

    iput-object p2, p0, La/d/bs;->ae:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, La/d/bs;->m:I

    return-void
.end method

.method c([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, La/d/bs;->S:B

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    return v0
.end method

.method d([BI)I
    .locals 4

    iget v0, p0, La/d/bs;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, La/d/bs;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    const-wide/16 v2, 0xc8

    invoke-static {v2, v3, p1, v0}, La/d/bs;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/d/bs;->b:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/bs;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/d/bs;->c:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/bs;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, La/d/bs;->d:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/bs;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, La/d/bs;->ae:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, La/d/bs;->a(Ljava/lang/String;[BI)I

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
