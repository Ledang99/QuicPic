.class public Lcom/alensw/transfer/a/t;
.super Ljava/lang/Object;


# instance fields
.field protected a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/net/InetAddress;

.field private d:I

.field private final e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/InetAddress;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alensw/transfer/a/t;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/alensw/transfer/a/t;->c:Ljava/net/InetAddress;

    iput p3, p0, Lcom/alensw/transfer/a/t;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alensw/transfer/a/t;->e:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/a/t;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/alensw/transfer/a/t;->d:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/a/t;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/a/t;->c:Ljava/net/InetAddress;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/alensw/transfer/a/t;->d:I

    return v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/alensw/transfer/a/t;->e:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/alensw/transfer/a/t;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alensw/transfer/a/t;

    iget-object v0, p1, Lcom/alensw/transfer/a/t;->c:Ljava/net/InetAddress;

    iget-object v1, p0, Lcom/alensw/transfer/a/t;->c:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lcom/alensw/transfer/a/t;->c:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Peer info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/transfer/a/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/transfer/a/t;->c:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alensw/transfer/a/t;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
