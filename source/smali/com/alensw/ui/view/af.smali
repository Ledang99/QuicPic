.class Lcom/alensw/ui/view/af;
.super Landroid/view/animation/Animation;


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Lcom/alensw/ui/view/ImageGridView;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/ImageGridView;FF)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/af;->c:Lcom/alensw/ui/view/ImageGridView;

    iput p2, p0, Lcom/alensw/ui/view/af;->a:F

    iput p3, p0, Lcom/alensw/ui/view/af;->b:F

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/view/af;->c:Lcom/alensw/ui/view/ImageGridView;

    iget v1, p0, Lcom/alensw/ui/view/af;->a:F

    iget v2, p0, Lcom/alensw/ui/view/af;->b:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->a(Lcom/alensw/ui/view/ImageGridView;F)F

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
