.class Lcom/alensw/PicFolder/az;
.super Lcom/alensw/ui/view/bt;


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:Lcom/alensw/PicFolder/PlayerView;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/PlayerView;Landroid/view/View;Landroid/view/animation/Interpolator;FFF)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/az;->d:Lcom/alensw/PicFolder/PlayerView;

    iput p4, p0, Lcom/alensw/PicFolder/az;->a:F

    iput p5, p0, Lcom/alensw/PicFolder/az;->b:F

    iput p6, p0, Lcom/alensw/PicFolder/az;->c:F

    invoke-direct {p0, p2, p3}, Lcom/alensw/ui/view/bt;-><init>(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/PicFolder/az;->d:Lcom/alensw/PicFolder/PlayerView;

    iget v1, p0, Lcom/alensw/PicFolder/az;->a:F

    iget v2, p0, Lcom/alensw/PicFolder/az;->b:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alensw/PicFolder/PlayerView;->a(Lcom/alensw/PicFolder/PlayerView;F)F

    iget-object v0, p0, Lcom/alensw/PicFolder/az;->d:Lcom/alensw/PicFolder/PlayerView;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/PlayerView;->requestLayout()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/PicFolder/az;->d:Lcom/alensw/PicFolder/PlayerView;

    iget v1, p0, Lcom/alensw/PicFolder/az;->c:F

    invoke-static {v0, v1}, Lcom/alensw/PicFolder/PlayerView;->a(Lcom/alensw/PicFolder/PlayerView;F)F

    iget-object v0, p0, Lcom/alensw/PicFolder/az;->d:Lcom/alensw/PicFolder/PlayerView;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/PlayerView;->requestLayout()V

    return-void
.end method
