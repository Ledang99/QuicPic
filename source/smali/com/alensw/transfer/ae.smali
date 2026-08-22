.class Lcom/alensw/transfer/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/transfer/a/j;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/ac;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/ae;->a:Lcom/alensw/transfer/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/transfer/ae;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->f(Lcom/alensw/transfer/ac;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alensw/transfer/ag;

    invoke-direct {v1, p0}, Lcom/alensw/transfer/ag;-><init>(Lcom/alensw/transfer/ae;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/alensw/transfer/a/t;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/transfer/ae;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->f(Lcom/alensw/transfer/ac;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alensw/transfer/af;

    invoke-direct {v1, p0, p1}, Lcom/alensw/transfer/af;-><init>(Lcom/alensw/transfer/ae;Lcom/alensw/transfer/a/t;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Lcom/alensw/transfer/a/t;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/transfer/ae;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->f(Lcom/alensw/transfer/ac;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alensw/transfer/ah;

    invoke-direct {v1, p0, p1}, Lcom/alensw/transfer/ah;-><init>(Lcom/alensw/transfer/ae;Lcom/alensw/transfer/a/t;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Lcom/alensw/transfer/a/t;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/transfer/ae;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->f(Lcom/alensw/transfer/ac;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alensw/transfer/ai;

    invoke-direct {v1, p0, p1}, Lcom/alensw/transfer/ai;-><init>(Lcom/alensw/transfer/ae;Lcom/alensw/transfer/a/t;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
