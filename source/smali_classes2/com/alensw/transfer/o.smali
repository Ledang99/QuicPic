.class Lcom/alensw/transfer/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/transfer/c;


# instance fields
.field final synthetic a:[J

.field final synthetic b:Lcom/alensw/transfer/d;

.field final synthetic c:Lcom/alensw/transfer/n;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/n;[JLcom/alensw/transfer/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/o;->c:Lcom/alensw/transfer/n;

    iput-object p2, p0, Lcom/alensw/transfer/o;->a:[J

    iput-object p3, p0, Lcom/alensw/transfer/o;->b:Lcom/alensw/transfer/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/transfer/o;->b:Lcom/alensw/transfer/d;

    invoke-virtual {v0}, Lcom/alensw/transfer/d;->h()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alensw/transfer/o;->b:Lcom/alensw/transfer/d;

    invoke-virtual {v2}, Lcom/alensw/transfer/d;->i()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/transfer/o;->c:Lcom/alensw/transfer/n;

    invoke-static {v0}, Lcom/alensw/transfer/n;->a(Lcom/alensw/transfer/n;)Lcom/alensw/transfer/TransferService;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/transfer/o;->b:Lcom/alensw/transfer/d;

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/TransferService;->b(Lcom/alensw/transfer/d;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alensw/transfer/o;->c:Lcom/alensw/transfer/n;

    invoke-static {v0}, Lcom/alensw/transfer/n;->a(Lcom/alensw/transfer/n;)Lcom/alensw/transfer/TransferService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/transfer/TransferService;->d()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/transfer/o;->a:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/alensw/transfer/o;->a:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/o;->c:Lcom/alensw/transfer/n;

    invoke-static {v0}, Lcom/alensw/transfer/n;->a(Lcom/alensw/transfer/n;)Lcom/alensw/transfer/TransferService;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/transfer/o;->b:Lcom/alensw/transfer/d;

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/TransferService;->c(Lcom/alensw/transfer/d;)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 5

    iget-object v0, p0, Lcom/alensw/transfer/o;->a:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    add-long/2addr v2, p1

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/alensw/transfer/o;->b:Lcom/alensw/transfer/d;

    invoke-virtual {v0, p1, p2}, Lcom/alensw/transfer/d;->c(J)J

    iget-object v0, p0, Lcom/alensw/transfer/o;->b:Lcom/alensw/transfer/d;

    invoke-virtual {v0}, Lcom/alensw/transfer/d;->l()V

    return-void
.end method
