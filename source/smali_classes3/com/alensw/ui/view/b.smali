.class Lcom/alensw/ui/view/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/a;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/b;->a:Lcom/alensw/ui/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/b;->a:Lcom/alensw/ui/view/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/a;->a(Z)V

    iget-object v0, p0, Lcom/alensw/ui/view/b;->a:Lcom/alensw/ui/view/a;

    iget-object v0, v0, Lcom/alensw/ui/view/a;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
