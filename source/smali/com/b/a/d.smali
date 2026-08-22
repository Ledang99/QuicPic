.class public Lcom/b/a/d;
.super Ljava/lang/Object;


# static fields
.field static a:F

.field private static final b:Ljavax/xml/parsers/SAXParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x42900000    # 72.0f

    sput v0, Lcom/b/a/d;->a:F

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    sput-object v0, Lcom/b/a/d;->b:Ljavax/xml/parsers/SAXParserFactory;

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v0, "matrix("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "matrix("

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/d;->f(Ljava/lang/String;)Lcom/b/a/g;

    move-result-object v2

    invoke-static {v2}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/16 v0, 0x9

    new-array v4, v0, [F

    invoke-static {v2}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v5

    invoke-static {v2}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v6

    invoke-static {v2}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v7

    invoke-static {v2}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v8

    const/4 v5, 0x4

    invoke-static {v2}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v5

    const/4 v5, 0x5

    invoke-static {v2}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v5

    const/4 v0, 0x6

    aput v1, v4, v0

    const/4 v0, 0x7

    aput v1, v4, v0

    const/16 v0, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string v0, "translate("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "translate("

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/d;->f(Ljava/lang/String;)Lcom/b/a/g;

    move-result-object v2

    invoke-static {v2}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v2}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v2}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v6, :cond_9

    invoke-static {v2}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_1
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_0

    :cond_2
    const-string v0, "scale("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "scale("

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/d;->f(Ljava/lang/String;)Lcom/b/a/g;

    move-result-object v2

    invoke-static {v2}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v2}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v6, :cond_8

    invoke-static {v2}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_2
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_0

    :cond_3
    const-string v0, "skewX("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "skewX("

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/d;->f(Ljava/lang/String;)Lcom/b/a/g;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v0}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preSkew(FF)Z

    goto/16 :goto_0

    :cond_4
    const-string v0, "skewY("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "skewY("

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/d;->f(Ljava/lang/String;)Lcom/b/a/g;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v0}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->preSkew(FF)Z

    goto/16 :goto_0

    :cond_5
    const-string v0, "rotate("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "rotate("

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/d;->f(Ljava/lang/String;)Lcom/b/a/g;

    move-result-object v3

    invoke-static {v3}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v3}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v3}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_7

    invoke-static {v3}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v3}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move v0, v2

    :goto_3
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto/16 :goto_0

    :cond_6
    const-string v0, "SVG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid transform ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v0, v1

    goto/16 :goto_2

    :cond_9
    move v0, v1

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/res/Resources;I)Lcom/b/a/b;
    .locals 3

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/b/a/d;->a(Ljava/io/InputStream;Ljava/lang/Integer;F)Lcom/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;II)Lcom/b/a/b;
    .locals 3

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/b/a/d;->a(Ljava/io/InputStream;Ljava/lang/Integer;F)Lcom/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/Integer;F)Lcom/b/a/b;
    .locals 5

    :try_start_0
    sget-object v0, Lcom/b/a/d;->b:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    new-instance v1, Landroid/graphics/Picture;

    invoke-direct {v1}, Landroid/graphics/Picture;-><init>()V

    new-instance v2, Lcom/b/a/i;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/b/a/i;-><init>(Landroid/graphics/Picture;Lcom/b/a/e;)V

    invoke-virtual {v2, p1}, Lcom/b/a/i;->a(Ljava/lang/Integer;)V

    invoke-virtual {v2, p2}, Lcom/b/a/i;->a(F)V

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    new-instance v0, Lcom/b/a/b;

    iget-object v3, v2, Lcom/b/a/i;->o:Landroid/graphics/RectF;

    invoke-direct {v0, v1, v3}, Lcom/b/a/b;-><init>(Landroid/graphics/Picture;Landroid/graphics/RectF;)V

    iget-object v1, v2, Lcom/b/a/i;->p:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v2, Lcom/b/a/i;->p:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/b/a/b;->a(Landroid/graphics/RectF;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SVG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/b/a/c;

    invoke-direct {v1, v0}, Lcom/b/a/c;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;)Lcom/b/a/b;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, 0x0

    sget v2, Lcom/b/a/d;->a:F

    invoke-static {v0, v1, v2}, Lcom/b/a/d;->a(Ljava/io/InputStream;Ljava/lang/Integer;F)Lcom/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/b/a/d;->d(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/graphics/Path;DDDDDDDZZ)V
    .locals 29

    sub-double v2, p1, p5

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    sub-double v4, p3, p7

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const-wide v6, 0x4076800000000000L    # 360.0

    rem-double v6, p13, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v6, v14, v2

    mul-double v8, v16, v4

    add-double v18, v6, v8

    move-wide/from16 v0, v16

    neg-double v6, v0

    mul-double/2addr v2, v6

    mul-double/2addr v4, v14

    add-double v20, v2, v4

    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static/range {p11 .. p12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    mul-double v4, v8, v8

    mul-double v2, v6, v6

    mul-double v22, v18, v18

    mul-double v24, v20, v20

    div-double v10, v22, v4

    div-double v12, v24, v2

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v10, v12

    if-lez v12, :cond_6

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v8, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v6, v2

    mul-double v4, v8, v8

    mul-double v2, v6, v6

    move-wide v10, v6

    move-wide v12, v8

    move-wide v6, v2

    move-wide v8, v4

    :goto_0
    move/from16 v0, p15

    move/from16 v1, p16

    if-ne v0, v1, :cond_2

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    move-wide v4, v2

    :goto_1
    mul-double v2, v8, v6

    mul-double v26, v8, v24

    sub-double v2, v2, v26

    mul-double v26, v6, v22

    sub-double v2, v2, v26

    mul-double v8, v8, v24

    mul-double v6, v6, v22

    add-double/2addr v6, v8

    div-double/2addr v2, v6

    const-wide/16 v6, 0x0

    cmpg-double v6, v2, v6

    if-gez v6, :cond_0

    const-wide/16 v2, 0x0

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    mul-double v4, v12, v20

    div-double/2addr v4, v10

    mul-double/2addr v4, v2

    mul-double v6, v10, v18

    div-double/2addr v6, v12

    neg-double v6, v6

    mul-double/2addr v2, v6

    add-double v6, p1, p5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    add-double v8, p3, p7

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v8, v8, v22

    mul-double v22, v14, v4

    mul-double v24, v16, v2

    sub-double v22, v22, v24

    add-double v6, v6, v22

    mul-double v16, v16, v4

    mul-double/2addr v14, v2

    add-double v14, v14, v16

    add-double/2addr v8, v14

    sub-double v14, v18, v4

    div-double/2addr v14, v12

    sub-double v16, v20, v2

    div-double v16, v16, v10

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    sub-double v4, v18, v4

    div-double/2addr v4, v12

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v18, v0

    sub-double v2, v18, v2

    div-double v18, v2, v10

    mul-double v2, v14, v14

    mul-double v20, v16, v16

    add-double v2, v2, v20

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    const-wide/16 v2, 0x0

    cmpg-double v2, v16, v2

    if-gez v2, :cond_3

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_2
    div-double v20, v14, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->acos(D)D

    move-result-wide v20

    mul-double v2, v2, v20

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v20

    mul-double v2, v14, v14

    mul-double v22, v16, v16

    add-double v2, v2, v22

    mul-double v22, v4, v4

    mul-double v24, v18, v18

    add-double v22, v22, v24

    mul-double v2, v2, v22

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    mul-double v2, v14, v4

    mul-double v24, v16, v18

    add-double v24, v24, v2

    mul-double v2, v14, v18

    mul-double v4, v4, v16

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_4

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_3
    div-double v4, v24, v22

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    if-nez p16, :cond_5

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_5

    const-wide v4, 0x4076800000000000L    # 360.0

    sub-double/2addr v2, v4

    :cond_1
    :goto_4
    const-wide v4, 0x4076800000000000L    # 360.0

    rem-double/2addr v2, v4

    const-wide v4, 0x4076800000000000L    # 360.0

    rem-double v4, v20, v4

    new-instance v14, Landroid/graphics/RectF;

    sub-double v16, v6, v12

    move-wide/from16 v0, v16

    double-to-float v15, v0

    sub-double v16, v8, v10

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    add-double/2addr v6, v12

    double-to-float v6, v6

    add-double/2addr v8, v10

    double-to-float v7, v8

    move/from16 v0, v16

    invoke-direct {v14, v15, v0, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    double-to-float v4, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4, v2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    return-void

    :cond_2
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide v4, v2

    goto/16 :goto_1

    :cond_3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_4
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    :cond_5
    if-eqz p16, :cond_1

    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_1

    const-wide v4, 0x4076800000000000L    # 360.0

    add-double/2addr v2, v4

    goto :goto_4

    :cond_6
    move-wide v10, v6

    move-wide v12, v8

    move-wide v6, v2

    move-wide v8, v4

    goto/16 :goto_0
.end method

.method static synthetic b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/b/a/g;
    .locals 1

    invoke-static {p0, p1}, Lcom/b/a/d;->c(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/b/a/g;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    const-string v2, "&amp;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 1

    invoke-static {p0}, Lcom/b/a/d;->g(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/b/a/g;
    .locals 3

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/d;->f(Ljava/lang/String;)Lcom/b/a/g;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic d(Ljava/lang/String;)Landroid/graphics/RectF;
    .locals 1

    invoke-static {p0}, Lcom/b/a/d;->h(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 3

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic e(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 1

    invoke-static {p0}, Lcom/b/a/d;->i(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method private static f(Ljava/lang/String;)Lcom/b/a/g;
    .locals 10

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    move v0, v4

    move v2, v4

    :goto_0
    if-ge v3, v5, :cond_4

    if-eqz v0, :cond_0

    move v0, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x2d

    if-ne v7, v2, :cond_2

    move v2, v3

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Lcom/b/a/g;

    invoke-direct {v0, v6, v3}, Lcom/b/a/g;-><init>(Ljava/util/ArrayList;I)V

    :goto_2
    return-object v0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_5
    new-instance v0, Lcom/b/a/g;

    invoke-direct {v0, v6, v2}, Lcom/b/a/g;-><init>(Ljava/util/ArrayList;I)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
        0x29 -> :sswitch_1
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x41 -> :sswitch_1
        0x43 -> :sswitch_1
        0x48 -> :sswitch_1
        0x4c -> :sswitch_1
        0x4d -> :sswitch_1
        0x51 -> :sswitch_1
        0x53 -> :sswitch_1
        0x54 -> :sswitch_1
        0x56 -> :sswitch_1
        0x5a -> :sswitch_1
        0x61 -> :sswitch_1
        0x63 -> :sswitch_1
        0x68 -> :sswitch_1
        0x6c -> :sswitch_1
        0x6d -> :sswitch_1
        0x71 -> :sswitch_1
        0x73 -> :sswitch_1
        0x74 -> :sswitch_1
        0x76 -> :sswitch_1
        0x7a -> :sswitch_1
    .end sparse-switch
.end method

.method private static g(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 4

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    :goto_0
    invoke-static {p0, v0}, Lcom/b/a/d;->a(Ljava/lang/String;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[\\s,]*"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static h(Ljava/lang/String;)Landroid/graphics/RectF;
    .locals 6

    invoke-static {p0}, Lcom/b/a/d;->f(Ljava/lang/String;)Lcom/b/a/g;

    move-result-object v2

    invoke-static {v2}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    new-instance v1, Landroid/graphics/RectF;

    invoke-static {v2}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v2}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v2}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v2}, Lcom/b/a/g;->a(Lcom/b/a/g;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {v1, v3, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static i(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 34

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v28

    new-instance v29, Lcom/b/a/a;

    const/4 v3, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/b/a/a;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->a()V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v30, Landroid/graphics/RectF;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/RectF;-><init>()V

    const/16 v4, 0x78

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move v5, v4

    move v4, v10

    move v10, v9

    :goto_0
    move-object/from16 v0, v29

    iget v6, v0, Lcom/b/a/a;->a:I

    move/from16 v0, v28

    if-ge v6, v0, :cond_d

    move-object/from16 v0, v29

    iget v6, v0, Lcom/b/a/a;->a:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x2e

    move/from16 v0, v20

    if-eq v0, v6, :cond_1

    const/16 v6, 0x2d

    move/from16 v0, v20

    if-eq v0, v6, :cond_1

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->c()V

    :goto_1
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v3, v0, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    const/16 v25, 0x0

    sparse-switch v20, :sswitch_data_0

    const-string v5, "SVG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid path command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->c()V

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v7, v24

    move v8, v10

    move v9, v4

    move/from16 v4, v21

    move/from16 v10, v25

    :goto_2
    if-nez v10, :cond_0

    move v6, v8

    move v7, v9

    :cond_0
    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->a()V

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move v10, v8

    move/from16 v5, v20

    move v4, v9

    goto :goto_0

    :cond_1
    const/16 v6, 0x4d

    if-ne v5, v6, :cond_2

    const/16 v20, 0x4c

    goto :goto_1

    :cond_2
    const/16 v6, 0x6d

    if-ne v5, v6, :cond_f

    const/16 v20, 0x6c

    goto :goto_1

    :sswitch_0
    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v6

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v5

    const/16 v7, 0x6d

    move/from16 v0, v20

    if-ne v0, v7, :cond_3

    invoke-virtual {v3, v6, v5}, Landroid/graphics/Path;->rMoveTo(FF)V

    add-float/2addr v6, v4

    add-float v4, v10, v5

    move v5, v6

    :goto_3
    move/from16 v10, v25

    move/from16 v6, v23

    move/from16 v7, v24

    move v8, v4

    move v9, v5

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v6, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move v4, v5

    move v5, v6

    goto :goto_3

    :sswitch_1
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    move/from16 v10, v25

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v7, v24

    move/from16 v8, v21

    move/from16 v9, v22

    goto :goto_2

    :sswitch_2
    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v8

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v9

    const/16 v5, 0x6c

    move/from16 v0, v20

    if-ne v0, v5, :cond_4

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    add-float/2addr v8, v4

    add-float/2addr v9, v10

    move/from16 v10, v25

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v7, v24

    move/from16 v32, v9

    move v9, v8

    move/from16 v8, v32

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v10, v25

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v7, v24

    move/from16 v32, v9

    move v9, v8

    move/from16 v8, v32

    goto/16 :goto_2

    :sswitch_3
    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v8

    const/16 v5, 0x68

    move/from16 v0, v20

    if-ne v0, v5, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v3, v8, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    add-float/2addr v8, v4

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v7, v24

    move v9, v8

    move v8, v10

    move/from16 v10, v25

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v3, v8, v10}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v7, v24

    move v9, v8

    move v8, v10

    move/from16 v10, v25

    goto/16 :goto_2

    :sswitch_4
    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v9

    const/16 v5, 0x76

    move/from16 v0, v20

    if-ne v0, v5, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    add-float/2addr v9, v10

    move/from16 v10, v25

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v7, v24

    move v8, v9

    move v9, v4

    move/from16 v4, v21

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v3, v4, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v10, v25

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v7, v24

    move v8, v9

    move v9, v4

    move/from16 v4, v21

    goto/16 :goto_2

    :sswitch_5
    const/4 v12, 0x1

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v11

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v5

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v6

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v7

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v8

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v9

    const/16 v13, 0x63

    move/from16 v0, v20

    if-ne v0, v13, :cond_e

    add-float/2addr v11, v4

    add-float/2addr v6, v4

    add-float/2addr v8, v4

    add-float/2addr v5, v10

    add-float/2addr v7, v10

    add-float/2addr v9, v10

    move v4, v11

    :goto_4
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v10, v12

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v32, v7

    move v7, v6

    move/from16 v6, v32

    move/from16 v33, v9

    move v9, v8

    move/from16 v8, v33

    goto/16 :goto_2

    :sswitch_6
    const/4 v11, 0x1

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v6

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v7

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v8

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v9

    const/16 v5, 0x73

    move/from16 v0, v20

    if-ne v0, v5, :cond_7

    add-float/2addr v6, v4

    add-float/2addr v8, v4

    add-float/2addr v7, v10

    add-float/2addr v9, v10

    :cond_7
    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float v4, v4, v24

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v10

    sub-float v5, v5, v23

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v10, v11

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v32, v7

    move v7, v6

    move/from16 v6, v32

    move/from16 v33, v9

    move v9, v8

    move/from16 v8, v33

    goto/16 :goto_2

    :sswitch_7
    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v12

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v14

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v16

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v5

    float-to-int v0, v5

    move/from16 v18, v0

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v5

    float-to-int v0, v5

    move/from16 v19, v0

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v27

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v26

    const/16 v5, 0x61

    move/from16 v0, v20

    if-ne v0, v5, :cond_8

    add-float v27, v27, v4

    add-float v26, v26, v10

    :cond_8
    float-to-double v4, v4

    float-to-double v6, v10

    move/from16 v0, v27

    float-to-double v8, v0

    move/from16 v0, v26

    float-to-double v10, v0

    float-to-double v12, v12

    float-to-double v14, v14

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const/16 v31, 0x1

    move/from16 v0, v18

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    const/16 v18, 0x1

    :goto_5
    const/16 v31, 0x1

    move/from16 v0, v19

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    const/16 v19, 0x1

    :goto_6
    invoke-static/range {v3 .. v19}, Lcom/b/a/d;->a(Landroid/graphics/Path;DDDDDDDZZ)V

    move/from16 v10, v25

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v7, v24

    move/from16 v8, v26

    move/from16 v9, v27

    goto/16 :goto_2

    :cond_9
    const/16 v18, 0x0

    goto :goto_5

    :cond_a
    const/16 v19, 0x0

    goto :goto_6

    :sswitch_8
    const/4 v11, 0x1

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v8

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v9

    const/16 v5, 0x74

    move/from16 v0, v20

    if-ne v0, v5, :cond_b

    add-float/2addr v8, v4

    add-float/2addr v9, v10

    :cond_b
    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v4

    sub-float v6, v5, v24

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v10

    sub-float v7, v5, v23

    move v5, v10

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v10, v11

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v32, v7

    move v7, v6

    move/from16 v6, v32

    move/from16 v33, v9

    move v9, v8

    move/from16 v8, v33

    goto/16 :goto_2

    :sswitch_9
    const/4 v11, 0x1

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v6

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v7

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v8

    invoke-virtual/range {v29 .. v29}, Lcom/b/a/a;->e()F

    move-result v9

    const/16 v5, 0x71

    move/from16 v0, v20

    if-ne v0, v5, :cond_c

    add-float/2addr v8, v4

    add-float/2addr v9, v10

    add-float/2addr v6, v4

    add-float/2addr v7, v10

    :cond_c
    move v5, v10

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v10, v11

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v32, v7

    move v7, v6

    move/from16 v6, v32

    move/from16 v33, v9

    move v9, v8

    move/from16 v8, v33

    goto/16 :goto_2

    :cond_d
    return-object v3

    :cond_e
    move v4, v11

    goto/16 :goto_4

    :cond_f
    move/from16 v20, v5

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_7
        0x43 -> :sswitch_5
        0x48 -> :sswitch_3
        0x4c -> :sswitch_2
        0x4d -> :sswitch_0
        0x51 -> :sswitch_9
        0x53 -> :sswitch_6
        0x54 -> :sswitch_8
        0x56 -> :sswitch_4
        0x5a -> :sswitch_1
        0x61 -> :sswitch_7
        0x63 -> :sswitch_5
        0x68 -> :sswitch_3
        0x6c -> :sswitch_2
        0x6d -> :sswitch_0
        0x71 -> :sswitch_9
        0x73 -> :sswitch_6
        0x74 -> :sswitch_8
        0x76 -> :sswitch_4
        0x7a -> :sswitch_1
    .end sparse-switch
.end method
