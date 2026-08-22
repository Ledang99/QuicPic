.class public Lcom/alensw/ui/view/ImageGridView;
.super Lcom/alensw/ui/view/bp;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Instantiatable"
    }
.end annotation


# static fields
.field public static final a:Z


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:F

.field private T:F

.field private U:F

.field private final V:F

.field private final W:F

.field private aA:F

.field private aB:F

.field private final aC:Ljava/lang/Runnable;

.field private final aa:F

.field private final ab:F

.field private final ac:Ljava/lang/Runnable;

.field private final ad:Landroid/view/View$OnClickListener;

.field private final ae:Landroid/view/View$OnLongClickListener;

.field private af:Ljava/lang/Runnable;

.field private ag:F

.field private ah:Landroid/graphics/RectF;

.field private ai:J

.field private aj:J

.field private ak:I

.field private al:I

.field private am:F

.field private final an:Landroid/graphics/RectF;

.field private final ao:Landroid/graphics/Rect;

.field private final ap:Landroid/graphics/RectF;

.field private final aq:Landroid/graphics/RectF;

.field private final ar:Landroid/graphics/Paint;

.field private as:F

.field private final at:Landroid/graphics/Rect;

.field private final au:Landroid/graphics/RectF;

.field private av:I

.field private aw:I

.field private ax:I

.field private ay:I

.field private az:F

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:I

.field private r:Lcom/alensw/ui/view/aj;

.field private s:Landroid/graphics/Bitmap;

.field private t:Ljava/lang/String;

.field private u:Landroid/text/StaticLayout;

.field private v:[Lcom/alensw/ui/view/ak;

.field private final w:Landroid/graphics/RectF;

.field private final x:Landroid/graphics/Paint;

.field private final y:Landroid/text/TextPaint;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alensw/ui/view/ImageGridView;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alensw/ui/view/ImageGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v11, -0x1

    invoke-direct {p0, p1, p2}, Lcom/alensw/ui/view/bp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alensw/ui/view/ImageGridView;->b:Z

    iput v2, p0, Lcom/alensw/ui/view/ImageGridView;->e:I

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alensw/ui/view/ak;

    iput-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->v:[Lcom/alensw/ui/view/ak;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->w:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->x:Landroid/graphics/Paint;

    new-instance v0, Landroid/text/TextPaint;

    const/16 v3, 0x81

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->y:Landroid/text/TextPaint;

    iput v11, p0, Lcom/alensw/ui/view/ImageGridView;->G:I

    iput v11, p0, Lcom/alensw/ui/view/ImageGridView;->H:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->I:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->J:I

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->S:F

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->T:F

    new-instance v0, Lcom/alensw/ui/view/ab;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/ab;-><init>(Lcom/alensw/ui/view/ImageGridView;)V

    iput-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->ac:Ljava/lang/Runnable;

    new-instance v0, Lcom/alensw/ui/view/ac;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/ac;-><init>(Lcom/alensw/ui/view/ImageGridView;)V

    iput-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->ad:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alensw/ui/view/ad;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/ad;-><init>(Lcom/alensw/ui/view/ImageGridView;)V

    iput-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->ae:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/alensw/ui/view/ae;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/ae;-><init>(Lcom/alensw/ui/view/ImageGridView;)V

    iput-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->af:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->an:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->ao:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->ap:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->aq:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v3, 0x5

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->ar:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->as:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->at:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->au:Landroid/graphics/RectF;

    iput v11, p0, Lcom/alensw/ui/view/ImageGridView;->av:I

    iput v11, p0, Lcom/alensw/ui/view/ImageGridView;->aw:I

    iput v11, p0, Lcom/alensw/ui/view/ImageGridView;->ax:I

    iput v11, p0, Lcom/alensw/ui/view/ImageGridView;->ay:I

    iput v4, p0, Lcom/alensw/ui/view/ImageGridView;->az:F

    iput v4, p0, Lcom/alensw/ui/view/ImageGridView;->aA:F

    iput v4, p0, Lcom/alensw/ui/view/ImageGridView;->aB:F

    new-instance v0, Lcom/alensw/ui/view/ai;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/ai;-><init>(Lcom/alensw/ui/view/ImageGridView;)V

    iput-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->aC:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/alensw/ui/view/ImageGridView;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/alensw/ui/view/ImageGridView;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    const v5, 0x1010036

    invoke-virtual {v3, v5, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/alensw/ui/view/ImageGridView;->B:I

    const v5, 0x7f010002

    invoke-virtual {v3, v5, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/alensw/ui/view/ImageGridView;->A:I

    const v5, 0x7f010003

    invoke-virtual {v3, v5, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alensw/ui/view/ImageGridView;->z:I

    const v1, 0x7f070000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v3, p0, Lcom/alensw/ui/view/ImageGridView;->o:Lcom/alensw/ui/view/bn;

    invoke-virtual {v3, v11, v1}, Lcom/alensw/ui/view/bn;->f(II)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/alensw/ui/view/ImageGridView;->V:F

    const/4 v3, 0x2

    iput v3, p0, Lcom/alensw/ui/view/ImageGridView;->M:I

    iget v3, p0, Lcom/alensw/ui/view/ImageGridView;->V:F

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->M:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/alensw/ui/view/ImageGridView;->O:I

    iput v3, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    iget v3, p0, Lcom/alensw/ui/view/ImageGridView;->V:F

    mul-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, p0, Lcom/alensw/ui/view/ImageGridView;->P:I

    const v3, 0x7f08000e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/alensw/ui/view/ImageGridView;->W:F

    iput v3, p0, Lcom/alensw/ui/view/ImageGridView;->U:F

    const v3, 0x7f08000f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/alensw/ui/view/ImageGridView;->aa:F

    iget v3, p0, Lcom/alensw/ui/view/ImageGridView;->V:F

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/alensw/ui/view/ImageGridView;->ab:F

    iget v3, p0, Lcom/alensw/ui/view/ImageGridView;->V:F

    const/high16 v4, 0x41e00000    # 28.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Lcom/alensw/b/h/b;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/alensw/ui/view/ImageGridView;->s:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/alensw/ui/view/ImageGridView;->s:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/alensw/ui/view/ImageGridView;->s:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v5, p0, Lcom/alensw/ui/view/ImageGridView;->V:F

    mul-float/2addr v5, v10

    float-to-int v5, v5

    new-instance v6, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v7, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v7}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v7, p0, Lcom/alensw/ui/view/ImageGridView;->V:F

    iget v8, p0, Lcom/alensw/ui/view/ImageGridView;->V:F

    div-float/2addr v8, v10

    iget v9, p0, Lcom/alensw/ui/view/ImageGridView;->V:F

    div-float/2addr v9, v10

    const/high16 v10, -0x60000000

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    sub-int v1, v3, v5

    sub-int v7, v3, v5

    invoke-virtual {v6, v5, v5, v1, v7}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    invoke-virtual {v6, v4}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    const v1, 0x7f05000a

    invoke-static {v0, v1, v11, v3}, Lcom/b/a/b;->a(Landroid/content/res/Resources;III)Lcom/b/a/l;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->ad:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/ImageGridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->ae:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/ImageGridView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alensw/ui/view/ImageGridView;F)F
    .locals 0

    iput p1, p0, Lcom/alensw/ui/view/ImageGridView;->ag:F

    return p1
.end method

.method public static a(F)I
    .locals 2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alensw/ui/view/ImageGridView;)I
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->H:I

    return v0
.end method

.method static synthetic a(Lcom/alensw/ui/view/ImageGridView;I)I
    .locals 0

    iput p1, p0, Lcom/alensw/ui/view/ImageGridView;->I:I

    return p1
.end method

.method static synthetic a(Lcom/alensw/ui/view/ImageGridView;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/ImageGridView;->ah:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic b(Lcom/alensw/ui/view/ImageGridView;I)I
    .locals 0

    iput p1, p0, Lcom/alensw/ui/view/ImageGridView;->J:I

    return p1
.end method

.method static synthetic b(Lcom/alensw/ui/view/ImageGridView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->ac:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/alensw/ui/view/ImageGridView;I)I
    .locals 0

    iput p1, p0, Lcom/alensw/ui/view/ImageGridView;->ax:I

    return p1
.end method

.method static synthetic c(Lcom/alensw/ui/view/ImageGridView;)Lcom/alensw/ui/view/aj;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->r:Lcom/alensw/ui/view/aj;

    return-object v0
.end method

.method static synthetic d(Lcom/alensw/ui/view/ImageGridView;)I
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->I:I

    return v0
.end method

.method static synthetic d(Lcom/alensw/ui/view/ImageGridView;I)I
    .locals 0

    iput p1, p0, Lcom/alensw/ui/view/ImageGridView;->ay:I

    return p1
.end method

.method static synthetic e(Lcom/alensw/ui/view/ImageGridView;)I
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->J:I

    return v0
.end method

.method static synthetic f(Lcom/alensw/ui/view/ImageGridView;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->ah:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic g(Lcom/alensw/ui/view/ImageGridView;)J
    .locals 2

    iget-wide v0, p0, Lcom/alensw/ui/view/ImageGridView;->aj:J

    return-wide v0
.end method

.method static synthetic h(Lcom/alensw/ui/view/ImageGridView;)I
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->al:I

    return v0
.end method

.method static synthetic i(Lcom/alensw/ui/view/ImageGridView;)I
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->F:I

    return v0
.end method

.method private i()V
    .locals 8

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/view/ImageGridView;->y:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->V:F

    const/high16 v1, 0x41900000    # 18.0f

    mul-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->B:I

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->t:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getClientWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v3, v3, 0xa

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->u:Landroid/text/StaticLayout;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->u:Landroid/text/StaticLayout;

    goto :goto_0
.end method

.method static synthetic j(Lcom/alensw/ui/view/ImageGridView;)I
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->E:I

    return v0
.end method

.method static synthetic k(Lcom/alensw/ui/view/ImageGridView;)F
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->V:F

    return v0
.end method

.method static synthetic l(Lcom/alensw/ui/view/ImageGridView;)F
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->aB:F

    return v0
.end method

.method static synthetic m(Lcom/alensw/ui/view/ImageGridView;)F
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->az:F

    return v0
.end method

.method static synthetic n(Lcom/alensw/ui/view/ImageGridView;)F
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->aA:F

    return v0
.end method

.method static synthetic o(Lcom/alensw/ui/view/ImageGridView;)I
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->ax:I

    return v0
.end method

.method static synthetic p(Lcom/alensw/ui/view/ImageGridView;)I
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->ay:I

    return v0
.end method


# virtual methods
.method public a(FF)J
    .locals 7

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->S:F

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    int-to-float v1, v1

    add-float v3, v0, v1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->T:F

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->O:I

    int-to-float v1, v1

    add-float v2, v0, v1

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float v4, p1, v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float v5, p2, v0

    iget-boolean v0, p0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    int-to-float v0, v0

    sub-float v0, v4, v0

    div-float/2addr v0, v3

    float-to-int v1, v0

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->O:I

    int-to-float v0, v0

    sub-float v0, v5, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v6, v1

    mul-float/2addr v3, v6

    iget v6, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    int-to-float v6, v0

    mul-float/2addr v2, v6

    iget v6, p0, Lcom/alensw/ui/view/ImageGridView;->O:I

    int-to-float v6, v6

    add-float/2addr v2, v6

    :goto_0
    cmpl-float v6, v4, v3

    if-ltz v6, :cond_1

    iget v6, p0, Lcom/alensw/ui/view/ImageGridView;->S:F

    add-float/2addr v3, v6

    cmpg-float v3, v4, v3

    if-gez v3, :cond_1

    cmpl-float v3, v5, v2

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/alensw/ui/view/ImageGridView;->T:F

    add-float/2addr v2, v3

    cmpg-float v2, v5, v2

    if-gez v2, :cond_1

    int-to-long v2, v1

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    int-to-long v0, v0

    or-long/2addr v0, v2

    :goto_1
    return-wide v0

    :cond_0
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->O:I

    int-to-float v0, v0

    sub-float v0, v5, v0

    div-float/2addr v0, v2

    float-to-int v1, v0

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    int-to-float v0, v0

    sub-float v0, v4, v0

    div-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v6, v1

    mul-float/2addr v2, v6

    iget v6, p0, Lcom/alensw/ui/view/ImageGridView;->O:I

    int-to-float v6, v6

    add-float/2addr v2, v6

    int-to-float v6, v0

    mul-float/2addr v3, v6

    iget v6, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method public a(ZJLandroid/graphics/RectF;)J
    .locals 10

    const-wide/16 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    iput-wide p2, p0, Lcom/alensw/ui/view/ImageGridView;->ai:J

    cmp-long v3, p2, v0

    if-gtz v3, :cond_1

    move-wide p2, v0

    :cond_0
    :goto_0
    return-wide p2

    :cond_1
    iput v8, p0, Lcom/alensw/ui/view/ImageGridView;->ag:F

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->ah:Landroid/graphics/RectF;

    if-eq v0, p4, :cond_2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->ah:Landroid/graphics/RectF;

    :cond_2
    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getHeight()I

    move-result v1

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p2

    iput-wide v4, p0, Lcom/alensw/ui/view/ImageGridView;->aj:J

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v3

    int-to-float v0, v0

    div-float v0, v3, v0

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v3

    int-to-float v1, v1

    div-float v1, v3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    if-eqz p1, :cond_3

    move v6, v0

    :goto_1
    if-eqz p1, :cond_4

    sub-float v7, v2, v0

    :goto_2
    if-eqz p1, :cond_5

    new-instance v0, Lcom/alensw/ui/view/af;

    invoke-direct {v0, p0, v6, v7}, Lcom/alensw/ui/view/af;-><init>(Lcom/alensw/ui/view/ImageGridView;FF)V

    :goto_3
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/alensw/ui/view/cc;

    invoke-direct {v1}, Lcom/alensw/ui/view/cc;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/alensw/ui/view/ah;

    invoke-direct {v1, p0, p1}, Lcom/alensw/ui/view/ah;-><init>(Lcom/alensw/ui/view/ImageGridView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/ImageGridView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    move v6, v2

    goto :goto_1

    :cond_4
    sub-float v7, v0, v2

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->au:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v8, v8, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance v0, Lcom/alensw/ui/view/ag;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alensw/ui/view/ImageGridView;->au:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/alensw/ui/view/ImageGridView;->au:Landroid/graphics/RectF;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/alensw/ui/view/ag;-><init>(Lcom/alensw/ui/view/ImageGridView;ZZLandroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->o:Lcom/alensw/ui/view/bn;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alensw/ui/view/bn;->a(Z)V

    goto :goto_3
.end method

.method public a(I)V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->G:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->G:I

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/ImageGridView;->d(I)Z

    :cond_0
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iput p1, p0, Lcom/alensw/ui/view/ImageGridView;->G:I

    :cond_1
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->G:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->G:I

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/ImageGridView;->d(I)Z

    :cond_2
    return-void
.end method

.method public a(IIZ)V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->r:Lcom/alensw/ui/view/aj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->af:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/ImageGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-ge p1, p2, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->r:Lcom/alensw/ui/view/aj;

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->al:I

    invoke-interface {v0, p1, p2, v1}, Lcom/alensw/ui/view/aj;->a(III)V

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->af:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/alensw/ui/view/ImageGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public a(IZ)V
    .locals 1

    iput p1, p0, Lcom/alensw/ui/view/ImageGridView;->e:I

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->W:F

    :goto_0
    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->U:F

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    return-void

    :cond_0
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->aa:F

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V
    .locals 10

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->ah:Landroid/graphics/RectF;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->ag:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->ag:F

    sub-float/2addr v0, v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/alensw/ui/view/ImageGridView;->ah:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float v1, v3, v1

    mul-float/2addr v1, v0

    iget-object v3, p0, Lcom/alensw/ui/view/ImageGridView;->ah:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float v2, v3, v2

    mul-float/2addr v2, v0

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->aq:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    move-object v6, v0

    :goto_0
    invoke-virtual {p0, p2}, Lcom/alensw/ui/view/ImageGridView;->e(I)Lcom/alensw/ui/view/ak;

    move-result-object v9

    iget v0, v9, Lcom/alensw/ui/view/ak;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    move v7, v0

    :goto_1
    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->isFocused()Z

    move-result v1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->H:I

    if-ne p2, v0, :cond_8

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    move v8, v0

    :goto_2
    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->n:Landroid/graphics/drawable/RippleDrawable;

    if-nez v0, :cond_1

    if-eqz v8, :cond_1

    if-nez v7, :cond_1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->e:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1, v6}, Lcom/alensw/ui/view/ImageGridView;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :cond_1
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->O:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v2, v0, v1

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->y:Landroid/text/TextPaint;

    const v1, -0x5f7f7f80

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/alensw/ui/view/ImageGridView;->S:F

    add-float/2addr v3, v0

    iget-object v5, p0, Lcom/alensw/ui/view/ImageGridView;->y:Landroid/text/TextPaint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->G:I

    if-eq p2, v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->ah:Landroid/graphics/RectF;

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/alensw/ui/view/ImageGridView;->b:Z

    if-eqz v0, :cond_b

    iget-object v0, v9, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/alensw/ui/view/ak;->b(Lcom/alensw/ui/view/ak;I)I

    :goto_3
    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->x:Landroid/graphics/Paint;

    invoke-static {v9}, Lcom/alensw/ui/view/ak;->b(Lcom/alensw/ui/view/ak;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_4
    if-eqz v8, :cond_c

    iget-boolean v0, p0, Lcom/alensw/ui/view/ImageGridView;->d:Z

    if-nez v0, :cond_c

    const/4 v4, 0x1

    :goto_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, v9

    move-object v3, v6

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/alensw/ui/view/ImageGridView;->a(Landroid/graphics/Canvas;Lcom/alensw/ui/view/ak;Landroid/graphics/RectF;ZZ)V

    :cond_3
    iget v0, v9, Lcom/alensw/ui/view/ak;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->r:Lcom/alensw/ui/view/aj;

    invoke-interface {v0, p2, p1, v6}, Lcom/alensw/ui/view/aj;->a(ILandroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :cond_4
    :goto_6
    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->n:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->aw:I

    if-ne p2, v0, :cond_5

    invoke-virtual {p0, p1, v6}, Lcom/alensw/ui/view/ImageGridView;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :cond_5
    return-void

    :cond_6
    move-object v6, p3

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x0

    move v8, v0

    goto/16 :goto_2

    :cond_9
    invoke-static {v9}, Lcom/alensw/ui/view/ak;->b(Lcom/alensw/ui/view/ak;)I

    move-result v0

    const/16 v1, 0xdf

    if-lt v0, v1, :cond_a

    const/16 v0, 0xff

    :goto_7
    invoke-static {v9, v0}, Lcom/alensw/ui/view/ak;->b(Lcom/alensw/ui/view/ak;I)I

    goto :goto_3

    :cond_a
    invoke-static {v9}, Lcom/alensw/ui/view/ak;->b(Lcom/alensw/ui/view/ak;)I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    goto :goto_7

    :cond_b
    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->x:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_4

    :cond_c
    const/4 v4, 0x0

    goto :goto_5

    :cond_d
    iget-object v0, v9, Lcom/alensw/ui/view/ak;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget v0, v9, Lcom/alensw/ui/view/ak;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p0, p1, v9, v6, v0}, Lcom/alensw/ui/view/ImageGridView;->a(Landroid/graphics/Canvas;Lcom/alensw/ui/view/ak;Landroid/graphics/RectF;Z)V

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected a(Landroid/graphics/Canvas;Lcom/alensw/ui/view/ak;Landroid/graphics/RectF;Z)V
    .locals 12

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->V:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v4, v0, v1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->V:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v5, v0, v1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->U:F

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->V:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    :goto_0
    iget v3, p0, Lcom/alensw/ui/view/ImageGridView;->B:I

    const v1, 0xffffff

    and-int/2addr v1, v3

    const/high16 v2, -0x60000000

    or-int/2addr v2, v1

    iget-object v1, p2, Lcom/alensw/ui/view/ak;->d:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v6, v1, v6

    iget-object v7, p0, Lcom/alensw/ui/view/ImageGridView;->y:Landroid/text/TextPaint;

    iget-object v8, p0, Lcom/alensw/ui/view/ImageGridView;->ap:Landroid/graphics/RectF;

    invoke-virtual {v8, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->e:I

    const/4 v9, 0x1

    if-ne v1, v9, :cond_6

    if-eqz v6, :cond_5

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->aa:F

    add-float/2addr v1, v5

    :goto_1
    add-float/2addr v1, v0

    const/high16 v9, 0x40a00000    # 5.0f

    mul-float/2addr v9, v5

    add-float/2addr v1, v9

    iget v9, v8, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v9, v1

    iput v1, v8, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->z:I

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v8, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v4, v1}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget v1, v8, Landroid/graphics/RectF;->top:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    iput v1, v8, Landroid/graphics/RectF;->top:F

    if-eqz v6, :cond_0

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->aa:F

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v4, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v5, v9

    add-float/2addr v4, v5

    iget v5, p0, Lcom/alensw/ui/view/ImageGridView;->aa:F

    add-float/2addr v4, v5

    invoke-virtual {p1, v6, v1, v4, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v0, v8, Landroid/graphics/RectF;->right:F

    iget v1, p3, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    const/4 v0, 0x1

    move v1, v0

    :goto_3
    if-eqz v1, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    :cond_2
    if-eqz p4, :cond_e

    move v0, v2

    :goto_4
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p2, Lcom/alensw/ui/view/ak;->c:Ljava/lang/String;

    iget v2, v8, Landroid/graphics/RectF;->left:F

    iget v3, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v2, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void

    :cond_4
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->U:F

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->e:I

    const/4 v9, 0x2

    if-ne v1, v9, :cond_9

    iget-object v1, p2, Lcom/alensw/ui/view/ak;->d:[Ljava/lang/String;

    array-length v5, v1

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->aa:F

    add-int/lit8 v9, v5, -0x1

    int-to-float v9, v9

    mul-float/2addr v1, v9

    add-float/2addr v1, v0

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v9

    sub-float v1, v9, v1

    add-int/lit8 v9, v5, 0x1

    int-to-float v9, v9

    div-float v9, v1, v9

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v10, p0, Lcom/alensw/ui/view/ImageGridView;->Q:I

    int-to-float v10, v10

    add-float/2addr v10, v4

    add-float/2addr v1, v10

    iput v1, v8, Landroid/graphics/RectF;->left:F

    iget v1, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v9

    iput v1, v8, Landroid/graphics/RectF;->top:F

    const/4 v1, 0x0

    invoke-virtual {v8, v4, v1}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v6, :cond_7

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p2, Lcom/alensw/ui/view/ak;->c:Ljava/lang/String;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget v10, p0, Lcom/alensw/ui/view/ImageGridView;->aa:F

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    iget v11, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v11

    add-float/2addr v1, v4

    iget v11, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v11, v10

    invoke-static {v1, v11}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v11, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v11, v0

    invoke-virtual {p1, v6, v1, v11, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v1, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v10

    sub-float/2addr v1, v4

    iput v1, v8, Landroid/graphics/RectF;->right:F

    :goto_5
    iget v6, v8, Landroid/graphics/RectF;->left:F

    iget v1, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    add-float/2addr v1, v9

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->aa:F

    add-float/2addr v4, v1

    const/4 v1, 0x1

    :goto_6
    if-ge v1, v5, :cond_8

    iget-object v10, p2, Lcom/alensw/ui/view/ak;->d:[Ljava/lang/String;

    aget-object v10, v10, v1

    if-eqz v10, :cond_8

    iget-object v10, p2, Lcom/alensw/ui/view/ak;->d:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {p1, v10, v6, v4, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v10, p0, Lcom/alensw/ui/view/ImageGridView;->aa:F

    add-float/2addr v10, v9

    add-float/2addr v4, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->aa:F

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_5

    :cond_8
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_2

    :cond_9
    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->e:I

    const/4 v9, 0x3

    if-ne v1, v9, :cond_1

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    iget v9, p0, Lcom/alensw/ui/view/ImageGridView;->ab:F

    sub-float/2addr v1, v9

    iput v1, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p2, Lcom/alensw/ui/view/ak;->c:Ljava/lang/String;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    if-eqz v6, :cond_c

    iget v5, p0, Lcom/alensw/ui/view/ImageGridView;->aa:F

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    iget v9, v8, Landroid/graphics/RectF;->left:F

    iget v10, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v9, v10

    add-float v10, v1, v5

    add-float/2addr v10, v4

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v10, v8, Landroid/graphics/RectF;->left:F

    cmpg-float v10, v10, v9

    if-gez v10, :cond_a

    iput v9, v8, Landroid/graphics/RectF;->left:F

    :cond_a
    iget v9, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v9

    add-float/2addr v1, v4

    iget v9, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v5

    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v9, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v0

    invoke-virtual {p1, v6, v1, v9, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v1, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    sub-float/2addr v1, v4

    iput v1, v8, Landroid/graphics/RectF;->right:F

    :cond_b
    :goto_7
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_2

    :cond_c
    iget v4, v8, Landroid/graphics/RectF;->left:F

    iget v5, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    sub-float v1, v4, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iget v4, v8, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_b

    iput v1, v8, Landroid/graphics/RectF;->left:F

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_3

    :cond_e
    move v0, v3

    goto/16 :goto_4
.end method

.method protected a(Landroid/graphics/Canvas;Lcom/alensw/ui/view/ak;Landroid/graphics/RectF;ZZ)V
    .locals 9

    const/4 v1, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alensw/ui/view/ImageGridView;->an:Landroid/graphics/RectF;

    invoke-virtual {v3, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/alensw/ui/view/ImageGridView;->x:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    if-eqz v0, :cond_0

    const/16 v5, 0xff

    if-ge v4, v5, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/alensw/ui/view/ImageGridView;->ah:Landroid/graphics/RectF;

    if-nez v5, :cond_2

    iget v5, p0, Lcom/alensw/ui/view/ImageGridView;->e:I

    if-gt v5, v1, :cond_2

    if-eqz v0, :cond_7

    rsub-int v1, v4, 0xff

    mul-int/lit8 v1, v1, 0x30

    div-int/lit16 v1, v1, 0xff

    :goto_1
    iget-object v4, p0, Lcom/alensw/ui/view/ImageGridView;->y:Landroid/text/TextPaint;

    const v5, 0x808080

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v1, v5

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setColor(I)V

    if-eqz p4, :cond_1

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->P:I

    int-to-float v1, v1

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->P:I

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    :cond_1
    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->Q:I

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->R:I

    invoke-virtual {p0, v3, v1, v4}, Lcom/alensw/ui/view/ImageGridView;->a(Landroid/graphics/RectF;II)V

    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->y:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_2
    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    invoke-virtual {v0}, Lcom/alensw/b/h/h;->e()I

    move-result v0

    iget-object v1, p2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    invoke-virtual {v1}, Lcom/alensw/b/h/h;->f()I

    move-result v1

    if-eqz p4, :cond_3

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->e:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->P:I

    int-to-float v4, v4

    iget v5, p0, Lcom/alensw/ui/view/ImageGridView;->P:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    :cond_3
    invoke-virtual {p0, v3, v0, v1}, Lcom/alensw/ui/view/ImageGridView;->a(Landroid/graphics/RectF;II)V

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v5, v0

    sub-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v5

    int-to-float v6, v1

    sub-float/2addr v5, v6

    iget-object v6, p2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    invoke-virtual {v6}, Lcom/alensw/b/h/h;->d()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_8

    sget-boolean v7, Lcom/alensw/ui/view/ImageGridView;->a:Z

    if-nez v7, :cond_8

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_8

    iget v0, v3, Landroid/graphics/RectF;->left:F

    div-float v1, v4, v8

    add-float/2addr v0, v1

    iget v1, v3, Landroid/graphics/RectF;->top:F

    div-float v2, v5, v8

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/alensw/ui/view/ImageGridView;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    :goto_2
    if-eqz p5, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->V:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alensw/ui/view/ImageGridView;->s:Landroid/graphics/Bitmap;

    iget v3, p3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v0

    int-to-float v1, v1

    sub-float v1, v3, v1

    iget v3, p3, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_5
    return-void

    :cond_6
    move v0, v2

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x30

    goto/16 :goto_1

    :cond_8
    if-eqz v6, :cond_9

    iget-object v4, p0, Lcom/alensw/ui/view/ImageGridView;->ao:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->ao:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_9
    iget-object v4, p0, Lcom/alensw/ui/view/ImageGridView;->ao:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->ao:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/alensw/ui/view/ImageGridView;->x:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/alensw/b/h/h;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_2
.end method

.method protected a(Landroid/graphics/RectF;II)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->Q:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    int-to-float v2, p2

    div-float v2, v0, v2

    int-to-float v3, p3

    div-float v3, v1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v3, p2

    mul-float/2addr v3, v2

    int-to-float v4, p3

    mul-float/2addr v2, v4

    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v3

    div-float/2addr v0, v5

    add-float/2addr v0, v4

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v3

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void

    :cond_1
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->U:F

    iget v2, p0, Lcom/alensw/ui/view/ImageGridView;->ab:F

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alensw/ui/view/ImageGridView;->b(FF)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->aw:I

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->av:I

    return-void
.end method

.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 2

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->H:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->ac:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/ImageGridView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/alensw/ui/view/aj;II)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/ImageGridView;->r:Lcom/alensw/ui/view/aj;

    iput p2, p0, Lcom/alensw/ui/view/ImageGridView;->Q:I

    iput p3, p0, Lcom/alensw/ui/view/ImageGridView;->R:I

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    return-void
.end method

.method public a()Z
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getCount()I

    move-result v4

    iget-boolean v0, p0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->S:F

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getPaddingLeft()I

    move-result v1

    sub-int v1, v2, v1

    iget v5, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    iget v5, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    div-float v0, v2, v0

    iget v2, p0, Lcom/alensw/ui/view/ImageGridView;->D:I

    :goto_0
    float-to-int v1, v1

    mul-int/2addr v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    mul-int/2addr v0, v2

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/alensw/ui/view/ImageGridView;->E:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/alensw/ui/view/ImageGridView;->F:I

    if-eq v2, v0, :cond_2

    :cond_0
    iput v1, p0, Lcom/alensw/ui/view/ImageGridView;->E:I

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->F:I

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->T:F

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->O:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getPaddingTop()I

    move-result v1

    sub-int v1, v2, v1

    iget v5, p0, Lcom/alensw/ui/view/ImageGridView;->O:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getHeight()I

    move-result v5

    add-int/2addr v2, v5

    iget v5, p0, Lcom/alensw/ui/view/ImageGridView;->O:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    div-float v0, v2, v0

    iget v2, p0, Lcom/alensw/ui/view/ImageGridView;->C:I

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public a(ILandroid/graphics/RectF;)Z
    .locals 3

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->C:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->D:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->S:F

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->T:F

    iget v2, p0, Lcom/alensw/ui/view/ImageGridView;->O:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-boolean v2, p0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alensw/ui/view/ImageGridView;->D:I

    div-int v2, p1, v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p2, Landroid/graphics/RectF;->left:F

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->D:I

    rem-int v0, p1, v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->O:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    :goto_0
    iget v0, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getScrollX()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    iget v0, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getScrollY()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->S:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->T:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget v2, p0, Lcom/alensw/ui/view/ImageGridView;->C:I

    rem-int v2, p1, v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p2, Landroid/graphics/RectF;->left:F

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->C:I

    div-int v0, p1, v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->O:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(FF)I
    .locals 8

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/alensw/ui/view/ImageGridView;->a(FF)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x20

    shr-long v4, v2, v1

    const-wide/32 v6, 0x7fffffff

    and-long/2addr v4, v6

    long-to-int v4, v4

    long-to-int v2, v2

    iget-boolean v1, p0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->D:I

    :goto_1
    mul-int/2addr v1, v4

    add-int/2addr v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->C:I

    goto :goto_1
.end method

.method public b(IZ)I
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->H:I

    if-ne v1, p1, :cond_0

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->H:I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->ac:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/alensw/ui/view/ImageGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->H:I

    if-eq v1, v0, :cond_1

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->H:I

    invoke-virtual {p0, v1}, Lcom/alensw/ui/view/ImageGridView;->d(I)Z

    :cond_1
    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_3

    :goto_1
    iput p1, p0, Lcom/alensw/ui/view/ImageGridView;->H:I

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->H:I

    if-eq v1, v0, :cond_2

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->H:I

    invoke-virtual {p0, v1}, Lcom/alensw/ui/view/ImageGridView;->d(I)Z

    if-eqz p2, :cond_2

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->H:I

    invoke-virtual {p0, v1}, Lcom/alensw/ui/view/ImageGridView;->c(I)V

    :cond_2
    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->H:I

    if-eq v1, v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/ImageGridView;->setPressed(Z)V

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->H:I

    goto :goto_0

    :cond_3
    move p1, v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->v:[Lcom/alensw/ui/view/ak;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->v:[Lcom/alensw/ui/view/ak;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->v:[Lcom/alensw/ui/view/ak;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/alensw/ui/view/ak;->a()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->invalidate()V

    return-void
.end method

.method public b(I)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alensw/ui/view/ImageGridView;->b(IZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->ac:Ljava/lang/Runnable;

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->l:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/alensw/ui/view/ImageGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alensw/ui/view/ImageGridView;->b(FF)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->aw:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alensw/ui/view/ImageGridView;->b(IZ)I

    return-void
.end method

.method public b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 2

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->H:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->ac:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/ImageGridView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public b(ILandroid/graphics/RectF;)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/alensw/ui/view/ImageGridView;->a(ILandroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->Q:I

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->R:I

    invoke-virtual {p0, p1}, Lcom/alensw/ui/view/ImageGridView;->e(I)Lcom/alensw/ui/view/ak;

    move-result-object v2

    iget-object v3, v2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    if-eqz v3, :cond_0

    iget-object v0, v2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    invoke-virtual {v0}, Lcom/alensw/b/h/h;->g()I

    move-result v1

    iget-object v0, v2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    invoke-virtual {v0}, Lcom/alensw/b/h/h;->h()I

    move-result v0

    iget-object v3, v2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    invoke-virtual {v3}, Lcom/alensw/b/h/h;->m()I

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    :cond_0
    invoke-virtual {p0, p2, v1, v0}, Lcom/alensw/ui/view/ImageGridView;->a(Landroid/graphics/RectF;II)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->af:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/ImageGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(FF)V
    .locals 8

    iget-boolean v0, p0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->S:F

    mul-float/2addr p1, v0

    :goto_0
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getScrollY()I

    move-result v4

    iget v5, p0, Lcom/alensw/ui/view/ImageGridView;->i:I

    iget v6, p0, Lcom/alensw/ui/view/ImageGridView;->i:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/alensw/ui/view/ImageGridView;->a(IIIIIIZ)Z

    return-void

    :cond_0
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->T:F

    mul-float/2addr p2, v0

    goto :goto_0
.end method

.method public c(I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->w:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lcom/alensw/ui/view/ImageGridView;->a(ILandroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getClientWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->left:F

    int-to-float v6, v2

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    iget v0, v0, Landroid/graphics/RectF;->left:F

    int-to-float v2, v2

    sub-float/2addr v0, v2

    add-float/2addr v0, v4

    :goto_0
    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0, v7}, Lcom/alensw/ui/view/ImageGridView;->scrollBy(II)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v2, v0, Landroid/graphics/RectF;->right:F

    int-to-float v5, v3

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_5

    iget v0, v0, Landroid/graphics/RectF;->right:F

    int-to-float v2, v3

    sub-float/2addr v0, v2

    sub-float/2addr v0, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getClientHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/alensw/ui/view/ImageGridView;->O:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->top:F

    int-to-float v6, v2

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3

    iget v0, v0, Landroid/graphics/RectF;->top:F

    int-to-float v2, v2

    sub-float/2addr v0, v2

    add-float/2addr v0, v4

    :goto_2
    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v7, v0}, Lcom/alensw/ui/view/ImageGridView;->scrollBy(II)V

    goto :goto_1

    :cond_3
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, v3

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, v3

    sub-float/2addr v0, v2

    sub-float/2addr v0, v4

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public c(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v1, -0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/alensw/ui/view/ImageGridView;->b(FF)I

    move-result v0

    iget v2, p0, Lcom/alensw/ui/view/ImageGridView;->av:I

    if-ne v0, v2, :cond_1

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/alensw/ui/view/ImageGridView;->b(IZ)I

    iput v1, p0, Lcom/alensw/ui/view/ImageGridView;->av:I

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->H:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->performClick()Z

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->K:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->L:I

    return v0
.end method

.method protected d()V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/high16 v5, 0x43c80000    # 400.0f

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getClientWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getClientHeight()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getCount()I

    move-result v3

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->V:F

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->M:I

    int-to-float v4, v4

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->O:I

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    iget-boolean v0, p0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->e:I

    if-ne v0, v8, :cond_0

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    int-to-float v0, v0

    sub-float v0, v2, v0

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->R:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    invoke-static {v0}, Lcom/alensw/ui/view/ImageGridView;->a(F)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->D:I

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->V:F

    mul-float/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->S:F

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->O:I

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->D:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v0, v4

    int-to-float v0, v0

    sub-float v0, v2, v0

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->D:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->T:F

    :goto_0
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->D:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    iget v3, p0, Lcom/alensw/ui/view/ImageGridView;->D:I

    div-int/2addr v0, v3

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->C:I

    :goto_1
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->S:F

    iget v3, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget v3, p0, Lcom/alensw/ui/view/ImageGridView;->C:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->K:I

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->T:F

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->O:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->D:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->O:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->L:I

    return-void

    :cond_0
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->R:I

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->e:I

    if-ne v4, v6, :cond_1

    int-to-float v0, v0

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->U:F

    iget v5, p0, Lcom/alensw/ui/view/ImageGridView;->ab:F

    add-float/2addr v4, v5

    add-float/2addr v0, v4

    float-to-int v0, v0

    :cond_1
    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->O:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    iget v5, p0, Lcom/alensw/ui/view/ImageGridView;->O:I

    add-int/2addr v0, v5

    int-to-float v0, v0

    div-float v0, v4, v0

    invoke-static {v0}, Lcom/alensw/ui/view/ImageGridView;->a(F)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->D:I

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->D:I

    if-le v0, v9, :cond_2

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->D:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v7, :cond_2

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->D:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->D:I

    :cond_2
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->O:I

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->D:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v0, v4

    int-to-float v0, v0

    sub-float v0, v2, v0

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->D:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->T:F

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->e:I

    if-ne v0, v6, :cond_3

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->T:F

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->U:F

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->ab:F

    sub-float/2addr v0, v4

    :goto_2
    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->Q:I

    int-to-float v4, v4

    mul-float/2addr v0, v4

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->R:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->S:F

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->T:F

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->e:I

    if-ne v0, v8, :cond_6

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->V:F

    mul-float/2addr v4, v5

    div-float/2addr v0, v4

    invoke-static {v0}, Lcom/alensw/ui/view/ImageGridView;->a(F)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->C:I

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->C:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v0, v4

    int-to-float v0, v0

    sub-float v0, v1, v0

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->C:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->S:F

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->R:I

    int-to-float v0, v0

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->T:F

    :cond_5
    :goto_3
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->C:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    iget v3, p0, Lcom/alensw/ui/view/ImageGridView;->C:I

    div-int/2addr v0, v3

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->D:I

    goto/16 :goto_1

    :cond_6
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->Q:I

    iget v5, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v0, v4

    invoke-static {v0}, Lcom/alensw/ui/view/ImageGridView;->a(F)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->C:I

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->C:I

    if-le v0, v9, :cond_7

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->C:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v7, :cond_7

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->C:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->C:I

    :cond_7
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->N:I

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->C:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v0, v4

    int-to-float v0, v0

    sub-float v0, v1, v0

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->C:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->S:F

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->S:F

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->R:I

    int-to-float v4, v4

    mul-float/2addr v0, v4

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->Q:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->T:F

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->e:I

    if-ne v0, v6, :cond_5

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->T:F

    iget v4, p0, Lcom/alensw/ui/view/ImageGridView;->U:F

    iget v5, p0, Lcom/alensw/ui/view/ImageGridView;->ab:F

    add-float/2addr v4, v5

    add-float/2addr v0, v4

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->T:F

    goto :goto_3
.end method

.method public d(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->aA:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->az:F

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->aB:F

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->H:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->performLongClick()Z

    iget-boolean v0, p0, Lcom/alensw/ui/view/ImageGridView;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->aC:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/ImageGridView;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public d(I)Z
    .locals 4

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->E:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->F:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->w:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lcom/alensw/ui/view/ImageGridView;->a(ILandroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->v:[Lcom/alensw/ui/view/ak;

    iget-object v2, p0, Lcom/alensw/ui/view/ImageGridView;->v:[Lcom/alensw/ui/view/ak;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alensw/ui/view/ak;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/alensw/ui/view/ImageGridView;->invalidate(IIII)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e(I)Lcom/alensw/ui/view/ak;
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->v:[Lcom/alensw/ui/view/ak;

    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->v:[Lcom/alensw/ui/view/ak;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->v:[Lcom/alensw/ui/view/ak;

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->v:[Lcom/alensw/ui/view/ak;

    array-length v0, v0

    rem-int v2, p1, v0

    new-instance v0, Lcom/alensw/ui/view/ak;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/ak;-><init>(Lcom/alensw/ui/view/ImageGridView;)V

    aput-object v0, v1, v2

    :cond_0
    invoke-static {v0}, Lcom/alensw/ui/view/ak;->a(Lcom/alensw/ui/view/ak;)I

    move-result v1

    if-eq v1, p1, :cond_4

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    iget-object v2, v0, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    if-nez v2, :cond_3

    :cond_1
    invoke-virtual {v0}, Lcom/alensw/ui/view/ak;->a()V

    invoke-static {v0, p1}, Lcom/alensw/ui/view/ak;->a(Lcom/alensw/ui/view/ak;I)I

    if-eqz v1, :cond_2

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcom/alensw/ui/view/ak;->b(Lcom/alensw/ui/view/ak;I)I

    :cond_2
    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->r:Lcom/alensw/ui/view/aj;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->r:Lcom/alensw/ui/view/aj;

    invoke-interface {v1, p1, v0}, Lcom/alensw/ui/view/aj;->a(ILcom/alensw/ui/view/ak;)V

    :cond_3
    return-object v0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->E:I

    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->w:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/alensw/ui/view/ImageGridView;->a(ILandroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/alensw/ui/view/ImageGridView;->D:I

    add-int/2addr v0, v2

    :cond_0
    iget-boolean v2, p0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    if-nez v2, :cond_1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->C:I

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->r:Lcom/alensw/ui/view/aj;

    if-eqz v1, :cond_2

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->r:Lcom/alensw/ui/view/aj;

    invoke-interface {v1}, Lcom/alensw/ui/view/aj;->a()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->r:Lcom/alensw/ui/view/aj;

    invoke-interface {v1, v0}, Lcom/alensw/ui/view/aj;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->r:Lcom/alensw/ui/view/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->r:Lcom/alensw/ui/view/aj;

    invoke-interface {v0}, Lcom/alensw/ui/view/aj;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getFirstVisible()I
    .locals 2

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->E:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v1, -0xa

    add-int/lit8 v3, v0, 0x14

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final getLastVisible()I
    .locals 2

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->F:I

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getScrollPos()F
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getScrollPosX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getScrollPosY()F

    move-result v0

    goto :goto_0
.end method

.method public final getSelectedIndex()I
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->H:I

    return v0
.end method

.method public final getVisibleCount()I
    .locals 2

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->F:I

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->E:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->v:[Lcom/alensw/ui/view/ak;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->v:[Lcom/alensw/ui/view/ak;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/alensw/ui/view/ImageGridView;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->v:[Lcom/alensw/ui/view/ak;

    aget-object v1, v1, v0

    iput-object v2, v1, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    :cond_0
    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->v:[Lcom/alensw/ui/view/ak;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/alensw/ui/view/ak;->a()V

    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->v:[Lcom/alensw/ui/view/ak;

    aput-object v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lcom/alensw/ui/view/bp;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/ui/view/ImageGridView;->ah:Landroid/graphics/RectF;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/alensw/ui/view/ImageGridView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    instance-of v5, v2, Lcom/alensw/ui/view/bu;

    if-eqz v5, :cond_f

    check-cast v2, Lcom/alensw/ui/view/bu;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/ui/view/ImageGridView;->au:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/alensw/ui/view/ImageGridView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Lcom/alensw/ui/view/ImageGridView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v2, v4, v4}, Lcom/alensw/ui/view/bu;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/alensw/ui/view/ImageGridView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/alensw/ui/view/ImageGridView;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v3, v5}, Landroid/graphics/RectF;->offset(FF)V

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->save(I)I

    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    const/4 v3, 0x1

    move v9, v2

    move v10, v3

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alensw/ui/view/ImageGridView;->getCount()I

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alensw/ui/view/ImageGridView;->at:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alensw/ui/view/ImageGridView;->N:I

    invoke-virtual/range {p0 .. p0}, Lcom/alensw/ui/view/ImageGridView;->getPaddingLeft()I

    move-result v4

    add-int v7, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alensw/ui/view/ImageGridView;->O:I

    invoke-virtual/range {p0 .. p0}, Lcom/alensw/ui/view/ImageGridView;->getPaddingTop()I

    move-result v4

    add-int v8, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alensw/ui/view/ImageGridView;->E:I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alensw/ui/view/ImageGridView;->F:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alensw/ui/view/ImageGridView;->D:I

    :goto_2
    div-int v3, v4, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alensw/ui/view/ImageGridView;->S:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alensw/ui/view/ImageGridView;->N:I

    int-to-float v12, v12

    add-float/2addr v12, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alensw/ui/view/ImageGridView;->T:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alensw/ui/view/ImageGridView;->O:I

    int-to-float v13, v13

    add-float/2addr v13, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alensw/ui/view/ImageGridView;->w:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    if-eqz v5, :cond_3

    int-to-float v5, v7

    int-to-float v3, v3

    mul-float/2addr v3, v12

    add-float/2addr v3, v5

    iput v3, v14, Landroid/graphics/RectF;->left:F

    int-to-float v3, v8

    iput v3, v14, Landroid/graphics/RectF;->top:F

    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/ui/view/ImageGridView;->x:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alensw/ui/view/ImageGridView;->ah:Landroid/graphics/RectF;

    if-nez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/alensw/ui/view/ImageGridView;->f()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    move v5, v4

    move v4, v10

    :goto_5
    if-ge v5, v11, :cond_8

    iget v3, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/alensw/ui/view/ImageGridView;->S:F

    add-float/2addr v3, v10

    iput v3, v14, Landroid/graphics/RectF;->right:F

    iget v3, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/alensw/ui/view/ImageGridView;->T:F

    add-float/2addr v3, v10

    iput v3, v14, Landroid/graphics/RectF;->bottom:F

    iget v3, v6, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    iget v15, v6, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v3, v10, v15, v0}, Landroid/graphics/RectF;->intersects(FFFF)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v14}, Lcom/alensw/ui/view/ImageGridView;->a(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alensw/ui/view/ImageGridView;->x:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    const/16 v10, 0xff

    if-ge v3, v10, :cond_5

    const/4 v3, 0x1

    :goto_6
    or-int/2addr v3, v4

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    if-eqz v4, :cond_6

    iget v4, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v13

    iput v4, v14, Landroid/graphics/RectF;->top:F

    :goto_8
    add-int/lit8 v4, v5, 0x1

    rem-int/2addr v4, v2

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    if-eqz v4, :cond_7

    int-to-float v4, v8

    iput v4, v14, Landroid/graphics/RectF;->top:F

    iget v4, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v12

    iput v4, v14, Landroid/graphics/RectF;->left:F

    :cond_0
    :goto_9
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    goto :goto_5

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alensw/ui/view/ImageGridView;->C:I

    goto/16 :goto_2

    :cond_3
    int-to-float v5, v7

    iput v5, v14, Landroid/graphics/RectF;->left:F

    int-to-float v5, v8

    int-to-float v3, v3

    mul-float/2addr v3, v13

    add-float/2addr v3, v5

    iput v3, v14, Landroid/graphics/RectF;->top:F

    goto/16 :goto_3

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    :cond_6
    iget v4, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v12

    iput v4, v14, Landroid/graphics/RectF;->left:F

    goto :goto_8

    :cond_7
    int-to-float v4, v7

    iput v4, v14, Landroid/graphics/RectF;->left:F

    iget v4, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v13

    iput v4, v14, Landroid/graphics/RectF;->top:F

    goto :goto_9

    :cond_8
    move v10, v4

    :cond_9
    if-eqz v9, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    if-eqz v10, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/alensw/ui/view/ImageGridView;->g()V

    :cond_b
    return-void

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/ui/view/ImageGridView;->t:Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/ui/view/ImageGridView;->u:Landroid/text/StaticLayout;

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/alensw/ui/view/ImageGridView;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alensw/ui/view/ImageGridView;->V:F

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float v13, v3, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alensw/ui/view/ImageGridView;->y:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alensw/ui/view/ImageGridView;->V:F

    const/high16 v4, 0x41900000    # 18.0f

    mul-float/2addr v3, v4

    invoke-virtual {v8, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alensw/ui/view/ImageGridView;->B:I

    invoke-virtual {v8, v3}, Landroid/text/TextPaint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alensw/ui/view/ImageGridView;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/ui/view/ImageGridView;->u:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v14

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/alensw/ui/view/ImageGridView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float v6, v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/alensw/ui/view/ImageGridView;->getClientHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v4, v14

    mul-float/2addr v4, v13

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alensw/ui/view/ImageGridView;->V:F

    add-float/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/alensw/ui/view/ImageGridView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float v5, v2, v4

    const/4 v4, 0x0

    const/4 v2, 0x0

    move v11, v2

    move v12, v5

    :goto_a
    if-ge v11, v14, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/ui/view/ImageGridView;->u:Landroid/text/StaticLayout;

    invoke-virtual {v2, v11}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v5

    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    move-result v2

    sub-float v7, v12, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    add-float v4, v12, v13

    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move v12, v4

    move v4, v5

    goto :goto_a

    :cond_d
    move v3, v4

    goto/16 :goto_7

    :cond_e
    move v9, v2

    move v10, v3

    goto/16 :goto_1

    :cond_f
    move v9, v4

    move v10, v3

    goto/16 :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v3, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getCount()I

    move-result v4

    iget-boolean v0, p0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->D:I

    :goto_0
    iget-boolean v2, p0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    if-eqz v2, :cond_2

    move v2, v1

    :goto_1
    iget v5, p0, Lcom/alensw/ui/view/ImageGridView;->H:I

    if-eq v5, v3, :cond_5

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/alensw/ui/view/bp;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_2
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/alensw/ui/view/ImageGridView;->C:I

    goto :goto_1

    :pswitch_0
    sub-int v0, v5, v0

    :goto_3
    if-ltz v0, :cond_3

    if-lt v0, v4, :cond_4

    :cond_3
    move v0, v3

    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/alensw/ui/view/ImageGridView;->b(IZ)I

    if-ne v0, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_2

    :pswitch_1
    add-int/2addr v0, v5

    goto :goto_3

    :pswitch_2
    sub-int v0, v5, v2

    goto :goto_3

    :pswitch_3
    add-int v0, v5, v2

    goto :goto_3

    :cond_5
    packed-switch p1, :pswitch_data_1

    invoke-super {p0, p1, p2}, Lcom/alensw/ui/view/bp;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_2

    :pswitch_4
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->E:I

    iget-boolean v2, p0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/alensw/ui/view/ImageGridView;->w:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v2}, Lcom/alensw/ui/view/ImageGridView;->a(ILandroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/alensw/ui/view/ImageGridView;->w:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getPaddingLeft()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    cmpg-float v2, v2, v5

    if-gez v2, :cond_6

    iget v2, p0, Lcom/alensw/ui/view/ImageGridView;->D:I

    add-int/2addr v0, v2

    :cond_6
    :goto_4
    add-int/lit8 v2, v4, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/alensw/ui/view/ImageGridView;->w:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v2}, Lcom/alensw/ui/view/ImageGridView;->a(ILandroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/alensw/ui/view/ImageGridView;->w:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    cmpg-float v2, v2, v5

    if-gez v2, :cond_6

    iget v2, p0, Lcom/alensw/ui/view/ImageGridView;->C:I

    add-int/2addr v0, v2

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const/4 v5, 0x0

    invoke-super/range {p0 .. p5}, Lcom/alensw/ui/view/bp;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    if-lez v0, :cond_2

    if-lez v1, :cond_2

    iget-boolean v0, p0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getScrollRangeX()I

    move-result v0

    :goto_0
    iget v3, p0, Lcom/alensw/ui/view/ImageGridView;->F:I

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->am:F

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->d()V

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getCount()I

    move-result v4

    iget v2, p0, Lcom/alensw/ui/view/ImageGridView;->ak:I

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/alensw/ui/view/ImageGridView;->ak:I

    if-eq v2, v4, :cond_7

    iget-boolean v2, p0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getScrollRangeX()I

    move-result v2

    :goto_1
    if-lez v2, :cond_7

    int-to-float v0, v0

    mul-float/2addr v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    :goto_2
    iput v4, p0, Lcom/alensw/ui/view/ImageGridView;->ak:I

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/ImageGridView;->setScrollPos(F)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->F:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->al:I

    :cond_0
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->F:I

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->E:I

    sub-int v1, v0, v1

    iget-boolean v0, p0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->D:I

    :goto_3
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    shr-int/lit8 v0, v0, 0x2

    shl-int/lit8 v0, v0, 0x2

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->v:[Lcom/alensw/ui/view/ak;

    array-length v1, v1

    if-ge v1, v0, :cond_1

    new-array v0, v0, [Lcom/alensw/ui/view/ak;

    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->v:[Lcom/alensw/ui/view/ak;

    iget-object v2, p0, Lcom/alensw/ui/view/ImageGridView;->v:[Lcom/alensw/ui/view/ak;

    array-length v2, v2

    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->v:[Lcom/alensw/ui/view/ak;

    :cond_1
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->E:I

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->F:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/alensw/ui/view/ImageGridView;->a(IIZ)V

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->o:Lcom/alensw/ui/view/bn;

    iget-boolean v1, p0, Lcom/alensw/ui/view/ImageGridView;->h:Z

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/bn;->c(Z)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->b()V

    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/alensw/ui/view/ImageGridView;->i()V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getScrollRangeY()I

    move-result v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getScrollRangeY()I

    move-result v2

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->C:I

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method protected onScrollChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/alensw/ui/view/bp;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getScrollPos()F

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->am:F

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    if-eqz v0, :cond_1

    sub-int v0, p1, p3

    :goto_0
    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->al:I

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->E:I

    iget v1, p0, Lcom/alensw/ui/view/ImageGridView;->F:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/alensw/ui/view/ImageGridView;->a(IIZ)V

    :cond_0
    return-void

    :cond_1
    sub-int v0, p2, p4

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Lcom/alensw/ui/view/bp;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->ah:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->ag:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/alensw/ui/view/ImageGridView;->ai:J

    iget-object v1, p0, Lcom/alensw/ui/view/ImageGridView;->ah:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/alensw/ui/view/ImageGridView;->a(ZJLandroid/graphics/RectF;)J

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v3, -0x1

    iget-boolean v0, p0, Lcom/alensw/ui/view/ImageGridView;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->H:I

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alensw/ui/view/bp;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->aA:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->aB:F

    goto :goto_0

    :pswitch_1
    iput v3, p0, Lcom/alensw/ui/view/ImageGridView;->ax:I

    iput v3, p0, Lcom/alensw/ui/view/ImageGridView;->ay:I

    iput v1, p0, Lcom/alensw/ui/view/ImageGridView;->az:F

    iput v1, p0, Lcom/alensw/ui/view/ImageGridView;->aA:F

    iput v1, p0, Lcom/alensw/ui/view/ImageGridView;->aB:F

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->aC:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/ImageGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->H:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/alensw/ui/view/ImageGridView;->b(FF)I

    move-result v1

    if-eq v0, v1, :cond_1

    const v0, 0x7fffffff

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->I:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->J:I

    :cond_1
    iget v0, p0, Lcom/alensw/ui/view/ImageGridView;->H:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->ac:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/ImageGridView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEmptyText(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/alensw/ui/view/ImageGridView;->t:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alensw/ui/view/ImageGridView;->i()V

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/alensw/ui/view/ImageGridView;->scrollTo(II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/ui/view/ImageGridView;->am:F

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setHorizontal(Z)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->p:Landroid/support/v4/widget/k;

    invoke-virtual {v0}, Landroid/support/v4/widget/k;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/ImageGridView;->p:Landroid/support/v4/widget/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/k;->a(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setMultiSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alensw/ui/view/ImageGridView;->d:Z

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->b()V

    return-void
.end method

.method public setScrollPos(F)V
    .locals 1

    iput p1, p0, Lcom/alensw/ui/view/ImageGridView;->am:F

    iget-boolean v0, p0, Lcom/alensw/ui/view/ImageGridView;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alensw/ui/view/ImageGridView;->setScrollPosX(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/alensw/ui/view/ImageGridView;->setScrollPosY(F)V

    goto :goto_0
.end method

.method public setSpaceWidth(I)V
    .locals 0

    iput p1, p0, Lcom/alensw/ui/view/ImageGridView;->M:I

    invoke-virtual {p0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    return-void
.end method

.method public setTextMode(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alensw/ui/view/ImageGridView;->a(IZ)V

    return-void
.end method
