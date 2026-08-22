.class Lcom/alensw/ui/view/an;
.super Lcom/alensw/ui/view/bt;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/ap;

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:Lcom/alensw/ui/view/LockPatternView;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/LockPatternView;Landroid/view/View;Landroid/view/animation/Interpolator;Lcom/alensw/ui/view/ap;FFLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/an;->e:Lcom/alensw/ui/view/LockPatternView;

    iput-object p4, p0, Lcom/alensw/ui/view/an;->a:Lcom/alensw/ui/view/ap;

    iput p5, p0, Lcom/alensw/ui/view/an;->b:F

    iput p6, p0, Lcom/alensw/ui/view/an;->c:F

    iput-object p7, p0, Lcom/alensw/ui/view/an;->d:Ljava/lang/Runnable;

    invoke-direct {p0, p2, p3}, Lcom/alensw/ui/view/bt;-><init>(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/view/an;->a:Lcom/alensw/ui/view/ap;

    iget v1, p0, Lcom/alensw/ui/view/an;->b:F

    iget v2, p0, Lcom/alensw/ui/view/an;->c:F

    iget v3, p0, Lcom/alensw/ui/view/an;->b:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/alensw/ui/view/ap;->a:F

    iget-object v0, p0, Lcom/alensw/ui/view/an;->e:Lcom/alensw/ui/view/LockPatternView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/LockPatternView;->invalidate()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/an;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/an;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
