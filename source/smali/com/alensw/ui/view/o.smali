.class Lcom/alensw/ui/view/o;
.super Lcom/alensw/ui/view/bt;


# instance fields
.field final synthetic a:Landroid/graphics/Camera;

.field final synthetic b:Z

.field final synthetic c:Landroid/graphics/Matrix;

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:Landroid/graphics/Matrix;

.field final synthetic g:Ljava/lang/Runnable;

.field final synthetic h:Lcom/alensw/ui/view/j;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/j;Landroid/view/View;Landroid/view/animation/Interpolator;Landroid/graphics/Camera;ZLandroid/graphics/Matrix;FFLandroid/graphics/Matrix;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/o;->h:Lcom/alensw/ui/view/j;

    iput-object p4, p0, Lcom/alensw/ui/view/o;->a:Landroid/graphics/Camera;

    iput-boolean p5, p0, Lcom/alensw/ui/view/o;->b:Z

    iput-object p6, p0, Lcom/alensw/ui/view/o;->c:Landroid/graphics/Matrix;

    iput p7, p0, Lcom/alensw/ui/view/o;->d:F

    iput p8, p0, Lcom/alensw/ui/view/o;->e:F

    iput-object p9, p0, Lcom/alensw/ui/view/o;->f:Landroid/graphics/Matrix;

    iput-object p10, p0, Lcom/alensw/ui/view/o;->g:Ljava/lang/Runnable;

    invoke-direct {p0, p2, p3}, Lcom/alensw/ui/view/bt;-><init>(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/o;->h:Lcom/alensw/ui/view/j;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alensw/ui/view/j;->I:Z

    return-void
.end method

.method public a(F)V
    .locals 4

    const/high16 v3, 0x40a00000    # 5.0f

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/alensw/ui/view/o;->a:Landroid/graphics/Camera;

    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    iget-boolean v1, p0, Lcom/alensw/ui/view/o;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/view/o;->a:Landroid/graphics/Camera;

    invoke-virtual {v1, v0}, Landroid/graphics/Camera;->rotateY(F)V

    :goto_0
    iget-object v0, p0, Lcom/alensw/ui/view/o;->a:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/alensw/ui/view/o;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/alensw/ui/view/o;->a:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    iget-object v0, p0, Lcom/alensw/ui/view/o;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/alensw/ui/view/o;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lcom/alensw/ui/view/o;->c:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/alensw/ui/view/o;->d:F

    neg-float v1, v1

    iget v2, p0, Lcom/alensw/ui/view/o;->e:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lcom/alensw/ui/view/o;->c:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/alensw/ui/view/o;->d:F

    iget v2, p0, Lcom/alensw/ui/view/o;->e:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/alensw/ui/view/o;->h:Lcom/alensw/ui/view/j;

    iget-object v0, v0, Lcom/alensw/ui/view/j;->S:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alensw/ui/view/o;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/alensw/ui/view/o;->h:Lcom/alensw/ui/view/j;

    iget-object v0, v0, Lcom/alensw/ui/view/j;->S:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alensw/ui/view/o;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/alensw/ui/view/o;->h:Lcom/alensw/ui/view/j;

    invoke-virtual {v0}, Lcom/alensw/ui/view/j;->j()V

    iget-object v0, p0, Lcom/alensw/ui/view/o;->h:Lcom/alensw/ui/view/j;

    invoke-virtual {v0}, Lcom/alensw/ui/view/j;->invalidate()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/alensw/ui/view/o;->a:Landroid/graphics/Camera;

    invoke-virtual {v1, v0}, Landroid/graphics/Camera;->rotateX(F)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/o;->h:Lcom/alensw/ui/view/j;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alensw/ui/view/j;->I:Z

    iget-object v0, p0, Lcom/alensw/ui/view/o;->h:Lcom/alensw/ui/view/j;

    invoke-virtual {v0}, Lcom/alensw/ui/view/j;->invalidate()V

    iget-object v0, p0, Lcom/alensw/ui/view/o;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/o;->g:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
