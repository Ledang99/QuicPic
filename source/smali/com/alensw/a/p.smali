.class public Lcom/alensw/a/p;
.super Lcom/alensw/b/h/h;


# static fields
.field private static final a:Landroid/graphics/RectF;

.field private static final c:Landroid/graphics/Matrix;

.field private static final d:Landroid/graphics/Paint;

.field private static final o:Landroid/graphics/Bitmap;

.field private static final p:Landroid/graphics/Canvas;

.field private static final q:Landroid/graphics/Paint;

.field private static final r:Landroid/graphics/RectF;


# instance fields
.field private h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:F

.field private final m:Z

.field private final n:[Lcom/alensw/b/h/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/alensw/a/p;->a:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/alensw/a/p;->c:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/alensw/a/p;->d:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Lcom/alensw/b/h/b;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/alensw/a/p;->o:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/alensw/a/p;->p:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/alensw/a/p;->q:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/alensw/a/p;->r:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(IIIFIIZ)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, v0}, Lcom/alensw/b/h/h;-><init>(IIII)V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alensw/b/h/h;

    iput-object v0, p0, Lcom/alensw/a/p;->n:[Lcom/alensw/b/h/h;

    iput p1, p0, Lcom/alensw/a/p;->k:I

    iput p6, p0, Lcom/alensw/a/p;->i:I

    iput p4, p0, Lcom/alensw/a/p;->l:F

    iput-boolean p7, p0, Lcom/alensw/a/p;->m:Z

    invoke-static {p1}, Lcom/alensw/a/p;->b(I)I

    move-result v0

    invoke-static {v0, p5}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/alensw/a/p;->j:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/p;->b:Lcom/alensw/b/h/i;

    iget v1, p0, Lcom/alensw/a/p;->j:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p3

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v1, p3

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/alensw/b/h/i;->a:I

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/res/Resources;IIII)Lcom/alensw/b/h/h;
    .locals 11

    const/4 v7, 0x0

    const/4 v10, 0x2

    if-ne p1, v10, :cond_1

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget v0, v0, Lcom/alensw/a/bc;->d:I

    move v1, v0

    :goto_0
    if-ne p1, v10, :cond_2

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget v0, v0, Lcom/alensw/a/bc;->e:I

    :goto_1
    sget-object v2, Lcom/alensw/a/bc;->a:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Lcom/alensw/b/h/h;->a(IILandroid/graphics/Bitmap$Config;)Lcom/alensw/b/h/h;

    move-result-object v8

    if-nez v8, :cond_3

    const/4 v8, 0x0

    :cond_0
    :goto_2
    return-object v8

    :cond_1
    move v1, p2

    goto :goto_0

    :cond_2
    move v0, p3

    goto :goto_1

    :cond_3
    const/16 v2, 0xd0

    invoke-static {p4}, Landroid/graphics/Color;->red(I)I

    move-result v3

    mul-int/2addr v3, v2

    add-int/lit16 v3, v3, 0x1800

    div-int/lit16 v3, v3, 0x100

    invoke-static {p4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    mul-int/2addr v4, v2

    add-int/lit16 v4, v4, 0x1800

    div-int/lit16 v4, v4, 0x100

    invoke-static {p4}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    mul-int/2addr v2, v5

    add-int/lit16 v2, v2, 0x1800

    div-int/lit16 v2, v2, 0x100

    const/16 v5, 0xff

    invoke-static {v5, v3, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v8}, Lcom/alensw/b/h/h;->d()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v0, 0x3

    div-int/lit8 v4, v4, 0x4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const v4, 0x7f05000d

    const v5, -0x777778

    invoke-static {p0, v4, v5, v3}, Lcom/b/a/b;->a(Landroid/content/res/Resources;III)Lcom/b/a/l;

    move-result-object v4

    sub-int v5, v1, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v6, v0, v3

    div-int/lit8 v6, v6, 0x2

    add-int v9, v1, v3

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v4, v5, v6, v9, v3}, Lcom/b/a/l;->setBounds(IIII)V

    new-instance v3, Landroid/graphics/Canvas;

    invoke-virtual {v8}, Lcom/alensw/b/h/h;->d()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v3}, Lcom/b/a/l;->draw(Landroid/graphics/Canvas;)V

    if-ne p1, v10, :cond_0

    sget-object v3, Lcom/alensw/a/bc;->a:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v3}, Lcom/alensw/b/h/h;->a(IILandroid/graphics/Bitmap$Config;)Lcom/alensw/b/h/h;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/alensw/b/h/h;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v0, Lcom/alensw/a/p;

    const/4 v5, 0x4

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/alensw/a/p;-><init>(IIIFIIZ)V

    invoke-static {p1}, Lcom/alensw/a/p;->b(I)I

    move-result v2

    :goto_3
    if-ge v7, v2, :cond_5

    if-nez v7, :cond_4

    move-object v1, v8

    :goto_4
    invoke-virtual {v0, v7, v1}, Lcom/alensw/a/p;->a(ILcom/alensw/b/h/h;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    move-object v1, v9

    goto :goto_4

    :cond_5
    invoke-virtual {v8}, Lcom/alensw/b/h/h;->m()I

    invoke-virtual {v9}, Lcom/alensw/b/h/h;->m()I

    move-object v8, v0

    goto/16 :goto_2
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 6

    iget v0, p0, Lcom/alensw/a/p;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/alensw/a/p;->j:I

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_4

    iget-object v0, p0, Lcom/alensw/a/p;->n:[Lcom/alensw/b/h/h;

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/alensw/b/h/h;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alensw/a/p;->c(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILcom/alensw/b/h/h;Landroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget v0, p0, Lcom/alensw/a/p;->j:I

    if-ge v3, v0, :cond_4

    iget-object v0, p0, Lcom/alensw/a/p;->n:[Lcom/alensw/b/h/h;

    aget-object v4, v0, v3

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/alensw/b/h/h;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alensw/a/p;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alensw/a/p;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILcom/alensw/b/h/h;Landroid/graphics/Paint;)V

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/alensw/a/p;->k:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alensw/a/p;->b(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILcom/alensw/b/h/h;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static b(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private o()Lcom/alensw/b/h/h;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/alensw/a/p;->e()I

    move-result v0

    invoke-virtual {p0}, Lcom/alensw/a/p;->f()I

    move-result v1

    sget-object v2, Lcom/alensw/a/bc;->a:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/alensw/b/h/h;->a(IILandroid/graphics/Bitmap$Config;)Lcom/alensw/b/h/h;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/alensw/a/p;->p:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Lcom/alensw/b/h/h;->d()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Lcom/alensw/b/h/h;->i()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/alensw/a/p;->p:Landroid/graphics/Canvas;

    iget v4, p0, Lcom/alensw/a/p;->i:I

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    sget-object v3, Lcom/alensw/a/p;->r:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v3, v5, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v0, Lcom/alensw/a/p;->p:Landroid/graphics/Canvas;

    sget-object v1, Lcom/alensw/a/p;->r:Landroid/graphics/RectF;

    sget-object v3, Lcom/alensw/a/p;->q:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, v3}, Lcom/alensw/a/p;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    sget-object v0, Lcom/alensw/a/p;->p:Landroid/graphics/Canvas;

    sget-object v1, Lcom/alensw/a/p;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/alensw/a/p;->p()V

    iget-object v0, p0, Lcom/alensw/a/p;->n:[Lcom/alensw/b/h/h;

    const/4 v1, 0x4

    aput-object v2, v0, v1

    :cond_1
    return-object v2
.end method

.method private p()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alensw/a/p;->n:[Lcom/alensw/b/h/h;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/alensw/a/p;->n:[Lcom/alensw/b/h/h;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/a/p;->n:[Lcom/alensw/b/h/h;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/alensw/b/h/h;->m()I

    iget-object v1, p0, Lcom/alensw/a/p;->n:[Lcom/alensw/b/h/h;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    invoke-super {p0}, Lcom/alensw/b/h/h;->a()V

    invoke-direct {p0}, Lcom/alensw/a/p;->p()V

    return-void
.end method

.method public a(ILcom/alensw/b/h/h;)V
    .locals 3

    invoke-virtual {p0}, Lcom/alensw/a/p;->n()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/a/p;->b()Z

    move-result v1

    if-ltz p1, :cond_3

    const/4 v0, 0x4

    if-ge p1, v0, :cond_3

    iget v0, p0, Lcom/alensw/a/p;->h:I

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    or-int/2addr v0, v2

    iput v0, p0, Lcom/alensw/a/p;->h:I

    iget-object v0, p0, Lcom/alensw/a/p;->n:[Lcom/alensw/b/h/h;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/a/p;->n:[Lcom/alensw/b/h/h;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/alensw/b/h/h;->m()I

    :cond_2
    iget-object v2, p0, Lcom/alensw/a/p;->n:[Lcom/alensw/b/h/h;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/alensw/b/h/h;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/h/h;

    :goto_1
    aput-object v0, v2, p1

    :cond_3
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/a/p;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alensw/a/p;->o()Lcom/alensw/b/h/h;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/alensw/a/p;->n:[Lcom/alensw/b/h/h;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alensw/b/h/h;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alensw/a/p;->b:Lcom/alensw/b/h/i;

    iget v1, v1, Lcom/alensw/b/h/i;->a:I

    iget-object v2, p0, Lcom/alensw/a/p;->b:Lcom/alensw/b/h/i;

    iget v2, v2, Lcom/alensw/b/h/i;->b:I

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    int-to-float v1, v1

    sub-float v1, v3, v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    int-to-float v2, v2

    sub-float v2, v3, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    invoke-virtual {v0}, Lcom/alensw/b/h/h;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v3, p3, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    iget v3, p3, Landroid/graphics/RectF;->top:F

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/alensw/b/h/h;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/alensw/a/p;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILcom/alensw/b/h/h;Landroid/graphics/Paint;)V
    .locals 7

    const/4 v1, 0x2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float v3, v0, v4

    div-float/2addr v2, v4

    div-int/lit8 v0, p3, 0x2

    mul-int/lit8 v4, v0, 0x2

    sub-int v4, p3, v4

    sget-object v5, Lcom/alensw/a/p;->a:Landroid/graphics/RectF;

    iget v6, p2, Landroid/graphics/RectF;->left:F

    int-to-float v4, v4

    mul-float/2addr v4, v3

    add-float/2addr v4, v6

    iput v4, v5, Landroid/graphics/RectF;->left:F

    iget v4, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v3

    iput v4, v5, Landroid/graphics/RectF;->right:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v4

    iput v0, v5, Landroid/graphics/RectF;->top:F

    iget v0, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v2

    iput v0, v5, Landroid/graphics/RectF;->bottom:F

    sget-object v0, Lcom/alensw/a/p;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    sget-object v4, Lcom/alensw/a/p;->c:Landroid/graphics/Matrix;

    iget-boolean v0, p0, Lcom/alensw/a/p;->m:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p4, v4, v3, v2, v0}, Lcom/alensw/b/h/h;->a(Landroid/graphics/Matrix;FFI)V

    sget-object v0, Lcom/alensw/a/p;->c:Landroid/graphics/Matrix;

    iget v2, v5, Landroid/graphics/RectF;->left:F

    iget v3, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sget-object v0, Lcom/alensw/a/p;->c:Landroid/graphics/Matrix;

    invoke-virtual {p4, v0, v5}, Lcom/alensw/b/h/h;->a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p4}, Lcom/alensw/b/h/h;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Lcom/alensw/a/p;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(I)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/alensw/a/p;->h:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILcom/alensw/b/h/h;Landroid/graphics/Paint;)V
    .locals 7

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sget-object v4, Lcom/alensw/a/p;->a:Landroid/graphics/RectF;

    if-nez p3, :cond_0

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iput v0, v4, Landroid/graphics/RectF;->left:F

    iget v0, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v3

    iput v0, v4, Landroid/graphics/RectF;->right:F

    iget v0, p2, Landroid/graphics/RectF;->top:F

    iput v0, v4, Landroid/graphics/RectF;->top:F

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    :goto_0
    sget-object v0, Lcom/alensw/a/p;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    sget-object v3, Lcom/alensw/a/p;->c:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget-boolean v0, p0, Lcom/alensw/a/p;->m:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p4, v3, v5, v6, v0}, Lcom/alensw/b/h/h;->a(Landroid/graphics/Matrix;FFI)V

    sget-object v0, Lcom/alensw/a/p;->c:Landroid/graphics/Matrix;

    iget v2, v4, Landroid/graphics/RectF;->left:F

    iget v3, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sget-object v0, Lcom/alensw/a/p;->c:Landroid/graphics/Matrix;

    invoke-virtual {p4, v0, v4}, Lcom/alensw/b/h/h;->a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p4}, Lcom/alensw/b/h/h;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Lcom/alensw/a/p;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_0
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v3

    iput v0, v4, Landroid/graphics/RectF;->left:F

    iget v0, v4, Landroid/graphics/RectF;->left:F

    div-float v5, v3, v6

    add-float/2addr v0, v5

    iput v0, v4, Landroid/graphics/RectF;->right:F

    iget v5, p2, Landroid/graphics/RectF;->top:F

    if-ne p3, v2, :cond_1

    const/4 v0, 0x0

    :goto_2
    add-float/2addr v0, v5

    iput v0, v4, Landroid/graphics/RectF;->top:F

    iget v0, v4, Landroid/graphics/RectF;->top:F

    div-float/2addr v3, v6

    add-float/2addr v0, v3

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_1
    div-float v0, v3, v6

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public b()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/alensw/a/p;->h:I

    iget v2, p0, Lcom/alensw/a/p;->j:I

    shl-int v2, v0, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILcom/alensw/b/h/h;Landroid/graphics/Paint;)V
    .locals 7

    const/high16 v6, 0x40400000    # 3.0f

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float v2, v1, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float v3, v2, v3

    sub-float/2addr v0, v1

    iget v4, p0, Lcom/alensw/a/p;->j:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    int-to-float v4, p3

    mul-float/2addr v3, v4

    sub-float v3, v1, v3

    sget-object v4, Lcom/alensw/a/p;->a:Landroid/graphics/RectF;

    iget v5, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v5

    add-float/2addr v0, v1

    int-to-float v1, p3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, v4, Landroid/graphics/RectF;->right:F

    iget v0, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v3

    iput v0, v4, Landroid/graphics/RectF;->left:F

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v3

    iput v0, v4, Landroid/graphics/RectF;->top:F

    sget-object v0, Lcom/alensw/a/p;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    sget-object v0, Lcom/alensw/a/p;->c:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p4, v0, v1, v2, v3}, Lcom/alensw/b/h/h;->a(Landroid/graphics/Matrix;FFI)V

    sget-object v0, Lcom/alensw/a/p;->c:Landroid/graphics/Matrix;

    iget v1, v4, Landroid/graphics/RectF;->left:F

    iget v2, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sget-object v0, Lcom/alensw/a/p;->c:Landroid/graphics/Matrix;

    invoke-virtual {p4, v0, v4}, Lcom/alensw/b/h/h;->a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    sget-object v0, Lcom/alensw/a/p;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alensw/a/p;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/alensw/a/p;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alensw/a/p;->l:F

    div-float/2addr v1, v6

    iget v2, p0, Lcom/alensw/a/p;->l:F

    div-float/2addr v2, v6

    const/4 v3, 0x0

    const/high16 v5, -0x1000000

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    sget-object v0, Lcom/alensw/a/p;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p4}, Lcom/alensw/b/h/h;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Lcom/alensw/a/p;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/a/p;->n()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
