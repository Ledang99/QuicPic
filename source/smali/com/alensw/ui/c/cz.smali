.class Lcom/alensw/ui/c/cz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/cu;

.field final synthetic b:Lcom/alensw/ui/c/cu;

.field final synthetic c:Lcom/alensw/ui/c/cx;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/cx;Lcom/alensw/ui/c/cu;Lcom/alensw/ui/c/cu;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/cz;->c:Lcom/alensw/ui/c/cx;

    iput-object p2, p0, Lcom/alensw/ui/c/cz;->a:Lcom/alensw/ui/c/cu;

    iput-object p3, p0, Lcom/alensw/ui/c/cz;->b:Lcom/alensw/ui/c/cu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/ui/c/cz;->a:Lcom/alensw/ui/c/cu;

    iput-boolean v1, v0, Lcom/alensw/ui/c/cu;->I:Z

    iget-object v0, p0, Lcom/alensw/ui/c/cz;->a:Lcom/alensw/ui/c/cu;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cu;->e(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/cz;->c:Lcom/alensw/ui/c/cx;

    invoke-static {v0}, Lcom/alensw/ui/c/cx;->a(Lcom/alensw/ui/c/cx;)Lcom/alensw/ui/view/ContainerLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/cz;->a:Lcom/alensw/ui/c/cu;

    iget-object v1, v1, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ContainerLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alensw/ui/c/cz;->b:Lcom/alensw/ui/c/cu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/cz;->b:Lcom/alensw/ui/c/cu;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cu;->i()V

    :cond_0
    return-void
.end method
