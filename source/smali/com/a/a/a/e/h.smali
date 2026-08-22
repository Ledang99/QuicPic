.class public final Lcom/a/a/a/e/h;
.super Ljava/lang/Object;


# static fields
.field static final a:[C


# instance fields
.field private final b:Lcom/a/a/a/e/b;

.field private c:[C

.field private d:I

.field private e:I

.field private f:Ljava/util/ArrayList;

.field private g:Z

.field private h:I

.field private i:[C

.field private j:I

.field private k:Ljava/lang/String;

.field private l:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lcom/a/a/a/e/h;->a:[C

    return-void
.end method

.method public constructor <init>(Lcom/a/a/a/e/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/e/h;->g:Z

    iput-object p1, p0, Lcom/a/a/a/e/h;->b:Lcom/a/a/a/e/b;

    return-void
.end method

.method private b(I)[C
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/e/h;->b:Lcom/a/a/a/e/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/e/h;->b:Lcom/a/a/a/e/b;

    sget-object v1, Lcom/a/a/a/e/d;->c:Lcom/a/a/a/e/d;

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/e/b;->a(Lcom/a/a/a/e/d;I)[C

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    goto :goto_0
.end method

.method private c(I)V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/a/a/a/e/h;->e:I

    iput v5, p0, Lcom/a/a/a/e/h;->e:I

    iget-object v1, p0, Lcom/a/a/a/e/h;->c:[C

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/a/a/a/e/h;->c:[C

    iget v2, p0, Lcom/a/a/a/e/h;->d:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/a/a/a/e/h;->d:I

    add-int v3, v0, p1

    iget-object v4, p0, Lcom/a/a/a/e/h;->i:[C

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/a/a/a/e/h;->i:[C

    array-length v4, v4

    if-le v3, v4, :cond_1

    :cond_0
    invoke-direct {p0, v3}, Lcom/a/a/a/e/h;->b(I)[C

    move-result-object v3

    iput-object v3, p0, Lcom/a/a/a/e/h;->i:[C

    :cond_1
    if-lez v0, :cond_2

    iget-object v3, p0, Lcom/a/a/a/e/h;->i:[C

    invoke-static {v1, v2, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iput v5, p0, Lcom/a/a/a/e/h;->h:I

    iput v0, p0, Lcom/a/a/a/e/h;->j:I

    return-void
.end method

.method private d(I)V
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/e/h;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/e/h;->f:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/e/h;->i:[C

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/a/a/a/e/h;->g:Z

    iget-object v1, p0, Lcom/a/a/a/e/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/a/a/a/e/h;->h:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/a/e/h;->h:I

    array-length v1, v0

    shr-int/lit8 v0, v1, 0x1

    if-ge v0, p1, :cond_1

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/a/e/h;->j:I

    const/high16 v0, 0x40000

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/a/a/a/e/h;->e(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/e/h;->i:[C

    return-void

    :cond_1
    move p1, v0

    goto :goto_0
.end method

.method private e(I)[C
    .locals 1

    new-array v0, p1, [C

    return-object v0
.end method

.method private o()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/a/a/a/e/h;->g:Z

    iget-object v0, p0, Lcom/a/a/a/e/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lcom/a/a/a/e/h;->h:I

    iput v1, p0, Lcom/a/a/a/e/h;->j:I

    return-void
.end method

.method private p()[C
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/a/a/e/h;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/e/h;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/a/a/a/e/h;->d:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/a/a/a/e/h;->e:I

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/a/a/a/e/h;->a:[C

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/a/a/a/e/h;->d:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/a/a/a/e/h;->c:[C

    invoke-static {v1, v0}, Lcom/a/a/a/e/a;->a([CI)[C

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/a/a/a/e/h;->c:[C

    add-int/2addr v0, v1

    invoke-static {v2, v1, v0}, Lcom/a/a/a/e/a;->a([CII)[C

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/a/a/a/e/h;->c()I

    move-result v0

    if-ge v0, v1, :cond_4

    sget-object v0, Lcom/a/a/a/e/h;->a:[C

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/a/a/a/e/h;->e(I)[C

    move-result-object v3

    iget-object v0, p0, Lcom/a/a/a/e/h;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/a/a/a/e/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v2

    move v1, v2

    :goto_1
    if-ge v4, v5, :cond_5

    iget-object v0, p0, Lcom/a/a/a/e/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    array-length v6, v0

    invoke-static {v0, v2, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v6

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_2
    iget-object v1, p0, Lcom/a/a/a/e/h;->i:[C

    iget v4, p0, Lcom/a/a/a/e/h;->j:I

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/e/h;->b:Lcom/a/a/a/e/b;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/a/a/a/e/h;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/e/h;->i:[C

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/e/h;->b()V

    iget-object v0, p0, Lcom/a/a/a/e/h;->i:[C

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/a/a/a/e/h;->i:[C

    iget-object v1, p0, Lcom/a/a/a/e/h;->b:Lcom/a/a/a/e/b;

    sget-object v2, Lcom/a/a/a/e/d;->c:Lcom/a/a/a/e/d;

    invoke-virtual {v1, v2, v0}, Lcom/a/a/a/e/b;->a(Lcom/a/a/a/e/d;[C)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/a/a/a/e/h;->j:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v2, p0, Lcom/a/a/a/e/h;->c:[C

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/a/e/h;->d:I

    iput v1, p0, Lcom/a/a/a/e/h;->e:I

    iput-object p1, p0, Lcom/a/a/a/e/h;->k:Ljava/lang/String;

    iput-object v2, p0, Lcom/a/a/a/e/h;->l:[C

    iget-boolean v0, p0, Lcom/a/a/a/e/h;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/e/h;->o()V

    :cond_0
    iput v1, p0, Lcom/a/a/a/e/h;->j:I

    return-void
.end method

.method public a([CII)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/e/h;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/a/e/h;->l:[C

    iput-object p1, p0, Lcom/a/a/a/e/h;->c:[C

    iput p2, p0, Lcom/a/a/a/e/h;->d:I

    iput p3, p0, Lcom/a/a/a/e/h;->e:I

    iget-boolean v0, p0, Lcom/a/a/a/e/h;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/e/h;->o()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/a/e/h;->d:I

    iput v2, p0, Lcom/a/a/a/e/h;->j:I

    iput v2, p0, Lcom/a/a/a/e/h;->e:I

    iput-object v1, p0, Lcom/a/a/a/e/h;->c:[C

    iput-object v1, p0, Lcom/a/a/a/e/h;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/a/a/a/e/h;->l:[C

    iget-boolean v0, p0, Lcom/a/a/a/e/h;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/e/h;->o()V

    :cond_0
    return-void
.end method

.method public b([CII)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/a/a/a/e/h;->c:[C

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/a/e/h;->d:I

    iput v2, p0, Lcom/a/a/a/e/h;->e:I

    iput-object v1, p0, Lcom/a/a/a/e/h;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/a/a/a/e/h;->l:[C

    iget-boolean v0, p0, Lcom/a/a/a/e/h;->g:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/a/a/a/e/h;->o()V

    :cond_0
    :goto_0
    iput v2, p0, Lcom/a/a/a/e/h;->h:I

    iput v2, p0, Lcom/a/a/a/e/h;->j:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/a/a/a/e/h;->c([CII)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/e/h;->i:[C

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lcom/a/a/a/e/h;->b(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/e/h;->i:[C

    goto :goto_0
.end method

.method public c()I
    .locals 2

    iget v0, p0, Lcom/a/a/a/e/h;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/a/a/a/e/h;->e:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/e/h;->l:[C

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/e/h;->l:[C

    array-length v0, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/e/h;->k:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/a/e/h;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/a/a/a/e/h;->h:I

    iget v1, p0, Lcom/a/a/a/e/h;->j:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public c([CII)V
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/a/a/a/e/h;->d:I

    if-ltz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/a/a/a/e/h;->c(I)V

    :cond_0
    iput-object v1, p0, Lcom/a/a/a/e/h;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/a/a/a/e/h;->l:[C

    iget-object v0, p0, Lcom/a/a/a/e/h;->i:[C

    array-length v1, v0

    iget v2, p0, Lcom/a/a/a/e/h;->j:I

    sub-int/2addr v1, v2

    if-lt v1, p3, :cond_1

    iget v1, p0, Lcom/a/a/a/e/h;->j:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/a/a/a/e/h;->j:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/a/a/a/e/h;->j:I

    :goto_0
    return-void

    :cond_1
    if-lez v1, :cond_2

    iget v2, p0, Lcom/a/a/a/e/h;->j:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    :cond_2
    invoke-direct {p0, p3}, Lcom/a/a/a/e/h;->d(I)V

    iget-object v0, p0, Lcom/a/a/a/e/h;->i:[C

    array-length v0, v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/a/a/a/e/h;->i:[C

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/a/a/a/e/h;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/a/a/a/e/h;->j:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    if-gtz p3, :cond_2

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/e/h;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/a/a/a/e/h;->d:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()[C
    .locals 1

    iget v0, p0, Lcom/a/a/a/e/h;->d:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/e/h;->c:[C

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/e/h;->l:[C

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/e/h;->l:[C

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/e/h;->k:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/a/e/h;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/e/h;->l:[C

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/a/a/a/e/h;->g:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/a/a/a/e/h;->i:[C

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/a/a/a/e/h;->g()[C

    move-result-object v0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/a/a/e/h;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/e/h;->l:[C

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/a/a/a/e/h;->l:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/a/a/a/e/h;->k:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/a/a/a/e/h;->k:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_1
    iget v0, p0, Lcom/a/a/a/e/h;->d:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/a/a/a/e/h;->e:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    const-string v0, ""

    iput-object v0, p0, Lcom/a/a/a/e/h;->k:Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/a/a/a/e/h;->c:[C

    iget v2, p0, Lcom/a/a/a/e/h;->d:I

    iget v3, p0, Lcom/a/a/a/e/h;->e:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/a/a/a/e/h;->k:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/a/a/a/e/h;->h:I

    iget v1, p0, Lcom/a/a/a/e/h;->j:I

    if-nez v0, :cond_5

    if-nez v1, :cond_4

    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lcom/a/a/a/e/h;->k:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/a/a/a/e/h;->i:[C

    invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p0, Lcom/a/a/a/e/h;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/a/a/a/e/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    :goto_3
    if-ge v1, v4, :cond_6

    iget-object v0, p0, Lcom/a/a/a/e/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    array-length v5, v0

    invoke-virtual {v3, v0, v2, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/a/a/a/e/h;->i:[C

    iget v1, p0, Lcom/a/a/a/e/h;->j:I

    invoke-virtual {v3, v0, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/e/h;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public g()[C
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/e/h;->l:[C

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/e/h;->p()[C

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/e/h;->l:[C

    :cond_0
    return-object v0
.end method

.method public h()Ljava/math/BigDecimal;
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/e/h;->l:[C

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/e/h;->l:[C

    invoke-static {v0}, Lcom/a/a/a/b/f;->a([C)Ljava/math/BigDecimal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/a/a/a/e/h;->d:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/e/h;->c:[C

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/e/h;->c:[C

    iget v1, p0, Lcom/a/a/a/e/h;->d:I

    iget v2, p0, Lcom/a/a/a/e/h;->e:I

    invoke-static {v0, v1, v2}, Lcom/a/a/a/b/f;->c([CII)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/a/a/a/e/h;->h:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/a/a/a/e/h;->i:[C

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/a/e/h;->i:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/a/a/a/e/h;->j:I

    invoke-static {v0, v1, v2}, Lcom/a/a/a/b/f;->c([CII)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/a/a/a/e/h;->g()[C

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/b/f;->a([C)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0
.end method

.method public i()D
    .locals 2

    invoke-virtual {p0}, Lcom/a/a/a/e/h;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/b/f;->a(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public j()[C
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/a/a/a/e/h;->d:I

    if-ltz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/a/a/a/e/h;->c(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/a/a/a/e/h;->i:[C

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/e/h;->i:[C

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/a/a/e/h;->b(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/e/h;->i:[C

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/a/a/a/e/h;->j:I

    array-length v0, v0

    if-lt v1, v0, :cond_0

    invoke-direct {p0, v2}, Lcom/a/a/a/e/h;->d(I)V

    goto :goto_0
.end method

.method public k()[C
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/a/e/h;->d:I

    iput v1, p0, Lcom/a/a/a/e/h;->j:I

    iput v1, p0, Lcom/a/a/a/e/h;->e:I

    iput-object v2, p0, Lcom/a/a/a/e/h;->c:[C

    iput-object v2, p0, Lcom/a/a/a/e/h;->k:Ljava/lang/String;

    iput-object v2, p0, Lcom/a/a/a/e/h;->l:[C

    iget-boolean v0, p0, Lcom/a/a/a/e/h;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/e/h;->o()V

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/e/h;->i:[C

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lcom/a/a/a/e/h;->b(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/e/h;->i:[C

    :cond_1
    return-object v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/e/h;->j:I

    return v0
.end method

.method public m()[C
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/e/h;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/e/h;->f:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/e/h;->g:Z

    iget-object v0, p0, Lcom/a/a/a/e/h;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/a/a/a/e/h;->i:[C

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/a/e/h;->i:[C

    array-length v0, v0

    iget v1, p0, Lcom/a/a/a/e/h;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/a/a/a/e/h;->h:I

    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/a/a/a/e/h;->e(I)[C

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/a/a/a/e/h;->j:I

    iput-object v0, p0, Lcom/a/a/a/e/h;->i:[C

    return-object v0
.end method

.method public n()[C
    .locals 4

    const/high16 v3, 0x40000

    iget-object v1, p0, Lcom/a/a/a/e/h;->i:[C

    array-length v0, v1

    if-ne v0, v3, :cond_0

    const v0, 0x40001

    :goto_0
    invoke-static {v1, v0}, Lcom/a/a/a/e/a;->a([CI)[C

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/e/h;->i:[C

    return-object v0

    :cond_0
    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/a/e/h;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
