.class Lcom/alensw/ui/view/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alensw/ui/view/ImageGridView;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/ImageGridView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/ah;->b:Lcom/alensw/ui/view/ImageGridView;

    iput-boolean p2, p0, Lcom/alensw/ui/view/ah;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/ah;->b:Lcom/alensw/ui/view/ImageGridView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->a(Lcom/alensw/ui/view/ImageGridView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    iget-boolean v0, p0, Lcom/alensw/ui/view/ah;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/ah;->b:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->invalidate()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/ah;->b:Lcom/alensw/ui/view/ImageGridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
