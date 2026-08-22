.class Lcom/b/a/i;
.super Lorg/xml/sax/helpers/DefaultHandler;


# static fields
.field private static final A:Landroid/graphics/Matrix;


# instance fields
.field a:Ljava/util/HashMap;

.field b:Landroid/graphics/Picture;

.field c:Landroid/graphics/Canvas;

.field d:Landroid/graphics/Paint;

.field e:Z

.field f:Ljava/util/Stack;

.field g:Ljava/util/Stack;

.field h:Landroid/graphics/Paint;

.field i:Z

.field j:Ljava/util/Stack;

.field k:Ljava/util/Stack;

.field l:F

.field m:Ljava/util/Stack;

.field n:Landroid/graphics/RectF;

.field o:Landroid/graphics/RectF;

.field p:Landroid/graphics/RectF;

.field q:Ljava/lang/Integer;

.field r:F

.field s:I

.field t:Ljava/util/HashMap;

.field u:Lcom/b/a/f;

.field v:Lcom/b/a/j;

.field private w:Z

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/b/a/i;->A:Landroid/graphics/Matrix;

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Picture;)V
    .locals 6

    const/4 v5, 0x1

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/i;->a:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/b/a/i;->e:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/b/a/i;->f:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/b/a/i;->g:Ljava/util/Stack;

    iput-boolean v1, p0, Lcom/b/a/i;->i:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/b/a/i;->j:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/b/a/i;->k:Ljava/util/Stack;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/b/a/i;->l:F

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/b/a/i;->m:Ljava/util/Stack;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/b/a/i;->n:Landroid/graphics/RectF;

    iput-object v2, p0, Lcom/b/a/i;->o:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v4, v4, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/b/a/i;->p:Landroid/graphics/RectF;

    iput-object v2, p0, Lcom/b/a/i;->q:Ljava/lang/Integer;

    sget v0, Lcom/b/a/d;->a:F

    iput v0, p0, Lcom/b/a/i;->r:F

    iput v1, p0, Lcom/b/a/i;->s:I

    iput-boolean v1, p0, Lcom/b/a/i;->w:Z

    iput v1, p0, Lcom/b/a/i;->x:I

    iput-boolean v1, p0, Lcom/b/a/i;->y:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/i;->t:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/b/a/i;->u:Lcom/b/a/f;

    iput-object v2, p0, Lcom/b/a/i;->v:Lcom/b/a/j;

    iput-boolean v1, p0, Lcom/b/a/i;->z:Z

    iput-object p1, p0, Lcom/b/a/i;->b:Landroid/graphics/Picture;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Picture;Lcom/b/a/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/i;-><init>(Landroid/graphics/Picture;)V

    return-void
.end method

.method private static a(Ljava/lang/String;F)F
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    :goto_0
    return p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(ZLorg/xml/sax/Attributes;)Lcom/b/a/f;
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Lcom/b/a/f;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/b/a/f;-><init>(Lcom/b/a/e;)V

    const-string v0, "id"

    invoke-static {v0, p2}, Lcom/b/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/b/a/f;->a:Ljava/lang/String;

    iput-boolean p1, v1, Lcom/b/a/f;->c:Z

    if-eqz p1, :cond_3

    const-string v0, "x1"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v0, p2, v2}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/b/a/f;->d:F

    const-string v0, "x2"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v0, p2, v2}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/b/a/f;->f:F

    const-string v0, "y1"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v0, p2, v2}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/b/a/f;->e:F

    const-string v0, "y2"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v0, p2, v2}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/b/a/f;->g:F

    :goto_0
    const-string v0, "gradientTransform"

    invoke-static {v0, p2}, Lcom/b/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/b/a/d;->c(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, v1, Lcom/b/a/f;->m:Landroid/graphics/Matrix;

    :cond_0
    const-string v0, "href"

    invoke-static {v0, p2}, Lcom/b/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, v1, Lcom/b/a/f;->b:Ljava/lang/String;

    :cond_2
    return-object v1

    :cond_3
    const-string v0, "cx"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v0, p2, v2}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/b/a/f;->h:F

    const-string v0, "cy"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v0, p2, v2}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/b/a/f;->i:F

    const-string v0, "r"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v0, p2, v2}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/b/a/f;->j:F

    goto :goto_0
.end method

.method static synthetic a(Lcom/b/a/i;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lorg/xml/sax/Attributes;F)Ljava/lang/Float;
    .locals 5

    const/high16 v2, 0x42c80000    # 100.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-static {p1, p2}, Lcom/b/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "px"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, p3

    const/high16 v1, 0x42900000    # 72.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "pc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, p3

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "cm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, p3

    const v1, 0x40228f5c    # 2.54f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    const-string v1, "mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, p3

    const/high16 v1, 0x437e0000    # 254.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const-string v1, "em"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const-string v1, "ex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_9

    const-string v0, "width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/b/a/i;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const-string v0, "y"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_b

    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/b/a/i;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/b/a/i;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/b/a/i;->c:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v4

    goto :goto_1

    :cond_d
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 1

    iget v0, p0, Lcom/b/a/i;->r:F

    invoke-direct {p0, p1, p2, v0}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;F)Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p3

    :cond_0
    move-object p3, v0

    goto :goto_0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/i;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget v0, p0, Lcom/b/a/i;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/b/a/i;->s:I

    return-void
.end method

.method private a(FF)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/i;->p:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/i;->p:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    :cond_0
    iget-object v0, p0, Lcom/b/a/i;->p:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/i;->p:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->right:F

    :cond_1
    iget-object v0, p0, Lcom/b/a/i;->p:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/b/a/i;->p:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->top:F

    :cond_2
    iget-object v0, p0, Lcom/b/a/i;->p:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/b/a/i;->p:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->bottom:F

    :cond_3
    return-void
.end method

.method private a(FFFF)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/b/a/i;->a(FF)V

    add-float v0, p1, p3

    add-float v1, p2, p4

    invoke-direct {p0, v0, v1}, Lcom/b/a/i;->a(FF)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFFF[B)V
    .locals 5

    const/4 v0, 0x0

    array-length v1, p6

    invoke-static {p6, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v2, Landroid/graphics/RectF;

    add-float v3, p2, p4

    add-float v4, p3, p5

    invoke-direct {v2, p2, p3, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Path;)V
    .locals 2

    iget-object v0, p0, Lcom/b/a/i;->n:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Lcom/b/a/i;->n:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/b/a/i;->n:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v0, v1}, Lcom/b/a/i;->a(FF)V

    iget-object v0, p0, Lcom/b/a/i;->n:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/b/a/i;->n:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v0, v1}, Lcom/b/a/i;->a(FF)V

    return-void
.end method

.method private a(Lcom/b/a/h;Ljava/lang/Integer;ZLandroid/graphics/Paint;)V
    .locals 2

    const-string v0, "opacity"

    invoke-virtual {p1, v0}, Lcom/b/a/h;->d(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_2

    const-string v0, "fill-opacity"

    :goto_0
    invoke-virtual {p1, v0}, Lcom/b/a/h;->d(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :cond_1
    const/high16 v1, 0x437f0000    # 255.0f

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/b/a/i;->l:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_2
    const-string v0, "stroke-opacity"

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v0, " ,"

    invoke-direct {v6, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    mul-int/lit8 v0, v0, 0x2

    :cond_2
    new-array v7, v0, [F

    const/high16 v0, 0x3f800000    # 1.0f

    move v3, v0

    move v4, v5

    move v0, v1

    :goto_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/b/a/i;->a(Ljava/lang/String;F)F

    move-result v3

    aput v3, v7, v0

    add-float v0, v4, v3

    move v4, v0

    move v0, v2

    goto :goto_1

    :cond_3
    :goto_2
    array-length v2, v7

    if-ge v0, v2, :cond_4

    aget v2, v7, v1

    aput v2, v7, v0

    add-float/2addr v4, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    :try_start_0
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    rem-float v5, v0, v4

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    invoke-direct {v1, v7, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method private a(Lorg/xml/sax/Attributes;)V
    .locals 2

    const-string v0, "transform"

    invoke-static {v0, p1}, Lcom/b/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/b/a/i;->A:Landroid/graphics/Matrix;

    :goto_0
    iget v1, p0, Lcom/b/a/i;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/i;->s:I

    iget-object v1, p0, Lcom/b/a/i;->c:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/b/a/i;->c:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/b/a/d;->c(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/b/a/h;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "none"

    const-string v3, "display"

    invoke-virtual {p1, v3}, Lcom/b/a/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "stroke-width"

    invoke-virtual {p1, v2}, Lcom/b/a/h;->d(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_2
    iget-object v3, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_0

    const-string v3, "stroke-linecap"

    invoke-virtual {p1, v3}, Lcom/b/a/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "round"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_3
    :goto_1
    const-string v3, "stroke-linejoin"

    invoke-virtual {p1, v3}, Lcom/b/a/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "miter"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v3, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    :cond_4
    :goto_2
    const-string v3, "stroke-dasharray"

    invoke-virtual {p1, v3}, Lcom/b/a/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "stroke-dashoffset"

    invoke-virtual {p1, v4}, Lcom/b/a/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/b/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "stroke"

    invoke-virtual {p1, v3}, Lcom/b/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string v2, "none"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_5
    const-string v4, "square"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v3, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_1

    :cond_6
    const-string v4, "butt"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_1

    :cond_7
    const-string v4, "round"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v3, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_2

    :cond_8
    const-string v4, "bevel"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_2

    :cond_9
    const-string v2, "stroke"

    invoke-virtual {p1, v2}, Lcom/b/a/h;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v3, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v1, v3}, Lcom/b/a/i;->a(Lcom/b/a/h;Ljava/lang/Integer;ZLandroid/graphics/Paint;)V

    move v1, v0

    goto/16 :goto_0

    :cond_a
    const-string v0, "SVG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized stroke color, using none: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    :cond_b
    iget-boolean v3, p0, Lcom/b/a/i;->e:Z

    if-eqz v3, :cond_d

    iget-object v2, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eqz v2, :cond_c

    :goto_3
    move v1, v0

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto :goto_3

    :cond_d
    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/b/a/i;->q:Ljava/lang/Integer;

    if-eqz v2, :cond_e

    iget-object v1, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/b/a/i;->q:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    move v1, v0

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0
.end method

.method private a(Lcom/b/a/h;Ljava/util/HashMap;)Z
    .locals 7

    const/4 v0, 0x0

    const/high16 v2, -0x1000000

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v3, "none"

    const-string v4, "display"

    invoke-virtual {p1, v4}, Lcom/b/a/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    const-string v3, "fill"

    invoke-virtual {p1, v3}, Lcom/b/a/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v4, "url(#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "url(#"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/f;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/b/a/f;->a()Landroid/graphics/Shader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_1
    const-string v0, "SVG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Didn\'t find shader, using black: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/b/a/i;->a(Lcom/b/a/h;Ljava/lang/Integer;ZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v2, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const-string v0, "fill"

    invoke-virtual {p1, v0}, Lcom/b/a/h;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/b/a/i;->a(Lcom/b/a/h;Ljava/lang/Integer;ZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    const-string v0, "SVG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized fill color, using black: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/b/a/i;->a(Lcom/b/a/h;Ljava/lang/Integer;ZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_5
    iget-boolean v3, p0, Lcom/b/a/i;->i:Z

    if-eqz v3, :cond_7

    iget-object v2, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    :cond_6
    move v1, v0

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v3, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/b/a/i;->q:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/b/a/i;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/b/a/i;Lcom/b/a/h;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/b/a/i;->a(Lcom/b/a/h;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/b/a/i;Lcom/b/a/h;Ljava/util/HashMap;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/b/a/i;->a(Lcom/b/a/h;Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/b/a/i;Lorg/xml/sax/Attributes;Landroid/graphics/Paint;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/b/a/i;->a(Lorg/xml/sax/Attributes;Landroid/graphics/Paint;)Z

    move-result v0

    return v0
.end method

.method private a(Lorg/xml/sax/Attributes;Landroid/graphics/Paint;)Z
    .locals 2

    const-string v0, "none"

    const-string v1, "display"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "font-size"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "font-size"

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/b/a/i;->d(Lorg/xml/sax/Attributes;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_2
    invoke-direct {p0, p1}, Lcom/b/a/i;->c(Lorg/xml/sax/Attributes;)Landroid/graphics/Paint$Align;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/b/a/i;->c(Lorg/xml/sax/Attributes;)Landroid/graphics/Paint$Align;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 3

    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private c(Lorg/xml/sax/Attributes;)Landroid/graphics/Paint$Align;
    .locals 2

    const-string v0, "text-anchor"

    invoke-static {v0, p1}, Lcom/b/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "middle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    goto :goto_0

    :cond_1
    const-string v1, "end"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0
.end method

.method private d(Lorg/xml/sax/Attributes;)Landroid/graphics/Typeface;
    .locals 5

    const-string v0, "font-family"

    invoke-static {v0, p1}, Lcom/b/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "font-style"

    invoke-static {v0, p1}, Lcom/b/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "font-weight"

    invoke-static {v0, p1}, Lcom/b/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const-string v4, "italic"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    :cond_1
    const-string v2, "bold"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/b/a/i;->r:F

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/i;->q:Ljava/lang/Integer;

    return-void
.end method

.method public characters([CII)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/i;->v:Lcom/b/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/i;->v:Lcom/b/a/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b/a/j;->a([CII)V

    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/b/a/i;->z:Z

    if-eqz v0, :cond_1

    const-string v0, "defs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/b/a/i;->z:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "svg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/i;->b:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/b/a/i;->w:Z

    if-nez v0, :cond_4

    const-string v0, "text"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/b/a/i;->v:Lcom/b/a/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/b/a/i;->v:Lcom/b/a/j;

    iget-object v1, p0, Lcom/b/a/i;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lcom/b/a/j;->a(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/b/a/i;->v:Lcom/b/a/j;

    invoke-virtual {v0}, Lcom/b/a/j;->b()V

    :cond_3
    invoke-direct {p0}, Lcom/b/a/i;->a()V

    goto :goto_0

    :cond_4
    const-string v0, "linearGradient"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "radialGradient"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/b/a/i;->u:Lcom/b/a/f;

    iget-object v0, v0, Lcom/b/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/i;->u:Lcom/b/a/f;

    iget-object v0, v0, Lcom/b/a/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/b/a/i;->t:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/b/a/i;->u:Lcom/b/a/f;

    iget-object v1, v1, Lcom/b/a/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/f;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/b/a/i;->u:Lcom/b/a/f;

    invoke-virtual {v0, v1}, Lcom/b/a/f;->a(Lcom/b/a/f;)Lcom/b/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/i;->u:Lcom/b/a/f;

    :cond_6
    iget-object v0, p0, Lcom/b/a/i;->t:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/b/a/i;->u:Lcom/b/a/f;

    iget-object v1, v1, Lcom/b/a/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/b/a/i;->u:Lcom/b/a/f;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    const-string v0, "g"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/b/a/i;->y:Z

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/b/a/i;->y:Z

    :cond_8
    iget-boolean v0, p0, Lcom/b/a/i;->w:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/b/a/i;->x:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/b/a/i;->x:I

    iget v0, p0, Lcom/b/a/i;->x:I

    if-nez v0, :cond_9

    iput-boolean v1, p0, Lcom/b/a/i;->w:Z

    :cond_9
    invoke-direct {p0}, Lcom/b/a/i;->a()V

    iget-object v0, p0, Lcom/b/a/i;->j:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/b/a/i;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/i;->i:Z

    iget-object v0, p0, Lcom/b/a/i;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/b/a/i;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/i;->e:Z

    iget-object v0, p0, Lcom/b/a/i;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/b/a/i;->l:F

    goto/16 :goto_0
.end method

.method public startDocument()V
    .locals 0

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11

    iget-boolean v0, p0, Lcom/b/a/i;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/b/a/i;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/b/a/i;->y:Z

    if-eqz v0, :cond_3

    const-string v0, "rect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "x"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, p4, v1}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string v1, "y"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v1, p4, v2}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const-string v2, "width"

    invoke-direct {p0, v2, p4}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "height"

    invoke-direct {p0, v3, p4}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v0

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v1

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/b/a/i;->o:Landroid/graphics/RectF;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/b/a/i;->z:Z

    if-nez v0, :cond_2

    const-string v0, "svg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "width"

    invoke-direct {p0, v0, p4}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    const-string v0, "height"

    invoke-direct {p0, v0, p4}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    if-eqz v1, :cond_4

    if-nez v0, :cond_5

    :cond_4
    const-string v2, "viewBox"

    invoke-static {v2, p4}, Lcom/b/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/b/a/d;->d(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :cond_5
    iget-object v2, p0, Lcom/b/a/i;->b:Landroid/graphics/Picture;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/i;->c:Landroid/graphics/Canvas;

    goto :goto_0

    :cond_6
    const-string v0, "defs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/i;->z:Z

    goto :goto_0

    :cond_7
    const-string v0, "linearGradient"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    invoke-direct {p0, v0, p4}, Lcom/b/a/i;->a(ZLorg/xml/sax/Attributes;)Lcom/b/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/i;->u:Lcom/b/a/f;

    goto :goto_0

    :cond_8
    const-string v0, "radialGradient"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-direct {p0, v0, p4}, Lcom/b/a/i;->a(ZLorg/xml/sax/Attributes;)Lcom/b/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/i;->u:Lcom/b/a/f;

    goto/16 :goto_0

    :cond_9
    const-string v0, "stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/b/a/i;->u:Lcom/b/a/f;

    if-eqz v0, :cond_2

    const-string v0, "offset"

    invoke-direct {p0, v0, p4}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const-string v0, "style"

    invoke-static {v0, p4}, Lcom/b/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/b/a/k;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/b/a/k;-><init>(Ljava/lang/String;Lcom/b/a/e;)V

    const-string v0, "stop-color"

    invoke-virtual {v2, v0}, Lcom/b/a/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v0, -0x1000000

    if-eqz v3, :cond_a

    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    :cond_a
    :goto_1
    const-string v3, "stop-opacity"

    invoke-virtual {v2, v3}, Lcom/b/a/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    :goto_2
    iget-object v2, p0, Lcom/b/a/i;->u:Lcom/b/a/f;

    iget-object v2, v2, Lcom/b/a/f;->k:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/b/a/i;->u:Lcom/b/a/f;

    iget-object v1, v1, Lcom/b/a/f;->l:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x10

    invoke-static {v3, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_c
    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    goto :goto_2

    :cond_d
    const-string v0, "use"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "xlink:href"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "transform"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "x"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "y"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x1000

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "<g"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " xmlns=\'http://www.w3.org/2000/svg\' xmlns:xlink=\'http://www.w3.org/1999/xlink\' version=\'1.1\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_e

    if-nez v2, :cond_e

    if-eqz v3, :cond_12

    :cond_e
    const-string v5, " transform=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/b/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    if-nez v2, :cond_10

    if-eqz v3, :cond_11

    :cond_10
    const-string v0, "translate("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_14

    invoke-static {v2}, Lcom/b/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_15

    invoke-static {v3}, Lcom/b/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v0, "\'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    const/4 v0, 0x0

    :goto_5
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_16

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "y"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "width"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "height"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "xlink:href"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "transform"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=\'"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/b/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_14
    const-string v0, "0"

    goto :goto_3

    :cond_15
    const-string v0, "0"

    goto :goto_4

    :cond_16
    const-string v0, ">"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/b/a/i;->a:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</g>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SVG"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_17
    const-string v0, "g"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "bounds"

    const-string v1, "id"

    invoke-static {v1, p4}, Lcom/b/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/i;->y:Z

    :cond_18
    iget-boolean v0, p0, Lcom/b/a/i;->w:Z

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/b/a/i;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/i;->x:I

    :cond_19
    const-string v0, "none"

    const-string v1, "display"

    invoke-static {v1, p4}, Lcom/b/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/b/a/i;->w:Z

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/i;->w:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/b/a/i;->x:I

    :cond_1a
    invoke-direct {p0, p4}, Lcom/b/a/i;->a(Lorg/xml/sax/Attributes;)V

    new-instance v1, Lcom/b/a/h;

    const/4 v0, 0x0

    invoke-direct {v1, p4, v0}, Lcom/b/a/h;-><init>(Lorg/xml/sax/Attributes;Lcom/b/a/e;)V

    iget-object v0, p0, Lcom/b/a/i;->j:Ljava/util/Stack;

    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/b/a/i;->f:Ljava/util/Stack;

    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/b/a/i;->k:Ljava/util/Stack;

    iget-boolean v2, p0, Lcom/b/a/i;->i:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/b/a/i;->g:Ljava/util/Stack;

    iget-boolean v2, p0, Lcom/b/a/i;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/b/a/i;->m:Ljava/util/Stack;

    iget v2, p0, Lcom/b/a/i;->l:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "opacity"

    invoke-direct {p0, v0, p4}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget v2, p0, Lcom/b/a/i;->l:F

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/b/a/i;->l:F

    :cond_1b
    iget-object v0, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    invoke-direct {p0, p4, v0}, Lcom/b/a/i;->a(Lorg/xml/sax/Attributes;Landroid/graphics/Paint;)Z

    iget-object v0, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    invoke-direct {p0, p4, v0}, Lcom/b/a/i;->a(Lorg/xml/sax/Attributes;Landroid/graphics/Paint;)Z

    iget-object v0, p0, Lcom/b/a/i;->t:Ljava/util/HashMap;

    invoke-direct {p0, v1, v0}, Lcom/b/a/i;->a(Lcom/b/a/h;Ljava/util/HashMap;)Z

    invoke-direct {p0, v1}, Lcom/b/a/i;->a(Lcom/b/a/h;)Z

    iget-boolean v2, p0, Lcom/b/a/i;->i:Z

    const-string v0, "fill"

    invoke-virtual {v1, v0}, Lcom/b/a/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_6
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/b/a/i;->i:Z

    iget-boolean v2, p0, Lcom/b/a/i;->e:Z

    const-string v0, "stroke"

    invoke-virtual {v1, v0}, Lcom/b/a/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_7
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/b/a/i;->e:Z

    goto/16 :goto_0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_6

    :cond_1d
    const/4 v0, 0x0

    goto :goto_7

    :cond_1e
    iget-boolean v0, p0, Lcom/b/a/i;->w:Z

    if-nez v0, :cond_23

    const-string v0, "rect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "x"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, p4, v1}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const-string v0, "y"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v0, p4, v2}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-string v0, "width"

    invoke-direct {p0, v0, p4}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v6

    const-string v0, "height"

    invoke-direct {p0, v0, p4}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v7

    const-string v0, "rx"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v0, p4, v3}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const-string v0, "ry"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v0, p4, v3}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-direct {p0, p4}, Lcom/b/a/i;->a(Lorg/xml/sax/Attributes;)V

    new-instance v10, Lcom/b/a/h;

    const/4 v0, 0x0

    invoke-direct {v10, p4, v0}, Lcom/b/a/h;-><init>(Lorg/xml/sax/Attributes;Lcom/b/a/e;)V

    iget-object v0, p0, Lcom/b/a/i;->t:Ljava/util/HashMap;

    invoke-direct {p0, v10, v0}, Lcom/b/a/i;->a(Lcom/b/a/h;Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/b/a/i;->a(FFFF)V

    const/4 v0, 0x0

    cmpg-float v0, v8, v0

    if-gtz v0, :cond_21

    const/4 v0, 0x0

    cmpg-float v0, v9, v0

    if-gtz v0, :cond_21

    iget-object v0, p0, Lcom/b/a/i;->c:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v4, v2

    iget-object v5, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1f
    :goto_8
    invoke-direct {p0, v10}, Lcom/b/a/i;->a(Lcom/b/a/h;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    cmpg-float v0, v8, v0

    if-gtz v0, :cond_22

    const/4 v0, 0x0

    cmpg-float v0, v9, v0

    if-gtz v0, :cond_22

    iget-object v0, p0, Lcom/b/a/i;->c:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v4, v2

    iget-object v5, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_20
    :goto_9
    invoke-direct {p0}, Lcom/b/a/i;->a()V

    goto/16 :goto_0

    :cond_21
    iget-object v0, p0, Lcom/b/a/i;->n:Landroid/graphics/RectF;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/b/a/i;->c:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/b/a/i;->n:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v8, v9, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_22
    iget-object v0, p0, Lcom/b/a/i;->n:Landroid/graphics/RectF;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/b/a/i;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/b/a/i;->n:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v8, v9, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_23
    iget-boolean v0, p0, Lcom/b/a/i;->w:Z

    if-nez v0, :cond_24

    const-string v0, "image"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "href"

    invoke-static {v0, p4}, Lcom/b/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "base64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_2

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v1, p4, v2}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-string v1, "y"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v1, p4, v3}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const-string v1, "width"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {p0, v1, p4, v4}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const-string v1, "height"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {p0, v1, p4, v5}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {p0, p4}, Lcom/b/a/i;->a(Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/b/a/i;->a(FFFF)V

    iget-object v1, p0, Lcom/b/a/i;->c:Landroid/graphics/Canvas;

    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/b/a/i;->a(Landroid/graphics/Canvas;FFFF[B)V

    invoke-direct {p0}, Lcom/b/a/i;->a()V

    goto/16 :goto_0

    :cond_24
    iget-boolean v0, p0, Lcom/b/a/i;->w:Z

    if-nez v0, :cond_25

    const-string v0, "line"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "x1"

    invoke-direct {p0, v0, p4}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    const-string v0, "x2"

    invoke-direct {p0, v0, p4}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    const-string v0, "y1"

    invoke-direct {p0, v0, p4}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    const-string v0, "y2"

    invoke-direct {p0, v0, p4}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v4

    new-instance v0, Lcom/b/a/h;

    const/4 v5, 0x0

    invoke-direct {v0, p4, v5}, Lcom/b/a/h;-><init>(Lorg/xml/sax/Attributes;Lcom/b/a/e;)V

    invoke-direct {p0, v0}, Lcom/b/a/i;->a(Lcom/b/a/h;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p4}, Lcom/b/a/i;->a(Lorg/xml/sax/Attributes;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {p0, v0, v5}, Lcom/b/a/i;->a(FF)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {p0, v0, v5}, Lcom/b/a/i;->a(FF)V

    iget-object v0, p0, Lcom/b/a/i;->c:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/b/a/i;->a()V

    goto/16 :goto_0

    :cond_25
    iget-boolean v0, p0, Lcom/b/a/i;->w:Z

    if-nez v0, :cond_28

    const-string v0, "circle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "cx"

    invoke-direct {p0, v0, p4}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "cy"

    invoke-direct {p0, v1, p4}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "r"

    invoke-direct {p0, v2, p4}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-direct {p0, p4}, Lcom/b/a/i;->a(Lorg/xml/sax/Attributes;)V

    new-instance v3, Lcom/b/a/h;

    const/4 v4, 0x0

    invoke-direct {v3, p4, v4}, Lcom/b/a/h;-><init>(Lorg/xml/sax/Attributes;Lcom/b/a/e;)V

    iget-object v4, p0, Lcom/b/a/i;->t:Ljava/util/HashMap;

    invoke-direct {p0, v3, v4}, Lcom/b/a/i;->a(Lcom/b/a/h;Ljava/util/HashMap;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-direct {p0, v4, v5}, Lcom/b/a/i;->a(FF)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v5, v6

    invoke-direct {p0, v4, v5}, Lcom/b/a/i;->a(FF)V

    iget-object v4, p0, Lcom/b/a/i;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget-object v8, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_26
    invoke-direct {p0, v3}, Lcom/b/a/i;->a(Lcom/b/a/h;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/b/a/i;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v4, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    invoke-virtual {v3, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_27
    invoke-direct {p0}, Lcom/b/a/i;->a()V

    goto/16 :goto_0

    :cond_28
    iget-boolean v0, p0, Lcom/b/a/i;->w:Z

    if-nez v0, :cond_2b

    const-string v0, "ellipse"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "cx"

    invoke-direct {p0, v0, p4}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "cy"

    invoke-direct {p0, v1, p4}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "rx"

    invoke-direct {p0, v2, p4}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "ry"

    invoke-direct {p0, v3, p4}, Lcom/b/a/i;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    invoke-direct {p0, p4}, Lcom/b/a/i;->a(Lorg/xml/sax/Attributes;)V

    new-instance v4, Lcom/b/a/h;

    const/4 v5, 0x0

    invoke-direct {v4, p4, v5}, Lcom/b/a/h;-><init>(Lorg/xml/sax/Attributes;Lcom/b/a/e;)V

    iget-object v5, p0, Lcom/b/a/i;->n:Landroid/graphics/RectF;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, p0, Lcom/b/a/i;->t:Ljava/util/HashMap;

    invoke-direct {p0, v4, v5}, Lcom/b/a/i;->a(Lcom/b/a/h;Ljava/util/HashMap;)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-direct {p0, v5, v6}, Lcom/b/a/i;->a(FF)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/b/a/i;->a(FF)V

    iget-object v0, p0, Lcom/b/a/i;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/b/a/i;->n:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_29
    invoke-direct {p0, v4}, Lcom/b/a/i;->a(Lcom/b/a/h;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/b/a/i;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/b/a/i;->n:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_2a
    invoke-direct {p0}, Lcom/b/a/i;->a()V

    goto/16 :goto_0

    :cond_2b
    iget-boolean v0, p0, Lcom/b/a/i;->w:Z

    if-nez v0, :cond_31

    const-string v0, "polygon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "polyline"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_2c
    const-string v0, "points"

    invoke-static {v0, p4}, Lcom/b/a/d;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/b/a/g;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    invoke-static {v0}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-direct {p0, p4}, Lcom/b/a/i;->a(Lorg/xml/sax/Attributes;)V

    new-instance v4, Lcom/b/a/h;

    const/4 v0, 0x0

    invoke-direct {v4, p4, v0}, Lcom/b/a/h;-><init>(Lorg/xml/sax/Attributes;Lcom/b/a/e;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x2

    move v1, v0

    :goto_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2d

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2, v5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_a

    :cond_2d
    const-string v0, "polygon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    :cond_2e
    iget-object v0, p0, Lcom/b/a/i;->t:Ljava/util/HashMap;

    invoke-direct {p0, v4, v0}, Lcom/b/a/i;->a(Lcom/b/a/h;Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-direct {p0, v2}, Lcom/b/a/i;->a(Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/b/a/i;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2f
    invoke-direct {p0, v4}, Lcom/b/a/i;->a(Lcom/b/a/h;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/b/a/i;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_30
    invoke-direct {p0}, Lcom/b/a/i;->a()V

    goto/16 :goto_0

    :cond_31
    iget-boolean v0, p0, Lcom/b/a/i;->w:Z

    if-nez v0, :cond_34

    const-string v0, "path"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "d"

    invoke-static {v0, p4}, Lcom/b/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/d;->e(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, p4}, Lcom/b/a/i;->a(Lorg/xml/sax/Attributes;)V

    new-instance v1, Lcom/b/a/h;

    const/4 v2, 0x0

    invoke-direct {v1, p4, v2}, Lcom/b/a/h;-><init>(Lorg/xml/sax/Attributes;Lcom/b/a/e;)V

    iget-object v2, p0, Lcom/b/a/i;->t:Ljava/util/HashMap;

    invoke-direct {p0, v1, v2}, Lcom/b/a/i;->a(Lcom/b/a/h;Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-direct {p0, v0}, Lcom/b/a/i;->a(Landroid/graphics/Path;)V

    iget-object v2, p0, Lcom/b/a/i;->c:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/b/a/i;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_32
    invoke-direct {p0, v1}, Lcom/b/a/i;->a(Lcom/b/a/h;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/b/a/i;->c:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/b/a/i;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_33
    invoke-direct {p0}, Lcom/b/a/i;->a()V

    goto/16 :goto_0

    :cond_34
    iget-boolean v0, p0, Lcom/b/a/i;->w:Z

    if-nez v0, :cond_35

    const-string v0, "text"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-direct {p0, p4}, Lcom/b/a/i;->a(Lorg/xml/sax/Attributes;)V

    new-instance v0, Lcom/b/a/j;

    invoke-direct {v0, p0, p4}, Lcom/b/a/j;-><init>(Lcom/b/a/i;Lorg/xml/sax/Attributes;)V

    iput-object v0, p0, Lcom/b/a/i;->v:Lcom/b/a/j;

    goto/16 :goto_0

    :cond_35
    iget-boolean v0, p0, Lcom/b/a/i;->w:Z

    if-nez v0, :cond_2

    const-string v0, "SVG"

    const-string v1, "Unrecognized tag: %s (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p4}, Lcom/b/a/i;->b(Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
