.class Lcom/alensw/b/g/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/g/j;


# instance fields
.field final synthetic a:Lcom/alensw/b/g/b;


# direct methods
.method constructor <init>(Lcom/alensw/b/g/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/b/g/c;->a:Lcom/alensw/b/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alensw/b/g/l;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/alensw/b/g/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/g/c;->a:Lcom/alensw/b/g/b;

    iget-object v0, v0, Lcom/alensw/b/g/b;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/g/c;->a:Lcom/alensw/b/g/b;

    iget-object v0, v0, Lcom/alensw/b/g/b;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method
