.class public Lcom/alensw/b/k/d;
.super Ljava/util/concurrent/FutureTask;


# instance fields
.field private final a:Lcom/alensw/b/k/k;


# direct methods
.method public constructor <init>(Lcom/alensw/b/k/k;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lcom/alensw/b/k/d;->a:Lcom/alensw/b/k/k;

    return-void
.end method


# virtual methods
.method public b()Lcom/alensw/b/k/k;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/k/d;->a:Lcom/alensw/b/k/k;

    return-object v0
.end method

.method public cancel(Z)Z
    .locals 2

    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/b/k/d;->a:Lcom/alensw/b/k/k;

    invoke-interface {v1}, Lcom/alensw/b/k/k;->a()V

    :cond_0
    return v0
.end method

.method public done()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/k/d;->a:Lcom/alensw/b/k/k;

    invoke-interface {v0}, Lcom/alensw/b/k/k;->b()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/alensw/b/k/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/k/d;->a:Lcom/alensw/b/k/k;

    check-cast p1, Lcom/alensw/b/k/d;

    iget-object v1, p1, Lcom/alensw/b/k/d;->a:Lcom/alensw/b/k/k;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/k/d;->a:Lcom/alensw/b/k/k;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
