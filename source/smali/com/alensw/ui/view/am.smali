.class Lcom/alensw/ui/view/am;
.super Lcom/alensw/ui/view/bt;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/ap;

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:Lcom/alensw/ui/view/LockPatternView;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/LockPatternView;Landroid/view/View;Landroid/view/animation/Interpolator;Lcom/alensw/ui/view/ap;FFFF)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/am;->f:Lcom/alensw/ui/view/LockPatternView;

    iput-object p4, p0, Lcom/alensw/ui/view/am;->a:Lcom/alensw/ui/view/ap;

    iput p5, p0, Lcom/alensw/ui/view/am;->b:F

    iput p6, p0, Lcom/alensw/ui/view/am;->c:F

    iput p7, p0, Lcom/alensw/ui/view/am;->d:F

    iput p8, p0, Lcom/alensw/ui/view/am;->e:F

    invoke-direct {p0, p2, p3}, Lcom/alensw/ui/view/bt;-><init>(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/alensw/ui/view/am;->a:Lcom/alensw/ui/view/ap;

    sub-float v1, v3, p1

    iget v2, p0, Lcom/alensw/ui/view/am;->b:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/alensw/ui/view/am;->c:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/alensw/ui/view/ap;->d:F

    iget-object v0, p0, Lcom/alensw/ui/view/am;->a:Lcom/alensw/ui/view/ap;

    sub-float v1, v3, p1

    iget v2, p0, Lcom/alensw/ui/view/am;->d:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/alensw/ui/view/am;->e:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/alensw/ui/view/ap;->e:F

    iget-object v0, p0, Lcom/alensw/ui/view/am;->f:Lcom/alensw/ui/view/LockPatternView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/LockPatternView;->invalidate()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/am;->a:Lcom/alensw/ui/view/ap;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alensw/ui/view/ap;->f:Lcom/alensw/ui/view/bt;

    return-void
.end method
