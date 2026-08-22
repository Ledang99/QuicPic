.class public Lcom/alensw/ui/view/RadarView;
.super Landroid/view/View;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:Landroid/graphics/Shader;

.field private final f:[I

.field private final g:Landroid/graphics/Matrix;

.field private final h:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alensw/ui/view/RadarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alensw/ui/view/RadarView;->f:[I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/RadarView;->g:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/view/RadarView;->h:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/alensw/ui/activity/ao;->d(Landroid/content/Context;)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/alensw/ui/view/RadarView;->f:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/view/RadarView;->f:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/RadarView;->f:[I

    iget-object v1, p0, Lcom/alensw/ui/view/RadarView;->f:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, -0x1

    aput v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/view/RadarView;->g:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/alensw/ui/view/RadarView;->d:F

    iget v2, p0, Lcom/alensw/ui/view/RadarView;->a:F

    iget v3, p0, Lcom/alensw/ui/view/RadarView;->b:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v0, p0, Lcom/alensw/ui/view/RadarView;->e:Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/alensw/ui/view/RadarView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget v0, p0, Lcom/alensw/ui/view/RadarView;->a:F

    iget v1, p0, Lcom/alensw/ui/view/RadarView;->b:F

    iget v2, p0, Lcom/alensw/ui/view/RadarView;->c:F

    iget-object v3, p0, Lcom/alensw/ui/view/RadarView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/alensw/ui/view/RadarView;->d:F

    const/high16 v1, 0x40400000    # 3.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/alensw/ui/view/RadarView;->d:F

    iget v0, p0, Lcom/alensw/ui/view/RadarView;->d:F

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/ui/view/RadarView;->d:F

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/alensw/ui/view/RadarView;->postInvalidateOnAnimation()V

    :goto_0
    return-void

    :cond_1
    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/alensw/ui/view/RadarView;->postInvalidateDelayed(J)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    const/high16 v1, 0x40000000    # 2.0f

    int-to-float v0, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alensw/ui/view/RadarView;->a:F

    int-to-float v0, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alensw/ui/view/RadarView;->b:F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alensw/ui/view/RadarView;->c:F

    new-instance v0, Landroid/graphics/SweepGradient;

    iget v1, p0, Lcom/alensw/ui/view/RadarView;->a:F

    iget v2, p0, Lcom/alensw/ui/view/RadarView;->b:F

    iget-object v3, p0, Lcom/alensw/ui/view/RadarView;->f:[I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v0, p0, Lcom/alensw/ui/view/RadarView;->e:Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/alensw/ui/view/RadarView;->h:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/alensw/ui/view/RadarView;->e:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Lcom/alensw/ui/view/RadarView;->invalidate()V

    return-void
.end method
