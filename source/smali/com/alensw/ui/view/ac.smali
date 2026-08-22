.class Lcom/alensw/ui/view/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/ImageGridView;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/ImageGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/ac;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/alensw/ui/view/ac;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v0}, Lcom/alensw/ui/view/ImageGridView;->a(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/view/ac;->a:Lcom/alensw/ui/view/ImageGridView;

    iget-object v2, p0, Lcom/alensw/ui/view/ac;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v2}, Lcom/alensw/ui/view/ImageGridView;->b(Lcom/alensw/ui/view/ImageGridView;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/ui/view/ac;->a:Lcom/alensw/ui/view/ImageGridView;

    iget v3, v3, Lcom/alensw/ui/view/ImageGridView;->l:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lcom/alensw/ui/view/ImageGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v1, p0, Lcom/alensw/ui/view/ac;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v1}, Lcom/alensw/ui/view/ImageGridView;->c(Lcom/alensw/ui/view/ImageGridView;)Lcom/alensw/ui/view/aj;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/view/ac;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v1}, Lcom/alensw/ui/view/ImageGridView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/view/ac;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v1}, Lcom/alensw/ui/view/ImageGridView;->c(Lcom/alensw/ui/view/ImageGridView;)Lcom/alensw/ui/view/aj;

    move-result-object v1

    invoke-interface {v1}, Lcom/alensw/ui/view/aj;->a()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/view/ac;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v1}, Lcom/alensw/ui/view/ImageGridView;->c(Lcom/alensw/ui/view/ImageGridView;)Lcom/alensw/ui/view/aj;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alensw/ui/view/aj;->b(I)V

    :cond_1
    return-void
.end method
