.class public Lcom/alensw/transfer/a/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/net/InetAddress;

.field private final b:[B

.field private final c:S


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alensw/transfer/a/q;->a:Ljava/net/InetAddress;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/transfer/a/q;->b:[B

    invoke-static {p1}, Lcom/alensw/transfer/a/q;->c(Ljava/net/InetAddress;)S

    move-result v0

    iput-short v0, p0, Lcom/alensw/transfer/a/q;->c:S

    return-void
.end method

.method public static a(B)I
    .locals 1

    add-int/lit16 v0, p0, 0x100

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static c(Ljava/net/InetAddress;)S
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    :try_start_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InterfaceAddress;

    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()B
    .locals 2

    iget-object v0, p0, Lcom/alensw/transfer/a/q;->b:[B

    iget-object v1, p0, Lcom/alensw/transfer/a/q;->b:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method public a(Ljava/net/InetAddress;)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/a/q;->a:Ljava/net/InetAddress;

    invoke-virtual {v0, p1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/net/InetAddress;)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/alensw/transfer/a/q;->b:[B

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x8

    iget-short v4, p0, Lcom/alensw/transfer/a/q;->c:S

    if-lt v1, v4, :cond_0

    array-length v1, v3

    mul-int/lit8 v1, v1, 0x8

    iget-short v4, p0, Lcom/alensw/transfer/a/q;->c:S

    if-ge v1, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-short v1, p0, Lcom/alensw/transfer/a/q;->c:S

    div-int/lit8 v4, v1, 0x8

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-byte v5, v2, v1

    aget-byte v6, v3, v1

    if-ne v5, v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-short v5, p0, Lcom/alensw/transfer/a/q;->c:S

    mul-int/lit8 v4, v4, 0x8

    sub-int v4, v5, v4

    if-lez v4, :cond_3

    aget-byte v2, v2, v1

    invoke-static {v2}, Lcom/alensw/transfer/a/q;->a(B)I

    move-result v2

    aget-byte v1, v3, v1

    invoke-static {v1}, Lcom/alensw/transfer/a/q;->a(B)I

    move-result v1

    xor-int/2addr v1, v2

    rsub-int/lit8 v2, v4, 0x8

    shr-int/2addr v1, v2

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
