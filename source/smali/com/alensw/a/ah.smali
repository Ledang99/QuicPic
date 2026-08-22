.class public Lcom/alensw/a/ah;
.super Ljava/lang/Object;


# static fields
.field private static final a:I


# instance fields
.field private final b:Lcom/alensw/b/k/a;

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;

.field private final d:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/content/ContentResolver;

.field private final g:Lcom/alensw/b/i/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/alensw/b/k/a;->c:I

    if-le v1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    sput v0, Lcom/alensw/a/ah;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/16 v4, 0x100

    const/4 v5, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alensw/a/ai;

    sget v2, Lcom/alensw/a/ah;->a:I

    sget v1, Lcom/alensw/a/ah;->a:I

    add-int/lit8 v3, v1, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alensw/a/ai;-><init>(Lcom/alensw/a/ah;IIII)V

    iput-object v0, p0, Lcom/alensw/a/ah;->b:Lcom/alensw/b/k/a;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/a/ah;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/alensw/a/ah;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/a/ah;->e:Landroid/graphics/Paint;

    new-instance v0, Lcom/alensw/b/i/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/alensw/b/i/c;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/a/ah;->g:Lcom/alensw/b/i/c;

    iget-object v0, p0, Lcom/alensw/a/ah;->b:Lcom/alensw/b/k/a;

    invoke-virtual {v0}, Lcom/alensw/b/k/a;->prestartCoreThread()Z

    iget-object v0, p0, Lcom/alensw/a/ah;->e:Landroid/graphics/Paint;

    const v1, -0x33000001    # -1.3421772E8f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/a/ah;->f:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic a(Lcom/alensw/a/ah;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/ah;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/alensw/a/ah;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/ah;->e:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic c(Lcom/alensw/a/ah;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/ah;->f:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic d(Lcom/alensw/a/ah;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/ah;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method


# virtual methods
.method protected a()Lcom/alensw/ui/d/g;
    .locals 2

    iget-object v1, p0, Lcom/alensw/a/ah;->g:Lcom/alensw/b/i/c;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/a/ah;->g:Lcom/alensw/b/i/c;

    invoke-virtual {v0}, Lcom/alensw/b/i/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/d/g;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alensw/ui/d/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alensw/ui/d/g;-><init>(I)V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/alensw/a/d;ZLcom/alensw/a/aj;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alensw/a/ah;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alensw/a/ak;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alensw/a/ak;-><init>(Lcom/alensw/a/ah;Lcom/alensw/a/d;ZLcom/alensw/a/aj;)V

    iget-object v1, p0, Lcom/alensw/a/ah;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/alensw/a/ak;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alensw/a/ah;->b:Lcom/alensw/b/k/a;

    invoke-virtual {v1, v0}, Lcom/alensw/b/k/a;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/alensw/bean/CommonFile;ZLcom/alensw/a/aj;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alensw/a/ah;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alensw/a/ak;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alensw/a/ak;-><init>(Lcom/alensw/a/ah;Lcom/alensw/bean/CommonFile;ZLcom/alensw/a/aj;)V

    iget-object v1, p0, Lcom/alensw/a/ah;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/alensw/a/ak;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alensw/a/ah;->b:Lcom/alensw/b/k/a;

    invoke-virtual {v1, v0}, Lcom/alensw/b/k/a;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/alensw/ui/d/g;)V
    .locals 2

    iget-object v1, p0, Lcom/alensw/a/ah;->g:Lcom/alensw/b/i/c;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/a/ah;->g:Lcom/alensw/b/i/c;

    invoke-virtual {v0, p1}, Lcom/alensw/b/i/c;->b(Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/a/ah;->b:Lcom/alensw/b/k/a;

    invoke-virtual {v0}, Lcom/alensw/b/k/a;->a()V

    if-eqz p1, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/alensw/a/ah;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/ak;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/a/ah;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/alensw/a/ak;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alensw/a/ak;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method
