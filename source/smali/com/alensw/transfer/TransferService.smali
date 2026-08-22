.class public Lcom/alensw/transfer/TransferService;
.super Landroid/app/Service;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentLinkedQueue;


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentHashMap;

.field private final c:Landroid/os/IBinder;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/Object;

.field private f:Lcom/alensw/transfer/n;

.field private g:Ljava/io/File;

.field private final h:Lcom/alensw/b/k/a;

.field private final i:Lcom/alensw/b/k/a;

.field private final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final k:Ljava/lang/Object;

.field private final l:Ljava/lang/Runnable;

.field private final m:Ljava/util/ArrayList;

.field private n:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/alensw/transfer/TransferService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x4

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alensw/transfer/TransferService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/alensw/transfer/bk;

    invoke-direct {v0, p0}, Lcom/alensw/transfer/bk;-><init>(Lcom/alensw/transfer/TransferService;)V

    iput-object v0, p0, Lcom/alensw/transfer/TransferService;->c:Landroid/os/IBinder;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alensw/transfer/TransferService;->d:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alensw/transfer/TransferService;->e:Ljava/lang/Object;

    new-instance v0, Lcom/alensw/b/k/a;

    const v1, 0x7fffffff

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/alensw/b/k/a;-><init>(IIII)V

    iput-object v0, p0, Lcom/alensw/transfer/TransferService;->h:Lcom/alensw/b/k/a;

    const/4 v0, 0x1

    invoke-static {v0, v3}, Lcom/alensw/b/k/a;->a(II)Lcom/alensw/b/k/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/transfer/TransferService;->i:Lcom/alensw/b/k/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/transfer/TransferService;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alensw/transfer/TransferService;->k:Ljava/lang/Object;

    new-instance v0, Lcom/alensw/transfer/ba;

    invoke-direct {v0, p0}, Lcom/alensw/transfer/ba;-><init>(Lcom/alensw/transfer/TransferService;)V

    iput-object v0, p0, Lcom/alensw/transfer/TransferService;->l:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/transfer/TransferService;->m:Ljava/util/ArrayList;

    new-instance v0, Lcom/alensw/transfer/bb;

    invoke-direct {v0, p0}, Lcom/alensw/transfer/bb;-><init>(Lcom/alensw/transfer/TransferService;)V

    iput-object v0, p0, Lcom/alensw/transfer/TransferService;->n:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/alensw/transfer/TransferService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/alensw/transfer/TransferService;Lcom/alensw/transfer/a/t;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alensw/transfer/TransferService;->a(Lcom/alensw/transfer/a/t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/alensw/transfer/a/t;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alensw/transfer/a/t;->b()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alensw/transfer/a/t;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/alensw/transfer/TransferService;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/transfer/TransferService;->j()V

    return-void
.end method

.method static synthetic c(Lcom/alensw/transfer/TransferService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/alensw/transfer/TransferService;)Lcom/alensw/b/k/a;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->h:Lcom/alensw/b/k/a;

    return-object v0
.end method

.method static synthetic e(Lcom/alensw/transfer/TransferService;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/transfer/TransferService;->g()V

    return-void
.end method

.method static synthetic f(Lcom/alensw/transfer/TransferService;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->g:Ljava/io/File;

    return-object v0
.end method

.method static synthetic f()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    sget-object v0, Lcom/alensw/transfer/TransferService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic g(Lcom/alensw/transfer/TransferService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private g()V
    .locals 6

    iget-object v1, p0, Lcom/alensw/transfer/TransferService;->m:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alensw/transfer/TransferService;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alensw/transfer/TransferService;->n:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1e

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alensw/transfer/bc;

    invoke-direct {v1, p0}, Lcom/alensw/transfer/bc;-><init>(Lcom/alensw/transfer/TransferService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private i()V
    .locals 4

    iget-object v1, p0, Lcom/alensw/transfer/TransferService;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->f:Lcom/alensw/transfer/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alensw/transfer/n;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/alensw/transfer/n;-><init>(Lcom/alensw/transfer/TransferService;I)V

    iput-object v0, p0, Lcom/alensw/transfer/TransferService;->f:Lcom/alensw/transfer/n;

    :cond_0
    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->f:Lcom/alensw/transfer/n;

    invoke-virtual {v0}, Lcom/alensw/transfer/n;->f()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->f:Lcom/alensw/transfer/n;

    invoke-virtual {v0}, Lcom/alensw/transfer/n;->c()V

    const-string v0, "TransferService"

    const-string v2, "start ShareServer"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "TransferService"

    const-string v3, "start ShareServer: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private j()V
    .locals 3

    iget-object v1, p0, Lcom/alensw/transfer/TransferService;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->f:Lcom/alensw/transfer/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->f:Lcom/alensw/transfer/n;

    invoke-virtual {v0}, Lcom/alensw/transfer/n;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->f:Lcom/alensw/transfer/n;

    invoke-virtual {v0}, Lcom/alensw/transfer/n;->d()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/transfer/TransferService;->f:Lcom/alensw/transfer/n;

    const-string v0, "TransferService"

    const-string v2, "stop ShareServer"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Lcom/alensw/transfer/d;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/transfer/d;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/alensw/transfer/d;
    .locals 3

    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/transfer/d;

    invoke-virtual {v0}, Lcom/alensw/transfer/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->g:Ljava/io/File;

    return-object v0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/alensw/transfer/TransferService;->c()V

    iget-object v1, p0, Lcom/alensw/transfer/TransferService;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->f:Lcom/alensw/transfer/n;

    invoke-virtual {p0}, Lcom/alensw/transfer/TransferService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alensw/transfer/n;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/alensw/transfer/TransferService;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/alensw/transfer/TransferService;->d()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/alensw/transfer/a/t;Lcom/alensw/transfer/a/t;Ljava/util/List;)V
    .locals 6

    invoke-virtual {p0}, Lcom/alensw/transfer/TransferService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v0, Lcom/alensw/transfer/bd;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alensw/transfer/bd;-><init>(Lcom/alensw/transfer/TransferService;Lcom/alensw/transfer/a/t;Lcom/alensw/transfer/a/t;Ljava/util/List;Landroid/content/ContentResolver;)V

    invoke-virtual {v0}, Lcom/alensw/transfer/bd;->start()V

    return-void
.end method

.method public a(Lcom/alensw/transfer/bj;)V
    .locals 2

    iget-object v1, p0, Lcom/alensw/transfer/TransferService;->m:Ljava/util/ArrayList;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/alensw/transfer/TransferService;->g()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/alensw/transfer/d;)V
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/alensw/transfer/d;->i()J

    move-result-wide v0

    sget-object v2, Lcom/alensw/a/e;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/alensw/jni/JniUtils;->fuGetAvailBytes(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/alensw/transfer/TransferService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-wide/32 v6, 0x400000

    add-long/2addr v0, v6

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const-string v0, "No enough storage to save files!"

    invoke-static {v4, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "TransferService"

    const-string v1, "no enough storage, give up receive"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/transfer/TransferService;->c()V

    invoke-virtual {p1, v5}, Lcom/alensw/transfer/d;->a(I)V

    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->i:Lcom/alensw/b/k/a;

    new-instance v1, Lcom/alensw/transfer/bh;

    invoke-direct {v1, p0, p1}, Lcom/alensw/transfer/bh;-><init>(Lcom/alensw/transfer/TransferService;Lcom/alensw/transfer/d;)V

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/a;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    sget-object v0, Lcom/alensw/transfer/TransferService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/alensw/transfer/TransferService;->g()V

    invoke-direct {p0}, Lcom/alensw/transfer/TransferService;->h()V

    goto :goto_0
.end method

.method public b()I
    .locals 2

    iget-object v1, p0, Lcom/alensw/transfer/TransferService;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->f:Lcom/alensw/transfer/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->f:Lcom/alensw/transfer/n;

    invoke-virtual {v0}, Lcom/alensw/transfer/n;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->f:Lcom/alensw/transfer/n;

    invoke-virtual {v0}, Lcom/alensw/transfer/n;->e()I

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/alensw/transfer/bj;)V
    .locals 2

    iget-object v1, p0, Lcom/alensw/transfer/TransferService;->m:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/alensw/transfer/d;)V
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/alensw/transfer/d;->a(I)V

    invoke-virtual {p1}, Lcom/alensw/transfer/d;->m()V

    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/alensw/transfer/d;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/alensw/transfer/TransferService;->g()V

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/alensw/transfer/TransferService;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alensw/transfer/TransferService;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/alensw/transfer/TransferService;->i()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const-string v0, "TransferService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransferService acquire: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/transfer/TransferService;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c(Lcom/alensw/transfer/d;)V
    .locals 4

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/alensw/transfer/d;->a(I)V

    invoke-virtual {p1}, Lcom/alensw/transfer/d;->m()V

    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/alensw/transfer/d;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/alensw/transfer/TransferService;->g()V

    return-void
.end method

.method public d()V
    .locals 6

    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/alensw/transfer/TransferService;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alensw/transfer/TransferService;->l:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "TransferService"

    const-string v2, "delay stop service"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const-string v0, "TransferService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransferService release: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/transfer/TransferService;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()I
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/alensw/transfer/TransferService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/transfer/d;

    invoke-virtual {v0}, Lcom/alensw/transfer/d;->p()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->c:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/alensw/b/c/b;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, "QP Transfer"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alensw/transfer/TransferService;->g:Ljava/io/File;

    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/TransferService;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-string v0, "TransferService"

    const-string v1, "TransferService create"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "TransferService"

    const-string v1, "TransferService destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alensw/transfer/TransferService;->a(Landroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x2

    return v0
.end method
