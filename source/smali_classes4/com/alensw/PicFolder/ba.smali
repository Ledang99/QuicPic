.class Lcom/alensw/PicFolder/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/QuickApp;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/QuickApp;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/ba;->a:Lcom/alensw/PicFolder/QuickApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/ba;->a:Lcom/alensw/PicFolder/QuickApp;

    invoke-static {v0}, Lcom/alensw/PicFolder/QuickApp;->a(Lcom/alensw/PicFolder/QuickApp;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/ba;->a:Lcom/alensw/PicFolder/QuickApp;

    invoke-static {v0}, Lcom/alensw/PicFolder/QuickApp;->a(Lcom/alensw/PicFolder/QuickApp;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/ba;->a:Lcom/alensw/PicFolder/QuickApp;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/QuickApp;->d()V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/PicFolder/ba;->a:Lcom/alensw/PicFolder/QuickApp;

    invoke-static {v0}, Lcom/alensw/PicFolder/QuickApp;->b(Lcom/alensw/PicFolder/QuickApp;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/ba;->a:Lcom/alensw/PicFolder/QuickApp;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/QuickApp;->b()V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/ba;->a:Lcom/alensw/PicFolder/QuickApp;

    invoke-static {v0}, Lcom/alensw/PicFolder/QuickApp;->b(Lcom/alensw/PicFolder/QuickApp;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/ba;->a:Lcom/alensw/PicFolder/QuickApp;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/QuickApp;->c()V

    :cond_0
    return-void
.end method
