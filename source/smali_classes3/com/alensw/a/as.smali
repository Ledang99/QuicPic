.class public Lcom/alensw/a/as;
.super Lcom/alensw/b/k/d;


# instance fields
.field final synthetic a:Lcom/alensw/a/ao;

.field private b:Lcom/alensw/a/at;


# direct methods
.method public constructor <init>(Lcom/alensw/a/ao;Lcom/alensw/a/at;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/a/as;->a:Lcom/alensw/a/ao;

    invoke-direct {p0, p2}, Lcom/alensw/b/k/d;-><init>(Lcom/alensw/b/k/k;)V

    iput-object p2, p0, Lcom/alensw/a/as;->b:Lcom/alensw/a/at;

    return-void
.end method


# virtual methods
.method public a()Lcom/alensw/b/h/j;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alensw/a/as;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/as;->a:Lcom/alensw/a/ao;

    iget-object v2, p0, Lcom/alensw/a/as;->b:Lcom/alensw/a/at;

    iget-object v2, v2, Lcom/alensw/a/at;->a:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v2}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alensw/a/ao;->a(Landroid/net/Uri;)Lcom/alensw/b/h/j;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alensw/a/as;->b:Lcom/alensw/a/at;

    invoke-static {v0}, Lcom/alensw/a/at;->a(Lcom/alensw/a/at;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/h/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->c()Lcom/alensw/b/h/j;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Landroid/net/Uri;)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/as;->b:Lcom/alensw/a/at;

    iget-object v0, v0, Lcom/alensw/a/at;->a:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/net/Uri;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/a/as;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alensw/a/as;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/as;->b:Lcom/alensw/a/at;

    invoke-virtual {v0}, Lcom/alensw/a/at;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
