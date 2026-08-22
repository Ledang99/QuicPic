.class Lcom/alensw/PicFolder/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/view/y;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/q;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/q;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    iget-object v0, v0, Lcom/alensw/PicFolder/q;->u:Lcom/alensw/PicFolder/aa;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/q;->b()V

    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    iget-object v0, v0, Lcom/alensw/PicFolder/q;->u:Lcom/alensw/PicFolder/aa;

    iput v1, v0, Lcom/alensw/PicFolder/aa;->a:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    iget-object v0, v0, Lcom/alensw/PicFolder/q;->u:Lcom/alensw/PicFolder/aa;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/aa;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/q;->c()V

    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    iget-object v0, v0, Lcom/alensw/PicFolder/q;->u:Lcom/alensw/PicFolder/aa;

    iput v1, v0, Lcom/alensw/PicFolder/aa;->a:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    iget-object v1, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    invoke-static {v1}, Lcom/alensw/PicFolder/q;->f(Lcom/alensw/PicFolder/q;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/q;->b(F)Z

    goto :goto_0
.end method

.method public a(FF)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/q;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/q;->h()V

    :cond_0
    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    iget-object v0, v0, Lcom/alensw/PicFolder/q;->u:Lcom/alensw/PicFolder/aa;

    invoke-virtual {v0, p1, p2}, Lcom/alensw/PicFolder/aa;->a(FF)I

    return-void
.end method

.method public a(FFF)Z
    .locals 5

    const/16 v3, 0x10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    iget-object v1, v1, Lcom/alensw/PicFolder/q;->u:Lcom/alensw/PicFolder/aa;

    invoke-virtual {v1}, Lcom/alensw/PicFolder/aa;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    invoke-virtual {v1}, Lcom/alensw/PicFolder/q;->getPictureWidth()I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    invoke-virtual {v2}, Lcom/alensw/PicFolder/q;->getPictureHeight()I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    invoke-static {v3}, Lcom/alensw/PicFolder/q;->g(Lcom/alensw/PicFolder/q;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    invoke-static {v4}, Lcom/alensw/PicFolder/q;->h(Lcom/alensw/PicFolder/q;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, p1

    cmpg-float v1, v3, v1

    if-ltz v1, :cond_0

    mul-float v1, v4, p1

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alensw/PicFolder/q;->a(FFF)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(FF)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    iget-object v0, v0, Lcom/alensw/PicFolder/q;->u:Lcom/alensw/PicFolder/aa;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/aa;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/q;->c()V

    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    iget-object v0, v0, Lcom/alensw/PicFolder/q;->u:Lcom/alensw/PicFolder/aa;

    const/4 v1, 0x0

    iput v1, v0, Lcom/alensw/PicFolder/aa;->a:I

    :cond_0
    return-void
.end method

.method public b(FFF)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    iget-object v0, v0, Lcom/alensw/PicFolder/q;->u:Lcom/alensw/PicFolder/aa;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/aa;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alensw/PicFolder/q;->c(FFF)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(FF)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0, p1, p2}, Lcom/alensw/PicFolder/q;->a(FF)F

    return-void
.end method

.method public d(FF)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    iget-object v0, v0, Lcom/alensw/PicFolder/q;->u:Lcom/alensw/PicFolder/aa;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    iget-object v0, v0, Lcom/alensw/PicFolder/q;->u:Lcom/alensw/PicFolder/aa;

    iget-object v1, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    iget-object v1, v1, Lcom/alensw/PicFolder/q;->u:Lcom/alensw/PicFolder/aa;

    iget v1, v1, Lcom/alensw/PicFolder/aa;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/alensw/PicFolder/aa;->a(IFF)V

    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/q;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    iget-object v0, v0, Lcom/alensw/PicFolder/q;->u:Lcom/alensw/PicFolder/aa;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/aa;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    iget-object v0, v0, Lcom/alensw/PicFolder/q;->v:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/q;->d()V

    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/q;->c()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0, p1, p2}, Lcom/alensw/PicFolder/q;->c(FF)V

    goto :goto_0
.end method

.method public e(FF)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    iget-object v0, v0, Lcom/alensw/PicFolder/q;->u:Lcom/alensw/PicFolder/aa;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/aa;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/PicFolder/z;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0, p1, p2}, Lcom/alensw/PicFolder/q;->d(FF)Z

    goto :goto_0
.end method

.method public f(FF)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    iget-object v0, v0, Lcom/alensw/PicFolder/q;->u:Lcom/alensw/PicFolder/aa;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/aa;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/z;->a:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0, p1, p2}, Lcom/alensw/PicFolder/q;->e(FF)V

    :cond_0
    return-void
.end method
