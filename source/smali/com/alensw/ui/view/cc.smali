.class public Lcom/alensw/ui/view/cc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-direct {p0, v0}, Lcom/alensw/ui/view/cc;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/alensw/ui/view/cc;->a:F

    iput v1, p0, Lcom/alensw/ui/view/cc;->b:F

    iput p1, p0, Lcom/alensw/ui/view/cc;->a:F

    invoke-virtual {p0, v1}, Lcom/alensw/ui/view/cc;->getInterpolation(F)F

    move-result v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/alensw/ui/view/cc;->b:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/alensw/ui/view/cc;->a:F

    mul-float/2addr v0, p1

    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    neg-float v1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    sub-float/2addr v0, v1

    :goto_0
    iget v1, p0, Lcom/alensw/ui/view/cc;->b:F

    mul-float/2addr v0, v1

    return v0

    :cond_0
    const v1, 0x3ebc5ab2

    sub-float v0, v4, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float v0, v4, v0

    sub-float v2, v4, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method
