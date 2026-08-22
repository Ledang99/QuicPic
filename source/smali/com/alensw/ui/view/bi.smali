.class Lcom/alensw/ui/view/bi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alensw/ui/view/bc;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/bc;I)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/bi;->b:Lcom/alensw/ui/view/bc;

    iput p2, p0, Lcom/alensw/ui/view/bi;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget v0, p0, Lcom/alensw/ui/view/bi;->a:I

    iget-object v1, p0, Lcom/alensw/ui/view/bi;->b:Lcom/alensw/ui/view/bc;

    invoke-static {v1}, Lcom/alensw/ui/view/bc;->c(Lcom/alensw/ui/view/bc;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09004e

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/view/bi;->b:Lcom/alensw/ui/view/bc;

    iget v1, p0, Lcom/alensw/ui/view/bi;->a:I

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/bc;->b(I)Z

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090002

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/bi;->b:Lcom/alensw/ui/view/bc;

    iget v1, p0, Lcom/alensw/ui/view/bi;->a:I

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/bc;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonRoot;

    iget-object v1, p0, Lcom/alensw/ui/view/bi;->b:Lcom/alensw/ui/view/bc;

    invoke-static {v1, v0}, Lcom/alensw/ui/view/bc;->a(Lcom/alensw/ui/view/bc;Lcom/alensw/bean/CommonRoot;)V

    goto :goto_1
.end method
