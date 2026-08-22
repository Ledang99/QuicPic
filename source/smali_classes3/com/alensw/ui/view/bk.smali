.class Lcom/alensw/ui/view/bk;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/bc;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/bc;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/bk;->a:Lcom/alensw/ui/view/bc;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/alensw/ui/view/bk;->a:Lcom/alensw/ui/view/bc;

    iget v1, p1, Landroid/os/Message;->arg1:I

    sget-object v3, Lcom/alensw/cloud/z;->e:Lcom/alensw/cloud/z;

    invoke-virtual {v3}, Lcom/alensw/cloud/z;->ordinal()I

    move-result v3

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/alensw/ui/view/bc;->b(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
