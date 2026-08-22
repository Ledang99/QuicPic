.class public final La/b/g;
.super Ljava/lang/Object;


# static fields
.field static final a:[Ljava/net/InetAddress;

.field static final b:La/b/b;

.field static final c:La/b/g;

.field static final d:[B

.field static e:La/b/g;

.field private static final q:La/b/e;

.field private static r:I

.field private static final s:Ljava/util/HashMap;

.field private static final t:Ljava/util/HashMap;


# instance fields
.field f:La/b/b;

.field g:I

.field h:I

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:[B

.field p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-wide/16 v12, -0x1

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/net/InetAddress;

    sput-object v0, La/b/g;->a:[Ljava/net/InetAddress;

    new-instance v0, La/b/e;

    invoke-direct {v0}, La/b/e;-><init>()V

    sput-object v0, La/b/g;->q:La/b/e;

    sput v3, La/b/g;->r:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/b/g;->s:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/b/g;->t:Ljava/util/HashMap;

    new-instance v0, La/b/b;

    const-string v1, "0.0.0.0"

    invoke-direct {v0, v1, v3, v2}, La/b/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, La/b/g;->b:La/b/b;

    new-instance v0, La/b/g;

    sget-object v1, La/b/g;->b:La/b/b;

    invoke-direct {v0, v1, v3, v3, v3}, La/b/g;-><init>(La/b/b;IZI)V

    sput-object v0, La/b/g;->c:La/b/g;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, La/b/g;->d:[B

    sget-object v0, La/b/g;->s:Ljava/util/HashMap;

    sget-object v1, La/b/g;->b:La/b/b;

    new-instance v4, La/b/h;

    sget-object v5, La/b/g;->b:La/b/b;

    sget-object v6, La/b/g;->c:La/b/g;

    invoke-direct {v4, v5, v6, v12, v13}, La/b/h;-><init>(La/b/b;La/b/g;J)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/b/g;->q:La/b/e;

    iget-object v0, v0, La/b/e;->a:Ljava/net/InetAddress;

    if-nez v0, :cond_2

    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v4, v0

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JCIFS"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v5, v0, v10

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "_"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x3

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x406fe00000000000L    # 255.0

    mul-double/2addr v6, v8

    double-to-int v1, v6

    invoke-static {v1, v10}, La/e/d;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, La/b/b;

    invoke-direct {v1, v0, v3, v2}, La/b/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, La/b/g;

    invoke-virtual {v4}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    const/4 v7, 0x1

    sget-object v9, La/b/g;->d:[B

    move v4, v3

    move v5, v3

    move v6, v3

    move v8, v3

    invoke-direct/range {v0 .. v9}, La/b/g;-><init>(La/b/b;IZIZZZZ[B)V

    sput-object v0, La/b/g;->e:La/b/g;

    sget-object v0, La/b/g;->e:La/b/g;

    invoke-static {v1, v0, v12, v13}, La/b/g;->a(La/b/b;La/b/g;J)V

    return-void

    :catch_0
    move-exception v1

    :try_start_1
    const-string v1, "127.0.0.1"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v4, v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1

    :cond_2
    move-object v4, v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(La/b/b;IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/g;->f:La/b/b;

    iput p2, p0, La/b/g;->g:I

    iput-boolean p3, p0, La/b/g;->i:Z

    iput p4, p0, La/b/g;->h:I

    return-void
.end method

.method constructor <init>(La/b/b;IZIZZZZ[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/g;->f:La/b/b;

    iput p2, p0, La/b/g;->g:I

    iput-boolean p3, p0, La/b/g;->i:Z

    iput p4, p0, La/b/g;->h:I

    iput-boolean p5, p0, La/b/g;->j:Z

    iput-boolean p6, p0, La/b/g;->k:Z

    iput-boolean p7, p0, La/b/g;->l:Z

    iput-boolean p8, p0, La/b/g;->m:Z

    iput-object p9, p0, La/b/g;->o:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, La/b/g;->n:Z

    return-void
.end method

.method public static a()La/b/g;
    .locals 1

    sget-object v0, La/b/g;->e:La/b/g;

    return-object v0
.end method

.method static a(La/b/b;)La/b/g;
    .locals 8

    const/4 v1, 0x0

    sget-object v2, La/b/g;->s:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v0, La/b/g;->s:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b/h;

    if-eqz v0, :cond_0

    iget-wide v4, v0, La/b/h;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    iget-wide v4, v0, La/b/h;->c:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    move-object v0, v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, v0, La/b/h;->b:La/b/g;

    :goto_0
    monitor-exit v2

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static a(La/b/b;Ljava/net/InetAddress;)La/b/g;
    .locals 2

    iget v0, p0, La/b/b;->d:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    sget-object v0, La/b/g;->q:La/b/e;

    iget-object p1, v0, La/b/e;->b:Ljava/net/InetAddress;

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    :goto_0
    iput v0, p0, La/b/b;->e:I

    invoke-static {p0}, La/b/g;->a(La/b/b;)La/b/g;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0}, La/b/g;->b(La/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b/g;

    if-nez v0, :cond_1

    :try_start_0
    sget-object v1, La/b/g;->q:La/b/e;

    invoke-virtual {v1, p0, p1}, La/b/e;->a(La/b/b;Ljava/net/InetAddress;)La/b/g;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {p0, v0}, La/b/g;->a(La/b/b;La/b/g;)V

    invoke-static {p0}, La/b/g;->c(La/b/b;)V

    :cond_1
    :goto_1
    sget-object v1, La/b/g;->c:La/b/g;

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/net/UnknownHostException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v0, La/b/g;->c:La/b/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0, v0}, La/b/g;->a(La/b/b;La/b/g;)V

    invoke-static {p0}, La/b/g;->c(La/b/b;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {p0, v0}, La/b/g;->a(La/b/b;La/b/g;)V

    invoke-static {p0}, La/b/g;->c(La/b/b;)V

    throw v1

    :cond_3
    return-object v0
.end method

.method public static a(Ljava/lang/String;)La/b/g;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, La/b/g;->a(Ljava/lang/String;ILjava/lang/String;)La/b/g;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)La/b/g;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, La/b/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)La/b/g;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)La/b/g;
    .locals 10

    const/16 v9, 0x39

    const/16 v8, 0x30

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, La/b/g;->a()La/b/g;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, La/b/b;

    invoke-direct {v0, p0, p1, p2}, La/b/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, La/b/g;->a(La/b/b;Ljava/net/InetAddress;)La/b/g;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_1
    array-length v4, v6

    if-ge v0, v4, :cond_a

    aget-char v4, v6, v0

    if-lt v4, v8, :cond_3

    if-le v4, v9, :cond_4

    :cond_3
    new-instance v0, La/b/b;

    invoke-direct {v0, p0, p1, p2}, La/b/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, La/b/g;->a(La/b/b;Ljava/net/InetAddress;)La/b/g;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v5, v4

    move v4, v0

    move v0, v1

    :goto_2
    const/16 v7, 0x2e

    if-eq v5, v7, :cond_7

    if-lt v5, v8, :cond_5

    if-le v5, v9, :cond_6

    :cond_5
    new-instance v0, La/b/b;

    invoke-direct {v0, p0, p1, p2}, La/b/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, La/b/g;->a(La/b/b;Ljava/net/InetAddress;)La/b/g;

    move-result-object v0

    goto :goto_0

    :cond_6
    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x30

    add-int/lit8 v4, v4, 0x1

    array-length v5, v6

    if-lt v4, v5, :cond_8

    :cond_7
    const/16 v5, 0xff

    if-le v0, v5, :cond_9

    new-instance v0, La/b/b;

    invoke-direct {v0, p0, p1, p2}, La/b/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, La/b/g;->a(La/b/b;Ljava/net/InetAddress;)La/b/g;

    move-result-object v0

    goto :goto_0

    :cond_8
    aget-char v5, v6, v4

    goto :goto_2

    :cond_9
    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v4, 0x1

    goto :goto_1

    :cond_a
    const/4 v0, 0x4

    if-ne v2, v0, :cond_b

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    new-instance v0, La/b/b;

    invoke-direct {v0, p0, p1, p2}, La/b/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, La/b/g;->a(La/b/b;Ljava/net/InetAddress;)La/b/g;

    move-result-object v0

    goto :goto_0

    :cond_c
    new-instance v0, La/b/g;

    sget-object v2, La/b/g;->b:La/b/b;

    invoke-direct {v0, v2, v3, v1, v1}, La/b/g;-><init>(La/b/b;IZI)V

    goto/16 :goto_0
.end method

.method static a(La/b/b;La/b/g;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    invoke-static {p0, p1, v0, v1}, La/b/g;->a(La/b/b;La/b/g;J)V

    return-void
.end method

.method static a(La/b/b;La/b/g;J)V
    .locals 4

    sget-object v1, La/b/g;->s:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, La/b/g;->s:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b/h;

    if-nez v0, :cond_0

    new-instance v0, La/b/h;

    invoke-direct {v0, p0, p1, p2, p3}, La/b/h;-><init>(La/b/b;La/b/g;J)V

    sget-object v2, La/b/g;->s:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iput-object p1, v0, La/b/h;->b:La/b/g;

    iput-wide p2, v0, La/b/h;->c:J

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/net/InetAddress;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz p0, :cond_0

    sget-object v2, La/b/g;->a:[Ljava/net/InetAddress;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    sget-object v3, La/b/g;->a:[Ljava/net/InetAddress;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/net/InetAddress;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static b()La/b/b;
    .locals 1

    sget-object v0, La/b/g;->e:La/b/g;

    iget-object v0, v0, La/b/g;->f:La/b/b;

    return-object v0
.end method

.method private static b(La/b/b;)Ljava/lang/Object;
    .locals 3

    sget-object v1, La/b/g;->t:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, La/b/g;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, La/b/g;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    monitor-exit v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :goto_1
    sget-object v0, La/b/g;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_2

    :try_start_1
    sget-object v0, La/b/g;->t:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {p0}, La/b/g;->a(La/b/b;)La/b/g;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, La/b/g;->t:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    sget-object v2, La/b/g;->t:Ljava/util/HashMap;

    invoke-virtual {v2, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public static c()Ljava/net/InetAddress;
    .locals 2

    sget-object v0, La/b/g;->a:[Ljava/net/InetAddress;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, La/b/g;->a:[Ljava/net/InetAddress;

    sget v1, La/b/g;->r:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private static c(La/b/b;)V
    .locals 2

    sget-object v1, La/b/g;->t:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, La/b/g;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/b/g;->t:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static d()Ljava/net/InetAddress;
    .locals 2

    sget v0, La/b/g;->r:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, La/b/g;->a:[Ljava/net/InetAddress;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget v0, La/b/g;->r:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    sput v0, La/b/g;->r:I

    sget-object v0, La/b/g;->a:[Ljava/net/InetAddress;

    array-length v0, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, La/b/g;->a:[Ljava/net/InetAddress;

    sget v1, La/b/g;->r:I

    aget-object v0, v0, v1

    goto :goto_1
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, La/b/g;->f:La/b/b;

    iget-object v1, v1, La/b/b;->b:Ljava/lang/String;

    iput-object v1, p0, La/b/g;->p:Ljava/lang/String;

    iget-object v1, p0, La/b/g;->p:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, La/b/g;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v1, p0, La/b/g;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-char v1, v4, v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v2, v3, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string v0, "*SMBSERVER     "

    iput-object v0, p0, La/b/g;->p:Ljava/lang/String;

    :cond_0
    :goto_1
    iget-object v0, p0, La/b/g;->p:Ljava/lang/String;

    return-object v0

    :cond_1
    if-ge v2, v3, :cond_3

    aget-char v1, v4, v2

    const/16 v5, 0x2e

    if-ne v1, v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, La/b/g;->f:La/b/b;

    iget v0, v0, La/b/b;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "*SMBSERVER     "

    iput-object v0, p0, La/b/g;->p:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, La/b/g;

    if-eqz v0, :cond_0

    check-cast p1, La/b/g;

    iget v0, p1, La/b/g;->g:I

    iget v1, p0, La/b/g;->g:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, La/b/g;->p:Ljava/lang/String;

    iget-object v2, p0, La/b/g;->f:La/b/b;

    iget-object v2, v2, La/b/b;->b:Ljava/lang/String;

    if-ne v1, v2, :cond_2

    const-string v0, "*SMBSERVER     "

    iput-object v0, p0, La/b/g;->p:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, La/b/g;->p:Ljava/lang/String;

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iget-object v1, p0, La/b/g;->p:Ljava/lang/String;

    const-string v2, "*SMBSERVER     "

    if-ne v1, v2, :cond_5

    :try_start_0
    sget-object v1, La/b/g;->q:La/b/e;

    invoke-virtual {v1, p0}, La/b/e;->a(La/b/g;)[La/b/g;

    move-result-object v2

    iget-object v1, p0, La/b/g;->f:La/b/b;

    iget v1, v1, La/b/b;->d:I

    const/16 v3, 0x1d

    if-ne v1, v3, :cond_4

    const/4 v1, 0x0

    :goto_2
    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    iget-object v3, v3, La/b/g;->f:La/b/b;

    iget v3, v3, La/b/b;->d:I

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    aget-object v1, v2, v1

    iget-object v1, v1, La/b/g;->f:La/b/b;

    iget-object v0, v1, La/b/b;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-boolean v1, p0, La/b/g;->n:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, La/b/g;->p:Ljava/lang/String;

    iget-object v1, p0, La/b/g;->f:La/b/b;

    iget-object v0, v1, La/b/b;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    iput-object v0, p0, La/b/g;->p:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iput-object v0, p0, La/b/g;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, La/b/g;->f:La/b/b;

    sget-object v1, La/b/g;->b:La/b/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, La/b/g;->i()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/b/g;->f:La/b/b;

    iget-object v0, v0, La/b/b;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public h()Ljava/net/InetAddress;
    .locals 1

    invoke-virtual {p0}, La/b/g;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, La/b/g;->g:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, La/b/g;->g:I

    ushr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/b/g;->g:I

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/b/g;->g:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/b/g;->g:I

    ushr-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, La/b/g;->f:La/b/b;

    iget v0, v0, La/b/b;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/b/g;->f:La/b/b;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, La/b/g;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
