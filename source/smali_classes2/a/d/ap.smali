.class La/d/ap;
.super La/d/u;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, La/d/u;-><init>()V

    const/4 v0, 0x7

    iput-byte v0, p0, La/d/ap;->g:B

    iput-object p1, p0, La/d/ap;->b:Ljava/lang/String;

    iput-object p2, p0, La/d/ap;->c:Ljava/lang/String;

    const/16 v0, 0x16

    iput v0, p0, La/d/ap;->a:I

    return-void
.end method


# virtual methods
.method n([BI)I
    .locals 2

    iget v0, p0, La/d/ap;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, La/d/ap;->a(J[BI)V

    const/4 v0, 0x2

    return v0
.end method

.method o([BI)I
    .locals 3

    const/4 v2, 0x4

    add-int/lit8 v0, p2, 0x1

    aput-byte v2, p1, p2

    iget-object v1, p0, La/d/ap;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, La/d/ap;->a(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    aput-byte v2, p1, v0

    iget-boolean v0, p0, La/d/ap;->t:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    const/4 v2, 0x0

    aput-byte v2, p1, v1

    :goto_0
    iget-object v1, p0, La/d/ap;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, La/d/ap;->a(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
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
