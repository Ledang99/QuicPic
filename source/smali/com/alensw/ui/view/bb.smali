.class Lcom/alensw/ui/view/bb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/view/y;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/PictureView;

.field private b:F

.field private c:F


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/PictureView;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    iget-object v1, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    iget v1, v1, Lcom/alensw/ui/view/PictureView;->af:F

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/PictureView;->b(F)Z

    return-void
.end method

.method public a(FF)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PictureView;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PictureView;->h()V

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PictureView;->getTransRotation()F

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/bb;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/ui/view/bb;->c:F

    return-void
.end method

.method public a(FFF)Z
    .locals 6

    const/16 v4, 0x10

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v2}, Lcom/alensw/ui/view/PictureView;->getPictureType()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v2}, Lcom/alensw/ui/view/PictureView;->getPictureWidth()I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v3}, Lcom/alensw/ui/view/PictureView;->getPictureHeight()I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    iget-object v4, v4, Lcom/alensw/ui/view/PictureView;->P:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    iget-object v5, v5, Lcom/alensw/ui/view/PictureView;->P:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v4, p1

    cmpg-float v2, v4, v2

    if-ltz v2, :cond_0

    mul-float v2, v5, p1

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alensw/ui/view/PictureView;->a(FFF)V

    iget-object v0, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    iget-object v0, v0, Lcom/alensw/ui/view/PictureView;->K:Lcom/alensw/ui/view/q;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PictureView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    iget-object v0, v0, Lcom/alensw/ui/view/PictureView;->K:Lcom/alensw/ui/view/q;

    invoke-interface {v0, p1, v1}, Lcom/alensw/ui/view/q;->a(FZ)V

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public b(FF)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    iget-object v0, v0, Lcom/alensw/ui/view/PictureView;->K:Lcom/alensw/ui/view/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PictureView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    iget-object v0, v0, Lcom/alensw/ui/view/PictureView;->K:Lcom/alensw/ui/view/q;

    invoke-interface {v0, p1, p2}, Lcom/alensw/ui/view/q;->a(FF)V

    :cond_0
    return-void
.end method

.method public b(FFF)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PictureView;->getPictureType()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alensw/ui/view/PictureView;->c(FFF)V

    iput p1, p0, Lcom/alensw/ui/view/bb;->c:F

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(FF)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    iget-object v0, v0, Lcom/alensw/ui/view/PictureView;->K:Lcom/alensw/ui/view/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PictureView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    iget-object v0, v0, Lcom/alensw/ui/view/PictureView;->K:Lcom/alensw/ui/view/q;

    invoke-interface {v0, p1, p2}, Lcom/alensw/ui/view/q;->b(FF)V

    :cond_0
    return-void
.end method

.method public d(FF)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0, p1, p2}, Lcom/alensw/ui/view/PictureView;->c(FF)V

    return-void
.end method

.method public e(FF)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0, p1, p2}, Lcom/alensw/ui/view/PictureView;->d(FF)Z

    return-void
.end method

.method public f(FF)V
    .locals 7

    const/high16 v5, 0x42340000    # 45.0f

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v1}, Lcom/alensw/ui/view/PictureView;->getTransRotation()F

    move-result v1

    cmpl-float v2, v1, v0

    if-nez v2, :cond_0

    iget v2, p0, Lcom/alensw/ui/view/bb;->b:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_4

    :cond_0
    iget v2, p0, Lcom/alensw/ui/view/bb;->c:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/alensw/ui/view/bb;->b:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    move v1, v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    const/high16 v2, 0x42b40000    # 90.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5a

    int-to-float v1, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    iget v5, v3, Lcom/alensw/ui/view/PictureView;->ad:I

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/alensw/ui/view/PictureView;->a(FZFFILjava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_2
    if-lez v2, :cond_3

    add-float v0, v1, v5

    move v1, v0

    goto :goto_0

    :cond_3
    if-gez v2, :cond_1

    sub-float v0, v1, v5

    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alensw/ui/view/bb;->a:Lcom/alensw/ui/view/PictureView;

    invoke-virtual {v0, p1, p2}, Lcom/alensw/ui/view/PictureView;->e(FF)V

    goto :goto_1
.end method
