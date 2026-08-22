.class public Lcom/alensw/transfer/a/o;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/net/InetAddress;

.field private b:B

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/net/DatagramPacket;Z)Lcom/alensw/transfer/a/o;
    .locals 6

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    const-wide v4, 0x5150494300000000L    # 4.943539455910157E83

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown packet id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Lcom/alensw/transfer/a/o;

    invoke-direct {v2}, Lcom/alensw/transfer/a/o;-><init>()V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, v2, Lcom/alensw/transfer/a/o;->b:B

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    :goto_0
    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, v2, Lcom/alensw/transfer/a/o;->a:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, v2, Lcom/alensw/transfer/a/o;->c:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, v2, Lcom/alensw/transfer/a/o;->d:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, v2, Lcom/alensw/transfer/a/o;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    new-array v0, v0, [B

    iput-object v0, v2, Lcom/alensw/transfer/a/o;->f:[B

    iget-object v0, v2, Lcom/alensw/transfer/a/o;->f:[B

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v2

    :cond_1
    const/16 v0, 0x10

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/nio/ByteBuffer;
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-wide v2, 0x5150494300000000L    # 4.943539455910157E83

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/alensw/transfer/a/o;->b:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/alensw/transfer/a/o;->a:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/alensw/transfer/a/o;->c:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/alensw/transfer/a/o;->d:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/alensw/transfer/a/o;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0x7f

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-byte v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/alensw/transfer/a/o;->f:[B

    if-eqz v1, :cond_0

    const/16 v1, 0x1ff

    iget-object v2, p0, Lcom/alensw/transfer/a/o;->f:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-short v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/alensw/transfer/a/o;->f:[B

    invoke-virtual {v0, v2, v4, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public a(B)V
    .locals 0

    iput-byte p1, p0, Lcom/alensw/transfer/a/o;->b:B

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/alensw/transfer/a/o;->c:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/a/o;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/net/InetAddress;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/a/o;->a:Ljava/net/InetAddress;

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/alensw/transfer/a/o;->d:I

    return-void
.end method

.method public b()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/alensw/transfer/a/o;->b:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-byte v0, p0, Lcom/alensw/transfer/a/o;->b:B

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alensw/transfer/a/o;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/alensw/transfer/a/o;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/alensw/transfer/a/o;->d:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/a/o;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/a/o;->a:Ljava/net/InetAddress;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v1, "Packet: %s, %s(%s:%d), %d"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alensw/transfer/a/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "probe"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/alensw/transfer/a/o;->e:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/alensw/transfer/a/o;->a:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget v3, p0, Lcom/alensw/transfer/a/o;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget v3, p0, Lcom/alensw/transfer/a/o;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/transfer/a/o;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "leave"

    goto :goto_0

    :cond_1
    const-string v0, "update"

    goto :goto_0
.end method
