.class Lcom/alensw/ui/view/n;
.super Lcom/alensw/ui/view/bt;


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:Lcom/alensw/ui/view/j;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/j;Landroid/view/View;Landroid/view/animation/Interpolator;FFFFF)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/n;->f:Lcom/alensw/ui/view/j;

    iput p4, p0, Lcom/alensw/ui/view/n;->a:F

    iput p5, p0, Lcom/alensw/ui/view/n;->b:F

    iput p6, p0, Lcom/alensw/ui/view/n;->c:F

    iput p7, p0, Lcom/alensw/ui/view/n;->d:F

    iput p8, p0, Lcom/alensw/ui/view/n;->e:F

    invoke-direct {p0, p2, p3}, Lcom/alensw/ui/view/bt;-><init>(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/n;->f:Lcom/alensw/ui/view/j;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alensw/ui/view/j;->I:Z

    return-void
.end method

.method public a(F)V
    .locals 4

    iget v0, p0, Lcom/alensw/ui/view/n;->a:F

    iget v1, p0, Lcom/alensw/ui/view/n;->b:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/alensw/ui/view/n;->f:Lcom/alensw/ui/view/j;

    iget v2, p0, Lcom/alensw/ui/view/n;->c:F

    iget v3, p0, Lcom/alensw/ui/view/n;->d:F

    invoke-virtual {v1, v0, v2, v3}, Lcom/alensw/ui/view/j;->b(FFF)V

    iget-object v0, p0, Lcom/alensw/ui/view/n;->f:Lcom/alensw/ui/view/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/j;->c(F)Z

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/view/n;->f:Lcom/alensw/ui/view/j;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    iget-object v0, p0, Lcom/alensw/ui/view/n;->f:Lcom/alensw/ui/view/j;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alensw/ui/view/j;->I:Z

    iget-object v0, p0, Lcom/alensw/ui/view/n;->f:Lcom/alensw/ui/view/j;

    iget v1, p0, Lcom/alensw/ui/view/n;->e:F

    iget v2, p0, Lcom/alensw/ui/view/n;->c:F

    iget v3, p0, Lcom/alensw/ui/view/n;->d:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/alensw/ui/view/j;->b(FFF)V

    iget-object v0, p0, Lcom/alensw/ui/view/n;->f:Lcom/alensw/ui/view/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/j;->c(F)Z

    return-void
.end method
