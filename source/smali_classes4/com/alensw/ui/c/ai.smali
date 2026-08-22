.class Lcom/alensw/ui/c/ai;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/z;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/z;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/ai;->a:Lcom/alensw/ui/c/z;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/ai;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alensw/ui/c/ai;->a:Lcom/alensw/ui/c/z;

    invoke-static {v1}, Lcom/alensw/ui/c/z;->c(Lcom/alensw/ui/c/z;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/alensw/ui/c/ai;->a:Lcom/alensw/ui/c/z;

    iget-object v2, v0, Lcom/alensw/ui/c/z;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alensw/ui/c/ai;->a:Lcom/alensw/ui/c/z;

    invoke-static {v0}, Lcom/alensw/ui/c/z;->c(Lcom/alensw/ui/c/z;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v0, p0, Lcom/alensw/ui/c/ai;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/j/a;->c(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xbb8

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const-wide/16 v0, 0x12c

    goto :goto_0
.end method
