.class Lcom/alensw/a/aw;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:[Ljava/lang/Object;

.field final synthetic b:Lcom/alensw/a/av;


# direct methods
.method constructor <init>(Lcom/alensw/a/av;Landroid/os/Handler;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/a/aw;->b:Lcom/alensw/a/av;

    iput-object p3, p0, Lcom/alensw/a/aw;->a:[Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v1, p0, Lcom/alensw/a/aw;->b:Lcom/alensw/a/av;

    invoke-static {v1}, Lcom/alensw/a/av;->a(Lcom/alensw/a/av;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/alensw/a/aw;->b:Lcom/alensw/a/av;

    invoke-static {v1}, Lcom/alensw/a/av;->b(Lcom/alensw/a/av;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/a/aw;->b:Lcom/alensw/a/av;

    invoke-static {v1}, Lcom/alensw/a/av;->c(Lcom/alensw/a/av;)Lcom/alensw/bean/CommonFolder;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/a/aw;->b:Lcom/alensw/a/av;

    invoke-static {v2}, Lcom/alensw/a/av;->a(Lcom/alensw/a/av;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alensw/bean/CommonFolder;->a(Landroid/content/ContentResolver;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/a/aw;->a:[Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/alensw/a/aw;->b:Lcom/alensw/a/av;

    invoke-static {v1}, Lcom/alensw/a/av;->d(Lcom/alensw/a/av;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/alensw/a/aw;->b:Lcom/alensw/a/av;

    invoke-static {v1}, Lcom/alensw/a/av;->f(Lcom/alensw/a/av;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alensw/a/ax;

    invoke-direct {v2, p0, v0}, Lcom/alensw/a/ax;-><init>(Lcom/alensw/a/aw;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
