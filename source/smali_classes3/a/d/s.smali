.class public La/d/s;
.super Ljava/lang/Object;


# instance fields
.field a:La/d/t;

.field b:I

.field c:Ljava/lang/String;

.field d:Z

.field e:[B

.field f:[B

.field g:Ljava/lang/String;

.field h:I

.field i:La/e/e;


# direct methods
.method public constructor <init>(La/d/t;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/d/s;->d:Z

    iput-object v1, p0, La/d/s;->e:[B

    iput-object v1, p0, La/d/s;->f:[B

    iput-object v1, p0, La/d/s;->g:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, La/d/s;->h:I

    iput-object p1, p0, La/d/s;->a:La/d/t;

    iget v0, p0, La/d/s;->b:I

    or-int/lit8 v0, v0, 0x4

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, La/d/s;->b:I

    if-eqz p2, :cond_0

    iget v0, p0, La/d/s;->b:I

    const v1, 0x40008010

    or-int/2addr v0, v1

    iput v0, p0, La/d/s;->b:I

    :cond_0
    invoke-static {}, La/c/b;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/s;->c:Ljava/lang/String;

    invoke-static {}, La/e/e;->a()La/e/e;

    move-result-object v0

    iput-object v0, p0, La/d/s;->i:La/e/e;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, La/d/s;->d:Z

    return v0
.end method

.method public a([BII)[B
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v4, 0x0

    iget v0, p0, La/d/s;->h:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, La/d/bc;

    const-string v1, "Invalid state"

    invoke-direct {v0, v1}, La/d/bc;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v1, La/c/b;

    iget v0, p0, La/d/s;->b:I

    iget-object v2, p0, La/d/s;->a:La/d/t;

    invoke-virtual {v2}, La/d/t;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, La/d/s;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, La/c/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, La/c/b;->e()[B

    move-result-object v0

    iget-object v2, p0, La/d/s;->i:La/e/e;

    sget v2, La/e/e;->a:I

    if-lt v2, v7, :cond_0

    iget-object v2, p0, La/d/s;->i:La/e/e;

    invoke-virtual {v2, v1}, La/e/e;->println(Ljava/lang/Object;)V

    iget-object v1, p0, La/d/s;->i:La/e/e;

    sget v1, La/e/e;->a:I

    if-lt v1, v8, :cond_0

    iget-object v1, p0, La/d/s;->i:La/e/e;

    array-length v2, v0

    invoke-static {v1, v0, v4, v2}, La/e/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_0
    iget v1, p0, La/d/s;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/d/s;->h:I

    :goto_0
    return-object v0

    :pswitch_1
    :try_start_0
    new-instance v1, La/c/c;

    invoke-direct {v1, p1}, La/c/c;-><init>([B)V

    iget-object v0, p0, La/d/s;->i:La/e/e;

    sget v0, La/e/e;->a:I

    if-lt v0, v7, :cond_1

    iget-object v0, p0, La/d/s;->i:La/e/e;

    invoke-virtual {v0, v1}, La/e/e;->println(Ljava/lang/Object;)V

    iget-object v0, p0, La/d/s;->i:La/e/e;

    sget v0, La/e/e;->a:I

    if-lt v0, v8, :cond_1

    iget-object v0, p0, La/d/s;->i:La/e/e;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, p1, v2, v3}, La/e/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_1
    invoke-virtual {v1}, La/c/c;->c()[B

    move-result-object v0

    iput-object v0, p0, La/d/s;->e:[B

    iget v0, p0, La/d/s;->b:I

    invoke-virtual {v1}, La/c/c;->a()I

    move-result v2

    and-int/2addr v0, v2

    iput v0, p0, La/d/s;->b:I

    new-instance v0, La/c/d;

    iget-object v2, p0, La/d/s;->a:La/d/t;

    invoke-virtual {v2}, La/d/t;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, La/d/s;->a:La/d/t;

    invoke-virtual {v3}, La/d/t;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, La/d/s;->a:La/d/t;

    invoke-virtual {v4}, La/d/t;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, La/d/s;->c:Ljava/lang/String;

    iget v6, p0, La/d/s;->b:I

    invoke-direct/range {v0 .. v6}, La/c/d;-><init>(La/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, La/c/d;->j()[B

    move-result-object v1

    iget-object v2, p0, La/d/s;->i:La/e/e;

    sget v2, La/e/e;->a:I

    if-lt v2, v7, :cond_2

    iget-object v2, p0, La/d/s;->i:La/e/e;

    invoke-virtual {v2, v0}, La/e/e;->println(Ljava/lang/Object;)V

    iget-object v2, p0, La/d/s;->i:La/e/e;

    sget v2, La/e/e;->a:I

    if-lt v2, v8, :cond_2

    iget-object v2, p0, La/d/s;->i:La/e/e;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v2, v1, v3, v4}, La/e/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_2
    iget v2, p0, La/d/s;->b:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_3

    invoke-virtual {v0}, La/c/d;->h()[B

    move-result-object v0

    iput-object v0, p0, La/d/s;->f:[B

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, La/d/s;->d:Z

    iget v0, p0, La/d/s;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/d/s;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, La/d/bc;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, La/d/bc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, La/d/s;->f:[B

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/d/s;->g:Ljava/lang/String;

    return-object v0
.end method
