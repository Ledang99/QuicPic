.class Lcom/alensw/ui/c/da;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/view/u;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/cx;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/cx;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/da;->a:Lcom/alensw/ui/c/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Lcom/alensw/ui/c/da;->a:Lcom/alensw/ui/c/cx;

    iget-object v0, v0, Lcom/alensw/ui/c/cx;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/da;->a:Lcom/alensw/ui/c/cx;

    iget-object v0, v0, Lcom/alensw/ui/c/cx;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alensw/ui/c/da;->a:Lcom/alensw/ui/c/cx;

    invoke-static {v0}, Lcom/alensw/ui/c/cx;->b(Lcom/alensw/ui/c/cx;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/c/cu;

    iget-object v2, v0, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v0, v3, v5, v4, v2}, Lcom/alensw/ui/c/cu;->a(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method
