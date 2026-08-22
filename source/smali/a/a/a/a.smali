.class public La/a/a/a;
.super La/a/a/k;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/16 v2, 0xc8

    const v3, 0xffff

    new-instance v4, La/a/a/h;

    invoke-direct {v4}, La/a/a/h;-><init>()V

    new-instance v5, La/a/b/d;

    invoke-direct {v5, v6}, La/a/b/d;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, La/a/a/k;-><init>(Ljava/lang/String;IILa/a/a/h;La/a/b/d;)V

    iget-object v0, p0, La/a/a/a;->l:La/a/a/h;

    iget v1, p0, La/a/a/a;->c:I

    iput v1, v0, La/a/a/h;->a:I

    iget-object v0, p0, La/a/a/a;->l:La/a/a/h;

    new-instance v1, La/a/a/g;

    invoke-direct {v1}, La/a/a/g;-><init>()V

    iput-object v1, v0, La/a/a/h;->b:La/a/b/e;

    iput v6, p0, La/a/a/a;->f:I

    const/4 v0, 0x3

    iput v0, p0, La/a/a/a;->g:I

    return-void
.end method


# virtual methods
.method public c()[La/d/i;
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, La/a/a/a;->l:La/a/a/h;

    iget-object v0, v0, La/a/a/h;->b:La/a/b/e;

    check-cast v0, La/a/a/g;

    iget v1, v0, La/a/a/g;->a:I

    new-array v3, v1, [La/d/bl;

    move v1, v2

    :goto_0
    iget v4, v0, La/a/a/g;->a:I

    if-ge v1, v4, :cond_0

    new-instance v4, La/d/bl;

    iget-object v5, v0, La/a/a/g;->b:[La/a/a/j;

    aget-object v5, v5, v1

    iget-object v5, v5, La/a/a/j;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v2, v6}, La/d/bl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method
