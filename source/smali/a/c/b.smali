.class public La/c/b;
.super La/c/a;


# static fields
.field private static final b:I

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x201

    sput v1, La/c/b;->b:I

    sput-object v0, La/c/b;->c:Ljava/lang/String;

    :try_start_0
    invoke-static {}, La/b/g;->a()La/b/g;

    move-result-object v1

    invoke-virtual {v1}, La/b/g;->g()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sput-object v0, La/c/b;->d:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, La/c/b;->f()I

    move-result v0

    invoke-static {}, La/c/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, La/c/b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, La/c/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, La/c/a;-><init>()V

    invoke-static {}, La/c/b;->f()I

    move-result v0

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, La/c/b;->a(I)V

    invoke-virtual {p0, p2}, La/c/b;->a(Ljava/lang/String;)V

    if-nez p3, :cond_0

    invoke-static {}, La/c/b;->h()Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p3}, La/c/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static f()I
    .locals 1

    sget v0, La/c/b;->b:I

    return v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-object v0, La/c/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    sget-object v0, La/c/b;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/c/b;->e:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/c/b;->f:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/c/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/c/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()[B
    .locals 10

    const/16 v0, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, La/c/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, La/c/b;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, La/c/b;->a()I

    move-result v5

    const/4 v1, 0x0

    new-array v1, v1, [B

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    or-int/lit16 v3, v5, 0x1000

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, La/c/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    move-object v4, v1

    move v5, v3

    move v3, v2

    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [B

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    or-int/lit16 v3, v5, 0x2000

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, La/c/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    :goto_1
    if-eqz v2, :cond_0

    array-length v0, v4

    add-int/lit8 v0, v0, 0x20

    array-length v5, v1

    add-int/2addr v0, v5

    :cond_0
    new-array v0, v0, [B

    sget-object v5, La/c/b;->a:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x8

    const/4 v6, 0x1

    invoke-static {v0, v5, v6}, La/c/b;->a([BII)V

    const/16 v5, 0xc

    invoke-static {v0, v5, v3}, La/c/b;->a([BII)V

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    const/16 v3, 0x20

    invoke-static {v0, v2, v3, v4}, La/c/b;->a([BII[B)V

    const/16 v2, 0x18

    array-length v3, v4

    add-int/lit8 v3, v3, 0x20

    invoke-static {v0, v2, v3, v1}, La/c/b;->a([BII[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :cond_2
    and-int/lit16 v4, v5, -0x1001

    move v5, v4

    move-object v4, v1

    goto :goto_0

    :cond_3
    and-int/lit16 v2, v5, -0x2001

    move v9, v3

    move v3, v2

    move v2, v9

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
