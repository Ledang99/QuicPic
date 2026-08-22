.class final Lcom/alensw/b/g/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/b/g/a;

.field final synthetic b:Landroid/widget/PopupWindow;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/alensw/b/g/j;


# direct methods
.method constructor <init>(Lcom/alensw/b/g/a;Landroid/widget/PopupWindow;Landroid/view/View;IILcom/alensw/b/g/j;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/b/g/g;->a:Lcom/alensw/b/g/a;

    iput-object p2, p0, Lcom/alensw/b/g/g;->b:Landroid/widget/PopupWindow;

    iput-object p3, p0, Lcom/alensw/b/g/g;->c:Landroid/view/View;

    iput p4, p0, Lcom/alensw/b/g/g;->d:I

    iput p5, p0, Lcom/alensw/b/g/g;->e:I

    iput-object p6, p0, Lcom/alensw/b/g/g;->f:Lcom/alensw/b/g/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/alensw/b/g/g;->a:Lcom/alensw/b/g/a;

    invoke-virtual {v0, p3}, Lcom/alensw/b/g/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/g/l;

    invoke-virtual {v0}, Lcom/alensw/b/g/l;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alensw/b/g/g;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/b/g/g;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    invoke-virtual {v0}, Lcom/alensw/b/g/l;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/alensw/b/g/l;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/g/m;

    iget-object v1, p0, Lcom/alensw/b/g/g;->a:Lcom/alensw/b/g/a;

    invoke-virtual {v1, v0}, Lcom/alensw/b/g/a;->a(Lcom/alensw/b/g/b;)V

    iget-object v0, p0, Lcom/alensw/b/g/g;->a:Lcom/alensw/b/g/a;

    invoke-virtual {v0}, Lcom/alensw/b/g/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/alensw/b/g/g;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/alensw/b/g/g;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/alensw/b/g/g;->a:Lcom/alensw/b/g/a;

    invoke-virtual {v2}, Lcom/alensw/b/g/a;->a()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    iget v3, p0, Lcom/alensw/b/g/g;->d:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/alensw/b/g/g;->e:I

    invoke-static {v0, v1, v2, v3}, Lcom/alensw/b/g/b;->a(Landroid/widget/PopupWindow;Landroid/view/View;II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/alensw/b/g/g;->f:Lcom/alensw/b/g/j;

    invoke-interface {v1, v0, p3}, Lcom/alensw/b/g/j;->a(Lcom/alensw/b/g/l;I)V

    goto :goto_0
.end method
