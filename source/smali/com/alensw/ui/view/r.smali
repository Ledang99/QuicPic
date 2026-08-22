.class public abstract Lcom/alensw/ui/view/r;
.super Lcom/alensw/ui/view/bt;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/animation/Interpolator;II)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/alensw/ui/view/bt;-><init>(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/r;->a:I

    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/r;->b:I

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/r;->c:I

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/r;->d:I

    invoke-static {p4}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget v1, p0, Lcom/alensw/ui/view/r;->a:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alensw/ui/view/r;->e:I

    invoke-static {p4}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lcom/alensw/ui/view/r;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alensw/ui/view/r;->f:I

    invoke-static {p4}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iget v1, p0, Lcom/alensw/ui/view/r;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alensw/ui/view/r;->g:I

    invoke-static {p4}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iget v1, p0, Lcom/alensw/ui/view/r;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alensw/ui/view/r;->h:I

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 5

    iget v0, p0, Lcom/alensw/ui/view/r;->a:I

    iget v1, p0, Lcom/alensw/ui/view/r;->e:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alensw/ui/view/r;->b:I

    iget v2, p0, Lcom/alensw/ui/view/r;->f:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/alensw/ui/view/r;->c:I

    iget v3, p0, Lcom/alensw/ui/view/r;->g:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/alensw/ui/view/r;->d:I

    iget v4, p0, Lcom/alensw/ui/view/r;->h:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/r;->a(I)V

    return-void
.end method

.method public abstract a(I)V
.end method
