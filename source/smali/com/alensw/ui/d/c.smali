.class public Lcom/alensw/ui/d/c;
.super Landroid/graphics/drawable/shapes/Shape;


# instance fields
.field protected final k:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/d/c;->k:Landroid/graphics/Path;

    return-void
.end method

.method public static a(Landroid/graphics/Path;[[FFZ)V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    aget-object v0, p1, v4

    aget v0, v0, v4

    mul-float/2addr v0, p2

    aget-object v2, p1, v4

    aget v2, v2, v1

    mul-float/2addr v2, p2

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    aget v2, v2, v4

    mul-float/2addr v2, p2

    aget-object v3, p1, v0

    aget v3, v3, v1

    mul-float/2addr v3, p2

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/d/c;->k:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
