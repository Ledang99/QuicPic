.class Lcom/alensw/ui/c/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/view/aj;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/z;

.field private final b:Ljava/util/GregorianCalendar;

.field private final c:[C

.field private d:I


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/z;)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/c/ae;->b:Ljava/util/GregorianCalendar;

    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alensw/ui/c/ae;->c:[C

    return-void
.end method

.method private a([CII)I
    .locals 3

    mul-int/lit16 v0, p2, 0x3e8

    add-int/2addr v0, p3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alensw/ui/c/ae;->b([CII)I

    move-result v0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x3

    const/16 v2, 0x2f

    aput-char v2, p1, v1

    return v0
.end method

.method private b([CII)I
    .locals 4

    array-length v1, p1

    move v0, v1

    :goto_0
    if-eqz p2, :cond_0

    div-int/lit8 v2, p2, 0xa

    mul-int/lit8 v3, v2, 0xa

    sub-int v3, p2, v3

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, p1, v0

    move p2, v2

    goto :goto_0

    :cond_0
    :goto_1
    sub-int v2, v1, v0

    if-ge v2, p3, :cond_1

    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0x30

    aput-char v2, p1, v0

    goto :goto_1

    :cond_1
    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->o()I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0, p1}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget v1, v1, Lcom/alensw/ui/c/z;->k:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget v1, v1, Lcom/alensw/ui/c/z;->k:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->f()J

    move-result-wide v0

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/alensw/PicFolder/QuickApp;->a(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget v1, v1, Lcom/alensw/ui/c/z;->k:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget v1, v1, Lcom/alensw/ui/c/z;->k:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v1, v1, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->d()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alensw/ui/c/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(III)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget v2, v2, Lcom/alensw/ui/c/z;->H:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p3, :cond_6

    if-ltz p3, :cond_5

    :cond_2
    :goto_0
    iget v2, p0, Lcom/alensw/ui/c/ae;->d:I

    if-eq v2, p3, :cond_3

    iput p3, p0, Lcom/alensw/ui/c/ae;->d:I

    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->t:Lcom/alensw/a/ah;

    invoke-virtual {v2, v1}, Lcom/alensw/a/ah;->a(Z)V

    :cond_3
    sub-int v3, p2, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v4, v1, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    if-eqz v0, :cond_7

    add-int v1, p1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/alensw/bean/CommonFile;->c()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    invoke-static {v4}, Lcom/alensw/ui/c/z;->a(Lcom/alensw/ui/c/z;)Lcom/alensw/b/a/a;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/alensw/b/a/a;->a(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    invoke-virtual {v4, v1}, Lcom/alensw/ui/c/z;->a(Lcom/alensw/bean/CommonFile;)V

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/alensw/ui/c/ae;->d:I

    if-gez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_7
    add-int/lit8 v1, p2, -0x1

    sub-int/2addr v1, v2

    goto :goto_2
.end method

.method public a(IIZ)V
    .locals 3

    :goto_0
    if-ge p1, p2, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0, p1}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v1

    const/16 v2, 0x44

    if-eq v1, v2, :cond_0

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v1, v1, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v1, v1, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->b()V

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    invoke-virtual {v0}, Lcom/alensw/ui/c/z;->m()I

    return-void
.end method

.method public a(ILandroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 12

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0, p1}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v1, v1, Lcom/alensw/ui/c/z;->t:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v2, v2, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    iget v2, v2, Lcom/alensw/ui/c/cx;->U:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    const/high16 v3, -0x34000000    # -3.3554432E7f

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v1, v1, Lcom/alensw/ui/c/z;->t:Landroid/graphics/Paint;

    invoke-virtual {p2, p3, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/alensw/ui/c/ae;->b:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->f()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->b:Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->b:Ljava/util/GregorianCalendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    add-int/lit8 v8, v0, 0x1

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->b:Ljava/util/GregorianCalendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/c/ae;->c:[C

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    const/high16 v5, 0x40e00000    # 7.0f

    div-float v9, v2, v5

    const/high16 v2, 0x40400000    # 3.0f

    div-float v10, v9, v2

    add-float v2, v4, v9

    add-float v5, v2, v10

    iget-object v2, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v2, v2, Lcom/alensw/ui/c/z;->t:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v6, v6, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    iget v6, v6, Lcom/alensw/ui/c/cx;->Y:I

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v2, v2, Lcom/alensw/ui/c/z;->t:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v2, 0x2

    invoke-direct {p0, v1, v0, v2}, Lcom/alensw/ui/c/ae;->b([CII)I

    move-result v2

    iget v0, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v0, v3

    add-float v11, v0, v4

    array-length v0, v1

    sub-int v3, v0, v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->t:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    sub-float v5, v11, v0

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v6, v0, Lcom/alensw/ui/c/z;->t:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->u:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v2, v2, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    iget v2, v2, Lcom/alensw/ui/c/cx;->Y:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-direct {p0, v1, v7, v8}, Lcom/alensw/ui/c/ae;->a([CII)I

    move-result v2

    add-float v0, v11, v9

    add-float/2addr v0, v10

    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v5, v5, Lcom/alensw/ui/c/z;->u:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float v5, v0, v5

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v6, v0, Lcom/alensw/ui/c/z;->u:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/alensw/ui/view/ak;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0, p1}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/alensw/bean/CommonFile;->c()I

    move-result v4

    invoke-virtual {v3}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v5

    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    invoke-static {v0}, Lcom/alensw/ui/c/z;->a(Lcom/alensw/ui/c/z;)Lcom/alensw/b/a/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alensw/b/a/a;->b(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/h/h;

    iput-object v0, p2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    :cond_0
    :goto_0
    iget-object v0, p2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    invoke-virtual {v0}, Lcom/alensw/b/h/h;->l()Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget v0, v0, Lcom/alensw/ui/c/z;->j:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_8

    move v0, v1

    :goto_1
    const/16 v6, 0x49

    if-ne v5, v6, :cond_2

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {v3}, Lcom/alensw/bean/CommonFile;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/alensw/ui/view/ak;->c:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/alensw/bean/CommonFile;->g()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_a

    iget-object v0, p2, Lcom/alensw/ui/view/ak;->d:[Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v0, v2

    iget-object v0, p2, Lcom/alensw/ui/view/ak;->d:[Ljava/lang/String;

    aput-object v5, v0, v1

    if-nez v5, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget v0, v0, Lcom/alensw/ui/c/z;->k:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget v0, v0, Lcom/alensw/ui/c/z;->k:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_9

    :cond_3
    iget-object v0, p2, Lcom/alensw/ui/view/ak;->d:[Ljava/lang/String;

    iget-object v2, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v2, v2, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v3}, Lcom/alensw/bean/CommonFile;->d()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v0, v0, Lcom/alensw/ui/view/ImageGridView;->d:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p2, Lcom/alensw/ui/view/ak;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Lcom/alensw/ui/view/ak;->b:I

    :cond_5
    const/high16 v0, 0x8000000

    and-int/2addr v0, v4

    if-eqz v0, :cond_6

    iget v0, p2, Lcom/alensw/ui/view/ak;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p2, Lcom/alensw/ui/view/ak;->b:I

    :cond_6
    return-void

    :cond_7
    const/16 v0, 0x44

    if-ne v5, v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    invoke-virtual {v0}, Lcom/alensw/ui/c/z;->t()Lcom/alensw/b/h/h;

    move-result-object v0

    iput-object v0, p2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_1

    :cond_9
    iget-object v0, p2, Lcom/alensw/ui/view/ak;->d:[Ljava/lang/String;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3}, Lcom/alensw/bean/CommonFile;->f()J

    move-result-wide v8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Lcom/alensw/PicFolder/QuickApp;->b(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_2

    :cond_a
    iget-object v0, p2, Lcom/alensw/ui/view/ak;->d:[Ljava/lang/String;

    aput-object v5, v0, v2

    goto :goto_2
.end method

.method public b(I)V
    .locals 7

    const/16 v6, 0x49

    const/16 v5, 0x44

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget v0, v0, Lcom/alensw/ui/c/z;->H:I

    if-eq v0, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iput p1, v0, Lcom/alensw/bean/CommonFolder;->k:I

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0, p1}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v1

    iget-object v2, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v2, v2, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v2, v2, Lcom/alensw/ui/view/ImageGridView;->d:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v2, v2, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v1, v1, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/ImageGridView;->d(I)Z

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, v3}, Lcom/alensw/ui/c/cx;->d(Z)V

    goto :goto_0

    :cond_3
    if-eq v1, v5, :cond_2

    iget-object v1, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v1, v1, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    invoke-virtual {v0}, Lcom/alensw/ui/c/z;->m()I

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget v2, v2, Lcom/alensw/ui/c/z;->i:I

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v2, v2, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v2}, Lcom/alensw/ui/c/cx;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-ne v1, v6, :cond_6

    const-string v1, "crop"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    const-class v3, Lcom/alensw/PicFolder/CropActivity;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v0, v1, v4}, Lcom/alensw/ui/activity/a;->a(Landroid/app/Activity;Landroid/content/Intent;I)Z

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alensw/ui/c/z;->a(Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    if-ne v1, v5, :cond_8

    iget-object v1, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    check-cast v0, Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/c/z;->a(Lcom/alensw/bean/CommonFolder;)V

    goto/16 :goto_0

    :cond_8
    if-ne v1, v6, :cond_9

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    invoke-virtual {v0, v3}, Lcom/alensw/ui/c/z;->b(Z)V

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x56

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v1, v1, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v1, v0}, Lcom/alensw/ui/c/as;->a(Landroid/app/Activity;Lcom/alensw/bean/CommonFile;)V

    goto/16 :goto_0
.end method

.method public c(I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget v0, v0, Lcom/alensw/ui/c/z;->H:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget v0, v0, Lcom/alensw/ui/c/z;->i:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->c()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0, p1}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v0

    const/16 v1, 0x44

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/ae;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, v2}, Lcom/alensw/ui/c/cx;->d(Z)V

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0, v2}, Lcom/alensw/ui/c/ae;->a(IIZ)V

    goto :goto_0
.end method
