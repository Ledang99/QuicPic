.class public Lcom/alensw/b/h/j;
.super Lcom/alensw/b/h/h;


# static fields
.field protected static c:Lcom/alensw/b/k/a;


# instance fields
.field public d:I

.field public h:Ljava/lang/String;

.field public i:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/alensw/b/k/a;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alensw/b/k/a;-><init>(IIII)V

    sput-object v0, Lcom/alensw/b/h/j;->c:Lcom/alensw/b/k/a;

    return-void
.end method

.method public constructor <init>(IIILandroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/alensw/b/h/h;-><init>(IIII)V

    const-string v0, "image/bmp"

    iput-object v0, p0, Lcom/alensw/b/h/j;->h:Ljava/lang/String;

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/alensw/b/h/j;->i:Landroid/net/Uri;

    invoke-direct {p0, p3, p4, p5}, Lcom/alensw/b/h/j;->a(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/alensw/b/h/h;-><init>(Landroid/graphics/Bitmap;)V

    const-string v0, "image/bmp"

    iput-object v0, p0, Lcom/alensw/b/h/j;->h:Ljava/lang/String;

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/alensw/b/h/j;->i:Landroid/net/Uri;

    const/4 v0, 0x0

    const-string v1, "image/bmp"

    invoke-direct {p0, p2, v0, v1}, Lcom/alensw/b/h/j;->a(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;ILandroid/net/Uri;Lcom/alensw/b/h/a;)V
    .locals 2

    iget v0, p4, Lcom/alensw/b/h/a;->b:I

    iget v1, p4, Lcom/alensw/b/h/a;->c:I

    invoke-direct {p0, p1, v0, v1}, Lcom/alensw/b/h/h;-><init>(Landroid/graphics/Bitmap;II)V

    const-string v0, "image/bmp"

    iput-object v0, p0, Lcom/alensw/b/h/j;->h:Ljava/lang/String;

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/alensw/b/h/j;->i:Landroid/net/Uri;

    iget-object v0, p4, Lcom/alensw/b/h/a;->outMimeType:Ljava/lang/String;

    invoke-direct {p0, p2, p3, v0}, Lcom/alensw/b/h/j;->a(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/alensw/b/h/a;)V
    .locals 4

    iget v0, p2, Lcom/alensw/b/h/a;->outWidth:I

    iget v1, p2, Lcom/alensw/b/h/a;->outHeight:I

    iget v2, p2, Lcom/alensw/b/h/a;->b:I

    iget v3, p2, Lcom/alensw/b/h/a;->c:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alensw/b/h/h;-><init>(IIII)V

    const-string v0, "image/bmp"

    iput-object v0, p0, Lcom/alensw/b/h/j;->h:Ljava/lang/String;

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/alensw/b/h/j;->i:Landroid/net/Uri;

    invoke-virtual {p2}, Lcom/alensw/b/h/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iget-object v1, p2, Lcom/alensw/b/h/a;->outMimeType:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/alensw/b/h/j;->a(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([F)F
    .locals 4

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    float-to-double v2, v0

    float-to-double v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    const/4 v1, -0x1

    if-eqz p0, :cond_1

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_2

    const-string v0, ""

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a(ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    iput p1, p0, Lcom/alensw/b/h/j;->d:I

    if-eqz p3, :cond_0

    :goto_0
    iput-object p3, p0, Lcom/alensw/b/h/j;->h:Ljava/lang/String;

    if-eqz p2, :cond_1

    :goto_1
    iput-object p2, p0, Lcom/alensw/b/h/j;->i:Landroid/net/Uri;

    iget-object v0, p0, Lcom/alensw/b/h/j;->b:Lcom/alensw/b/h/i;

    iget-object v1, p0, Lcom/alensw/b/h/j;->i:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alensw/b/h/j;->a(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/alensw/b/h/i;->e:Z

    return-void

    :cond_0
    const-string p3, "image/bmp"

    goto :goto_0

    :cond_1
    sget-object p2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alensw/b/h/j;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b([F)F
    .locals 4

    const/4 v0, 0x3

    aget v0, p0, v0

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alensw/b/h/j;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "jps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mpo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(IILandroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/alensw/b/h/j;Landroid/graphics/Matrix;Landroid/graphics/Paint;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/b/h/j;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alensw/b/h/j;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/alensw/b/h/j;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/alensw/b/h/j;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/net/Uri;)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/h/j;->i:Landroid/net/Uri;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/alensw/b/h/j;->i:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/graphics/Paint;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c()Lcom/alensw/b/h/j;
    .locals 1

    invoke-super {p0}, Lcom/alensw/b/h/h;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/h/j;

    return-object v0
.end method

.method public synthetic l()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/b/h/j;->c()Lcom/alensw/b/h/j;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/alensw/b/h/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alensw/b/h/j;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alensw/b/h/j;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/b/h/j;->i:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
