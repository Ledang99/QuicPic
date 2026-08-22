.class public Lcom/alensw/a/e;
.super Ljava/io/File;
.source "e.java"


# static fields
.field public static final a:Z

.field public static final b:Ljava/lang/String;

.field public static final j:Ljava/util/Comparator;

.field public static final k:Ljava/util/Comparator;

.field public static final l:Ljava/util/Comparator;

.field public static final m:Ljava/util/Comparator;

.field public static final n:Ljava/util/Comparator;

.field public static final o:Ljava/util/Comparator;

.field public static final p:Ljava/util/Comparator;

.field public static final q:Ljava/util/Comparator;


# instance fields
.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field private r:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alensw/a/e;->a:Z

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alensw/a/e;->b:Ljava/lang/String;

    new-instance v0, Lcom/alensw/a/f;

    invoke-direct {v0}, Lcom/alensw/a/f;-><init>()V

    sput-object v0, Lcom/alensw/a/e;->j:Ljava/util/Comparator;

    new-instance v0, Lcom/alensw/a/g;

    invoke-direct {v0}, Lcom/alensw/a/g;-><init>()V

    sput-object v0, Lcom/alensw/a/e;->k:Ljava/util/Comparator;

    new-instance v0, Lcom/alensw/a/h;

    invoke-direct {v0}, Lcom/alensw/a/h;-><init>()V

    sput-object v0, Lcom/alensw/a/e;->l:Ljava/util/Comparator;

    new-instance v0, Lcom/alensw/a/i;

    invoke-direct {v0}, Lcom/alensw/a/i;-><init>()V

    sput-object v0, Lcom/alensw/a/e;->m:Ljava/util/Comparator;

    new-instance v0, Lcom/alensw/a/j;

    invoke-direct {v0}, Lcom/alensw/a/j;-><init>()V

    sput-object v0, Lcom/alensw/a/e;->n:Ljava/util/Comparator;

    new-instance v0, Lcom/alensw/a/k;

    invoke-direct {v0}, Lcom/alensw/a/k;-><init>()V

    sput-object v0, Lcom/alensw/a/e;->o:Ljava/util/Comparator;

    new-instance v0, Lcom/alensw/a/l;

    invoke-direct {v0}, Lcom/alensw/a/l;-><init>()V

    sput-object v0, Lcom/alensw/a/e;->p:Ljava/util/Comparator;

    new-instance v0, Lcom/alensw/a/m;

    invoke-direct {v0}, Lcom/alensw/a/m;-><init>()V

    sput-object v0, Lcom/alensw/a/e;->q:Ljava/util/Comparator;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput v2, p0, Lcom/alensw/a/e;->c:I

    iput v1, p0, Lcom/alensw/a/e;->d:I

    iput v1, p0, Lcom/alensw/a/e;->e:I

    iput v2, p0, Lcom/alensw/a/e;->f:I

    iput v1, p0, Lcom/alensw/a/e;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    sget-object v0, Lcom/alensw/a/e;->j:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/a/e;->r:Ljava/util/Comparator;

    invoke-direct {p0, p2}, Lcom/alensw/a/e;->i(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;I)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput v1, p0, Lcom/alensw/a/e;->c:I

    iput v0, p0, Lcom/alensw/a/e;->d:I

    iput v0, p0, Lcom/alensw/a/e;->e:I

    iput v1, p0, Lcom/alensw/a/e;->f:I

    iput v0, p0, Lcom/alensw/a/e;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    sget-object v0, Lcom/alensw/a/e;->j:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/a/e;->r:Ljava/util/Comparator;

    invoke-direct {p0, p3}, Lcom/alensw/a/e;->i(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput v1, p0, Lcom/alensw/a/e;->c:I

    iput v0, p0, Lcom/alensw/a/e;->d:I

    iput v0, p0, Lcom/alensw/a/e;->e:I

    iput v1, p0, Lcom/alensw/a/e;->f:I

    iput v0, p0, Lcom/alensw/a/e;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    sget-object v0, Lcom/alensw/a/e;->j:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/a/e;->r:Ljava/util/Comparator;

    invoke-direct {p0, p2}, Lcom/alensw/a/e;->i(I)V

    return-void
.end method

.method public static a(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x4

    or-int/2addr v0, p1

    return v0
.end method

.method public static a(III)I
    .locals 2

    shl-int/lit8 v0, p0, 0x8

    shl-int/lit8 v1, p1, 0x4

    or-int/2addr v0, v1

    or-int/2addr v0, p2

    return v0
.end method

.method public static a(Ljava/io/File;)Z
    .locals 6

    new-instance v0, Ljava/io/File;

    const-string v1, "!qpicfake.jpg"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/alensw/b/l/b;->c(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Lcom/alensw/a/d;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, p2}, Lcom/alensw/b/l/b;->b(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    iput-object p2, p1, Lcom/alensw/a/d;->b:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private i(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->p:Lcom/alensw/a/bh;

    invoke-virtual {v1, v0}, Lcom/alensw/a/bh;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alensw/a/e;->g:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/a/e;->n()V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/alensw/a/e;->e:I

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/alensw/a/e;->d:I

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public final a(I)I
    .locals 2

    if-nez p1, :cond_2

    iget v0, p0, Lcom/alensw/a/e;->g:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/alensw/a/e;->a(II)I

    move-result v0

    return v0

    :cond_0
    sget-boolean v0, Lcom/alensw/a/e;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1}, Lcom/alensw/a/e;->e(I)Lcom/alensw/a/d;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, v1, p2}, Lcom/alensw/a/e;->a(Ljava/io/File;Lcom/alensw/a/d;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/alensw/a/e;->h(I)Z

    invoke-virtual {p0, v1}, Lcom/alensw/a/e;->c(Lcom/alensw/a/d;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/alensw/a/d;)I
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/alensw/a/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/alensw/a/d;->d:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/alensw/a/e;->b(Lcom/alensw/a/d;)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alensw/a/e;->r:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Lcom/alensw/b/l/b;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v0, p1, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alensw/a/e;->a(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public a(Ljava/io/File;C)I
    .locals 2

    new-instance v0, Lcom/alensw/a/d;

    const/4 v1, -0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/alensw/a/d;-><init>(Ljava/io/File;CI)V

    invoke-virtual {p0, v0}, Lcom/alensw/a/e;->a(Lcom/alensw/a/d;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/d;

    iget-object v0, v0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;C)I
    .locals 3

    new-instance v0, Lcom/alensw/a/d;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-direct {v0, v1, p2, v2}, Lcom/alensw/a/d;-><init>(Ljava/io/File;CI)V

    invoke-virtual {p0, v0}, Lcom/alensw/a/e;->a(Lcom/alensw/a/d;)I

    move-result v0

    return v0
.end method

.method public a(CIJLjava/lang/String;)V
    .locals 9

    const/16 v0, 0x44

    if-eq p1, v0, :cond_1

    iget-object v8, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    new-instance v0, Lcom/alensw/a/d;

    invoke-virtual {p0}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/alensw/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;CIIJ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    new-instance v1, Lcom/alensw/a/e;

    invoke-direct {v1, p0, p5, p2}, Lcom/alensw/a/e;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/alensw/a/e;Z)V
    .locals 3

    iget v0, p0, Lcom/alensw/a/e;->d:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/alensw/a/e;->d:I

    iput v0, p0, Lcom/alensw/a/e;->d:I

    :cond_0
    iget v0, p1, Lcom/alensw/a/e;->e:I

    iput v0, p0, Lcom/alensw/a/e;->e:I

    iget v0, p1, Lcom/alensw/a/e;->f:I

    iput v0, p0, Lcom/alensw/a/e;->f:I

    iget v0, p1, Lcom/alensw/a/e;->g:I

    iput v0, p0, Lcom/alensw/a/e;->g:I

    if-eqz p2, :cond_3

    iget v0, p0, Lcom/alensw/a/e;->c:I

    invoke-virtual {p0, v0}, Lcom/alensw/a/e;->e(I)Lcom/alensw/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p1, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/alensw/a/e;->a(Lcom/alensw/a/d;)I

    move-result v0

    iput v0, p0, Lcom/alensw/a/e;->c:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/alensw/a/e;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/alensw/a/e;->c:I

    iput v0, p0, Lcom/alensw/a/e;->c:I

    goto :goto_1
.end method

.method public a(Ljava/util/Collection;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/alensw/a/d;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/alensw/a/d;

    invoke-virtual {p0, v0}, Lcom/alensw/a/e;->d(Lcom/alensw/a/d;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/alensw/a/e;I)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alensw/a/e;->j()I

    move-result v0

    invoke-virtual {p1}, Lcom/alensw/a/e;->j()I

    move-result v2

    if-eq v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-le p2, v0, :cond_1

    move p2, v0

    :cond_1
    move v2, v1

    :goto_1
    if-ge v2, p2, :cond_3

    iget-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/d;

    invoke-virtual {p1, v2}, Lcom/alensw/a/e;->e(I)Lcom/alensw/a/d;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alensw/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/alensw/a/e;->f:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/l/b;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/alensw/a/e;->f:I

    :cond_1
    iget v0, p0, Lcom/alensw/a/e;->f:I

    if-ne v0, v1, :cond_3

    :goto_1
    return v1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/alensw/a/e;->d:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public b(Z)I
    .locals 4

    iget v0, p0, Lcom/alensw/a/e;->c:I

    invoke-virtual {p0, v0}, Lcom/alensw/a/e;->e(I)Lcom/alensw/a/d;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alensw/a/e;->k()V

    invoke-virtual {p0}, Lcom/alensw/a/e;->n()V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    invoke-virtual {v0, p0, p1}, Lcom/alensw/a/s;->b(Lcom/alensw/a/e;Z)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/alensw/a/e;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/alensw/a/e;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/alensw/a/d;->d:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/alensw/a/e;->b(Lcom/alensw/a/d;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/alensw/a/e;->a(Lcom/alensw/a/d;)I

    move-result v1

    iput v1, p0, Lcom/alensw/a/e;->c:I

    :cond_2
    return v0
.end method

.method public final b(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/d;

    invoke-virtual {v0}, Lcom/alensw/a/d;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public b(Lcom/alensw/a/d;)V
    .locals 4

    invoke-virtual {p1}, Lcom/alensw/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/jni/JniUtils;->fuGetFileTime(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/alensw/a/d;->d:I

    invoke-virtual {p0}, Lcom/alensw/a/e;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/alensw/b/h/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/alensw/a/d;->e:I

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/alensw/a/d;->d:I

    iput v0, p1, Lcom/alensw/a/d;->e:I

    goto :goto_0
.end method

.method public c(Lcom/alensw/a/d;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/alensw/a/e;->a(Lcom/alensw/a/d;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/d;

    invoke-virtual {v0, p1}, Lcom/alensw/a/d;->a(Lcom/alensw/a/d;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    neg-int v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final c(I)Ljava/io/File;
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/d;

    iget-object v0, v0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/alensw/a/e;->d:I

    shr-int/lit8 v1, v1, 0x8

    and-int/lit8 v1, v1, 0xf

    if-eq v1, v0, :cond_0

    if-nez v1, :cond_1

    iget v1, p0, Lcom/alensw/a/e;->g:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/alensw/a/e;->d:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public final d(I)Landroid/net/Uri;
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/d;

    iget-object v0, v0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_0
.end method

.method public d(Lcom/alensw/a/d;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/alensw/a/e;->a(Lcom/alensw/a/d;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(I)Lcom/alensw/a/d;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/d;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/alensw/a/e;->d:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    if-eq v1, v0, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(I)C
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/d;

    iget-char v0, v0, Lcom/alensw/a/d;->c:C

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Lcom/alensw/a/e;->d:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/d;

    iget-object v1, v0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    iget-char v0, v0, Lcom/alensw/a/d;->c:C

    invoke-static {v1, v0}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    iget v0, p0, Lcom/alensw/a/e;->d:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

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

.method public h(I)Z
    .locals 2

    iget-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_2

    iget-object v1, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/alensw/a/e;->c:I

    if-lt v1, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alensw/a/e;->c:I

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget v0, p0, Lcom/alensw/a/e;->c:I

    if-le v0, p1, :cond_0

    iget v0, p0, Lcom/alensw/a/e;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alensw/a/e;->c:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public k()V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    iput v1, p0, Lcom/alensw/a/e;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/a/e;->e:I

    iput v1, p0, Lcom/alensw/a/e;->f:I

    return-void
.end method

.method public l()V
    .locals 3

    invoke-virtual {p0}, Lcom/alensw/a/e;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget v0, p0, Lcom/alensw/a/e;->c:I

    invoke-virtual {p0, v0}, Lcom/alensw/a/e;->e(I)Lcom/alensw/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alensw/a/e;->r:Ljava/util/Comparator;

    invoke-static {v1, v2}, Lcom/alensw/b/l/b;->a(Ljava/util/ArrayList;Ljava/util/Comparator;)Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/alensw/a/e;->a(Lcom/alensw/a/d;)I

    move-result v0

    iput v0, p0, Lcom/alensw/a/e;->c:I

    :cond_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/alensw/a/e;->j:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/a/e;->r:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/alensw/a/e;->k:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/a/e;->r:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/alensw/a/e;->l:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/a/e;->r:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/alensw/a/e;->m:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/a/e;->r:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/alensw/a/e;->n:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/a/e;->r:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/alensw/a/e;->o:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/a/e;->r:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/alensw/a/e;->p:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/a/e;->r:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/alensw/a/e;->q:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/a/e;->r:Ljava/util/Comparator;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final m()Z
    .locals 2

    iget v0, p0, Lcom/alensw/a/e;->e:I

    invoke-virtual {p0}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alensw/jni/JniUtils;->fuGetFileTime(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()V
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/jni/JniUtils;->fuGetFileTime(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alensw/a/e;->e:I

    return-void
.end method

.method public o()Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    const-string v3, "!qpicfake.jpg"

    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    const-string v1, "!qpicfake.jpg"

    invoke-virtual {p0, v2}, Lcom/alensw/a/e;->e(I)Lcom/alensw/a/d;

    move-result-object v3

    iget-object v3, v3, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/alensw/a/e;->h(I)Z

    :cond_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public p()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "!qpicfake.jpg"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/alensw/b/l/b;->b(Ljava/io/File;)Z

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
