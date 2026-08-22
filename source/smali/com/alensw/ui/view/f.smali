.class final Lcom/alensw/ui/view/f;
.super Landroid/view/animation/Animation;


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F


# direct methods
.method constructor <init>(FFFF)V
    .locals 0

    iput p1, p0, Lcom/alensw/ui/view/f;->a:F

    iput p2, p0, Lcom/alensw/ui/view/f;->b:F

    iput p3, p0, Lcom/alensw/ui/view/f;->c:F

    iput p4, p0, Lcom/alensw/ui/view/f;->d:F

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/alensw/ui/view/f;->a:F

    iget v2, p0, Lcom/alensw/ui/view/f;->b:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget v2, p0, Lcom/alensw/ui/view/f;->c:F

    iget v3, p0, Lcom/alensw/ui/view/f;->d:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
