.class public Landroid/support/a/a/m;
.super Landroid/graphics/drawable/Drawable;


# static fields
.field private static final b:F


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:F

.field private final g:F

.field private final h:Z

.field private final i:Landroid/graphics/Path;

.field private final j:I

.field private k:Z

.field private l:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/support/a/a/m;->b:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/m;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/m;->i:Landroid/graphics/Path;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/a/a/m;->k:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010036

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/high16 v2, 0x41c00000    # 24.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Landroid/support/a/a/m;->j:I

    const/high16 v2, 0x41900000    # 18.0f

    mul-float/2addr v2, v0

    iput v2, p0, Landroid/support/a/a/m;->e:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v0

    iput v2, p0, Landroid/support/a/a/m;->c:F

    const v2, 0x404ccccd    # 3.2f

    mul-float/2addr v2, v0

    iput v2, p0, Landroid/support/a/a/m;->g:F

    const v2, 0x4134f5c3    # 11.31f

    mul-float/2addr v2, v0

    iput v2, p0, Landroid/support/a/a/m;->d:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    iput v0, p0, Landroid/support/a/a/m;->f:F

    iput-boolean v4, p0, Landroid/support/a/a/m;->h:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/a/a/m;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Landroid/support/a/a/m;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/a/a/m;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/support/a/a/m;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Landroid/support/a/a/m;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Landroid/support/a/a/m;->a:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/a/a/m;->c:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private static a(FFF)F
    .locals 1

    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/m;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/support/a/a/m;->invalidateSelf()V

    return-void
.end method

.method protected a(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/a/a/m;->k:Z

    return-void
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/m;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, Landroid/support/a/a/m;->l:F

    invoke-virtual {p0}, Landroid/support/a/a/m;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-virtual {p0}, Landroid/support/a/a/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/a/a/m;->a()Z

    move-result v3

    iget v0, p0, Landroid/support/a/a/m;->e:F

    iget v1, p0, Landroid/support/a/a/m;->d:F

    iget v4, p0, Landroid/support/a/a/m;->l:F

    invoke-static {v0, v1, v4}, Landroid/support/a/a/m;->a(FFF)F

    move-result v4

    iget v0, p0, Landroid/support/a/a/m;->e:F

    iget v1, p0, Landroid/support/a/a/m;->f:F

    iget v5, p0, Landroid/support/a/a/m;->l:F

    invoke-static {v0, v1, v5}, Landroid/support/a/a/m;->a(FFF)F

    move-result v5

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/a/a/m;->c:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    iget v6, p0, Landroid/support/a/a/m;->l:F

    invoke-static {v0, v1, v6}, Landroid/support/a/a/m;->a(FFF)F

    move-result v6

    const/4 v0, 0x0

    sget v1, Landroid/support/a/a/m;->b:F

    iget v7, p0, Landroid/support/a/a/m;->l:F

    invoke-static {v0, v1, v7}, Landroid/support/a/a/m;->a(FFF)F

    move-result v7

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz v3, :cond_2

    const/high16 v0, 0x43340000    # 180.0f

    :goto_1
    iget v8, p0, Landroid/support/a/a/m;->l:F

    invoke-static {v1, v0, v8}, Landroid/support/a/a/m;->a(FFF)F

    move-result v1

    iget v0, p0, Landroid/support/a/a/m;->g:F

    iget v8, p0, Landroid/support/a/a/m;->c:F

    add-float/2addr v0, v8

    const/4 v8, 0x0

    iget v9, p0, Landroid/support/a/a/m;->l:F

    invoke-static {v0, v8, v9}, Landroid/support/a/a/m;->a(FFF)F

    move-result v0

    iget-object v8, p0, Landroid/support/a/a/m;->i:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->rewind()V

    neg-float v8, v5

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget-object v9, p0, Landroid/support/a/a/m;->i:Landroid/graphics/Path;

    add-float v10, v8, v6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v9, p0, Landroid/support/a/a/m;->i:Landroid/graphics/Path;

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v9, v5, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    float-to-double v10, v4

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-float v5, v10

    float-to-double v10, v4

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-float v4, v6

    iget-object v6, p0, Landroid/support/a/a/m;->i:Landroid/graphics/Path;

    invoke-virtual {v6, v8, v0}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, p0, Landroid/support/a/a/m;->i:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v6, p0, Landroid/support/a/a/m;->i:Landroid/graphics/Path;

    neg-float v0, v0

    invoke-virtual {v6, v8, v0}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Landroid/support/a/a/m;->i:Landroid/graphics/Path;

    neg-float v4, v4

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v0, p0, Landroid/support/a/a/m;->i:Landroid/graphics/Path;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Landroid/support/a/a/m;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    iget-boolean v0, p0, Landroid/support/a/a/m;->h:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/support/a/a/m;->k:Z

    xor-int/2addr v0, v3

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    :goto_2
    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_0
    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Landroid/support/a/a/m;->i:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/a/a/m;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    const/high16 v0, -0x3ccc0000    # -180.0f

    move v1, v0

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_0

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_3
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Landroid/support/a/a/m;->j:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Landroid/support/a/a/m;->j:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isAutoMirrored()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 4

    iget-object v0, p0, Landroid/support/a/a/m;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Landroid/support/a/a/m;->a:Landroid/graphics/Paint;

    const v3, 0xffffff

    and-int/2addr v0, v3

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/m;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
