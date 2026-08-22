.class Lcom/alensw/ui/view/bh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/bc;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/bc;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/bh;->a:Lcom/alensw/ui/view/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/view/bh;->a:Lcom/alensw/ui/view/bc;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alensw/ui/view/bc;->a(Ljava/lang/String;Z)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
