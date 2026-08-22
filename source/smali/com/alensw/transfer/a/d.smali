.class Lcom/alensw/transfer/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/a/a;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/a/d;->a:Lcom/alensw/transfer/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/transfer/a/d;->a:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->a(Lcom/alensw/transfer/a/a;)V

    const-string v0, "DiscoveryManager"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/a/d;->a:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->i(Lcom/alensw/transfer/a/a;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/a/d;->a:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->i(Lcom/alensw/transfer/a/a;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/a/d;->a:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->i(Lcom/alensw/transfer/a/a;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
