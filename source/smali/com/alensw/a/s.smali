.class public Lcom/alensw/a/s;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static final d:Lcom/alensw/b/k/a;

.field private static final e:Lcom/alensw/b/k/a;


# instance fields
.field public b:Z

.field public c:I

.field private final f:Landroid/content/Context;

.field private final g:Lcom/alensw/a/al;

.field private final h:Lcom/alensw/a/b;

.field private final i:Lcom/alensw/a/b;

.field private final j:Ljava/io/File;

.field private final k:Ljava/io/File;

.field private final l:Ljava/lang/String;

.field private final m:Lcom/alensw/b/c/d;

.field private n:Ljava/lang/String;

.field private o:Lcom/alensw/a/u;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const v5, 0x7fffffff

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Android/data/com.facebook.orca/files/stickers"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "clockworkmod/blobs"

    aput-object v2, v0, v1

    const-string v1, "Pictures/cache"

    aput-object v1, v0, v3

    const-string v1, "autonavi/mini_mapv3"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v2, "BaiduMap/vmp"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "taobao/wvcache"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alensw/a/s;->a:[Ljava/lang/String;

    new-instance v0, Lcom/alensw/b/k/a;

    invoke-direct {v0, v3, v3, v5, v4}, Lcom/alensw/b/k/a;-><init>(IIII)V

    sput-object v0, Lcom/alensw/a/s;->d:Lcom/alensw/b/k/a;

    new-instance v0, Lcom/alensw/b/k/a;

    invoke-direct {v0, v3, v3, v5, v4}, Lcom/alensw/b/k/a;-><init>(IIII)V

    sput-object v0, Lcom/alensw/a/s;->e:Lcom/alensw/b/k/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/16 v1, 0x800

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/a/s;->c:I

    new-instance v0, Lcom/alensw/a/b;

    invoke-direct {v0, v1}, Lcom/alensw/a/b;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/a/s;->h:Lcom/alensw/a/b;

    new-instance v0, Lcom/alensw/a/b;

    invoke-direct {v0, v1}, Lcom/alensw/a/b;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/a/s;->i:Lcom/alensw/a/b;

    new-instance v0, Lcom/alensw/b/c/d;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/alensw/b/c/d;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/a/s;->m:Lcom/alensw/b/c/d;

    const-string v0, ""

    iput-object v0, p0, Lcom/alensw/a/s;->n:Ljava/lang/String;

    iput-object p1, p0, Lcom/alensw/a/s;->f:Landroid/content/Context;

    new-instance v0, Lcom/alensw/a/al;

    invoke-direct {v0}, Lcom/alensw/a/al;-><init>()V

    iput-object v0, p0, Lcom/alensw/a/s;->g:Lcom/alensw/a/al;

    const-string v0, "folder_cache"

    invoke-static {p1, v0}, Lcom/alensw/b/c/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/a/s;->j:Ljava/io/File;

    const-string v0, "folder_cache2"

    invoke-static {p1, v0}, Lcom/alensw/b/c/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/a/s;->k:Ljava/io/File;

    const-string v0, "others_"

    invoke-static {p1, v0}, Lcom/alensw/b/c/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/a/s;->l:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/alensw/a/al;Lcom/alensw/a/e;ZZ)I
    .locals 10

    invoke-virtual {p2}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v7

    if-eqz p4, :cond_1

    iget-object v0, p2, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/a/s;->m:Lcom/alensw/b/c/d;

    invoke-virtual {v0, v7}, Lcom/alensw/b/c/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p2, Lcom/alensw/a/e;->e:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lcom/alensw/a/e;->e:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/a/s;->m:Lcom/alensw/b/c/d;

    invoke-virtual {v0, v7}, Lcom/alensw/b/c/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p2, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz p3, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    invoke-virtual {p2}, Lcom/alensw/a/e;->d()I

    move-result v3

    const/4 v1, 0x2

    if-eq v3, v1, :cond_9

    const/4 v1, 0x4

    if-eq v3, v1, :cond_9

    const/4 v1, 0x1

    :goto_1
    sget-boolean v2, Lcom/alensw/a/e;->a:Z

    if-nez v2, :cond_4

    invoke-virtual {p2}, Lcom/alensw/a/e;->f()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_4
    const/4 v2, 0x1

    move v6, v2

    :goto_2
    const/4 v2, 0x7

    if-eq v3, v2, :cond_5

    const/16 v2, 0x8

    if-ne v3, v2, :cond_b

    :cond_5
    const/4 v2, 0x1

    move v5, v2

    :goto_3
    const/4 v2, 0x0

    if-eqz v1, :cond_8

    if-eqz v6, :cond_6

    sget-object v2, Lcom/alensw/a/s;->d:Lcom/alensw/b/k/a;

    new-instance v3, Lcom/alensw/a/t;

    invoke-direct {v3, p0, v5, v7}, Lcom/alensw/a/t;-><init>(Lcom/alensw/a/s;ZLjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/alensw/b/k/a;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    :cond_6
    if-eqz v6, :cond_7

    invoke-static {v7}, Lcom/alensw/a/am;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    or-int/lit16 v0, v0, 0xf0

    :cond_8
    invoke-virtual {p1, p2, v0}, Lcom/alensw/a/al;->b(Lcom/alensw/a/e;I)I

    move-result v0

    if-gez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    goto :goto_1

    :cond_a
    const/4 v2, 0x0

    move v6, v2

    goto :goto_2

    :cond_b
    const/4 v2, 0x0

    move v5, v2

    goto :goto_3

    :cond_c
    iget-object v8, p2, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    iget-object v9, p2, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v0, 0x8

    if-gt v3, v0, :cond_d

    if-eqz v9, :cond_d

    add-int/lit8 v0, v3, -0x1

    move v4, v0

    :goto_4
    if-ltz v4, :cond_d

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/d;

    iget-object v0, v0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alensw/b/f/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v3, -0x1

    :goto_5
    add-int/lit8 v3, v4, -0x1

    move v4, v3

    move v3, v0

    goto :goto_4

    :cond_d
    if-eqz p4, :cond_10

    if-nez v3, :cond_10

    iget v0, p2, Lcom/alensw/a/e;->e:I

    if-eqz v0, :cond_10

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/alensw/a/s;->m:Lcom/alensw/b/c/d;

    invoke-virtual {v0}, Lcom/alensw/b/c/d;->c()I

    move-result v0

    const/16 v4, 0x1000

    if-ge v0, v4, :cond_e

    iget-object v0, p0, Lcom/alensw/a/s;->m:Lcom/alensw/b/c/d;

    iget v4, p2, Lcom/alensw/a/e;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Lcom/alensw/b/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_6
    if-eqz v1, :cond_16

    if-eqz v6, :cond_16

    if-lez v3, :cond_16

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    if-nez v0, :cond_17

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    :goto_8
    invoke-static {v7}, Lcom/alensw/b/l/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_12

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/d;

    iget-object v1, v0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    if-eqz v1, :cond_11

    const/4 v6, 0x0

    aget-wide v6, v1, v6

    iput-wide v6, v0, Lcom/alensw/a/d;->f:J

    goto :goto_9

    :cond_10
    if-lez v3, :cond_e

    iget-object v0, p0, Lcom/alensw/a/s;->m:Lcom/alensw/b/c/d;

    invoke-virtual {v0, v7}, Lcom/alensw/b/c/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_7

    :cond_11
    iget-wide v6, v0, Lcom/alensw/a/d;->f:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alensw/jni/JniUtils;->fuGetFileSize(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alensw/a/d;->f:J

    goto :goto_9

    :cond_12
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_13
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/d;

    iget-object v1, v0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    if-eqz v1, :cond_14

    const/4 v6, 0x0

    aget-wide v6, v1, v6

    long-to-int v6, v6

    iput v6, v0, Lcom/alensw/a/d;->d:I

    const/4 v6, 0x1

    aget-wide v6, v1, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v1, v6

    iput v1, v0, Lcom/alensw/a/d;->e:I

    iget v1, v0, Lcom/alensw/a/d;->e:I

    if-nez v1, :cond_13

    iget v1, v0, Lcom/alensw/a/d;->d:I

    iput v1, v0, Lcom/alensw/a/d;->e:I

    goto :goto_a

    :cond_14
    iget v1, v0, Lcom/alensw/a/d;->d:I

    if-nez v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alensw/jni/JniUtils;->fuGetFileTime(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alensw/a/d;->d:I

    iput v1, v0, Lcom/alensw/a/d;->e:I

    goto :goto_a

    :cond_15
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_16
    invoke-virtual {p2}, Lcom/alensw/a/e;->l()V

    move v0, v3

    goto/16 :goto_0

    :cond_17
    move-object v2, v0

    goto/16 :goto_8

    :cond_18
    move v0, v3

    goto/16 :goto_5
.end method

.method static synthetic a(Lcom/alensw/a/s;Lcom/alensw/a/al;Lcom/alensw/a/e;ZZ)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alensw/a/s;->a(Lcom/alensw/a/al;Lcom/alensw/a/e;ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alensw/a/s;)Lcom/alensw/a/b;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/s;->h:Lcom/alensw/a/b;

    return-object v0
.end method

.method static synthetic b(Lcom/alensw/a/s;)Lcom/alensw/a/b;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/s;->i:Lcom/alensw/a/b;

    return-object v0
.end method

.method static synthetic c(Lcom/alensw/a/s;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/s;->j:Ljava/io/File;

    return-object v0
.end method

.method static synthetic d()Lcom/alensw/b/k/a;
    .locals 1

    sget-object v0, Lcom/alensw/a/s;->e:Lcom/alensw/b/k/a;

    return-object v0
.end method

.method static synthetic d(Lcom/alensw/a/s;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/s;->k:Ljava/io/File;

    return-object v0
.end method

.method static synthetic e(Lcom/alensw/a/s;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/s;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/alensw/a/s;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/s;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alensw/a/s;)Lcom/alensw/b/c/d;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/s;->m:Lcom/alensw/b/c/d;

    return-object v0
.end method

.method static synthetic h(Lcom/alensw/a/s;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/s;->l:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/alensw/a/e;Z)I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    if-eqz p2, :cond_2

    const/4 v0, 0x2

    :goto_1
    iget-object v2, p0, Lcom/alensw/a/s;->g:Lcom/alensw/a/al;

    invoke-virtual {v2, p1, v0}, Lcom/alensw/a/al;->a(Lcom/alensw/a/e;I)I

    move-result v0

    if-gez v0, :cond_1

    :goto_2
    return v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p1, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/a/s;->o:Lcom/alensw/a/u;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alensw/a/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alensw/a/u;-><init>(Lcom/alensw/a/s;Lcom/alensw/a/t;)V

    iput-object v0, p0, Lcom/alensw/a/s;->o:Lcom/alensw/a/u;

    :cond_0
    iget-object v0, p0, Lcom/alensw/a/s;->o:Lcom/alensw/a/u;

    invoke-virtual {v0}, Lcom/alensw/a/u;->b()V

    return-void
.end method

.method public a(ILandroid/content/SharedPreferences;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/alensw/a/s;->c:I

    if-eq v2, p1, :cond_0

    iput p1, p0, Lcom/alensw/a/s;->c:I

    iget-object v2, p0, Lcom/alensw/a/s;->m:Lcom/alensw/b/c/d;

    invoke-virtual {v2}, Lcom/alensw/b/c/d;->d()V

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_2

    :goto_1
    invoke-static {v2, v0, p2}, Lcom/alensw/a/al;->a(ZZLandroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/a/s;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/alensw/a/s;->g:Lcom/alensw/a/al;

    iget-object v1, p0, Lcom/alensw/a/s;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alensw/a/al;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public a(ILjava/lang/Object;Landroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alensw/a/s;->o:Lcom/alensw/a/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/s;->o:Lcom/alensw/a/u;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {v0, p1, v3, v3, v1}, Lcom/alensw/a/u;->b(III[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/alensw/a/e;Z)I
    .locals 2

    iget-object v0, p0, Lcom/alensw/a/s;->g:Lcom/alensw/a/al;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/alensw/a/s;->a(Lcom/alensw/a/al;Lcom/alensw/a/e;ZZ)I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/s;->o:Lcom/alensw/a/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/s;->o:Lcom/alensw/a/u;

    invoke-virtual {v0}, Lcom/alensw/a/u;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/a/s;->o:Lcom/alensw/a/u;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/a/s;->o:Lcom/alensw/a/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/s;->o:Lcom/alensw/a/u;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alensw/a/u;->a(Z)V

    :cond_0
    return-void
.end method
