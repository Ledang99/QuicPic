.class public Lcom/alensw/cloud/al;
.super Ljava/lang/Object;


# static fields
.field protected static final a:I

.field protected static final b:Lcom/alensw/b/k/a;


# instance fields
.field private c:I

.field private d:Landroid/content/Context;

.field private e:Landroid/content/ContentResolver;

.field private f:Landroid/os/Handler;

.field private final g:Lcom/alensw/cloud/ae;

.field private final h:Ljava/util/concurrent/ConcurrentHashMap;

.field private final i:Ljava/util/concurrent/CopyOnWriteArraySet;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget v0, Lcom/alensw/b/k/a;->c:I

    sput v0, Lcom/alensw/cloud/al;->a:I

    new-instance v0, Lcom/alensw/b/k/a;

    sget v1, Lcom/alensw/cloud/al;->a:I

    sget v2, Lcom/alensw/cloud/al;->a:I

    const v3, 0x7fffffff

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alensw/b/k/a;-><init>(IIII)V

    sput-object v0, Lcom/alensw/cloud/al;->b:Lcom/alensw/b/k/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alensw/cloud/ae;

    invoke-direct {v0}, Lcom/alensw/cloud/ae;-><init>()V

    iput-object v0, p0, Lcom/alensw/cloud/al;->g:Lcom/alensw/cloud/ae;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/cloud/al;->h:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/alensw/cloud/al;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method static synthetic a(Lcom/alensw/cloud/al;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/al;->h:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/alensw/cloud/al;)Lcom/alensw/cloud/ae;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/al;->g:Lcom/alensw/cloud/ae;

    return-object v0
.end method

.method static synthetic c(Lcom/alensw/cloud/al;)I
    .locals 1

    iget v0, p0, Lcom/alensw/cloud/al;->c:I

    return v0
.end method

.method static synthetic d(Lcom/alensw/cloud/al;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/al;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/alensw/cloud/al;)I
    .locals 1

    invoke-direct {p0}, Lcom/alensw/cloud/al;->f()I

    move-result v0

    return v0
.end method

.method private f()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/al;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alensw/b/e/b;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/alensw/cloud/al;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/al;->e:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic g(Lcom/alensw/cloud/al;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/al;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alensw/cloud/al;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/ad;

    iget-object v1, p0, Lcom/alensw/cloud/al;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    iget-object v1, p0, Lcom/alensw/cloud/al;->g:Lcom/alensw/cloud/ae;

    invoke-virtual {v1, v0}, Lcom/alensw/cloud/ae;->c(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alensw/cloud/al;->b:Lcom/alensw/b/k/a;

    invoke-virtual {v0}, Lcom/alensw/b/k/a;->purge()V

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/alensw/cloud/al;->f:Landroid/os/Handler;

    const/4 v1, 0x4

    iget v2, p0, Lcom/alensw/cloud/al;->c:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    invoke-virtual {p0}, Lcom/alensw/cloud/al;->e()V

    return-void
.end method

.method public a(ILandroid/content/Context;Landroid/os/Handler;)V
    .locals 6

    iput p1, p0, Lcom/alensw/cloud/al;->c:I

    iput-object p2, p0, Lcom/alensw/cloud/al;->d:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/cloud/al;->e:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/alensw/cloud/al;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alensw/cloud/al;->g:Lcom/alensw/cloud/ae;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "download_tasks.bin"

    :goto_0
    invoke-virtual {v1, p2, v0}, Lcom/alensw/cloud/ae;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alensw/cloud/al;->g:Lcom/alensw/cloud/ae;

    invoke-virtual {v0}, Lcom/alensw/cloud/ae;->c()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0}, Lcom/alensw/cloud/al;->f()I

    move-result v2

    iget-object v0, p0, Lcom/alensw/cloud/al;->g:Lcom/alensw/cloud/ae;

    invoke-virtual {v0}, Lcom/alensw/cloud/ae;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/ad;

    new-instance v4, Lcom/alensw/b/k/d;

    new-instance v5, Lcom/alensw/cloud/an;

    invoke-direct {v5, p0, v0, v2}, Lcom/alensw/cloud/an;-><init>(Lcom/alensw/cloud/al;Lcom/alensw/cloud/ad;I)V

    invoke-direct {v4, v5}, Lcom/alensw/b/k/d;-><init>(Lcom/alensw/b/k/k;)V

    const/4 v5, 0x4

    iput v5, v0, Lcom/alensw/cloud/ad;->d:I

    iget-object v5, p0, Lcom/alensw/cloud/al;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v0, "upload_tasks.bin"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alensw/cloud/al;->g:Lcom/alensw/cloud/ae;

    invoke-virtual {v0}, Lcom/alensw/cloud/ae;->e()V

    iget-object v0, p0, Lcom/alensw/cloud/al;->g:Lcom/alensw/cloud/ae;

    invoke-virtual {v0, v1}, Lcom/alensw/cloud/ae;->a(Ljava/util/Collection;)V

    :cond_3
    return-void
.end method

.method public a(Lcom/alensw/cloud/ad;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Lcom/alensw/b/k/d;

    new-instance v0, Lcom/alensw/cloud/an;

    invoke-direct {p0}, Lcom/alensw/cloud/al;->f()I

    move-result v2

    invoke-direct {v0, p0, p1, v2}, Lcom/alensw/cloud/an;-><init>(Lcom/alensw/cloud/al;Lcom/alensw/cloud/ad;I)V

    invoke-direct {v1, v0}, Lcom/alensw/b/k/d;-><init>(Lcom/alensw/b/k/k;)V

    iget-object v0, p0, Lcom/alensw/cloud/al;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/k/d;

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/alensw/cloud/ad;->d:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    iput v4, p1, Lcom/alensw/cloud/ad;->d:I

    :goto_0
    iput v4, p1, Lcom/alensw/cloud/ad;->d:I

    iget-object v0, p0, Lcom/alensw/cloud/al;->f:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/alensw/cloud/al;->c:I

    invoke-virtual {v0, v2, v3, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    sget-object v0, Lcom/alensw/cloud/al;->b:Lcom/alensw/b/k/a;

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/a;->a(Lcom/alensw/b/k/d;)Lcom/alensw/b/k/d;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/cloud/al;->g:Lcom/alensw/cloud/ae;

    invoke-virtual {v0, p1}, Lcom/alensw/cloud/ae;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/alensw/cloud/am;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/al;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/al;->f:Landroid/os/Handler;

    const/4 v1, 0x4

    iget v2, p0, Lcom/alensw/cloud/al;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alensw/cloud/al;->g:Lcom/alensw/cloud/ae;

    invoke-virtual {v1}, Lcom/alensw/cloud/ae;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/ad;

    iget v3, v0, Lcom/alensw/cloud/ad;->d:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget v0, v0, Lcom/alensw/cloud/ad;->d:I

    if-nez v0, :cond_2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public b(Lcom/alensw/cloud/ad;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alensw/cloud/al;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    sget-object v0, Lcom/alensw/cloud/al;->b:Lcom/alensw/b/k/a;

    invoke-virtual {v0}, Lcom/alensw/b/k/a;->purge()V

    :cond_0
    iget-object v0, p0, Lcom/alensw/cloud/al;->g:Lcom/alensw/cloud/ae;

    invoke-virtual {v0, p1}, Lcom/alensw/cloud/ae;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/cloud/al;->f:Landroid/os/Handler;

    const/4 v1, 0x4

    iget v2, p0, Lcom/alensw/cloud/al;->c:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public b(Lcom/alensw/cloud/am;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/al;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/al;->g:Lcom/alensw/cloud/ae;

    invoke-virtual {v0}, Lcom/alensw/cloud/ae;->c()I

    move-result v0

    return v0
.end method

.method public c(Lcom/alensw/cloud/ad;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/cloud/al;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/am;

    invoke-interface {v0, p1}, Lcom/alensw/cloud/am;->a(Lcom/alensw/cloud/ad;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/cloud/al;->g:Lcom/alensw/cloud/ae;

    invoke-virtual {v0}, Lcom/alensw/cloud/ae;->d()Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/alensw/cloud/al;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/am;

    invoke-interface {v0, v1}, Lcom/alensw/cloud/am;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/cloud/al;->g:Lcom/alensw/cloud/ae;

    invoke-virtual {v0}, Lcom/alensw/cloud/ae;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/al;->g:Lcom/alensw/cloud/ae;

    invoke-virtual {v0}, Lcom/alensw/cloud/ae;->g()Z

    :cond_0
    iget-object v0, p0, Lcom/alensw/cloud/al;->g:Lcom/alensw/cloud/ae;

    invoke-virtual {v0}, Lcom/alensw/cloud/ae;->c()I

    move-result v1

    iget-object v0, p0, Lcom/alensw/cloud/al;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget v0, p0, Lcom/alensw/cloud/al;->c:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const-string v0, "failed_download_tasks"

    :goto_0
    if-lez v1, :cond_2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-static {v2}, Lcom/alensw/b/l/b;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void

    :cond_1
    const-string v0, "failed_upload_tasks"

    goto :goto_0

    :cond_2
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method
