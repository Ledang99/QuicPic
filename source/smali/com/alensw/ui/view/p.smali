.class Lcom/alensw/ui/view/p;
.super Lcom/alensw/ui/view/bt;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Landroid/graphics/Matrix;

.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:F

.field final synthetic h:F

.field final synthetic i:F

.field final synthetic j:F

.field final synthetic k:F

.field final synthetic l:I

.field final synthetic m:Ljava/lang/Runnable;

.field final synthetic n:F

.field final synthetic o:Lcom/alensw/ui/view/j;

.field private final p:Landroid/graphics/Matrix;

.field private final q:Landroid/graphics/Matrix;

.field private final r:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/j;Landroid/view/View;Landroid/view/animation/Interpolator;ZZZLandroid/graphics/Matrix;FFFFFFFILjava/lang/Runnable;F)V
    .locals 2

    iput-object p1, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    iput-boolean p4, p0, Lcom/alensw/ui/view/p;->a:Z

    iput-boolean p5, p0, Lcom/alensw/ui/view/p;->b:Z

    iput-boolean p6, p0, Lcom/alensw/ui/view/p;->c:Z

    iput-object p7, p0, Lcom/alensw/ui/view/p;->d:Landroid/graphics/Matrix;

    iput p8, p0, Lcom/alensw/ui/view/p;->e:F

    iput p9, p0, Lcom/alensw/ui/view/p;->f:F

    iput p10, p0, Lcom/alensw/ui/view/p;->g:F

    iput p11, p0, Lcom/alensw/ui/view/p;->h:F

    iput p12, p0, Lcom/alensw/ui/view/p;->i:F

    iput p13, p0, Lcom/alensw/ui/view/p;->j:F

    move/from16 v0, p14

    iput v0, p0, Lcom/alensw/ui/view/p;->k:F

    move/from16 v0, p15

    iput v0, p0, Lcom/alensw/ui/view/p;->l:I

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/alensw/ui/view/p;->m:Ljava/lang/Runnable;

    move/from16 v0, p17

    iput v0, p0, Lcom/alensw/ui/view/p;->n:F

    invoke-direct {p0, p2, p3}, Lcom/alensw/ui/view/bt;-><init>(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    iget-boolean v1, p0, Lcom/alensw/ui/view/p;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    :goto_0
    iput-object v1, p0, Lcom/alensw/ui/view/p;->p:Landroid/graphics/Matrix;

    iget-boolean v1, p0, Lcom/alensw/ui/view/p;->b:Z

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    :goto_1
    iput-object v1, p0, Lcom/alensw/ui/view/p;->q:Landroid/graphics/Matrix;

    iget-boolean v1, p0, Lcom/alensw/ui/view/p;->c:Z

    if-eqz v1, :cond_2

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    :goto_2
    iput-object v1, p0, Lcom/alensw/ui/view/p;->r:Landroid/graphics/Matrix;

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v1, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    iget-boolean v0, p0, Lcom/alensw/ui/view/p;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alensw/ui/view/p;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/alensw/ui/view/j;->I:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(F)V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    iget-object v0, v0, Lcom/alensw/ui/view/j;->S:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alensw/ui/view/p;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-boolean v0, p0, Lcom/alensw/ui/view/p;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alensw/ui/view/p;->e:F

    iget v1, p0, Lcom/alensw/ui/view/p;->f:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/alensw/ui/view/p;->e:F

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/alensw/ui/view/p;->p:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/alensw/ui/view/p;->g:F

    iget v3, p0, Lcom/alensw/ui/view/p;->h:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v0, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    iget-object v0, v0, Lcom/alensw/ui/view/j;->S:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alensw/ui/view/p;->p:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_0
    iget-boolean v0, p0, Lcom/alensw/ui/view/p;->b:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alensw/ui/view/p;->i:F

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/alensw/ui/view/p;->q:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/alensw/ui/view/p;->g:F

    iget v3, p0, Lcom/alensw/ui/view/p;->h:F

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v0, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    iget-object v0, v0, Lcom/alensw/ui/view/j;->S:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alensw/ui/view/p;->q:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alensw/ui/view/j;->H:Z

    :cond_1
    iget-boolean v0, p0, Lcom/alensw/ui/view/p;->c:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alensw/ui/view/p;->j:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/alensw/ui/view/p;->k:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/alensw/ui/view/p;->r:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    iget-object v0, v0, Lcom/alensw/ui/view/j;->S:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alensw/ui/view/p;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    invoke-virtual {v0}, Lcom/alensw/ui/view/j;->j()V

    iget-object v0, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    invoke-virtual {v0}, Lcom/alensw/ui/view/j;->invalidate()V

    return-void
.end method

.method public b()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    iget-object v0, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    iput-boolean v4, v0, Lcom/alensw/ui/view/j;->H:Z

    iget-object v0, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    iput-boolean v4, v0, Lcom/alensw/ui/view/j;->I:Z

    iget v0, p0, Lcom/alensw/ui/view/p;->l:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    invoke-static {v0}, Lcom/alensw/ui/view/j;->a(Lcom/alensw/ui/view/j;)Lcom/alensw/b/h/j;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    iget-object v0, v0, Lcom/alensw/ui/view/j;->U:Landroid/graphics/Matrix;

    :goto_0
    iget-object v1, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    invoke-static {v1}, Lcom/alensw/ui/view/j;->a(Lcom/alensw/ui/view/j;)Lcom/alensw/b/h/j;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    iget-object v1, v1, Lcom/alensw/ui/view/j;->V:Landroid/graphics/Matrix;

    :goto_1
    iget-object v2, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    invoke-static {v2}, Lcom/alensw/ui/view/j;->c(Lcom/alensw/ui/view/j;)Lcom/alensw/b/h/j;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    invoke-static {v2}, Lcom/alensw/ui/view/j;->c(Lcom/alensw/ui/view/j;)Lcom/alensw/b/h/j;

    move-result-object v2

    iget v3, p0, Lcom/alensw/ui/view/p;->l:I

    invoke-virtual {v2, v3}, Lcom/alensw/b/h/j;->c(I)I

    :cond_0
    iget-object v2, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    invoke-static {v2}, Lcom/alensw/ui/view/j;->a(Lcom/alensw/ui/view/j;)Lcom/alensw/b/h/j;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    invoke-static {v2}, Lcom/alensw/ui/view/j;->a(Lcom/alensw/ui/view/j;)Lcom/alensw/b/h/j;

    move-result-object v2

    iget v3, p0, Lcom/alensw/ui/view/p;->l:I

    invoke-virtual {v2, v3}, Lcom/alensw/b/h/j;->c(I)I

    :cond_1
    iget-object v2, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    invoke-virtual {v2}, Lcom/alensw/ui/view/j;->i()V

    iget-object v2, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    iget-object v2, v2, Lcom/alensw/ui/view/j;->S:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    iget-object v0, v0, Lcom/alensw/ui/view/j;->S:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    invoke-virtual {v0}, Lcom/alensw/ui/view/j;->j()V

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    invoke-virtual {v0}, Lcom/alensw/ui/view/j;->invalidate()V

    iget-object v0, p0, Lcom/alensw/ui/view/p;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/view/p;->m:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    iget-object v0, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    iget-boolean v0, v0, Lcom/alensw/ui/view/j;->I:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    iget-object v0, v0, Lcom/alensw/ui/view/j;->K:Lcom/alensw/ui/view/q;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    iget-object v0, v0, Lcom/alensw/ui/view/j;->K:Lcom/alensw/ui/view/q;

    iget v1, p0, Lcom/alensw/ui/view/p;->n:F

    iget v2, p0, Lcom/alensw/ui/view/p;->e:F

    div-float/2addr v1, v2

    invoke-interface {v0, v1, v4}, Lcom/alensw/ui/view/q;->a(FZ)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    iget-object v0, v0, Lcom/alensw/ui/view/j;->R:Landroid/graphics/Matrix;

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/alensw/ui/view/p;->o:Lcom/alensw/ui/view/j;

    iget-object v1, v1, Lcom/alensw/ui/view/j;->T:Landroid/graphics/Matrix;

    goto :goto_1
.end method
