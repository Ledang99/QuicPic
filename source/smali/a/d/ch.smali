.class La/d/ch;
.super La/d/as;


# instance fields
.field private a:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, La/d/as;-><init>()V

    iput-object p1, p0, La/d/ch;->T:Ljava/lang/String;

    iput p2, p0, La/d/ch;->a:I

    const/16 v0, 0x25

    iput-byte v0, p0, La/d/ch;->g:B

    const/16 v0, 0x23

    iput-byte v0, p0, La/d/ch;->S:B

    const/4 v0, -0x1

    iput v0, p0, La/d/ch;->Q:I

    const/4 v0, 0x6

    iput v0, p0, La/d/ch;->N:I

    const/4 v0, 0x1

    iput v0, p0, La/d/ch;->O:I

    const/4 v0, 0x0

    iput-byte v0, p0, La/d/ch;->P:B

    const/4 v0, 0x2

    iput v0, p0, La/d/ch;->R:I

    return-void
.end method


# virtual methods
.method c([BI)I
    .locals 4

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, La/d/ch;->S:B

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    aput-byte v2, p1, v0

    iget v0, p0, La/d/ch;->a:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, v1}, La/d/ch;->a(J[BI)V

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
