.class Lcom/alensw/ui/a/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/k/k;


# instance fields
.field final synthetic a:Lcom/alensw/ui/a/ao;


# direct methods
.method constructor <init>(Lcom/alensw/ui/a/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/a/aq;->a:Lcom/alensw/ui/a/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/a/aq;->a:Lcom/alensw/ui/a/ao;

    invoke-static {v0}, Lcom/alensw/ui/a/ao;->a(Lcom/alensw/ui/a/ao;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alensw/ui/a/ar;

    invoke-direct {v1, p0}, Lcom/alensw/ui/a/ar;-><init>(Lcom/alensw/ui/a/aq;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/a/aq;->a:Lcom/alensw/ui/a/ao;

    invoke-virtual {v0}, Lcom/alensw/ui/a/ao;->a()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/a/aq;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
