.class Lcom/alensw/transfer/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/k/k;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/a/a;

.field private volatile b:Z

.field private final c:[B

.field private final d:Ljava/net/DatagramPacket;


# direct methods
.method private constructor <init>(Lcom/alensw/transfer/a/a;)V
    .locals 3

    iput-object p1, p0, Lcom/alensw/transfer/a/n;->a:Lcom/alensw/transfer/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alensw/transfer/a/n;->c:[B

    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/alensw/transfer/a/n;->c:[B

    iget-object v2, p0, Lcom/alensw/transfer/a/n;->c:[B

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lcom/alensw/transfer/a/n;->d:Ljava/net/DatagramPacket;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alensw/transfer/a/a;Lcom/alensw/transfer/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/transfer/a/n;-><init>(Lcom/alensw/transfer/a/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/transfer/a/n;->b:Z

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()Ljava/lang/Void;
    .locals 4

    const-string v0, "DiscoveryManager"

    const-string v1, "start receive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean v0, p0, Lcom/alensw/transfer/a/n;->b:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/a/n;->a:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->o(Lcom/alensw/transfer/a/a;)Lcom/alensw/transfer/a/p;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/transfer/a/n;->d:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/a/p;->receive(Ljava/net/DatagramPacket;)V

    iget-object v0, p0, Lcom/alensw/transfer/a/n;->d:Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/alensw/transfer/a/n;->a:Lcom/alensw/transfer/a/a;

    invoke-static {v1}, Lcom/alensw/transfer/a/a;->p(Lcom/alensw/transfer/a/a;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alensw/transfer/a/o;->a(Ljava/net/DatagramPacket;Z)Lcom/alensw/transfer/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/transfer/a/o;->g()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "DiscoveryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid packet address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/alensw/transfer/a/n;->a:Lcom/alensw/transfer/a/a;

    invoke-static {v2}, Lcom/alensw/transfer/a/a;->q(Lcom/alensw/transfer/a/a;)Lcom/alensw/transfer/a/q;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alensw/transfer/a/q;->a(Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "DiscoveryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packet from self: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "DiscoveryManager"

    const-string v2, "receive fail: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    const-string v0, "DiscoveryManager"

    const-string v1, "stop receive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/alensw/transfer/a/n;->a:Lcom/alensw/transfer/a/a;

    invoke-static {v2}, Lcom/alensw/transfer/a/a;->q(Lcom/alensw/transfer/a/a;)Lcom/alensw/transfer/a/q;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alensw/transfer/a/q;->b(Ljava/net/InetAddress;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "DiscoveryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packet from other subnet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v1, "DiscoveryManager"

    const-string v2, "receive error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/alensw/transfer/a/n;->a:Lcom/alensw/transfer/a/a;

    invoke-virtual {v1, v0}, Lcom/alensw/transfer/a/a;->a(Lcom/alensw/transfer/a/o;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/transfer/a/n;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
