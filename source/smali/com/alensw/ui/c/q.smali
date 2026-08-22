.class Lcom/alensw/ui/c/q;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/p;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/p;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/q;->a:Lcom/alensw/ui/c/p;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alensw/ui/c/q;->a:Lcom/alensw/ui/c/p;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alensw/ui/c/p;->a(Ljava/lang/String;Z)V

    return-void
.end method
