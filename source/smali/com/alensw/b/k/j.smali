.class Lcom/alensw/b/k/j;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/alensw/b/k/i;


# direct methods
.method constructor <init>(Lcom/alensw/b/k/i;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/b/k/j;->a:Lcom/alensw/b/k/i;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/k/j;->a:Lcom/alensw/b/k/i;

    invoke-static {v0}, Lcom/alensw/b/k/i;->a(Lcom/alensw/b/k/i;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
