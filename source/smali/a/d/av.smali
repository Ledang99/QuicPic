.class La/d/av;
.super La/d/b;


# instance fields
.field D:Ljava/lang/String;

.field b:Z

.field c:Z

.field d:Ljava/lang/String;


# direct methods
.method constructor <init>(La/d/u;)V
    .locals 1

    invoke-direct {p0, p1}, La/d/b;-><init>(La/d/u;)V

    const-string v0, ""

    iput-object v0, p0, La/d/av;->D:Ljava/lang/String;

    return-void
.end method


# virtual methods
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
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    aget-byte v0, p1, p2

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, La/d/av;->b:Z

    aget-byte v0, p1, p2

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, La/d/av;->c:Z

    return v3

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method q([BI)I
    .locals 3

    const/16 v0, 0x20

    invoke-virtual {p0, p1, p2, v0}, La/d/av;->c([BII)I

    move-result v0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ASCII"

    invoke-direct {v1, p1, p2, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, La/d/av;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p2

    sub-int/2addr v0, p2

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
