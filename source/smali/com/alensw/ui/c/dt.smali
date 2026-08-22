.class Lcom/alensw/ui/c/dt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/dp;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/dp;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/dt;->a:Lcom/alensw/ui/c/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/dt;->a:Lcom/alensw/ui/c/dp;

    iget v0, v0, Lcom/alensw/ui/c/dp;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/dt;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;)Lcom/alensw/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/a/e;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/dt;->a:Lcom/alensw/ui/c/dp;

    iget-object v1, p0, Lcom/alensw/ui/c/dt;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v1}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;)Lcom/alensw/a/e;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/a/e;Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/dt;->a:Lcom/alensw/ui/c/dp;

    iget-object v0, v0, Lcom/alensw/ui/c/dp;->b:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
