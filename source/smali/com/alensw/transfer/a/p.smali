.class public Lcom/alensw/transfer/a/p;
.super Ljava/net/MulticastSocket;


# instance fields
.field private final a:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;Ljava/net/InetAddress;I)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, p3}, Ljava/net/MulticastSocket;-><init>(I)V

    const/16 v1, 0x3e8

    invoke-super {p0, v1}, Ljava/net/MulticastSocket;->setSoTimeout(I)V

    const/16 v1, 0xff

    invoke-super {p0, v1}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    invoke-super {p0, v0}, Ljava/net/MulticastSocket;->setLoopbackMode(Z)V

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0, p1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    iput-object p1, p0, Lcom/alensw/transfer/a/p;->a:Ljava/net/InetAddress;

    return-void

    :catch_0
    move-exception v0

    const-string v2, "GroupSocket"

    const-string v3, "join group: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/a/p;->a:Ljava/net/InetAddress;

    return-object v0
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/transfer/a/p;->a:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/a/p;->a:Ljava/net/InetAddress;

    invoke-super {p0, v0}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/net/MulticastSocket;->close()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "GroupSocket"

    const-string v2, "leave group: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
