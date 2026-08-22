.class public Lcom/c/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/iw;


# instance fields
.field private final a:Lcom/c/a/a/b;

.field private b:Landroid/content/Context;

.field private c:Lcom/c/a/m;

.field private d:Lb/a/ip;

.field private e:Lb/a/e;

.field private f:Lb/a/jb;

.field private g:Lb/a/iq;

.field private h:Lb/a/il;

.field private i:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/c/a/a/b;

    invoke-direct {v0}, Lcom/c/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/c/a/n;->a:Lcom/c/a/a/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/n;->b:Landroid/content/Context;

    new-instance v0, Lb/a/ip;

    invoke-direct {v0}, Lb/a/ip;-><init>()V

    iput-object v0, p0, Lcom/c/a/n;->d:Lb/a/ip;

    new-instance v0, Lb/a/e;

    invoke-direct {v0}, Lb/a/e;-><init>()V

    iput-object v0, p0, Lcom/c/a/n;->e:Lb/a/e;

    new-instance v0, Lb/a/jb;

    invoke-direct {v0}, Lb/a/jb;-><init>()V

    iput-object v0, p0, Lcom/c/a/n;->f:Lb/a/jb;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/n;->i:Z

    iget-object v0, p0, Lcom/c/a/n;->d:Lb/a/ip;

    invoke-virtual {v0, p0}, Lb/a/ip;->a(Lb/a/iw;)V

    return-void
.end method

.method static synthetic a(Lcom/c/a/n;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/c/a/n;->d(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/c/a/n;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/c/a/n;->e(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/c/a/n;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/n;->b:Landroid/content/Context;

    new-instance v0, Lb/a/iq;

    iget-object v1, p0, Lcom/c/a/n;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lb/a/iq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/c/a/n;->g:Lb/a/iq;

    iget-object v0, p0, Lcom/c/a/n;->b:Landroid/content/Context;

    invoke-static {v0}, Lb/a/il;->a(Landroid/content/Context;)Lb/a/il;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/n;->h:Lb/a/il;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/n;->i:Z

    :cond_0
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/c/a/n;->f:Lb/a/jb;

    invoke-virtual {v0, p1}, Lb/a/jb;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/c/a/n;->c:Lcom/c/a/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/n;->c:Lcom/c/a/m;

    invoke-interface {v0}, Lcom/c/a/m;->a()V

    :cond_0
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/c/a/n;->f:Lb/a/jb;

    invoke-virtual {v0, p1}, Lb/a/jb;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/c/a/n;->e:Lb/a/e;

    invoke-virtual {v0, p1}, Lb/a/e;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/c/a/n;->c:Lcom/c/a/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/n;->c:Lcom/c/a/m;

    invoke-interface {v0}, Lcom/c/a/m;->b()V

    :cond_0
    iget-object v0, p0, Lcom/c/a/n;->h:Lb/a/il;

    invoke-virtual {v0}, Lb/a/il;->b()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in onResume"

    invoke-static {v0, v1}, Lb/a/ge;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/c/a/a;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/c/a/n;->e:Lb/a/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/e;->a(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/c/a/n;->i:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/c/a/n;->c(Landroid/content/Context;)V

    :cond_2
    new-instance v0, Lcom/c/a/o;

    invoke-direct {v0, p0, p1}, Lcom/c/a/o;-><init>(Lcom/c/a/n;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/c/a/r;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onResume(). "

    invoke-static {v1, v2, v0}, Lb/a/ge;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 8

    :try_start_0
    iget-boolean v0, p0, Lcom/c/a/n;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/c/a/n;->c(Landroid/content/Context;)V

    :cond_0
    iget-object v1, p0, Lcom/c/a/n;->g:Lb/a/iq;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lb/a/iq;->a(Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lb/a/ge;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/c/a/n;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/c/a/n;->c(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/c/a/n;->g:Lb/a/iq;

    invoke-virtual {v0, p2, p3, p4, p5}, Lb/a/iq;->a(Ljava/lang/String;Ljava/util/Map;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lb/a/ge;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/c/a/a;->h:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/c/a/n;->e:Lb/a/e;

    invoke-virtual {v0, p1}, Lb/a/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/c/a/n;->e:Lb/a/e;

    invoke-virtual {v0}, Lb/a/e;->a()V

    iget-object v0, p0, Lcom/c/a/n;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/c/a/n;->h:Lb/a/il;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/n;->h:Lb/a/il;

    new-instance v1, Lb/a/g;

    invoke-direct {v1, p1}, Lb/a/g;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lb/a/il;->b(Lb/a/is;)V

    :cond_0
    iget-object v0, p0, Lcom/c/a/n;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/c/a/n;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/c/a/n;->b:Landroid/content/Context;

    invoke-static {v0}, Lb/a/iy;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    invoke-static {}, Lcom/c/a/r;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MobclickAgent"

    const-string v2, "Exception in onAppCrash"

    invoke-static {v1, v2, v0}, Lb/a/ge;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method b(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in onPause"

    invoke-static {v0, v1}, Lb/a/ge;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/c/a/a;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/c/a/n;->e:Lb/a/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/e;->b(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/c/a/n;->i:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/c/a/n;->c(Landroid/content/Context;)V

    :cond_2
    new-instance v0, Lcom/c/a/p;

    invoke-direct {v0, p0, p1}, Lcom/c/a/p;-><init>(Lcom/c/a/n;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/c/a/r;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onRause(). "

    invoke-static {v1, v2, v0}, Lb/a/ge;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/c/a/a;->h:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/c/a/n;->e:Lb/a/e;

    invoke-virtual {v0, p1}, Lb/a/e;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
