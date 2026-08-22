.class Lcom/alensw/ui/view/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/ImageGridView;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/ImageGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/ad;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/ui/view/ad;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v0}, Lcom/alensw/ui/view/ImageGridView;->a(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v2

    iget-object v0, p0, Lcom/alensw/ui/view/ad;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v0}, Lcom/alensw/ui/view/ImageGridView;->c(Lcom/alensw/ui/view/ImageGridView;)Lcom/alensw/ui/view/aj;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/view/ad;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->getCount()I

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/alensw/ui/view/ad;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v3}, Lcom/alensw/ui/view/ImageGridView;->c(Lcom/alensw/ui/view/ImageGridView;)Lcom/alensw/ui/view/aj;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alensw/ui/view/ad;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v3}, Lcom/alensw/ui/view/ImageGridView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_3

    if-ltz v2, :cond_3

    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/alensw/ui/view/ad;->a:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v3, v3, Lcom/alensw/ui/view/ImageGridView;->d:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/alensw/ui/view/ad;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v3}, Lcom/alensw/ui/view/ImageGridView;->d(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/alensw/ui/view/ad;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v3, v2}, Lcom/alensw/ui/view/ImageGridView;->a(Lcom/alensw/ui/view/ImageGridView;I)I

    :cond_0
    iget-object v3, p0, Lcom/alensw/ui/view/ad;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v3}, Lcom/alensw/ui/view/ImageGridView;->e(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v3

    if-le v2, v3, :cond_1

    iget-object v3, p0, Lcom/alensw/ui/view/ad;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v3, v2}, Lcom/alensw/ui/view/ImageGridView;->b(Lcom/alensw/ui/view/ImageGridView;I)I

    :cond_1
    iget-object v2, p0, Lcom/alensw/ui/view/ad;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v2}, Lcom/alensw/ui/view/ImageGridView;->d(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/alensw/ui/view/ad;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v3}, Lcom/alensw/ui/view/ImageGridView;->e(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v3

    if-gt v2, v3, :cond_2

    iget-object v2, p0, Lcom/alensw/ui/view/ad;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v2}, Lcom/alensw/ui/view/ImageGridView;->d(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/alensw/ui/view/ad;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v2}, Lcom/alensw/ui/view/ImageGridView;->e(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lcom/alensw/ui/view/ad;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v2}, Lcom/alensw/ui/view/ImageGridView;->c(Lcom/alensw/ui/view/ImageGridView;)Lcom/alensw/ui/view/aj;

    move-result-object v2

    invoke-interface {v2, v1, v0, v4}, Lcom/alensw/ui/view/aj;->a(IIZ)V

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/view/ad;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v0}, Lcom/alensw/ui/view/ImageGridView;->d(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/view/ad;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v1}, Lcom/alensw/ui/view/ImageGridView;->e(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/view/ad;->a:Lcom/alensw/ui/view/ImageGridView;

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->a(Lcom/alensw/ui/view/ImageGridView;I)I

    iget-object v0, p0, Lcom/alensw/ui/view/ad;->a:Lcom/alensw/ui/view/ImageGridView;

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->b(Lcom/alensw/ui/view/ImageGridView;I)I

    :cond_3
    :goto_1
    return v4

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alensw/ui/view/ad;->a:Lcom/alensw/ui/view/ImageGridView;

    iget-object v1, p0, Lcom/alensw/ui/view/ad;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v1, v2}, Lcom/alensw/ui/view/ImageGridView;->b(Lcom/alensw/ui/view/ImageGridView;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->a(Lcom/alensw/ui/view/ImageGridView;I)I

    iget-object v0, p0, Lcom/alensw/ui/view/ad;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v0}, Lcom/alensw/ui/view/ImageGridView;->c(Lcom/alensw/ui/view/ImageGridView;)Lcom/alensw/ui/view/aj;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/alensw/ui/view/aj;->c(I)V

    goto :goto_1
.end method
