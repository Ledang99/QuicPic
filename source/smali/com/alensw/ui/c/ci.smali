.class Lcom/alensw/ui/c/ci;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/view/aj;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/bz;

.field private final b:I

.field private c:I


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bz;)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alensw/a/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/c/ci;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v0}, Lcom/alensw/a/x;->f()I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v0, p1}, Lcom/alensw/a/x;->b(I)Lcom/alensw/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget v1, v1, Lcom/alensw/ui/c/bz;->t:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget v1, v1, Lcom/alensw/ui/c/bz;->t:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    iget v0, v0, Lcom/alensw/a/e;->e:I

    invoke-static {v0}, Lcom/alensw/ui/c/bz;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    invoke-virtual {v0}, Lcom/alensw/a/e;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alensw/ui/c/bz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x9

    const/4 v2, 0x5

    if-eqz p1, :cond_0

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    sget-object v1, Lcom/alensw/a/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/alensw/ui/c/ci;->b:I

    if-le v0, v1, :cond_1

    iget v1, p0, Lcom/alensw/ui/c/ci;->b:I

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string v1, "/storage/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-le v0, v3, :cond_2

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v1, "/mnt/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-le v0, v2, :cond_3

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public a(III)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget v2, v2, Lcom/alensw/ui/c/bz;->H:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-boolean v2, v2, Lcom/alensw/ui/c/bz;->p:Z

    if-nez v2, :cond_0

    if-eqz p3, :cond_6

    if-ltz p3, :cond_5

    :cond_2
    :goto_0
    iget v2, p0, Lcom/alensw/ui/c/ci;->c:I

    if-eq v2, p3, :cond_3

    iput p3, p0, Lcom/alensw/ui/c/ci;->c:I

    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->t:Lcom/alensw/a/ah;

    invoke-virtual {v2, v1}, Lcom/alensw/a/ah;->a(Z)V

    :cond_3
    sub-int v3, p2, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v4, v1, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    if-eqz v0, :cond_7

    add-int v1, p1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/alensw/a/x;->b(I)Lcom/alensw/a/e;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    invoke-virtual {v4, v1}, Lcom/alensw/ui/c/bz;->d(Lcom/alensw/a/e;)V

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/alensw/ui/c/ci;->c:I

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

    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v0, p1}, Lcom/alensw/a/x;->b(I)Lcom/alensw/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v1, v1, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v1, v1, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->b()V

    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v2, v2, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v2, v2, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v2}, Lcom/alensw/a/x;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alensw/ui/c/cx;->a(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public a(ILandroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 0

    return-void
.end method

.method public a(ILcom/alensw/ui/view/ak;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v0, p1}, Lcom/alensw/a/x;->b(I)Lcom/alensw/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alensw/a/e;->i()I

    move-result v2

    invoke-virtual {v1}, Lcom/alensw/a/e;->j()I

    move-result v3

    if-lez v3, :cond_4

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->v:Lcom/alensw/b/a/a;

    invoke-virtual {v0, v1}, Lcom/alensw/b/a/a;->b(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/h/h;

    iput-object v0, p2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    :goto_0
    iget-object v0, p2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    invoke-virtual {v0}, Lcom/alensw/b/h/h;->l()Ljava/lang/Object;

    :cond_0
    if-nez v2, :cond_5

    iget v0, v1, Lcom/alensw/a/e;->g:I

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    const v2, 0x7f0a001d

    invoke-virtual {v0, v2}, Lcom/alensw/ui/c/bz;->g(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alensw/ui/view/ak;->c:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget v0, v0, Lcom/alensw/ui/c/bz;->s:I

    if-ne v0, v5, :cond_8

    iget v0, v1, Lcom/alensw/a/e;->e:I

    invoke-static {v0}, Lcom/alensw/ui/c/bz;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p2, Lcom/alensw/ui/view/ak;->d:[Ljava/lang/String;

    if-lez v3, :cond_6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    aput-object v0, v4, v6

    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-boolean v0, v0, Lcom/alensw/ui/c/bz;->o:Z

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/alensw/ui/view/ak;->d:[Ljava/lang/String;

    aput-object v2, v0, v7

    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v0, v0, Lcom/alensw/ui/view/ImageGridView;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v5, p2, Lcom/alensw/ui/view/ak;->b:I

    :cond_2
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    iget-boolean v0, v0, Lcom/alensw/a/s;->b:Z

    if-eqz v0, :cond_3

    invoke-virtual {v1, v6}, Lcom/alensw/a/e;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p2, Lcom/alensw/ui/view/ak;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/alensw/ui/view/ak;->b:I

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    invoke-virtual {v0}, Lcom/alensw/ui/c/bz;->m()Lcom/alensw/b/h/h;

    move-result-object v0

    iput-object v0, p2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/alensw/a/e;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alensw/ui/view/ak;->c:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v0, ""

    goto :goto_2

    :cond_7
    iget-object v0, p2, Lcom/alensw/ui/view/ak;->d:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/alensw/ui/c/ci;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    iget-object v0, p2, Lcom/alensw/ui/view/ak;->d:[Ljava/lang/String;

    aput-object v2, v0, v5

    goto :goto_3

    :cond_8
    if-lez v3, :cond_1

    iget-object v0, p2, Lcom/alensw/ui/view/ak;->d:[Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    goto :goto_3
.end method

.method public b(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget v0, v0, Lcom/alensw/ui/c/bz;->H:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    iget-object v1, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget v1, v1, Lcom/alensw/ui/c/bz;->v:I

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->d(I)Z

    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iput p1, v0, Lcom/alensw/ui/c/bz;->v:I

    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/ImageGridView;->d(I)Z

    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v0, p1}, Lcom/alensw/a/x;->b(I)Lcom/alensw/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget v1, v1, Lcom/alensw/ui/c/bz;->u:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-boolean v1, v1, Lcom/alensw/ui/c/bz;->o:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/alensw/a/e;->i()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/c/bz;->a(Ljava/io/File;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v1, v1, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v1, v1, Lcom/alensw/ui/view/ImageGridView;->d:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v1, v1, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v1, v1, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/ImageGridView;->d(I)Z

    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, v3}, Lcom/alensw/ui/c/cx;->d(Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v1, v1, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v2, v2, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v2, v2, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v2}, Lcom/alensw/a/x;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/alensw/ui/c/cx;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/alensw/a/e;->i()I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/c/bz;->b(Lcom/alensw/a/e;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    invoke-virtual {v1, v0, p1}, Lcom/alensw/ui/c/bz;->a(Lcom/alensw/a/e;I)V

    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    const-string v1, "local"

    invoke-static {v0, v1}, Lcom/alensw/ui/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public c(I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget v0, v0, Lcom/alensw/ui/c/bz;->H:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget v0, v0, Lcom/alensw/ui/c/bz;->u:I

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/alensw/ui/c/ci;->b(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, v2}, Lcom/alensw/ui/c/cx;->d(Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/ci;->a:Lcom/alensw/ui/c/bz;

    iput p1, v0, Lcom/alensw/ui/c/bz;->v:I

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0, v2}, Lcom/alensw/ui/c/ci;->a(IIZ)V

    goto :goto_0
.end method
