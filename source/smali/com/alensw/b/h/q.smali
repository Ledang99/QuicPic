.class Lcom/alensw/b/h/q;
.super Lcom/alensw/b/h/h;


# instance fields
.field protected final a:Z

.field protected final c:I

.field final synthetic d:Lcom/alensw/b/h/n;


# direct methods
.method public constructor <init>(Lcom/alensw/b/h/n;III)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/alensw/b/h/q;->d:Lcom/alensw/b/h/n;

    invoke-direct {p0, p3, p4, v0, v0}, Lcom/alensw/b/h/h;-><init>(IIII)V

    iput-boolean v0, p0, Lcom/alensw/b/h/q;->a:Z

    iput p2, p0, Lcom/alensw/b/h/q;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/alensw/b/h/n;ILandroid/graphics/Bitmap;)V
    .locals 2

    iput-object p1, p0, Lcom/alensw/b/h/q;->d:Lcom/alensw/b/h/n;

    invoke-direct {p0, p3}, Lcom/alensw/b/h/h;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alensw/b/h/q;->a:Z

    iput p2, p0, Lcom/alensw/b/h/q;->c:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p1}, Lcom/alensw/b/h/n;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/alensw/b/h/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alensw/b/h/q;->c:I

    invoke-static {v1}, Lcom/alensw/b/h/m;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
