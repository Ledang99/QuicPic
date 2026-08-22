.class Lcom/alensw/ui/activity/as;
.super Lcom/alensw/ui/view/ContainerLayout;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/ao;

.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/ao;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/ui/activity/as;->a:Lcom/alensw/ui/activity/ao;

    invoke-direct {p0, p2}, Lcom/alensw/ui/view/ContainerLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/activity/as;->c:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/activity/as;->d:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/activity/as;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/as;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alensw/ui/activity/as;->a:Lcom/alensw/ui/activity/ao;

    iget-object v1, p0, Lcom/alensw/ui/activity/as;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/alensw/ui/activity/ao;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alensw/ui/activity/as;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/alensw/ui/activity/as;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/alensw/ui/activity/as;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/alensw/ui/activity/as;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alensw/ui/activity/as;->setPadding(IIII)V

    :cond_0
    invoke-super {p0, p1}, Lcom/alensw/ui/view/ContainerLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Lcom/alensw/ui/view/ContainerLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/alensw/ui/activity/as;->a:Lcom/alensw/ui/activity/ao;

    iget-object v1, p0, Lcom/alensw/ui/activity/as;->c:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/alensw/ui/activity/as;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/alensw/ui/activity/ao;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alensw/ui/activity/as;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/alensw/ui/activity/as;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/alensw/ui/activity/as;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/alensw/ui/activity/as;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alensw/ui/activity/as;->setPadding(IIII)V

    return-void
.end method
