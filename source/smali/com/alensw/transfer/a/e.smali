.class Lcom/alensw/transfer/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/nio/ByteBuffer;

.field final synthetic b:Z

.field final synthetic c:Lcom/alensw/transfer/a/a;

.field private d:I


# direct methods
.method constructor <init>(Lcom/alensw/transfer/a/a;Ljava/nio/ByteBuffer;Z)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/transfer/a/e;->c:Lcom/alensw/transfer/a/a;

    iput-object p2, p0, Lcom/alensw/transfer/a/e;->a:Ljava/nio/ByteBuffer;

    iput-boolean p3, p0, Lcom/alensw/transfer/a/e;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/transfer/a/e;->d:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v0, p0, Lcom/alensw/transfer/a/e;->d:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/transfer/a/e;->c:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->b(Lcom/alensw/transfer/a/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v0, "DiscoveryManager"

    const-string v1, "probing..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/alensw/transfer/a/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alensw/transfer/a/e;->d:I

    iget-object v0, p0, Lcom/alensw/transfer/a/e;->c:Lcom/alensw/transfer/a/a;

    iget-object v1, p0, Lcom/alensw/transfer/a/e;->a:Ljava/nio/ByteBuffer;

    iget-boolean v2, p0, Lcom/alensw/transfer/a/e;->b:Z

    invoke-static {v0, v1, v2}, Lcom/alensw/transfer/a/a;->a(Lcom/alensw/transfer/a/a;Ljava/nio/ByteBuffer;Z)V

    return-void

    :cond_1
    iget v0, p0, Lcom/alensw/transfer/a/e;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/a/e;->c:Lcom/alensw/transfer/a/a;

    const-wide/16 v2, 0xfa

    invoke-static {v0, v2, v3}, Lcom/alensw/transfer/a/a;->b(Lcom/alensw/transfer/a/a;J)V

    goto :goto_0
.end method
