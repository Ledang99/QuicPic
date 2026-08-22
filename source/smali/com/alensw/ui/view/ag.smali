.class Lcom/alensw/ui/view/ag;
.super Lcom/alensw/ui/view/bu;


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Lcom/alensw/ui/view/ImageGridView;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/ImageGridView;ZZLandroid/graphics/RectF;Landroid/graphics/RectF;FF)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/ag;->c:Lcom/alensw/ui/view/ImageGridView;

    iput p6, p0, Lcom/alensw/ui/view/ag;->a:F

    iput p7, p0, Lcom/alensw/ui/view/ag;->b:F

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/alensw/ui/view/bu;-><init>(ZZLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/view/ag;->c:Lcom/alensw/ui/view/ImageGridView;

    iget v1, p0, Lcom/alensw/ui/view/ag;->a:F

    iget v2, p0, Lcom/alensw/ui/view/ag;->b:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->a(Lcom/alensw/ui/view/ImageGridView;F)F

    invoke-super {p0, p1, p2}, Lcom/alensw/ui/view/bu;->applyTransformation(FLandroid/view/animation/Transformation;)V

    return-void
.end method
