.class public La/a/a/b;
.super La/a/a/n;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, La/a/a/r;

    invoke-direct {v3}, La/a/a/r;-><init>()V

    const/4 v4, -0x1

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, La/a/a/n;-><init>(Ljava/lang/String;ILa/a/b/e;III)V

    iput v5, p0, La/a/a/b;->f:I

    const/4 v0, 0x3

    iput v0, p0, La/a/a/b;->g:I

    return-void
.end method


# virtual methods
.method public c()[La/d/i;
    .locals 5

    iget-object v0, p0, La/a/a/b;->d:La/a/b/e;

    check-cast v0, La/a/a/r;

    iget v1, v0, La/a/a/r;->a:I

    new-array v2, v1, [La/a/a/c;

    const/4 v1, 0x0

    :goto_0
    iget v3, v0, La/a/a/r;->a:I

    if-ge v1, v3, :cond_0

    new-instance v3, La/a/a/c;

    iget-object v4, v0, La/a/a/r;->b:[La/a/a/p;

    aget-object v4, v4, v1

    invoke-direct {v3, p0, v4}, La/a/a/c;-><init>(La/a/a/b;La/a/a/p;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method
