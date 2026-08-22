.class Lcom/alensw/a/ai;
.super Lcom/alensw/b/k/a;


# instance fields
.field final synthetic a:Lcom/alensw/a/ah;


# direct methods
.method constructor <init>(Lcom/alensw/a/ah;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/a/ai;->a:Lcom/alensw/a/ah;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/alensw/b/k/a;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Runnable;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alensw/b/k/a;->a(Ljava/lang/Runnable;)V

    instance-of v0, p1, Lcom/alensw/a/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/ai;->a:Lcom/alensw/a/ah;

    invoke-static {v0}, Lcom/alensw/a/ah;->a(Lcom/alensw/a/ah;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    check-cast p1, Lcom/alensw/a/ak;

    invoke-virtual {p1}, Lcom/alensw/a/ak;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/alensw/b/k/a;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    instance-of v0, p1, Lcom/alensw/a/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/ai;->a:Lcom/alensw/a/ah;

    invoke-static {v0}, Lcom/alensw/a/ah;->a(Lcom/alensw/a/ah;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    check-cast p1, Lcom/alensw/a/ak;

    invoke-virtual {p1}, Lcom/alensw/a/ak;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
