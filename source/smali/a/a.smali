.class public La/a;
.super Ljava/lang/Object;


# static fields
.field private static c:[I

.field private static d:Ljava/net/InetAddress;

.field private static e:La/e/e;


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v4, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    invoke-static {}, La/e/e;->a()La/e/e;

    move-result-object v0

    sput-object v0, La/a;->e:La/e/e;

    const/4 v0, 0x0

    invoke-static {}, La/b/g;->c()Ljava/net/InetAddress;

    move-result-object v3

    :try_start_0
    const-string v2, "255.255.255.255"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    sput-object v2, La/a;->d:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    if-nez v3, :cond_1

    new-array v0, v11, [I

    sput-object v0, La/a;->c:[I

    sget-object v0, La/a;->c:[I

    aput v11, v0, v1

    sget-object v0, La/a;->c:[I

    aput v10, v0, v9

    sget-object v0, La/a;->c:[I

    aput v9, v0, v10

    :goto_1
    return-void

    :cond_1
    new-array v0, v4, [I

    sput-object v0, La/a;->c:[I

    sget-object v0, La/a;->c:[I

    aput v11, v0, v1

    sget-object v0, La/a;->c:[I

    aput v1, v0, v9

    sget-object v0, La/a;->c:[I

    aput v10, v0, v10

    sget-object v0, La/a;->c:[I

    aput v9, v0, v11

    goto :goto_1

    :cond_2
    new-array v4, v4, [I

    new-instance v5, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v5, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_3
    :goto_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v6, "LMHOSTS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v2, v0, 0x1

    aput v11, v4, v0

    move v0, v2

    goto :goto_2

    :cond_4
    const-string v6, "WINS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v3, :cond_5

    sget-object v2, La/a;->e:La/e/e;

    sget v2, La/e/e;->a:I

    if-le v2, v9, :cond_3

    sget-object v2, La/a;->e:La/e/e;

    const-string v6, "UniAddress resolveOrder specifies WINS however the jcifs.netbios.wins property has not been set"

    invoke-virtual {v2, v6}, La/e/e;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v0, 0x1

    aput v1, v4, v0

    move v0, v2

    goto :goto_2

    :cond_6
    const-string v6, "BCAST"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v2, v0, 0x1

    aput v9, v4, v0

    move v0, v2

    goto :goto_2

    :cond_7
    const-string v6, "DNS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    add-int/lit8 v2, v0, 0x1

    aput v10, v4, v0

    move v0, v2

    goto :goto_2

    :cond_8
    sget-object v6, La/a;->e:La/e/e;

    sget v6, La/e/e;->a:I

    if-le v6, v9, :cond_3

    sget-object v6, La/a;->e:La/e/e;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown resolver method: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, La/e/e;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    new-array v2, v0, [I

    sput-object v2, La/a;->c:[I

    sget-object v2, La/a;->c:[I

    invoke-static {v4, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, La/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)La/a;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, La/a;->a(Ljava/lang/String;Z)La/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)La/a;
    .locals 2

    invoke-static {p0, p1}, La/a;->b(Ljava/lang/String;Z)[La/a;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/net/InetAddress;)La/b/g;
    .locals 12

    const/4 v4, 0x0

    const/4 v11, 0x1

    new-instance v1, La/c;

    const/4 v0, 0x2

    invoke-direct {v1, v0}, La/c;-><init>(I)V

    invoke-static {p1}, La/b/g;->a(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v3, 0x1b

    :goto_0
    new-instance v0, La/b;

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, La/b;-><init>(La/c;Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)V

    new-instance v5, La/b;

    const/16 v8, 0x20

    move-object v6, v1

    move-object v7, p0

    move-object v9, v4

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, La/b;-><init>(La/c;Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)V

    invoke-virtual {v0, v11}, La/b;->setDaemon(Z)V

    invoke-virtual {v5, v11}, La/b;->setDaemon(Z)V

    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, La/b;->start()V

    invoke-virtual {v5}, La/b;->start()V

    :goto_1
    iget v2, v1, La/c;->a:I

    if-lez v2, :cond_1

    iget-object v2, v0, La/b;->e:La/b/g;

    if-nez v2, :cond_1

    iget-object v2, v5, La/b;->e:La/b/g;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v3, 0x1d

    goto :goto_0

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, v0, La/b;->e:La/b/g;

    if-eqz v1, :cond_2

    iget-object v0, v0, La/b;->e:La/b/g;

    :goto_2
    return-object v0

    :cond_2
    iget-object v1, v5, La/b;->e:La/b/g;

    if-eqz v1, :cond_3

    iget-object v0, v5, La/b;->e:La/b/g;

    goto :goto_2

    :cond_3
    iget-object v0, v0, La/b;->g:Ljava/net/UnknownHostException;

    throw v0
.end method

.method static b(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-char v2, v5, v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne v3, v4, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    if-ge v3, v4, :cond_2

    aget-char v2, v5, v3

    const/16 v6, 0x2e

    if-ne v2, v6, :cond_2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Z)[La/a;
    .locals 8

    const/16 v7, 0xf

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0}, Ljava/net/UnknownHostException;-><init>()V

    throw v0

    :cond_1
    invoke-static {p0}, La/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v2, [La/a;

    new-instance v2, La/a;

    invoke-static {p0}, La/b/g;->a(Ljava/lang/String;)La/b/g;

    move-result-object v3

    invoke-direct {v2, v3}, La/a;-><init>(Ljava/lang/Object;)V

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_2
    move v0, v1

    :goto_1
    sget-object v2, La/a;->c:[I

    array-length v2, v2

    if-ge v0, v2, :cond_8

    :try_start_0
    sget-object v2, La/a;->c:[I

    aget v2, v2, v0

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_0
    invoke-static {p0}, La/b/a;->a(Ljava/lang/String;)La/b/g;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v3, v2

    :goto_2
    const/4 v2, 0x1

    new-array v2, v2, [La/a;

    const/4 v4, 0x0

    new-instance v5, La/a;

    invoke-direct {v5, v3}, La/a;-><init>(Ljava/lang/Object;)V

    aput-object v5, v2, v4

    move-object v0, v2

    goto :goto_0

    :pswitch_1
    const-string v2, "\u0001\u0002__MSBROWSE__\u0002"

    if-eq p0, v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v7, :cond_3

    if-eqz p1, :cond_4

    invoke-static {}, La/b/g;->c()Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {p0, v2}, La/a;->a(Ljava/lang/String;Ljava/net/InetAddress;)La/b/g;

    move-result-object v2

    move-object v3, v2

    goto :goto_2

    :cond_4
    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-static {}, La/b/g;->c()Ljava/net/InetAddress;

    move-result-object v4

    invoke-static {p0, v2, v3, v4}, La/b/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)La/b/g;

    move-result-object v2

    move-object v3, v2

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v7, :cond_3

    if-eqz p1, :cond_5

    sget-object v2, La/a;->d:Ljava/net/InetAddress;

    invoke-static {p0, v2}, La/a;->a(Ljava/lang/String;Ljava/net/InetAddress;)La/b/g;

    move-result-object v2

    move-object v3, v2

    goto :goto_2

    :cond_5
    const/16 v2, 0x20

    const/4 v3, 0x0

    sget-object v4, La/a;->d:Ljava/net/InetAddress;

    invoke-static {p0, v2, v3, v4}, La/b/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)La/b/g;

    move-result-object v2

    move-object v3, v2

    goto :goto_2

    :pswitch_3
    invoke-static {p0}, La/a;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    array-length v2, v4

    new-array v2, v2, [La/a;

    move v3, v1

    :goto_3
    array-length v5, v4

    if-ge v3, v5, :cond_7

    new-instance v5, La/a;

    aget-object v6, v4, v3

    invoke-direct {v5, v6}, La/a;-><init>(Ljava/lang/Object;)V

    aput-object v5, v2, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    move-object v0, v2

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method static c(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    const/16 v2, 0xf

    iget-object v0, p0, La/a;->a:Ljava/lang/Object;

    instance-of v0, v0, La/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a;->a:Ljava/lang/Object;

    check-cast v0, La/b/g;

    invoke-virtual {v0}, La/b/g;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a;->b:Ljava/lang/String;

    iget-object v0, p0, La/a;->b:Ljava/lang/String;

    invoke-static {v0}, La/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "*SMBSERVER     "

    iput-object v0, p0, La/a;->b:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, La/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, La/a;->b:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    if-ge v0, v2, :cond_2

    iget-object v1, p0, La/a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, La/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_3

    const-string v0, "*SMBSERVER     "

    iput-object v0, p0, La/a;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v0, p0, La/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, La/a;->a:Ljava/lang/Object;

    instance-of v0, v0, La/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a;->a:Ljava/lang/Object;

    check-cast v0, La/b/g;

    invoke-virtual {v0}, La/b/g;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a;->b:Ljava/lang/String;

    const-string v1, "*SMBSERVER     "

    if-eq v0, v1, :cond_1

    const-string v0, "*SMBSERVER     "

    iput-object v0, p0, La/a;->b:Ljava/lang/String;

    iget-object v0, p0, La/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La/a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a;->a:Ljava/lang/Object;

    instance-of v0, v0, La/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a;->a:Ljava/lang/Object;

    check-cast v0, La/b/g;

    invoke-virtual {v0}, La/b/g;->g()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a;->a:Ljava/lang/Object;

    instance-of v0, v0, La/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a;->a:Ljava/lang/Object;

    check-cast v0, La/b/g;

    invoke-virtual {v0}, La/b/g;->i()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, La/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a;->a:Ljava/lang/Object;

    check-cast p1, La/a;

    iget-object v1, p1, La/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, La/a;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
