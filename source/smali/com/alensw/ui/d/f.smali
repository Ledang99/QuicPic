.class public Lcom/alensw/ui/d/f;
.super Lcom/alensw/ui/d/a;


# instance fields
.field private g:F

.field private h:F

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/ui/d/a;-><init>()V

    iput-object p1, p0, Lcom/alensw/ui/d/f;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(FF)Ljava/lang/Object;
    .locals 1

    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/alensw/ui/d/f;->a:F

    iget-object v0, p0, Lcom/alensw/ui/d/f;->i:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x42c00000    # 96.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42900000    # 72.0f

    mul-float/2addr v0, v1

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    div-float v1, p3, v2

    iput v1, p0, Lcom/alensw/ui/d/f;->g:F

    div-float v1, p4, v2

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alensw/ui/d/f;->h:F

    iget v0, p0, Lcom/alensw/ui/d/f;->g:F

    iget v1, p0, Lcom/alensw/ui/d/f;->h:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 2

    iget v0, p0, Lcom/alensw/ui/d/f;->g:F

    neg-float v0, v0

    iget v1, p0, Lcom/alensw/ui/d/f;->h:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method
