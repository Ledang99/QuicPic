.class Lcom/alensw/ui/view/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/PathBar;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/PathBar;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/az;->a:Lcom/alensw/ui/view/PathBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/view/az;->a:Lcom/alensw/ui/view/PathBar;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/view/PathBar;->setPath(Ljava/io/File;)V

    iget-object v0, p0, Lcom/alensw/ui/view/az;->a:Lcom/alensw/ui/view/PathBar;

    invoke-static {v0}, Lcom/alensw/ui/view/PathBar;->a(Lcom/alensw/ui/view/PathBar;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/az;->a:Lcom/alensw/ui/view/PathBar;

    invoke-static {v0}, Lcom/alensw/ui/view/PathBar;->a(Lcom/alensw/ui/view/PathBar;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
