.class Lcom/alensw/ui/view/k;
.super Lcom/alensw/ui/view/bt;


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Lcom/alensw/ui/view/j;

.field private e:F

.field private f:F


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/j;Landroid/view/View;Landroid/view/animation/Interpolator;FFLjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/alensw/ui/view/k;->d:Lcom/alensw/ui/view/j;

    iput p4, p0, Lcom/alensw/ui/view/k;->a:F

    iput p5, p0, Lcom/alensw/ui/view/k;->b:F

    iput-object p6, p0, Lcom/alensw/ui/view/k;->c:Ljava/lang/Runnable;

    invoke-direct {p0, p2, p3}, Lcom/alensw/ui/view/bt;-><init>(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    iput v0, p0, Lcom/alensw/ui/view/k;->e:F

    iput v0, p0, Lcom/alensw/ui/view/k;->f:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/k;->d:Lcom/alensw/ui/view/j;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alensw/ui/view/j;->F:Z

    return-void
.end method

.method public a(F)V
    .locals 5

    iget v0, p0, Lcom/alensw/ui/view/k;->a:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/alensw/ui/view/k;->b:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/alensw/ui/view/k;->d:Lcom/alensw/ui/view/j;

    iget v3, p0, Lcom/alensw/ui/view/k;->e:F

    sub-float v3, v0, v3

    iget v4, p0, Lcom/alensw/ui/view/k;->f:F

    sub-float v4, v1, v4

    invoke-virtual {v2, v3, v4}, Lcom/alensw/ui/view/j;->b(FF)V

    iput v0, p0, Lcom/alensw/ui/view/k;->e:F

    iput v1, p0, Lcom/alensw/ui/view/k;->f:F

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/k;->d:Lcom/alensw/ui/view/j;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    iget-object v0, p0, Lcom/alensw/ui/view/k;->d:Lcom/alensw/ui/view/j;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alensw/ui/view/j;->F:Z

    iget-object v0, p0, Lcom/alensw/ui/view/k;->d:Lcom/alensw/ui/view/j;

    invoke-virtual {v0}, Lcom/alensw/ui/view/j;->j()V

    iget-object v0, p0, Lcom/alensw/ui/view/k;->d:Lcom/alensw/ui/view/j;

    invoke-virtual {v0}, Lcom/alensw/ui/view/j;->invalidate()V

    return-void
.end method

.method public c()V
    .locals 1

    invoke-super {p0}, Lcom/alensw/ui/view/bt;->c()V

    iget-object v0, p0, Lcom/alensw/ui/view/k;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/k;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
