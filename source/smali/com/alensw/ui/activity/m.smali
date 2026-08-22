.class final Lcom/alensw/ui/activity/m;
.super Lcom/b/a/l;


# direct methods
.method constructor <init>(Landroid/graphics/Picture;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/l;-><init>(Landroid/graphics/Picture;II)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p0}, Lcom/alensw/ui/activity/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-super {p0, p1}, Lcom/b/a/l;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
