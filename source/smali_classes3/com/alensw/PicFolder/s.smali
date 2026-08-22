.class Lcom/alensw/PicFolder/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/media/FaceDetector$Face;

.field final synthetic b:Lcom/alensw/PicFolder/r;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/r;Landroid/media/FaceDetector$Face;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/s;->b:Lcom/alensw/PicFolder/r;

    iput-object p2, p0, Lcom/alensw/PicFolder/s;->a:Landroid/media/FaceDetector$Face;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/alensw/PicFolder/s;->a:Landroid/media/FaceDetector$Face;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/s;->a:Landroid/media/FaceDetector$Face;

    invoke-virtual {v0}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v0

    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42600000    # 56.0f

    iget-object v2, p0, Lcom/alensw/PicFolder/s;->b:Lcom/alensw/PicFolder/r;

    iget-object v2, v2, Lcom/alensw/PicFolder/r;->b:Lcom/alensw/PicFolder/q;

    invoke-static {v2}, Lcom/alensw/PicFolder/q;->a(Lcom/alensw/PicFolder/q;)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v0, p0, Lcom/alensw/PicFolder/s;->b:Lcom/alensw/PicFolder/r;

    iget-object v0, v0, Lcom/alensw/PicFolder/r;->b:Lcom/alensw/PicFolder/q;

    iget v0, v0, Lcom/alensw/PicFolder/q;->b:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/PicFolder/s;->b:Lcom/alensw/PicFolder/r;

    iget-object v0, v0, Lcom/alensw/PicFolder/r;->b:Lcom/alensw/PicFolder/q;

    iget v0, v0, Lcom/alensw/PicFolder/q;->b:F

    div-float v0, v1, v0

    :goto_0
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iget-object v3, p0, Lcom/alensw/PicFolder/s;->a:Landroid/media/FaceDetector$Face;

    invoke-virtual {v3, v2}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    iget-object v3, p0, Lcom/alensw/PicFolder/s;->b:Lcom/alensw/PicFolder/r;

    iget-object v3, v3, Lcom/alensw/PicFolder/r;->b:Lcom/alensw/PicFolder/q;

    invoke-static {v3}, Lcom/alensw/PicFolder/q;->b(Lcom/alensw/PicFolder/q;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/alensw/PicFolder/s;->b:Lcom/alensw/PicFolder/r;

    iget-object v4, v4, Lcom/alensw/PicFolder/r;->b:Lcom/alensw/PicFolder/q;

    invoke-static {v4}, Lcom/alensw/PicFolder/q;->c(Lcom/alensw/PicFolder/q;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->offset(FF)V

    iget-object v3, p0, Lcom/alensw/PicFolder/s;->b:Lcom/alensw/PicFolder/r;

    iget-object v3, v3, Lcom/alensw/PicFolder/r;->b:Lcom/alensw/PicFolder/q;

    iget-object v3, v3, Lcom/alensw/PicFolder/q;->v:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v1

    iget v5, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v0

    iget v6, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v6

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v2

    invoke-virtual {v3, v4, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/alensw/PicFolder/s;->b:Lcom/alensw/PicFolder/r;

    iget-object v0, v0, Lcom/alensw/PicFolder/r;->b:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/q;->c()V

    :cond_0
    iget-object v0, p0, Lcom/alensw/PicFolder/s;->b:Lcom/alensw/PicFolder/r;

    iget-object v0, v0, Lcom/alensw/PicFolder/r;->a:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/PicFolder/s;->b:Lcom/alensw/PicFolder/r;

    iget-object v0, v0, Lcom/alensw/PicFolder/r;->a:Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    :cond_1
    iget-object v0, p0, Lcom/alensw/PicFolder/s;->b:Lcom/alensw/PicFolder/r;

    iget-object v0, v0, Lcom/alensw/PicFolder/r;->b:Lcom/alensw/PicFolder/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/q;->a(I)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
