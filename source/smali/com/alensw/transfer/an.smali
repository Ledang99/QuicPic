.class Lcom/alensw/transfer/an;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/ac;

.field private b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/ac;)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/transfer/an;->a:Lcom/alensw/transfer/ac;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/alensw/transfer/ao;

    invoke-direct {v0, p0}, Lcom/alensw/transfer/ao;-><init>(Lcom/alensw/transfer/an;)V

    iput-object v0, p0, Lcom/alensw/transfer/an;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/alensw/transfer/an;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->f(Lcom/alensw/transfer/ac;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/transfer/an;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/alensw/transfer/an;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->f(Lcom/alensw/transfer/ac;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/transfer/an;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
