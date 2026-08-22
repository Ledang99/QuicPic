.class Lcom/b/a/f;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z

.field d:F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:F

.field j:F

.field k:Ljava/util/ArrayList;

.field l:Ljava/util/ArrayList;

.field m:Landroid/graphics/Matrix;

.field n:Landroid/graphics/Shader;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/f;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/f;->l:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/b/a/f;->m:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/b/a/f;->n:Landroid/graphics/Shader;

    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Shader;
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/b/a/f;->n:Landroid/graphics/Shader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/f;->n:Landroid/graphics/Shader;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [I

    move v1, v2

    :goto_1
    array-length v0, v5

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/b/a/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/b/a/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [F

    :goto_2
    array-length v0, v6

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/b/a/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/b/a/f;->c:Z

    if-eqz v0, :cond_4

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/b/a/f;->d:F

    iget v2, p0, Lcom/b/a/f;->e:F

    iget v3, p0, Lcom/b/a/f;->f:F

    iget v4, p0, Lcom/b/a/f;->g:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/b/a/f;->n:Landroid/graphics/Shader;

    :goto_3
    iget-object v0, p0, Lcom/b/a/f;->m:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/b/a/f;->n:Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/b/a/f;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_3
    iget-object v0, p0, Lcom/b/a/f;->n:Landroid/graphics/Shader;

    goto :goto_0

    :cond_4
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v2, p0, Lcom/b/a/f;->h:F

    iget v3, p0, Lcom/b/a/f;->i:F

    iget v4, p0, Lcom/b/a/f;->j:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/b/a/f;->n:Landroid/graphics/Shader;

    goto :goto_3
.end method

.method public a(Lcom/b/a/f;)Lcom/b/a/f;
    .locals 3

    new-instance v0, Lcom/b/a/f;

    invoke-direct {v0}, Lcom/b/a/f;-><init>()V

    iget-object v1, p1, Lcom/b/a/f;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/b/a/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/b/a/f;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/b/a/f;->b:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/b/a/f;->c:Z

    iput-boolean v1, v0, Lcom/b/a/f;->c:Z

    iget v1, p1, Lcom/b/a/f;->d:F

    iput v1, v0, Lcom/b/a/f;->d:F

    iget v1, p1, Lcom/b/a/f;->f:F

    iput v1, v0, Lcom/b/a/f;->f:F

    iget v1, p1, Lcom/b/a/f;->e:F

    iput v1, v0, Lcom/b/a/f;->e:F

    iget v1, p1, Lcom/b/a/f;->g:F

    iput v1, v0, Lcom/b/a/f;->g:F

    iget v1, p1, Lcom/b/a/f;->h:F

    iput v1, v0, Lcom/b/a/f;->h:F

    iget v1, p1, Lcom/b/a/f;->i:F

    iput v1, v0, Lcom/b/a/f;->i:F

    iget v1, p1, Lcom/b/a/f;->j:F

    iput v1, v0, Lcom/b/a/f;->j:F

    iget-object v1, p0, Lcom/b/a/f;->k:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/b/a/f;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/f;->l:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/b/a/f;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/f;->m:Landroid/graphics/Matrix;

    iput-object v1, v0, Lcom/b/a/f;->m:Landroid/graphics/Matrix;

    iget-object v1, p1, Lcom/b/a/f;->m:Landroid/graphics/Matrix;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/f;->m:Landroid/graphics/Matrix;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/b/a/f;->m:Landroid/graphics/Matrix;

    iput-object v1, v0, Lcom/b/a/f;->m:Landroid/graphics/Matrix;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/b/a/f;->m:Landroid/graphics/Matrix;

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iget-object v2, p1, Lcom/b/a/f;->m:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iput-object v1, v0, Lcom/b/a/f;->m:Landroid/graphics/Matrix;

    goto :goto_0
.end method
