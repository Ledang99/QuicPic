.class final Lcom/alensw/b/g/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/b/g/a;

.field final synthetic b:Landroid/widget/ListPopupWindow;

.field final synthetic c:[I

.field final synthetic d:I

.field final synthetic e:Lcom/alensw/b/g/j;


# direct methods
.method constructor <init>(Lcom/alensw/b/g/a;Landroid/widget/ListPopupWindow;[IILcom/alensw/b/g/j;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/b/g/f;->a:Lcom/alensw/b/g/a;

    iput-object p2, p0, Lcom/alensw/b/g/f;->b:Landroid/widget/ListPopupWindow;

    iput-object p3, p0, Lcom/alensw/b/g/f;->c:[I

    iput p4, p0, Lcom/alensw/b/g/f;->d:I

    iput-object p5, p0, Lcom/alensw/b/g/f;->e:Lcom/alensw/b/g/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alensw/b/g/f;->a:Lcom/alensw/b/g/a;

    invoke-virtual {v0, p3}, Lcom/alensw/b/g/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/g/l;

    invoke-virtual {v0}, Lcom/alensw/b/g/l;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alensw/b/g/l;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/alensw/b/g/l;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/g/m;

    iget-object v1, p0, Lcom/alensw/b/g/f;->a:Lcom/alensw/b/g/a;

    invoke-virtual {v1, v0}, Lcom/alensw/b/g/a;->a(Lcom/alensw/b/g/b;)V

    iget-object v0, p0, Lcom/alensw/b/g/f;->a:Lcom/alensw/b/g/a;

    invoke-virtual {v0}, Lcom/alensw/b/g/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/alensw/b/g/f;->a:Lcom/alensw/b/g/a;

    invoke-virtual {v0}, Lcom/alensw/b/g/a;->a()[I

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/b/g/f;->b:Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/alensw/b/g/f;->c:[I

    aget v2, v2, v3

    aget v3, v0, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/alensw/b/g/f;->d:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/b/g/f;->b:Landroid/widget/ListPopupWindow;

    iget v1, p0, Lcom/alensw/b/g/f;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alensw/b/g/f;->b:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alensw/b/g/f;->b:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_2
    iget-object v1, p0, Lcom/alensw/b/g/f;->e:Lcom/alensw/b/g/j;

    invoke-interface {v1, v0, p3}, Lcom/alensw/b/g/j;->a(Lcom/alensw/b/g/l;I)V

    goto :goto_0
.end method
