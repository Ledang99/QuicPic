.class La/b/c;
.super La/b/f;


# direct methods
.method constructor <init>(La/b/b;)V
    .locals 1

    invoke-direct {p0}, La/b/f;-><init>()V

    iput-object p1, p0, La/b/c;->q:La/b/b;

    const/16 v0, 0x20

    iput v0, p0, La/b/c;->s:I

    return-void
.end method


# virtual methods
.method a([BI)I
    .locals 1

    invoke-virtual {p0, p1, p2}, La/b/c;->k([BI)I

    move-result v0

    return v0
.end method

.method b([BI)I
    .locals 1

    invoke-virtual {p0, p1, p2}, La/b/c;->l([BI)I

    move-result v0

    return v0
.end method

.method c([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
