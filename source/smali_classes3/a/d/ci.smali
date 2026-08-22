.class La/d/ci;
.super La/d/at;


# instance fields
.field S:I

.field private T:La/d/bj;

.field private U:I

.field a:I


# direct methods
.method constructor <init>(La/d/bj;)V
    .locals 0

    invoke-direct {p0}, La/d/at;-><init>()V

    iput-object p1, p0, La/d/ci;->T:La/d/bj;

    return-void
.end method


# virtual methods
.method a([BII)I
    .locals 2

    invoke-static {p1, p2}, La/d/ci;->f([BI)I

    move-result v0

    iput v0, p0, La/d/ci;->S:I

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, La/d/ci;->f([BI)I

    move-result v1

    iput v1, p0, La/d/ci;->U:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/ci;->f([BI)I

    move-result v0

    iput v0, p0, La/d/ci;->a:I

    const/4 v0, 0x6

    return v0
.end method

.method b([BII)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
