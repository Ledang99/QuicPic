.class Landroid/support/a/a/j;
.super Landroid/graphics/drawable/InsetDrawable;

# interfaces
.implements Landroid/support/a/a/f;


# instance fields
.field final synthetic a:Landroid/support/a/a/a;

.field private final b:Z

.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/app/Activity;

.field private e:F

.field private f:F


# direct methods
.method private constructor <init>(Landroid/support/a/a/a;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;F)V
    .locals 3

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/support/a/a/j;->a:Landroid/support/a/a/a;

    invoke-direct {p0, p3, v0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/support/a/a/j;->b:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/j;->c:Landroid/graphics/Rect;

    iput-object p2, p0, Landroid/support/a/a/j;->d:Landroid/app/Activity;

    iput p4, p0, Landroid/support/a/a/j;->f:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/a/a/a;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;FLandroid/support/a/a/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/a/a/j;-><init>(Landroid/support/a/a/a;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;F)V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    iput p1, p0, Landroid/support/a/a/j;->e:F

    invoke-virtual {p0}, Landroid/support/a/a/j;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/support/a/a/j;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/a/a/j;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Landroid/support/a/a/j;->d:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/a/a/a;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    iget-object v2, p0, Landroid/support/a/a/j;->c:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Landroid/support/a/a/j;->f:F

    neg-float v3, v3

    int-to-float v4, v2

    mul-float/2addr v3, v4

    iget v4, p0, Landroid/support/a/a/j;->e:F

    mul-float/2addr v3, v4

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Landroid/support/a/a/j;->b:Z

    if-nez v0, :cond_0

    int-to-float v0, v2

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
