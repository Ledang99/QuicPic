.class Lcom/b/a/j;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/b/a/i;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:F

.field private e:F

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(Lcom/b/a/i;Lorg/xml/sax/Attributes;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/b/a/j;->a:Lcom/b/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/b/a/j;->b:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/b/a/j;->c:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/j;->h:I

    const-string v0, "x"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v0, p2, v1}, Lcom/b/a/i;->a(Lcom/b/a/i;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/b/a/j;->d:F

    const-string v0, "y"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v0, p2, v1}, Lcom/b/a/i;->a(Lcom/b/a/i;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/b/a/j;->e:F

    iput-object v2, p0, Lcom/b/a/j;->f:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/b/a/j;->g:Z

    new-instance v0, Lcom/b/a/h;

    invoke-direct {v0, p2, v2}, Lcom/b/a/h;-><init>(Lorg/xml/sax/Attributes;Lcom/b/a/e;)V

    iget-object v1, p1, Lcom/b/a/i;->t:Ljava/util/HashMap;

    invoke-static {p1, v0, v1}, Lcom/b/a/i;->a(Lcom/b/a/i;Lcom/b/a/h;Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/b/a/j;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/b/a/j;->c:Landroid/graphics/Paint;

    invoke-static {p1, p2, v1}, Lcom/b/a/i;->a(Lcom/b/a/i;Lorg/xml/sax/Attributes;Landroid/graphics/Paint;)Z

    :cond_0
    invoke-static {p1, v0}, Lcom/b/a/i;->a(Lcom/b/a/i;Lcom/b/a/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p1, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/b/a/j;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/b/a/j;->b:Landroid/graphics/Paint;

    invoke-static {p1, p2, v0}, Lcom/b/a/i;->a(Lcom/b/a/i;Lorg/xml/sax/Attributes;Landroid/graphics/Paint;)Z

    :cond_1
    const-string v0, "alignment-baseline"

    invoke-static {v0, p2}, Lcom/b/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "middle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput v4, p0, Lcom/b/a/j;->h:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v1, "top"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/b/a/j;->h:I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/b/a/j;->c:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/j;->f:Ljava/lang/String;

    iget v1, p0, Lcom/b/a/j;->d:F

    iget v2, p0, Lcom/b/a/j;->e:F

    iget-object v3, p0, Lcom/b/a/j;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/b/a/j;->b:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/j;->f:Ljava/lang/String;

    iget v1, p0, Lcom/b/a/j;->d:F

    iget v2, p0, Lcom/b/a/j;->e:F

    iget-object v3, p0, Lcom/b/a/j;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public a([CII)V
    .locals 5

    invoke-virtual {p0}, Lcom/b/a/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/j;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/b/a/j;->f:Ljava/lang/String;

    :goto_0
    iget v0, p0, Lcom/b/a/j;->h:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/j;->b:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/b/a/j;->c:Landroid/graphics/Paint;

    :goto_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/b/a/j;->f:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/b/a/j;->f:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v2, p0, Lcom/b/a/j;->e:F

    iget v0, p0, Lcom/b/a/j;->h:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    :goto_2
    add-float/2addr v0, v2

    iput v0, p0, Lcom/b/a/j;->e:F

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/b/a/j;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/j;->f:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/b/a/j;->b:Landroid/graphics/Paint;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    goto :goto_2
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/j;->g:Z

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/j;->g:Z

    return-void
.end method
