.class public Lcom/alensw/transfer/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/alensw/transfer/a/t;


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentHashMap;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/LinkedList;

.field private final e:Ljava/util/Random;

.field private final f:Lcom/alensw/transfer/a/r;

.field private final g:Lcom/alensw/b/k/a;

.field private final h:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private final i:Lcom/alensw/b/k/a;

.field private j:Z

.field private k:Lcom/alensw/transfer/a/t;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/alensw/transfer/a/q;

.field private o:Ljava/net/InetAddress;

.field private p:Ljava/net/InetAddress;

.field private q:Lcom/alensw/transfer/a/p;

.field private r:Lcom/alensw/b/k/d;

.field private s:Ljava/util/concurrent/Future;

.field private t:Lcom/alensw/transfer/a/j;

.field private u:Landroid/net/wifi/WifiManager$MulticastLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/alensw/transfer/a/t;

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alensw/transfer/a/t;-><init>(Ljava/lang/String;Ljava/net/InetAddress;I)V

    sput-object v0, Lcom/alensw/transfer/a/a;->a:Lcom/alensw/transfer/a/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alensw/transfer/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/transfer/a/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alensw/transfer/a/a;->d:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/alensw/transfer/a/a;->e:Ljava/util/Random;

    new-instance v0, Lcom/alensw/transfer/a/r;

    invoke-direct {v0, v2}, Lcom/alensw/transfer/a/r;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/transfer/a/a;->f:Lcom/alensw/transfer/a/r;

    invoke-static {v2, v1}, Lcom/alensw/b/k/a;->a(II)Lcom/alensw/b/k/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/transfer/a/a;->g:Lcom/alensw/b/k/a;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/alensw/transfer/a/a;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v2, v1}, Lcom/alensw/b/k/a;->a(II)Lcom/alensw/b/k/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/transfer/a/a;->i:Lcom/alensw/b/k/a;

    :try_start_0
    const-string v0, "192.168.43.1"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/transfer/a/a;->o:Ljava/net/InetAddress;

    const-string v0, "172.20.10.1"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/transfer/a/a;->p:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(JZ)J
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/alensw/transfer/a/a;->a(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v2, Lcom/alensw/transfer/a/e;

    invoke-direct {v2, p0, v1, p3}, Lcom/alensw/transfer/a/e;-><init>(Lcom/alensw/transfer/a/a;Ljava/nio/ByteBuffer;Z)V

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/alensw/transfer/a/a;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v3, p0, Lcom/alensw/transfer/a/a;->f:Lcom/alensw/transfer/a/r;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v2, p1, p2, v4}, Lcom/alensw/transfer/a/r;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    const-wide/16 v4, 0xfa

    add-long/2addr p1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method static synthetic a(Lcom/alensw/transfer/a/a;JZ)J
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/transfer/a/a;->a(JZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/l/b;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/alensw/transfer/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(II)Ljava/nio/ByteBuffer;
    .locals 2

    new-instance v0, Lcom/alensw/transfer/a/o;

    invoke-direct {v0}, Lcom/alensw/transfer/a/o;-><init>()V

    iget-object v1, p0, Lcom/alensw/transfer/a/a;->k:Lcom/alensw/transfer/a/t;

    invoke-virtual {v1}, Lcom/alensw/transfer/a/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/a/o;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alensw/transfer/a/a;->k:Lcom/alensw/transfer/a/t;

    invoke-virtual {v1}, Lcom/alensw/transfer/a/t;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/a/o;->a(I)V

    invoke-virtual {v0, p2}, Lcom/alensw/transfer/a/o;->b(I)V

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/a/o;->a(B)V

    iget-object v1, p0, Lcom/alensw/transfer/a/a;->k:Lcom/alensw/transfer/a/t;

    invoke-virtual {v1}, Lcom/alensw/transfer/a/t;->b()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/a/o;->a(Ljava/net/InetAddress;)V

    invoke-virtual {v0}, Lcom/alensw/transfer/a/o;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alensw/transfer/a/a;II)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alensw/transfer/a/a;->a(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private a(J)V
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0x4e20

    invoke-direct {p0, v0, v1}, Lcom/alensw/transfer/a/a;->a(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    new-instance v1, Lcom/alensw/transfer/a/f;

    invoke-direct {v1, p0, v2}, Lcom/alensw/transfer/a/f;-><init>(Lcom/alensw/transfer/a/a;Ljava/nio/ByteBuffer;)V

    move-wide v2, p1

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/alensw/transfer/a/a;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v5, p0, Lcom/alensw/transfer/a/a;->f:Lcom/alensw/transfer/a/r;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v1, v2, v3, v6}, Lcom/alensw/transfer/a/r;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    const-wide/16 v4, 0xfa

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/alensw/transfer/a/a;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->f:Lcom/alensw/transfer/a/r;

    const-wide/16 v4, 0x1388

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lcom/alensw/transfer/a/r;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/alensw/transfer/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/transfer/a/a;->c()V

    return-void
.end method

.method static synthetic a(Lcom/alensw/transfer/a/a;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alensw/transfer/a/a;->b(J)V

    return-void
.end method

.method static synthetic a(Lcom/alensw/transfer/a/a;Lcom/alensw/transfer/a/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/transfer/a/a;->b(Lcom/alensw/transfer/a/o;)V

    return-void
.end method

.method static synthetic a(Lcom/alensw/transfer/a/a;Ljava/net/InetAddress;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/transfer/a/a;->a(Ljava/net/InetAddress;J)V

    return-void
.end method

.method static synthetic a(Lcom/alensw/transfer/a/a;Ljava/nio/ByteBuffer;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alensw/transfer/a/a;->a(Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method private a(Ljava/net/InetAddress;J)V
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x4e20

    invoke-direct {p0, v0, v1}, Lcom/alensw/transfer/a/a;->a(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v2, Lcom/alensw/transfer/a/g;

    invoke-direct {v2, p0, v1, p1}, Lcom/alensw/transfer/a/g;-><init>(Lcom/alensw/transfer/a/a;Ljava/nio/ByteBuffer;Ljava/net/InetAddress;)V

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/alensw/transfer/a/a;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v3, p0, Lcom/alensw/transfer/a/a;->f:Lcom/alensw/transfer/a/r;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v2, p2, p3, v4}, Lcom/alensw/transfer/a/r;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    const-wide/16 v4, 0xfa

    add-long/2addr p2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/a/a;->q:Lcom/alensw/transfer/a/p;

    invoke-virtual {v0}, Lcom/alensw/transfer/a/p;->a()Ljava/net/InetAddress;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/alensw/transfer/a/a;->a(Ljava/nio/ByteBuffer;Ljava/net/InetAddress;)Z

    :cond_0
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->o:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->n:Lcom/alensw/transfer/a/q;

    iget-object v1, p0, Lcom/alensw/transfer/a/a;->o:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/a/q;->a(Ljava/net/InetAddress;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->n:Lcom/alensw/transfer/a/q;

    iget-object v1, p0, Lcom/alensw/transfer/a/a;->o:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/a/q;->b(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->o:Ljava/net/InetAddress;

    invoke-direct {p0, p1, v0}, Lcom/alensw/transfer/a/a;->a(Ljava/nio/ByteBuffer;Ljava/net/InetAddress;)Z

    :cond_1
    iget-object v0, p0, Lcom/alensw/transfer/a/a;->p:Ljava/net/InetAddress;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->n:Lcom/alensw/transfer/a/q;

    iget-object v1, p0, Lcom/alensw/transfer/a/a;->p:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/a/q;->a(Ljava/net/InetAddress;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->n:Lcom/alensw/transfer/a/q;

    iget-object v1, p0, Lcom/alensw/transfer/a/a;->p:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/a/q;->b(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->p:Ljava/net/InetAddress;

    invoke-direct {p0, p1, v0}, Lcom/alensw/transfer/a/a;->a(Ljava/nio/ByteBuffer;Ljava/net/InetAddress;)Z

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/alensw/transfer/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-direct {p0, p1, v0}, Lcom/alensw/transfer/a/a;->a(Ljava/nio/ByteBuffer;Ljava/net/InetAddress;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alensw/transfer/a/a;Ljava/nio/ByteBuffer;Ljava/net/InetAddress;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alensw/transfer/a/a;->a(Ljava/nio/ByteBuffer;Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/net/DatagramPacket;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/a/a;->q:Lcom/alensw/transfer/a/p;

    invoke-virtual {v0, p1}, Lcom/alensw/transfer/a/p;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "DiscoveryManager"

    const-string v2, "send: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/nio/ByteBuffer;Ljava/net/InetAddress;)Z
    .locals 3

    new-instance v0, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v0, p2}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    const/16 v1, 0x3bf9

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    invoke-direct {p0, v0}, Lcom/alensw/transfer/a/a;->a(Ljava/net/DatagramPacket;)Z

    move-result v0

    return v0
.end method

.method static synthetic b()Lcom/alensw/transfer/a/t;
    .locals 1

    sget-object v0, Lcom/alensw/transfer/a/a;->a:Lcom/alensw/transfer/a/t;

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "HmacSHA1"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/l/b;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic b(Lcom/alensw/transfer/a/a;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private b(J)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/alensw/transfer/a/a;->a(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v2, Lcom/alensw/transfer/a/h;

    invoke-direct {v2, p0, v1}, Lcom/alensw/transfer/a/h;-><init>(Lcom/alensw/transfer/a/a;Ljava/nio/ByteBuffer;)V

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/alensw/transfer/a/a;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v3, p0, Lcom/alensw/transfer/a/a;->f:Lcom/alensw/transfer/a/r;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v2, p1, p2, v4}, Lcom/alensw/transfer/a/r;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    const-wide/16 v4, 0xfa

    add-long/2addr p1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alensw/transfer/a/a;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alensw/transfer/a/a;->a(J)V

    return-void
.end method

.method private b(Lcom/alensw/transfer/a/o;)V
    .locals 6

    invoke-virtual {p1}, Lcom/alensw/transfer/a/o;->g()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alensw/transfer/a/o;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/transfer/a/t;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alensw/transfer/a/a;->t:Lcom/alensw/transfer/a/j;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/alensw/transfer/a/j;->c(Lcom/alensw/transfer/a/t;)V

    :cond_0
    const-string v1, "DiscoveryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "peer level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alensw/transfer/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/transfer/a/t;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/alensw/transfer/a/a;->a:Lcom/alensw/transfer/a/t;

    if-ne v0, v2, :cond_5

    :cond_3
    new-instance v0, Lcom/alensw/transfer/a/t;

    invoke-virtual {p1}, Lcom/alensw/transfer/a/o;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alensw/transfer/a/o;->g()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alensw/transfer/a/o;->d()I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/alensw/transfer/a/t;-><init>(Ljava/lang/String;Ljava/net/InetAddress;I)V

    iget-object v2, p0, Lcom/alensw/transfer/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alensw/transfer/a/a;->t:Lcom/alensw/transfer/a/j;

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Lcom/alensw/transfer/a/j;->b(Lcom/alensw/transfer/a/t;)V

    :cond_4
    const-string v1, "DiscoveryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "peer join: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/alensw/transfer/a/o;->e()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/alensw/transfer/a/t;->a:J

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/alensw/transfer/a/o;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/a/t;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alensw/transfer/a/o;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/a/t;->a(I)V

    goto :goto_1
.end method

.method private c()V
    .locals 2

    invoke-direct {p0}, Lcom/alensw/transfer/a/a;->h()V

    invoke-direct {p0}, Lcom/alensw/transfer/a/a;->d()V

    invoke-direct {p0}, Lcom/alensw/transfer/a/a;->f()V

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method static synthetic c(Lcom/alensw/transfer/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/transfer/a/a;->e()V

    return-void
.end method

.method static synthetic d(Lcom/alensw/transfer/a/a;)Lcom/alensw/b/k/a;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->i:Lcom/alensw/b/k/a;

    return-object v0
.end method

.method private d()V
    .locals 2

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/a/a;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/transfer/a/a;->f:Lcom/alensw/transfer/a/r;

    invoke-virtual {v0}, Lcom/alensw/transfer/a/r;->purge()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private declared-synchronized e()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/a/a;->q:Lcom/alensw/transfer/a/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/alensw/transfer/a/a;->k:Lcom/alensw/transfer/a/t;

    invoke-virtual {v0}, Lcom/alensw/transfer/a/t;->b()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    iput-boolean v0, p0, Lcom/alensw/transfer/a/a;->j:Z

    new-instance v1, Lcom/alensw/transfer/a/p;

    iget-boolean v0, p0, Lcom/alensw/transfer/a/a;->j:Z

    if-eqz v0, :cond_1

    const-string v0, "224.0.0.251"

    :goto_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/transfer/a/a;->k:Lcom/alensw/transfer/a/t;

    invoke-virtual {v2}, Lcom/alensw/transfer/a/t;->b()Ljava/net/InetAddress;

    move-result-object v2

    const/16 v3, 0x3bf9

    invoke-direct {v1, v0, v2, v3}, Lcom/alensw/transfer/a/p;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;I)V

    iput-object v1, p0, Lcom/alensw/transfer/a/a;->q:Lcom/alensw/transfer/a/p;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v0, "FF02:0:0:0:0:0:0:FB"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "DiscoveryManager"

    const-string v2, "create socket: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lcom/alensw/transfer/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/transfer/a/a;->g()V

    return-void
.end method

.method static synthetic f(Lcom/alensw/transfer/a/a;)Lcom/alensw/transfer/a/j;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->t:Lcom/alensw/transfer/a/j;

    return-object v0
.end method

.method private declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/a/a;->q:Lcom/alensw/transfer/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->q:Lcom/alensw/transfer/a/p;

    invoke-virtual {v0}, Lcom/alensw/transfer/a/p;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/transfer/a/a;->q:Lcom/alensw/transfer/a/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/a/a;->r:Lcom/alensw/b/k/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->r:Lcom/alensw/b/k/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/d;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/alensw/transfer/a/a;->g:Lcom/alensw/b/k/a;

    new-instance v1, Lcom/alensw/transfer/a/n;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alensw/transfer/a/n;-><init>(Lcom/alensw/transfer/a/a;Lcom/alensw/transfer/a/b;)V

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/a;->a(Lcom/alensw/b/k/k;)Lcom/alensw/b/k/d;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/transfer/a/a;->r:Lcom/alensw/b/k/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic g(Lcom/alensw/transfer/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/transfer/a/a;->d()V

    return-void
.end method

.method private declared-synchronized h()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/a/a;->r:Lcom/alensw/b/k/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->r:Lcom/alensw/b/k/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/d;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/transfer/a/a;->r:Lcom/alensw/b/k/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic h(Lcom/alensw/transfer/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/transfer/a/a;->h()V

    return-void
.end method

.method private i()I
    .locals 4

    iget-object v1, p0, Lcom/alensw/transfer/a/a;->d:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/a/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x100

    if-gt v0, v2, :cond_0

    iget-object v2, p0, Lcom/alensw/transfer/a/a;->d:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alensw/transfer/a/a;->d:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/alensw/transfer/a/a;->e:Ljava/util/Random;

    invoke-static {v0, v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    :cond_1
    iget-object v0, p0, Lcom/alensw/transfer/a/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic i(Lcom/alensw/transfer/a/a;)Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->u:Landroid/net/wifi/WifiManager$MulticastLock;

    return-object v0
.end method

.method static synthetic j(Lcom/alensw/transfer/a/a;)Lcom/alensw/transfer/a/t;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->k:Lcom/alensw/transfer/a/t;

    return-object v0
.end method

.method static synthetic k(Lcom/alensw/transfer/a/a;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic l(Lcom/alensw/transfer/a/a;)Ljava/util/Random;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->e:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic m(Lcom/alensw/transfer/a/a;)I
    .locals 1

    invoke-direct {p0}, Lcom/alensw/transfer/a/a;->i()I

    move-result v0

    return v0
.end method

.method static synthetic n(Lcom/alensw/transfer/a/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/alensw/transfer/a/a;)Lcom/alensw/transfer/a/p;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->q:Lcom/alensw/transfer/a/p;

    return-object v0
.end method

.method static synthetic p(Lcom/alensw/transfer/a/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/transfer/a/a;->j:Z

    return v0
.end method

.method static synthetic q(Lcom/alensw/transfer/a/a;)Lcom/alensw/transfer/a/q;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->n:Lcom/alensw/transfer/a/q;

    return-object v0
.end method

.method static synthetic r(Lcom/alensw/transfer/a/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/alensw/transfer/a/a;)Lcom/alensw/transfer/a/r;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->f:Lcom/alensw/transfer/a/r;

    return-object v0
.end method

.method static synthetic t(Lcom/alensw/transfer/a/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->f:Lcom/alensw/transfer/a/r;

    new-instance v1, Lcom/alensw/transfer/a/c;

    invoke-direct {v1, p0}, Lcom/alensw/transfer/a/c;-><init>(Lcom/alensw/transfer/a/a;)V

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/a/r;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    iget-object v0, p0, Lcom/alensw/transfer/a/a;->s:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->s:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/alensw/transfer/a/a;->f:Lcom/alensw/transfer/a/r;

    new-instance v1, Lcom/alensw/transfer/a/d;

    invoke-direct {v1, p0}, Lcom/alensw/transfer/a/d;-><init>(Lcom/alensw/transfer/a/a;)V

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alensw/transfer/a/r;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/transfer/a/a;->s:Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alensw/transfer/a/t;Ljava/lang/String;Lcom/alensw/transfer/a/j;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iput-object p4, p0, Lcom/alensw/transfer/a/a;->t:Lcom/alensw/transfer/a/j;

    iput-object p2, p0, Lcom/alensw/transfer/a/a;->k:Lcom/alensw/transfer/a/t;

    invoke-virtual {p2}, Lcom/alensw/transfer/a/t;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/transfer/a/a;->l:Ljava/lang/String;

    new-instance v0, Lcom/alensw/transfer/a/q;

    invoke-virtual {p2}, Lcom/alensw/transfer/a/t;->b()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alensw/transfer/a/q;-><init>(Ljava/net/InetAddress;)V

    iput-object v0, p0, Lcom/alensw/transfer/a/a;->n:Lcom/alensw/transfer/a/q;

    invoke-static {p3}, Lcom/alensw/transfer/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/transfer/a/a;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/alensw/transfer/a/a;->d:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/alensw/transfer/a/a;->n:Lcom/alensw/transfer/a/q;

    invoke-virtual {v0}, Lcom/alensw/transfer/a/q;->a()B

    move-result v0

    invoke-static {v0}, Lcom/alensw/transfer/a/q;->a(B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/transfer/a/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/alensw/transfer/a/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/alensw/transfer/a/a;->u:Landroid/net/wifi/WifiManager$MulticastLock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_0

    :try_start_3
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "quickpic.discovery"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/transfer/a/a;->u:Landroid/net/wifi/WifiManager$MulticastLock;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_0
    :try_start_4
    iget-object v0, p0, Lcom/alensw/transfer/a/a;->u:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->u:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->u:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    :cond_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->s:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->s:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/transfer/a/a;->s:Ljava/util/concurrent/Future;

    :cond_2
    iget-object v0, p0, Lcom/alensw/transfer/a/a;->f:Lcom/alensw/transfer/a/r;

    new-instance v1, Lcom/alensw/transfer/a/b;

    invoke-direct {v1, p0, p2}, Lcom/alensw/transfer/a/b;-><init>(Lcom/alensw/transfer/a/a;Lcom/alensw/transfer/a/t;)V

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/a/r;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    :try_start_7
    const-string v1, "DiscoveryManager"

    const-string v2, "create multicast lock: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0
.end method

.method public a(Lcom/alensw/transfer/a/o;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/transfer/a/a;->f:Lcom/alensw/transfer/a/r;

    new-instance v1, Lcom/alensw/transfer/a/i;

    invoke-direct {v1, p0, p1}, Lcom/alensw/transfer/a/i;-><init>(Lcom/alensw/transfer/a/a;Lcom/alensw/transfer/a/o;)V

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/a/r;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
