.class Lcom/alensw/transfer/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/nio/ByteBuffer;

.field final synthetic b:Lcom/alensw/transfer/a/a;

.field private c:I


# direct methods
.method constructor <init>(Lcom/alensw/transfer/a/a;Ljava/nio/ByteBuffer;)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/transfer/a/h;->b:Lcom/alensw/transfer/a/a;

    iput-object p2, p0, Lcom/alensw/transfer/a/h;->a:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/transfer/a/h;->c:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v0, p0, Lcom/alensw/transfer/a/h;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alensw/transfer/a/h;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/a/h;->b:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->b(Lcom/alensw/transfer/a/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/alensw/transfer/a/h;->b:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->d(Lcom/alensw/transfer/a/a;)Lcom/alensw/b/k/a;

    move-result-object v0

    new-instance v1, Lcom/alensw/transfer/a/k;

    iget-object v2, p0, Lcom/alensw/transfer/a/h;->b:Lcom/alensw/transfer/a/a;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/alensw/transfer/a/k;-><init>(Lcom/alensw/transfer/a/a;I)V

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/a;->a(Lcom/alensw/b/k/k;)Lcom/alensw/b/k/d;

    const-string v0, "DiscoveryManager"

    const-string v1, "leaving..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/alensw/transfer/a/h;->b:Lcom/alensw/transfer/a/a;

    iget-object v1, p0, Lcom/alensw/transfer/a/h;->a:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alensw/transfer/a/a;->a(Lcom/alensw/transfer/a/a;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method
