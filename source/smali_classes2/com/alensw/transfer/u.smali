.class Lcom/alensw/transfer/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/transfer/e;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/s;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/s;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/u;->a:Lcom/alensw/transfer/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alensw/transfer/d;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/transfer/u;->a:Lcom/alensw/transfer/s;

    invoke-virtual {v0}, Lcom/alensw/transfer/s;->g()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/alensw/transfer/v;

    invoke-direct {v1, p0, p1}, Lcom/alensw/transfer/v;-><init>(Lcom/alensw/transfer/u;Lcom/alensw/transfer/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b(Lcom/alensw/transfer/d;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/transfer/u;->a:Lcom/alensw/transfer/s;

    invoke-virtual {v0}, Lcom/alensw/transfer/s;->g()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/alensw/transfer/w;

    invoke-direct {v1, p0, p1}, Lcom/alensw/transfer/w;-><init>(Lcom/alensw/transfer/u;Lcom/alensw/transfer/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/alensw/transfer/d;->k()V

    goto :goto_0
.end method
