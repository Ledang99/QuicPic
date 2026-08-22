.class Lcom/alensw/ui/view/bv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/TitleBar;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/TitleBar;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/bv;->a:Lcom/alensw/ui/view/TitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/alensw/ui/view/bv;->a:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v1}, Lcom/alensw/ui/view/TitleBar;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/view/bv;->a:Lcom/alensw/ui/view/TitleBar;

    invoke-static {v1}, Lcom/alensw/ui/view/TitleBar;->a(Lcom/alensw/ui/view/TitleBar;)Lcom/alensw/b/g/b;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alensw/b/g/b;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    check-cast v1, Lcom/alensw/b/g/m;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alensw/b/g/m;->size()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/alensw/b/g/m;->a(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/alensw/b/g/l;->a(Landroid/view/View;)Lcom/alensw/b/g/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0
.end method
