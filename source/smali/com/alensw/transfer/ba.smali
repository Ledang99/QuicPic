.class Lcom/alensw/transfer/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/TransferService;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/TransferService;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/ba;->a:Lcom/alensw/transfer/TransferService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/transfer/ba;->a:Lcom/alensw/transfer/TransferService;

    invoke-static {v0}, Lcom/alensw/transfer/TransferService;->a(Lcom/alensw/transfer/TransferService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/ba;->a:Lcom/alensw/transfer/TransferService;

    invoke-static {v0}, Lcom/alensw/transfer/TransferService;->b(Lcom/alensw/transfer/TransferService;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/alensw/transfer/ba;->a:Lcom/alensw/transfer/TransferService;

    invoke-virtual {v0}, Lcom/alensw/transfer/TransferService;->stopSelf()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
