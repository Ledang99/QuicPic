.class Lcom/alensw/ui/c/bq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/view/aj;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/bf;

.field private b:I


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->j()I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 6

    const-wide/16 v4, 0x3e8

    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0, p1}, Lcom/alensw/a/e;->e(I)Lcom/alensw/a/d;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget v1, v1, Lcom/alensw/ui/c/bf;->j:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget v1, v1, Lcom/alensw/ui/c/bf;->j:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    :cond_0
    iget v0, v0, Lcom/alensw/a/d;->e:I

    int-to-long v0, v0

    mul-long/2addr v0, v4

    invoke-static {v0, v1}, Lcom/alensw/PicFolder/QuickApp;->a(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget v1, v1, Lcom/alensw/ui/c/bf;->j:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget v1, v1, Lcom/alensw/ui/c/bf;->j:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    :cond_2
    iget v0, v0, Lcom/alensw/a/d;->d:I

    int-to-long v0, v0

    mul-long/2addr v0, v4

    invoke-static {v0, v1}, Lcom/alensw/PicFolder/QuickApp;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget v1, v1, Lcom/alensw/ui/c/bf;->j:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget v1, v1, Lcom/alensw/ui/c/bf;->j:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v1, v1, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    iget-wide v2, v0, Lcom/alensw/a/d;->f:J

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/c/bf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(III)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget v2, v2, Lcom/alensw/ui/c/bf;->H:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p3, :cond_6

    if-ltz p3, :cond_5

    :cond_2
    :goto_0
    iget v2, p0, Lcom/alensw/ui/c/bq;->b:I

    if-eq v2, p3, :cond_3

    iput p3, p0, Lcom/alensw/ui/c/bq;->b:I

    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->t:Lcom/alensw/a/ah;

    invoke-virtual {v2, v1}, Lcom/alensw/a/ah;->a(Z)V

    :cond_3
    sub-int v3, p2, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    if-eqz v0, :cond_7

    add-int v1, p1, v2

    :goto_2
    iget-object v4, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v4, v4, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v4, v1}, Lcom/alensw/a/e;->e(I)Lcom/alensw/a/d;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v4, Lcom/alensw/PicFolder/QuickApp;->w:Lcom/alensw/b/a/a;

    invoke-virtual {v4, v1}, Lcom/alensw/b/a/a;->a(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    invoke-static {v4, v1}, Lcom/alensw/ui/c/bf;->a(Lcom/alensw/ui/c/bf;Lcom/alensw/a/d;)V

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/alensw/ui/c/bq;->b:I

    if-gez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_7
    add-int/lit8 v1, p2, -0x1

    sub-int/2addr v1, v2

    goto :goto_2
.end method

.method public a(IIZ)V
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0, p1}, Lcom/alensw/a/e;->e(I)Lcom/alensw/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v1, v1, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v1, v1, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->b()V

    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    invoke-virtual {v0}, Lcom/alensw/ui/c/bf;->m()I

    return-void
.end method

.method public a(ILandroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 0

    return-void
.end method

.method public a(ILcom/alensw/ui/view/ak;)V
    .locals 8

    const-wide/16 v6, 0x3e8

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0, p1}, Lcom/alensw/a/e;->e(I)Lcom/alensw/a/d;

    move-result-object v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->w:Lcom/alensw/b/a/a;

    invoke-virtual {v0, v2}, Lcom/alensw/b/a/a;->b(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/h/h;

    iput-object v0, p2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    iget-object v0, p2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    invoke-virtual {v0}, Lcom/alensw/b/h/h;->l()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget v0, v0, Lcom/alensw/ui/c/bf;->i:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    move v0, v1

    :goto_0
    iget-char v3, v2, Lcom/alensw/a/d;->c:C

    const/16 v4, 0x49

    if-ne v3, v4, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v3, v2, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/alensw/b/l/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/alensw/ui/view/ak;->c:Ljava/lang/String;

    :cond_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget v0, v0, Lcom/alensw/ui/c/bf;->j:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget v0, v0, Lcom/alensw/ui/c/bf;->j:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_7

    :cond_3
    iget-object v0, p2, Lcom/alensw/ui/view/ak;->d:[Ljava/lang/String;

    iget v3, v2, Lcom/alensw/a/d;->e:I

    int-to-long v4, v3

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/alensw/PicFolder/QuickApp;->b(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v0, v0, Lcom/alensw/ui/view/ImageGridView;->d:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p2, Lcom/alensw/ui/view/ak;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Lcom/alensw/ui/view/ak;->b:I

    :cond_5
    return-void

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget v0, v0, Lcom/alensw/ui/c/bf;->j:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget v0, v0, Lcom/alensw/ui/c/bf;->j:I

    if-ne v0, v1, :cond_9

    :cond_8
    iget-object v0, p2, Lcom/alensw/ui/view/ak;->d:[Ljava/lang/String;

    iget v3, v2, Lcom/alensw/a/d;->d:I

    int-to-long v4, v3

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/alensw/PicFolder/QuickApp;->b(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget v0, v0, Lcom/alensw/ui/c/bf;->j:I

    const/4 v3, 0x7

    if-eq v0, v3, :cond_a

    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget v0, v0, Lcom/alensw/ui/c/bf;->j:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_4

    :cond_a
    iget-object v0, p2, Lcom/alensw/ui/view/ak;->d:[Ljava/lang/String;

    iget-object v3, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v3, v3, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    iget-wide v4, v2, Lcom/alensw/a/d;->f:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_1
.end method

.method public b(I)V
    .locals 6

    const/16 v5, 0x49

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget v0, v0, Lcom/alensw/ui/c/bf;->H:I

    if-eq v0, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0, p1}, Lcom/alensw/a/e;->c(I)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v1, v1, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v1, p1}, Lcom/alensw/a/e;->f(I)C

    move-result v1

    iget-object v2, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v2, v2, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v2, v2, Lcom/alensw/ui/view/ImageGridView;->d:Z

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0, p1}, Lcom/alensw/a/e;->e(I)Lcom/alensw/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v1, v1, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v1, v1, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/ImageGridView;->d(I)Z

    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, v3}, Lcom/alensw/ui/c/cx;->d(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v1, v1, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    invoke-virtual {v0}, Lcom/alensw/ui/c/bf;->m()I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget v2, v2, Lcom/alensw/ui/c/bf;->h:I

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v2, v2, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v2}, Lcom/alensw/ui/c/cx;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v3, v3, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iput p1, v3, Lcom/alensw/a/e;->c:I

    if-ne v1, v5, :cond_5

    const-string v3, "crop"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    const-class v3, Lcom/alensw/PicFolder/CropActivity;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v0, v1, v4}, Lcom/alensw/ui/activity/a;->a(Landroid/app/Activity;Landroid/content/Intent;I)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/alensw/ui/c/df;->a(Ljava/lang/String;C)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v2, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v2, v2, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v2, p1}, Lcom/alensw/a/e;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alensw/ui/c/bf;->a(Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    if-ne v1, v5, :cond_7

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v1, v1, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v1, p1}, Lcom/alensw/a/e;->g(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v2, v2, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iput p1, v2, Lcom/alensw/a/e;->c:I

    iget-object v2, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    invoke-virtual {v2, v0, v1, v3}, Lcom/alensw/ui/c/bf;->a(Landroid/net/Uri;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x56

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v1, v1, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public c(I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget v0, v0, Lcom/alensw/ui/c/bf;->H:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget v0, v0, Lcom/alensw/ui/c/bf;->h:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bq;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, v2}, Lcom/alensw/ui/c/cx;->d(Z)V

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0, v2}, Lcom/alensw/ui/c/bq;->a(IIZ)V

    goto :goto_0
.end method
