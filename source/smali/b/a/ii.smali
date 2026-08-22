.class public final Lb/a/ii;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/ir;
.implements Lb/a/ix;
.implements Lcom/c/a/a/c;


# instance fields
.field private a:Lb/a/iu;

.field private b:Lcom/c/a/t;

.field private c:Lb/a/b;

.field private d:Lb/a/j;

.field private e:Lb/a/ik;

.field private f:I

.field private g:I

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lb/a/ii;->a:Lb/a/iu;

    iput-object v1, p0, Lb/a/ii;->b:Lcom/c/a/t;

    iput-object v1, p0, Lb/a/ii;->c:Lb/a/b;

    new-instance v0, Lb/a/j;

    invoke-direct {v0}, Lb/a/j;-><init>()V

    iput-object v0, p0, Lb/a/ii;->d:Lb/a/j;

    iput-object v1, p0, Lb/a/ii;->e:Lb/a/ik;

    const/16 v0, 0xa

    iput v0, p0, Lb/a/ii;->f:I

    iput-object p1, p0, Lb/a/ii;->h:Landroid/content/Context;

    new-instance v0, Lb/a/iu;

    invoke-direct {v0, p1}, Lb/a/iu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/a/ii;->a:Lb/a/iu;

    new-instance v0, Lb/a/b;

    invoke-direct {v0, p1}, Lb/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/a/ii;->c:Lb/a/b;

    invoke-static {p1}, Lcom/c/a/t;->a(Landroid/content/Context;)Lcom/c/a/t;

    move-result-object v0

    iput-object v0, p0, Lb/a/ii;->b:Lcom/c/a/t;

    iget-object v0, p0, Lb/a/ii;->d:Lb/a/j;

    iget-object v1, p0, Lb/a/ii;->b:Lcom/c/a/t;

    invoke-virtual {v1}, Lcom/c/a/t;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/j;->a(I)V

    new-instance v0, Lb/a/ik;

    invoke-direct {v0, p0}, Lb/a/ik;-><init>(Lb/a/ii;)V

    iput-object v0, p0, Lb/a/ii;->e:Lb/a/ik;

    iget-object v0, p0, Lb/a/ii;->b:Lcom/c/a/t;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/c/a/t;->d(I)I

    move-result v0

    iput v0, p0, Lb/a/ii;->g:I

    return-void
.end method

.method private a([B)Lb/a/fp;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lb/a/fp;

    invoke-direct {v1}, Lb/a/fp;-><init>()V

    new-instance v2, Lb/a/go;

    invoke-direct {v2}, Lb/a/go;-><init>()V

    invoke-virtual {v2, v1, p1}, Lb/a/go;->a(Lb/a/gk;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lb/a/ii;)Lcom/c/a/t;
    .locals 1

    iget-object v0, p0, Lb/a/ii;->b:Lcom/c/a/t;

    return-object v0
.end method

.method private a(Lb/a/fp;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/a/ii;->h:Landroid/content/Context;

    invoke-static {v0}, Lb/a/hg;->a(Landroid/content/Context;)Lb/a/hg;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/hg;->a()V

    invoke-virtual {v1}, Lb/a/hg;->b()Lb/a/ce;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/fp;->a(Lb/a/ce;)Lb/a/fp;

    invoke-direct {p0, p1}, Lb/a/ii;->b(Lb/a/fp;)[B

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lb/a/ii;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lb/a/ii;->h:Landroid/content/Context;

    iget-object v3, p0, Lb/a/ii;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/c/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lb/a/gf;->b(Landroid/content/Context;Ljava/lang/String;[B)Lb/a/gf;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lb/a/gf;->c()[B

    move-result-object v0

    iget-object v2, p0, Lb/a/ii;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/c/a/t;->a(Landroid/content/Context;)Lcom/c/a/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/c/a/t;->f()V

    invoke-virtual {v2, v0}, Lcom/c/a/t;->b([B)V

    invoke-virtual {v1}, Lb/a/hg;->c()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lb/a/ii;->h:Landroid/content/Context;

    iget-object v3, p0, Lb/a/ii;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/c/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lb/a/gf;->a(Landroid/content/Context;Ljava/lang/String;[B)Lb/a/gf;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lb/a/ii;I)V
    .locals 0

    invoke-direct {p0, p1}, Lb/a/ii;->e(I)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    iget-object v0, p0, Lb/a/ii;->c:Lb/a/b;

    invoke-virtual {v0}, Lb/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb/a/ii;->a:Lb/a/iu;

    new-instance v2, Lb/a/l;

    iget-object v3, p0, Lb/a/ii;->c:Lb/a/b;

    invoke-virtual {v3}, Lb/a/b;->i()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lb/a/l;-><init>(J)V

    invoke-virtual {v1, v2}, Lb/a/iu;->a(Lb/a/l;)V

    :cond_0
    invoke-direct {p0, p1}, Lb/a/ii;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lb/a/ii;->d()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0}, Lb/a/ii;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    invoke-virtual {p0}, Lb/a/ii;->b()V

    goto :goto_0
.end method

.method static synthetic b(Lb/a/ii;)Lb/a/b;
    .locals 1

    iget-object v0, p0, Lb/a/ii;->c:Lb/a/b;

    return-object v0
.end method

.method private b(Z)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lb/a/ii;->h:Landroid/content/Context;

    invoke-static {v1}, Lb/a/gd;->g(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v0, Lb/a/ge;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "MobclickAgent"

    const-string v1, "network is unavailable"

    invoke-static {v0, v1}, Lb/a/ge;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lb/a/ii;->c:Lb/a/b;

    invoke-virtual {v1}, Lb/a/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lb/a/ge;->a:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lb/a/ii;->h:Landroid/content/Context;

    invoke-static {v1}, Lb/a/gd;->q(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    iget-object v0, p0, Lb/a/ii;->e:Lb/a/ik;

    invoke-virtual {v0}, Lb/a/ik;->c()Lcom/c/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/c/a/i;->a(Z)Z

    move-result v0

    goto :goto_0
.end method

.method private b(Lb/a/fp;)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lb/a/gr;

    invoke-direct {v1}, Lb/a/gr;-><init>()V

    invoke-virtual {v1, p1}, Lb/a/gr;->a(Lb/a/gk;)[B

    move-result-object v1

    sget-boolean v2, Lb/a/ge;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "MobclickAgent"

    invoke-virtual {p1}, Lb/a/fp;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lb/a/ge;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MobclickAgent"

    const-string v3, "Fail to serialize log ..."

    invoke-static {v2, v3, v1}, Lb/a/ge;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic c(Lb/a/ii;)Lb/a/j;
    .locals 1

    iget-object v0, p0, Lb/a/ii;->d:Lb/a/j;

    return-object v0
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Lb/a/ii;->a:Lb/a/iu;

    invoke-virtual {v0}, Lb/a/iu;->a()I

    move-result v0

    iget v1, p0, Lb/a/ii;->f:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lb/a/ii;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lb/a/ii;->h:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lb/a/ii;->b:Lcom/c/a/t;

    invoke-virtual {v0}, Lcom/c/a/t;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lb/a/iz;

    iget-object v1, p0, Lb/a/ii;->h:Landroid/content/Context;

    iget-object v2, p0, Lb/a/ii;->c:Lb/a/b;

    invoke-direct {v0, v1, v2}, Lb/a/iz;-><init>(Landroid/content/Context;Lb/a/b;)V

    invoke-virtual {v0, p0}, Lb/a/iz;->a(Lb/a/ix;)V

    iget-object v1, p0, Lb/a/ii;->d:Lb/a/j;

    invoke-virtual {v1}, Lb/a/j;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/a/iz;->b(Z)V

    :cond_0
    invoke-virtual {v0}, Lb/a/iz;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lb/a/ii;->a([I)Lb/a/fp;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "MobclickAgent"

    const-string v1, "No data to report"

    invoke-static {v0, v1}, Lb/a/ge;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_3

    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_1
    new-instance v1, Lb/a/iz;

    iget-object v2, p0, Lb/a/ii;->h:Landroid/content/Context;

    iget-object v3, p0, Lb/a/ii;->c:Lb/a/b;

    invoke-direct {v1, v2, v3}, Lb/a/iz;-><init>(Landroid/content/Context;Lb/a/b;)V

    invoke-virtual {v1, p0}, Lb/a/iz;->a(Lb/a/ix;)V

    iget-object v2, p0, Lb/a/ii;->d:Lb/a/j;

    invoke-virtual {v2}, Lb/a/j;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lb/a/iz;->b(Z)V

    :cond_5
    invoke-virtual {v1, v0}, Lb/a/iz;->a(Lb/a/fp;)V

    invoke-direct {p0}, Lb/a/ii;->e()Z

    move-result v0

    invoke-virtual {v1, v0}, Lb/a/iz;->a(Z)V

    invoke-virtual {v1}, Lb/a/iz;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private d(I)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lb/a/ii;->c:Lb/a/b;

    invoke-virtual {v2}, Lb/a/b;->j()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {p0, v1}, Lb/a/ii;->a([I)Lb/a/fp;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/ii;->a(Lb/a/fp;)V

    new-instance v0, Lb/a/ij;

    invoke-direct {v0, p0}, Lb/a/ij;-><init>(Lb/a/ii;)V

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/c/a/r;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private e(I)V
    .locals 0

    invoke-direct {p0, p1}, Lb/a/ii;->d(I)V

    return-void
.end method

.method private e()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lb/a/ii;->g:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/c/a/a;->f:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected varargs a([I)Lb/a/fp;
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lb/a/ii;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/c/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MobclickAgent"

    const-string v1, "Appkey is missing ,Please check AndroidManifest.xml"

    invoke-static {v0, v1}, Lb/a/ge;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lb/a/ii;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/c/a/t;->a(Landroid/content/Context;)Lcom/c/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/t;->e()[B

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v3

    :goto_1
    if-nez v0, :cond_3

    iget-object v4, p0, Lb/a/ii;->a:Lb/a/iu;

    invoke-virtual {v4}, Lb/a/iu;->a()I

    move-result v4

    if-nez v4, :cond_3

    move-object v0, v3

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lb/a/ii;->a([B)Lb/a/fp;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-nez v0, :cond_7

    new-instance v0, Lb/a/fp;

    invoke-direct {v0}, Lb/a/fp;-><init>()V

    move-object v4, v0

    :goto_2
    iget-object v0, p0, Lb/a/ii;->a:Lb/a/iu;

    invoke-virtual {v0, v4}, Lb/a/iu;->a(Lb/a/fp;)V

    sget-boolean v0, Lb/a/ge;->a:Z

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Lb/a/fp;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Lb/a/fp;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/fb;

    invoke-virtual {v0}, Lb/a/fb;->d()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_4
    move v2, v0

    goto :goto_3

    :cond_4
    if-nez v2, :cond_5

    const-string v0, "MobclickAgent"

    const-string v1, "missing Activities or PageViews"

    invoke-static {v0, v1}, Lb/a/ge;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lb/a/ii;->d:Lb/a/j;

    iget-object v1, p0, Lb/a/ii;->h:Landroid/content/Context;

    invoke-virtual {v0, v1, v4}, Lb/a/j;->a(Landroid/content/Context;Lb/a/fp;)Lb/a/fp;

    move-result-object v0

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v1, Lb/a/an;

    invoke-direct {v1}, Lb/a/an;-><init>()V

    new-instance v2, Lb/a/dh;

    const/4 v4, 0x0

    aget v4, p1, v4

    div-int/lit16 v4, v4, 0x3e8

    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v6, v5

    invoke-direct {v2, v4, v6, v7}, Lb/a/dh;-><init>(IJ)V

    invoke-virtual {v1, v2}, Lb/a/an;->a(Lb/a/dh;)Lb/a/an;

    invoke-virtual {v0, v1}, Lb/a/fp;->a(Lb/a/an;)Lb/a/fp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MobclickAgent"

    const-string v2, "Fail to construct message ..."

    invoke-static {v1, v2, v0}, Lb/a/ge;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v0, p0, Lb/a/ii;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/c/a/t;->a(Landroid/content/Context;)Lcom/c/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/t;->f()V

    move-object v0, v3

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move-object v4, v0

    goto :goto_2
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lb/a/ii;->h:Landroid/content/Context;

    invoke-static {v0}, Lb/a/gd;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lb/a/ii;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lb/a/ge;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "MobclickAgent"

    const-string v1, "network is unavailable"

    invoke-static {v0, v1}, Lb/a/ge;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lb/a/ii;->d:Lb/a/j;

    invoke-virtual {v0, p1}, Lb/a/j;->a(I)V

    iget-object v0, p0, Lb/a/ii;->e:Lb/a/ik;

    invoke-virtual {v0, p1}, Lb/a/ik;->b(I)V

    :cond_0
    return-void
.end method

.method public a(Lb/a/is;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/a/ii;->a:Lb/a/iu;

    invoke-virtual {v0, p1}, Lb/a/iu;->a(Lb/a/is;)V

    :cond_0
    instance-of v0, p1, Lb/a/fb;

    invoke-direct {p0, v0}, Lb/a/ii;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lb/a/ii;->a:Lb/a/iu;

    invoke-virtual {v0}, Lb/a/iu;->a()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lb/a/ii;->a([I)Lb/a/fp;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/ii;->b(Lb/a/fp;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb/a/ii;->b:Lcom/c/a/t;

    invoke-virtual {v1, v0}, Lcom/c/a/t;->a([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb/a/ii;->b:Lcom/c/a/t;

    invoke-virtual {v1}, Lcom/c/a/t;->f()V

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    if-lez p1, :cond_0

    iget-object v0, p0, Lb/a/ii;->e:Lb/a/ik;

    invoke-virtual {v0, p1}, Lb/a/ik;->a(I)V

    :cond_0
    return-void
.end method

.method public b(Lb/a/is;)V
    .locals 1

    iget-object v0, p0, Lb/a/ii;->a:Lb/a/iu;

    invoke-virtual {v0, p1}, Lb/a/iu;->a(Lb/a/is;)V

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lb/a/ii;->g:I

    return-void
.end method
