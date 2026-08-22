.class public Lcom/alensw/a/x;
.super Ljava/lang/Object;


# static fields
.field public static final b:Ljava/util/Comparator;

.field public static final c:Ljava/util/Comparator;

.field public static final d:Ljava/util/Comparator;

.field public static final e:Ljava/util/Comparator;

.field public static final f:Ljava/util/Comparator;

.field public static final g:Ljava/util/Comparator;

.field public static final h:Ljava/util/Comparator;

.field public static final i:Ljava/util/Comparator;

.field public static final j:Ljava/util/Comparator;


# instance fields
.field protected a:Ljava/util/Comparator;

.field private k:I

.field private final l:Ljava/util/ArrayList;

.field private final m:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alensw/a/y;

    invoke-direct {v0}, Lcom/alensw/a/y;-><init>()V

    sput-object v0, Lcom/alensw/a/x;->b:Ljava/util/Comparator;

    new-instance v0, Lcom/alensw/a/z;

    invoke-direct {v0}, Lcom/alensw/a/z;-><init>()V

    sput-object v0, Lcom/alensw/a/x;->c:Ljava/util/Comparator;

    new-instance v0, Lcom/alensw/a/aa;

    invoke-direct {v0}, Lcom/alensw/a/aa;-><init>()V

    sput-object v0, Lcom/alensw/a/x;->d:Ljava/util/Comparator;

    new-instance v0, Lcom/alensw/a/ab;

    invoke-direct {v0}, Lcom/alensw/a/ab;-><init>()V

    sput-object v0, Lcom/alensw/a/x;->e:Ljava/util/Comparator;

    new-instance v0, Lcom/alensw/a/ac;

    invoke-direct {v0}, Lcom/alensw/a/ac;-><init>()V

    sput-object v0, Lcom/alensw/a/x;->f:Ljava/util/Comparator;

    new-instance v0, Lcom/alensw/a/ad;

    invoke-direct {v0}, Lcom/alensw/a/ad;-><init>()V

    sput-object v0, Lcom/alensw/a/x;->g:Ljava/util/Comparator;

    new-instance v0, Lcom/alensw/a/ae;

    invoke-direct {v0}, Lcom/alensw/a/ae;-><init>()V

    sput-object v0, Lcom/alensw/a/x;->h:Ljava/util/Comparator;

    new-instance v0, Lcom/alensw/a/af;

    invoke-direct {v0}, Lcom/alensw/a/af;-><init>()V

    sput-object v0, Lcom/alensw/a/x;->i:Ljava/util/Comparator;

    new-instance v0, Lcom/alensw/a/ag;

    invoke-direct {v0}, Lcom/alensw/a/ag;-><init>()V

    sput-object v0, Lcom/alensw/a/x;->j:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x100

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v1, v1, v0}, Lcom/alensw/a/x;->a(ZII)I

    move-result v0

    iput v0, p0, Lcom/alensw/a/x;->k:I

    sget-object v0, Lcom/alensw/a/x;->d:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/a/x;->a:Ljava/util/Comparator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/a/x;->m:Ljava/util/HashSet;

    return-void
.end method

.method public static final a(Lcom/alensw/a/e;Lcom/alensw/a/e;)I
    .locals 4

    invoke-virtual {p0}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/alensw/b/b/b;->a:Lcom/alensw/b/b/c;

    invoke-virtual {v2, v0, v1}, Lcom/alensw/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(ZII)I
    .locals 2

    if-eqz p0, :cond_0

    const/high16 v0, 0x10000

    :goto_0
    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final b(Lcom/alensw/a/e;Lcom/alensw/a/e;)I
    .locals 3

    invoke-static {p0, p1}, Lcom/alensw/a/x;->a(Lcom/alensw/a/e;Lcom/alensw/a/e;)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v0, p0, Lcom/alensw/a/e;->e:I

    iget v2, p1, Lcom/alensw/a/e;->e:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static final c(Lcom/alensw/a/e;Lcom/alensw/a/e;)I
    .locals 4

    invoke-static {p0, p1}, Lcom/alensw/a/x;->a(Lcom/alensw/a/e;Lcom/alensw/a/e;)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v1

    :cond_0
    sget-object v0, Lcom/alensw/b/b/b;->a:Lcom/alensw/b/b/c;

    invoke-virtual {p0}, Lcom/alensw/a/e;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alensw/a/e;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alensw/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static final d(Lcom/alensw/a/e;Lcom/alensw/a/e;)I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/alensw/a/x;->a(Lcom/alensw/a/e;Lcom/alensw/a/e;)I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/a/e;->j()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1}, Lcom/alensw/a/e;->j()I

    move-result v4

    if-lez v4, :cond_2

    :goto_2
    if-eq v0, v1, :cond_3

    sub-int v3, v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/alensw/b/b/b;->a:Lcom/alensw/b/b/c;

    invoke-virtual {p0}, Lcom/alensw/a/e;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alensw/a/e;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alensw/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    :goto_3
    move v3, v0

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_3
.end method

.method public static final e(Lcom/alensw/a/e;Lcom/alensw/a/e;)I
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alensw/a/e;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/alensw/a/e;->b()I

    move-result v3

    if-eq v2, v0, :cond_0

    if-nez v2, :cond_3

    iget v2, p0, Lcom/alensw/a/e;->g:I

    if-ne v2, v4, :cond_3

    :cond_0
    move v2, v1

    :goto_0
    if-eq v3, v0, :cond_1

    if-nez v3, :cond_2

    iget v3, p1, Lcom/alensw/a/e;->g:I

    if-ne v3, v4, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    sub-int v0, v2, v0

    return v0

    :cond_3
    move v2, v0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/alensw/a/x;->k:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public a(ILjava/lang/String;)I
    .locals 5

    const/4 v1, -0x1

    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v3, Lcom/alensw/a/e;

    const/4 v4, 0x0

    invoke-direct {v3, v2, p2, v4}, Lcom/alensw/a/e;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    :try_start_0
    invoke-virtual {v3}, Lcom/alensw/a/e;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, p2}, Lcom/alensw/b/l/b;->b(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Lcom/alensw/a/e;->a(Lcom/alensw/a/e;Z)V

    invoke-virtual {p0, p1}, Lcom/alensw/a/x;->c(I)Lcom/alensw/a/e;

    invoke-virtual {p0, v3}, Lcom/alensw/a/x;->d(Lcom/alensw/a/e;)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/alensw/a/e;)I
    .locals 4

    iget-object v0, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alensw/a/x;->a:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Lcom/alensw/b/l/b;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v0, p0, Lcom/alensw/a/x;->m:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Gallery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/alensw/a/x;->c(Lcom/alensw/a/e;)I

    move-result v0

    if-ltz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/net/Uri;)Lcom/alensw/a/e;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, -0x1

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    invoke-virtual {v0, p2}, Lcom/alensw/a/ba;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Lcom/alensw/a/e;

    invoke-direct {v0, v2, v6}, Lcom/alensw/a/e;-><init>(Ljava/lang/String;I)V

    :goto_1
    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    new-instance v0, Lcom/alensw/a/e;

    invoke-direct {v0, v5, v6}, Lcom/alensw/a/e;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/alensw/a/q;->a(Landroid/content/Context;)Lcom/alensw/a/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alensw/a/q;->a(Lcom/alensw/a/e;)I

    move-result v1

    iput v1, v0, Lcom/alensw/a/e;->d:I

    invoke-virtual {p0, v0}, Lcom/alensw/a/x;->a(Lcom/alensw/a/e;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/alensw/a/x;->b(I)Lcom/alensw/a/e;

    move-result-object v1

    if-eqz v4, :cond_4

    iput v6, v1, Lcom/alensw/a/e;->c:I

    move-object v0, v1

    goto :goto_0

    :cond_4
    iget v0, v1, Lcom/alensw/a/e;->c:I

    invoke-virtual {v1, v0}, Lcom/alensw/a/e;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v2}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;)C

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x49

    :cond_5
    invoke-virtual {v1, v3, v0}, Lcom/alensw/a/e;->a(Ljava/io/File;C)I

    move-result v2

    iput v2, v1, Lcom/alensw/a/e;->c:I

    iget v2, v1, Lcom/alensw/a/e;->c:I

    if-gez v2, :cond_6

    new-instance v2, Lcom/alensw/a/d;

    invoke-direct {v2, v3, v0, v6}, Lcom/alensw/a/d;-><init>(Ljava/io/File;CI)V

    invoke-virtual {v1, v2}, Lcom/alensw/a/e;->c(Lcom/alensw/a/d;)I

    move-result v0

    iput v0, v1, Lcom/alensw/a/e;->c:I

    :cond_6
    move-object v0, v1

    goto :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method public a(I)V
    .locals 3

    iput p1, p0, Lcom/alensw/a/x;->k:I

    invoke-virtual {p0}, Lcom/alensw/a/x;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/alensw/a/x;->a:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/alensw/a/x;->c()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/alensw/a/x;->a:Ljava/util/Comparator;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/a/x;->i()V

    :cond_0
    return-void

    :pswitch_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/alensw/a/x;->h:Ljava/util/Comparator;

    :goto_1
    iput-object v0, p0, Lcom/alensw/a/x;->a:Ljava/util/Comparator;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alensw/a/x;->d:Ljava/util/Comparator;

    goto :goto_1

    :pswitch_1
    if-eqz v0, :cond_2

    sget-object v0, Lcom/alensw/a/x;->i:Ljava/util/Comparator;

    :goto_2
    iput-object v0, p0, Lcom/alensw/a/x;->a:Ljava/util/Comparator;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alensw/a/x;->e:Ljava/util/Comparator;

    goto :goto_2

    :pswitch_2
    sget-object v0, Lcom/alensw/a/x;->b:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/a/x;->a:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/alensw/a/x;->c:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/a/x;->a:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/alensw/a/x;->f:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/a/x;->a:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/alensw/a/x;->g:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/a/x;->a:Ljava/util/Comparator;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(Lcom/alensw/a/e;Z)V
    .locals 1

    invoke-virtual {p1}, Lcom/alensw/a/e;->n()V

    invoke-virtual {p0}, Lcom/alensw/a/x;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/a/x;->i()V

    :cond_0
    invoke-virtual {p1}, Lcom/alensw/a/e;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/alensw/a/x;->f(Lcom/alensw/a/e;)Lcom/alensw/a/e;

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_1

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->v:Lcom/alensw/b/a/a;

    invoke-virtual {v0, p1}, Lcom/alensw/b/a/a;->c(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    iget-object v0, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    invoke-virtual {v0, p1}, Lcom/alensw/a/e;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/alensw/a/x;->c(I)Lcom/alensw/a/e;

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public b(Lcom/alensw/a/e;)I
    .locals 2

    iget-object v0, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alensw/a/x;->a:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Lcom/alensw/b/l/b;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public final b(I)Lcom/alensw/a/e;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget v0, p0, Lcom/alensw/a/x;->k:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/alensw/a/x;->k:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public c(Lcom/alensw/a/e;)I
    .locals 3

    iget-object v0, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    invoke-static {v0, p1}, Lcom/alensw/a/x;->a(Lcom/alensw/a/e;Lcom/alensw/a/e;)I

    move-result v0

    if-nez v0, :cond_0

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

.method public c(I)Lcom/alensw/a/e;
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    iget-object v1, p0, Lcom/alensw/a/x;->m:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->v:Lcom/alensw/b/a/a;

    invoke-virtual {v1, v0}, Lcom/alensw/b/a/a;->c(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Lcom/alensw/a/e;)I
    .locals 4

    invoke-virtual {p1}, Lcom/alensw/a/e;->j()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/alensw/a/e;->o()Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/alensw/a/x;->a(Lcom/alensw/a/e;)I

    move-result v1

    if-ltz v1, :cond_4

    iget-object v0, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    iget v2, v0, Lcom/alensw/a/e;->d:I

    iget v3, p1, Lcom/alensw/a/e;->d:I

    if-eq v2, v3, :cond_1

    iget v2, p1, Lcom/alensw/a/e;->d:I

    if-eqz v2, :cond_1

    iget v2, p1, Lcom/alensw/a/e;->d:I

    iput v2, v0, Lcom/alensw/a/e;->d:I

    invoke-static {}, Lcom/alensw/PicFolder/QuickApp;->a()Lcom/alensw/PicFolder/QuickApp;

    move-result-object v2

    invoke-static {v2}, Lcom/alensw/a/q;->a(Landroid/content/Context;)Lcom/alensw/a/q;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alensw/a/q;->b(Lcom/alensw/a/e;)V

    :cond_1
    iget-object v2, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alensw/a/x;->m:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/alensw/a/e;->a(Lcom/alensw/a/e;I)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->v:Lcom/alensw/b/a/a;

    invoke-virtual {v1, v0}, Lcom/alensw/b/a/a;->c(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    :cond_2
    invoke-virtual {p0, p1}, Lcom/alensw/a/x;->a(Lcom/alensw/a/e;)I

    move-result v0

    :goto_0
    if-gez v0, :cond_3

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Lcom/alensw/a/x;->m:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/alensw/a/x;->k:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

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

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/alensw/a/x;->k:I

    return v0
.end method

.method public e(Lcom/alensw/a/e;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/alensw/a/x;->f(Lcom/alensw/a/e;)Lcom/alensw/a/e;

    invoke-virtual {p1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alensw/b/l/b;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/alensw/a/x;->c(I)Lcom/alensw/a/e;

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public f(Lcom/alensw/a/e;)Lcom/alensw/a/e;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/alensw/a/x;->a(Lcom/alensw/a/e;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/alensw/a/x;->c(I)Lcom/alensw/a/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->k()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/alensw/a/x;->m:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public final h()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/a/x;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alensw/a/x;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/alensw/b/l/b;->a(Ljava/util/ArrayList;Ljava/util/Comparator;)Z

    return-void
.end method
