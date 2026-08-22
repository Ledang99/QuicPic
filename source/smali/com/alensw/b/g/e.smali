.class final Lcom/alensw/b/g/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/b/g/a;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/alensw/b/g/j;


# direct methods
.method constructor <init>(Lcom/alensw/b/g/a;Landroid/content/Context;Lcom/alensw/b/g/j;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/b/g/e;->a:Lcom/alensw/b/g/a;

    iput-object p2, p0, Lcom/alensw/b/g/e;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/alensw/b/g/e;->c:Lcom/alensw/b/g/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/alensw/b/g/e;->a:Lcom/alensw/b/g/a;

    invoke-virtual {v0, p2}, Lcom/alensw/b/g/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/g/l;

    invoke-virtual {v0}, Lcom/alensw/b/g/l;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alensw/b/g/l;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/alensw/b/g/l;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    check-cast v1, Lcom/alensw/b/g/m;

    iget-object v2, p0, Lcom/alensw/b/g/e;->a:Lcom/alensw/b/g/a;

    invoke-virtual {v2, v1}, Lcom/alensw/b/g/a;->a(Lcom/alensw/b/g/b;)V

    iget-object v1, p0, Lcom/alensw/b/g/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/alensw/b/g/e;->a:Lcom/alensw/b/g/a;

    invoke-virtual {v0}, Lcom/alensw/b/g/l;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p0, Lcom/alensw/b/g/e;->c:Lcom/alensw/b/g/j;

    invoke-static {v1, v2, v0, v3}, Lcom/alensw/b/g/b;->a(Landroid/content/Context;Lcom/alensw/b/g/a;Ljava/lang/CharSequence;Lcom/alensw/b/g/j;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alensw/b/g/e;->c:Lcom/alensw/b/g/j;

    invoke-interface {v1, v0, p2}, Lcom/alensw/b/g/j;->a(Lcom/alensw/b/g/l;I)V

    goto :goto_0
.end method
