.class Lcom/alensw/a/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alensw/a/e;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic d:Ljava/util/Stack;

.field final synthetic e:Z

.field final synthetic f:Lcom/alensw/a/v;


# direct methods
.method constructor <init>(Lcom/alensw/a/v;ZLcom/alensw/a/e;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Stack;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/a/w;->f:Lcom/alensw/a/v;

    iput-boolean p2, p0, Lcom/alensw/a/w;->a:Z

    iput-object p3, p0, Lcom/alensw/a/w;->b:Lcom/alensw/a/e;

    iput-object p4, p0, Lcom/alensw/a/w;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lcom/alensw/a/w;->d:Ljava/util/Stack;

    iput-boolean p6, p0, Lcom/alensw/a/w;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 8

    const/16 v7, 0xc

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/alensw/a/w;->a:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alensw/a/w;->b:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/w;->b:Lcom/alensw/a/e;

    iget v0, v0, Lcom/alensw/a/e;->g:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alensw/a/w;->b:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alensw/a/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/alensw/a/w;->b:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/a/w;->f:Lcom/alensw/a/v;

    iget-object v1, v1, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v1, v1, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v1}, Lcom/alensw/a/s;->a(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alensw/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alensw/a/w;->f:Lcom/alensw/a/v;

    iget-object v1, v1, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v1, v1, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v1}, Lcom/alensw/a/s;->b(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alensw/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Lcom/alensw/a/e;

    invoke-direct {v1, v0, v5}, Lcom/alensw/a/e;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alensw/a/w;->f:Lcom/alensw/a/v;

    invoke-static {v0, v1, v2}, Lcom/alensw/a/v;->a(Lcom/alensw/a/v;Lcom/alensw/a/e;Z)I

    move-result v0

    iget-object v2, p0, Lcom/alensw/a/w;->b:Lcom/alensw/a/e;

    iget-object v2, v2, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    iput-object v6, v1, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    :cond_1
    if-eqz v0, :cond_2

    iget v2, v1, Lcom/alensw/a/e;->e:I

    iget-object v3, p0, Lcom/alensw/a/w;->b:Lcom/alensw/a/e;

    iget v3, v3, Lcom/alensw/a/e;->e:I

    if-eq v2, v3, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/alensw/a/w;->f:Lcom/alensw/a/v;

    iget-object v2, v2, Lcom/alensw/a/v;->c:Landroid/os/Handler;

    const/16 v3, 0xd

    iget-object v4, p0, Lcom/alensw/a/w;->b:Lcom/alensw/a/e;

    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/a/w;->b:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->i()I

    move-result v0

    if-lez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/alensw/a/w;->f:Lcom/alensw/a/v;

    iget-object v0, v0, Lcom/alensw/a/v;->c:Landroid/os/Handler;

    invoke-virtual {v0, v7, v5, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    iget-object v0, p0, Lcom/alensw/a/w;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_6
    :goto_0
    return-object v6

    :cond_7
    iget-object v0, p0, Lcom/alensw/a/w;->f:Lcom/alensw/a/v;

    iget-object v1, p0, Lcom/alensw/a/w;->b:Lcom/alensw/a/e;

    invoke-static {v0, v1, v2}, Lcom/alensw/a/v;->a(Lcom/alensw/a/v;Lcom/alensw/a/e;Z)I

    move-result v0

    iget-object v1, p0, Lcom/alensw/a/w;->d:Ljava/util/Stack;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alensw/a/w;->b:Lcom/alensw/a/e;

    invoke-virtual {v1}, Lcom/alensw/a/e;->i()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/alensw/a/w;->d:Ljava/util/Stack;

    iget-object v2, p0, Lcom/alensw/a/w;->b:Lcom/alensw/a/e;

    iget-object v2, v2, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    :cond_8
    iget-boolean v1, p0, Lcom/alensw/a/w;->e:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/alensw/a/w;->b:Lcom/alensw/a/e;

    iput-object v6, v1, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    :cond_9
    if-gtz v0, :cond_a

    iget-object v0, p0, Lcom/alensw/a/w;->b:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->i()I

    move-result v0

    if-lez v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/alensw/a/w;->f:Lcom/alensw/a/v;

    iget-object v0, v0, Lcom/alensw/a/v;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alensw/a/w;->b:Lcom/alensw/a/e;

    invoke-virtual {v0, v7, v5, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_b
    iget-object v0, p0, Lcom/alensw/a/w;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/a/w;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
