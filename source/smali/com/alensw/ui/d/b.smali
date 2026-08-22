.class public Lcom/alensw/ui/d/b;
.super Lcom/alensw/ui/d/a;


# static fields
.field public static final g:[[F


# instance fields
.field protected h:Z

.field protected i:I

.field protected j:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/16 v0, 0x8

    new-array v0, v0, [[F

    const/4 v1, 0x0

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [F

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [F

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    sput-object v0, Lcom/alensw/ui/d/b;->g:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x41000000    # 8.0f
        0x42180000    # 38.0f
    .end array-data

    :array_1
    .array-data 4
        0x41600000    # 14.0f
        0x42180000    # 38.0f
    .end array-data

    :array_2
    .array-data 4
        0x41600000    # 14.0f
        0x41d00000    # 26.0f
    .end array-data

    :array_3
    .array-data 4
        0x42b00000    # 88.0f
        0x41d00000    # 26.0f
    .end array-data

    :array_4
    .array-data 4
        0x42b00000    # 88.0f
        0x428c0000    # 70.0f
    .end array-data

    :array_5
    .array-data 4
        0x41600000    # 14.0f
        0x428c0000    # 70.0f
    .end array-data

    :array_6
    .array-data 4
        0x41600000    # 14.0f
        0x42680000    # 58.0f
    .end array-data

    :array_7
    .array-data 4
        0x41000000    # 8.0f
        0x42680000    # 58.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alensw/ui/d/a;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/d/b;->j:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected a(FF)Ljava/lang/Object;
    .locals 10

    const/4 v7, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x42c00000    # 96.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/alensw/ui/d/b;->k:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/alensw/ui/d/b;->j:Landroid/graphics/RectF;

    sget-object v4, Lcom/alensw/ui/d/b;->g:[[F

    invoke-static {v2, v4, v0, v8}, Lcom/alensw/ui/d/b;->a(Landroid/graphics/Path;[[FFZ)V

    sget-object v4, Lcom/alensw/ui/d/b;->g:[[F

    const/4 v5, 0x2

    aget-object v4, v4, v5

    sget-object v5, Lcom/alensw/ui/d/b;->g:[[F

    const/4 v6, 0x4

    aget-object v5, v5, v6

    aget v6, v4, v7

    mul-float/2addr v6, v0

    aget v4, v4, v8

    mul-float/2addr v4, v0

    aget v7, v5, v7

    mul-float/2addr v7, v0

    aget v5, v5, v8

    mul-float/2addr v0, v5

    invoke-virtual {v3, v6, v4, v7, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v3, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    div-float v0, v1, v9

    div-float/2addr v1, v9

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/alensw/ui/d/b;->k:Landroid/graphics/Path;

    return-object v0
.end method

.method public a(IZ)V
    .locals 1

    iput-boolean p2, p0, Lcom/alensw/ui/d/b;->h:Z

    iput p1, p0, Lcom/alensw/ui/d/b;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/ui/d/b;->c:Z

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/d/b;->j:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/alensw/ui/d/b;->i:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iget-boolean v2, p0, Lcom/alensw/ui/d/b;->h:Z

    if-eqz v2, :cond_0

    const v2, -0x66ff0100

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
