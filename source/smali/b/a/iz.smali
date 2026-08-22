.class public Lb/a/iz;
.super Ljava/lang/Object;


# instance fields
.field private a:Lb/a/hg;

.field private b:Lb/a/id;

.field private final c:I

.field private d:Landroid/content/Context;

.field private e:Lb/a/b;

.field private f:Lb/a/iv;

.field private g:Lb/a/fp;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/a/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lb/a/iz;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/iz;->h:Z

    invoke-static {p1}, Lb/a/hg;->a(Landroid/content/Context;)Lb/a/hg;

    move-result-object v0

    iput-object v0, p0, Lb/a/iz;->a:Lb/a/hg;

    invoke-static {p1}, Lb/a/id;->a(Landroid/content/Context;)Lb/a/id;

    move-result-object v0

    iput-object v0, p0, Lb/a/iz;->b:Lb/a/id;

    iput-object p1, p0, Lb/a/iz;->d:Landroid/content/Context;

    iput-object p2, p0, Lb/a/iz;->e:Lb/a/b;

    new-instance v0, Lb/a/iv;

    invoke-direct {v0, p1}, Lb/a/iv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/a/iz;->f:Lb/a/iv;

    iget-object v0, p0, Lb/a/iz;->f:Lb/a/iv;

    iget-object v1, p0, Lb/a/iz;->e:Lb/a/b;

    invoke-virtual {v0, v1}, Lb/a/iv;->a(Lb/a/it;)V

    return-void
.end method

.method static synthetic a(Lb/a/iz;[B)I
    .locals 1

    invoke-direct {p0, p1}, Lb/a/iz;->a([B)I

    move-result v0

    return v0
.end method

.method private a([B)I
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Lb/a/et;

    invoke-direct {v1}, Lb/a/et;-><init>()V

    new-instance v0, Lb/a/go;

    new-instance v2, Lb/a/hf;

    invoke-direct {v2}, Lb/a/hf;-><init>()V

    invoke-direct {v0, v2}, Lb/a/go;-><init>(Lb/a/hp;)V

    :try_start_0
    invoke-virtual {v0, v1, p1}, Lb/a/go;->a(Lb/a/gk;[B)V

    iget v0, v1, Lb/a/et;->a:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lb/a/iz;->b:Lb/a/id;

    invoke-virtual {v1}, Lb/a/et;->d()Lb/a/cm;

    move-result-object v2

    invoke-virtual {v0, v2}, Lb/a/id;->b(Lb/a/cm;)V

    iget-object v0, p0, Lb/a/iz;->b:Lb/a/id;

    invoke-virtual {v0}, Lb/a/id;->c()V

    :cond_0
    const-string v0, "MobclickAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send log:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lb/a/et;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lb/a/ge;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v0, v1, Lb/a/et;->a:I

    if-ne v0, v4, :cond_1

    const/4 v0, 0x2

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_1
.end method

.method static synthetic a(Lb/a/iz;)Lb/a/iv;
    .locals 1

    iget-object v0, p0, Lb/a/iz;->f:Lb/a/iv;

    return-object v0
.end method

.method static synthetic b(Lb/a/iz;)Lb/a/b;
    .locals 1

    iget-object v0, p0, Lb/a/iz;->e:Lb/a/b;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lb/a/iz;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/c/a/t;->a(Landroid/content/Context;)Lcom/c/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/t;->h()Lcom/c/a/u;

    move-result-object v0

    new-instance v1, Lb/a/ja;

    invoke-direct {v1, p0}, Lb/a/ja;-><init>(Lb/a/iz;)V

    invoke-virtual {v0, v1}, Lcom/c/a/u;->a(Lcom/c/a/w;)V

    return-void
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

.method private c()V
    .locals 3

    iget-object v0, p0, Lb/a/iz;->a:Lb/a/hg;

    invoke-virtual {v0}, Lb/a/hg;->a()V

    iget-object v0, p0, Lb/a/iz;->g:Lb/a/fp;

    iget-object v1, p0, Lb/a/iz;->a:Lb/a/hg;

    invoke-virtual {v1}, Lb/a/hg;->b()Lb/a/ce;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/fp;->a(Lb/a/ce;)Lb/a/fp;

    invoke-direct {p0, v0}, Lb/a/iz;->b(Lb/a/fp;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MobclickAgent"

    const-string v1, "message is null"

    invoke-static {v0, v1}, Lb/a/ge;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lb/a/iz;->h:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lb/a/iz;->d:Landroid/content/Context;

    iget-object v2, p0, Lb/a/iz;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/c/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lb/a/gf;->a(Landroid/content/Context;Ljava/lang/String;[B)Lb/a/gf;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lb/a/gf;->c()[B

    move-result-object v1

    iget-object v0, p0, Lb/a/iz;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/c/a/t;->a(Landroid/content/Context;)Lcom/c/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/t;->f()V

    iget-object v0, p0, Lb/a/iz;->f:Lb/a/iv;

    invoke-virtual {v0, v1}, Lb/a/iv;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lb/a/iz;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/a/iz;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/c/a/t;->a(Landroid/content/Context;)Lcom/c/a/t;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/c/a/t;->b([B)V

    :cond_1
    const-string v0, "MobclickAgent"

    const-string v1, "connection error"

    invoke-static {v0, v1}, Lb/a/ge;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lb/a/iz;->d:Landroid/content/Context;

    iget-object v2, p0, Lb/a/iz;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/c/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lb/a/gf;->b(Landroid/content/Context;Ljava/lang/String;[B)Lb/a/gf;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lb/a/iz;->a([B)I

    move-result v0

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lb/a/iz;->e:Lb/a/b;

    invoke-virtual {v0}, Lb/a/b;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb/a/iz;->e:Lb/a/b;

    invoke-virtual {v0}, Lb/a/b;->g()V

    :cond_4
    iget-object v0, p0, Lb/a/iz;->a:Lb/a/hg;

    invoke-virtual {v0}, Lb/a/hg;->c()V

    iget-object v0, p0, Lb/a/iz;->e:Lb/a/b;

    invoke-virtual {v0}, Lb/a/b;->f()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lb/a/iz;->e:Lb/a/b;

    invoke-virtual {v0}, Lb/a/b;->f()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lb/a/iz;)Z
    .locals 1

    iget-boolean v0, p0, Lb/a/iz;->i:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lb/a/iz;->g:Lb/a/fp;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lb/a/iz;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lb/a/iz;->b()V

    goto :goto_0
.end method

.method public a(Lb/a/fp;)V
    .locals 0

    iput-object p1, p0, Lb/a/iz;->g:Lb/a/fp;

    return-void
.end method

.method public a(Lb/a/ix;)V
    .locals 1

    iget-object v0, p0, Lb/a/iz;->b:Lb/a/id;

    invoke-virtual {v0, p1}, Lb/a/id;->a(Lb/a/ix;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lb/a/iz;->h:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lb/a/iz;->i:Z

    return-void
.end method
