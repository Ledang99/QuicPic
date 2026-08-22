.class Lcom/alensw/ui/activity/f;
.super Lcom/b/a/l;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alensw/ui/activity/e;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/e;Landroid/graphics/Picture;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/f;->b:Lcom/alensw/ui/activity/e;

    iput-boolean p5, p0, Lcom/alensw/ui/activity/f;->a:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/b/a/l;-><init>(Landroid/graphics/Picture;II)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p0}, Lcom/alensw/ui/activity/f;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    iget-boolean v0, p0, Lcom/alensw/ui/activity/f;->a:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x43870000    # 270.0f

    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-super {p0, p1}, Lcom/b/a/l;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0
.end method
