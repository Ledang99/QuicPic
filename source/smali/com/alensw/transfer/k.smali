.class Lcom/alensw/transfer/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/TransferActivity;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/TransferActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/k;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    check-cast p2, Lcom/alensw/transfer/bk;

    iget-object v0, p0, Lcom/alensw/transfer/k;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-virtual {p2}, Lcom/alensw/transfer/bk;->a()Lcom/alensw/transfer/TransferService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alensw/transfer/TransferActivity;->a(Lcom/alensw/transfer/TransferActivity;Lcom/alensw/transfer/TransferService;)Lcom/alensw/transfer/TransferService;

    iget-object v0, p0, Lcom/alensw/transfer/k;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-static {v0}, Lcom/alensw/transfer/TransferActivity;->f(Lcom/alensw/transfer/TransferActivity;)Lcom/alensw/transfer/TransferService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/transfer/TransferService;->c()V

    iget-object v0, p0, Lcom/alensw/transfer/k;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-static {v0}, Lcom/alensw/transfer/TransferActivity;->c(Lcom/alensw/transfer/TransferActivity;)Lcom/alensw/transfer/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/transfer/k;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-static {v1}, Lcom/alensw/transfer/TransferActivity;->f(Lcom/alensw/transfer/TransferActivity;)Lcom/alensw/transfer/TransferService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/a;->a(Landroid/app/Service;)V

    iget-object v0, p0, Lcom/alensw/transfer/k;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-static {v0}, Lcom/alensw/transfer/TransferActivity;->d(Lcom/alensw/transfer/TransferActivity;)Lcom/alensw/transfer/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/transfer/k;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-static {v1}, Lcom/alensw/transfer/TransferActivity;->f(Lcom/alensw/transfer/TransferActivity;)Lcom/alensw/transfer/TransferService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/a;->a(Landroid/app/Service;)V

    const-string v0, "TransferActivity"

    const-string v1, "transfer service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/transfer/k;->a:Lcom/alensw/transfer/TransferActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alensw/transfer/TransferActivity;->a(Lcom/alensw/transfer/TransferActivity;Lcom/alensw/transfer/TransferService;)Lcom/alensw/transfer/TransferService;

    const-string v0, "TransferActivity"

    const-string v1, "transfer service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
