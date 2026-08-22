.class public Lcom/alensw/b/d/f;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/alensw/b/d/f;

.field private static final c:Lcom/alensw/b/k/a;


# instance fields
.field private a:Landroid/os/Handler;

.field private final d:Lcom/alensw/b/d/a;

.field private final e:Lcom/alensw/b/d/b;

.field private final f:Lcom/alensw/b/d/e;

.field private final g:Lcom/alensw/b/d/d;

.field private final h:Ljava/util/concurrent/ConcurrentHashMap;

.field private final i:Ljava/util/concurrent/ConcurrentHashMap;

.field private j:I

.field private final k:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/alensw/b/k/a;

    const/4 v1, 0x2

    const/4 v2, 0x4

    const v3, 0x7fffffff

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alensw/b/k/a;-><init>(IIII)V

    sput-object v0, Lcom/alensw/b/d/f;->c:Lcom/alensw/b/k/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/16 v2, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alensw/b/d/f;->a:Landroid/os/Handler;

    new-instance v0, Lcom/alensw/b/d/d;

    invoke-direct {v0}, Lcom/alensw/b/d/d;-><init>()V

    iput-object v0, p0, Lcom/alensw/b/d/f;->g:Lcom/alensw/b/d/d;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/b/d/f;->h:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/b/d/f;->i:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/alensw/b/d/f;->k:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/alensw/b/d/a;

    invoke-direct {v0}, Lcom/alensw/b/d/a;-><init>()V

    iput-object v0, p0, Lcom/alensw/b/d/f;->d:Lcom/alensw/b/d/a;

    new-instance v0, Lcom/alensw/b/d/b;

    invoke-direct {v0}, Lcom/alensw/b/d/b;-><init>()V

    iput-object v0, p0, Lcom/alensw/b/d/f;->e:Lcom/alensw/b/d/b;

    new-instance v0, Lcom/alensw/b/d/e;

    invoke-direct {v0, p1}, Lcom/alensw/b/d/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alensw/b/d/f;->f:Lcom/alensw/b/d/e;

    return-void
.end method

.method public static a(FF)J
    .locals 5

    const/high16 v4, 0x447a0000    # 1000.0f

    const/high16 v2, 0x43fa0000    # 500.0f

    const/high16 v3, 0x42b40000    # 90.0f

    add-float v0, p0, v3

    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr v1, p1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    const v1, 0x4ac2a532    # 6378137.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method static synthetic a(Lcom/alensw/b/d/f;)Lcom/alensw/b/d/b;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/d/f;->e:Lcom/alensw/b/d/b;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alensw/b/d/f;
    .locals 2

    const-class v1, Lcom/alensw/b/d/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alensw/b/d/f;->b:Lcom/alensw/b/d/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alensw/b/d/f;

    invoke-direct {v0, p0}, Lcom/alensw/b/d/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alensw/b/d/f;->b:Lcom/alensw/b/d/f;

    :cond_0
    sget-object v0, Lcom/alensw/b/d/f;->b:Lcom/alensw/b/d/f;

    iget-object v0, v0, Lcom/alensw/b/d/f;->g:Lcom/alensw/b/d/d;

    invoke-virtual {v0}, Lcom/alensw/b/d/d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alensw/b/d/f;->b:Lcom/alensw/b/d/f;

    iget-object v0, v0, Lcom/alensw/b/d/f;->g:Lcom/alensw/b/d/d;

    invoke-virtual {v0, p0}, Lcom/alensw/b/d/d;->a(Landroid/content/Context;)Z

    :cond_1
    sget-object v0, Lcom/alensw/b/d/f;->b:Lcom/alensw/b/d/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "\u81ea\u6cbb"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/b/d/f;->k:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/b/d/f;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alensw/b/d/f;)Lcom/alensw/b/d/a;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/d/f;->d:Lcom/alensw/b/d/a;

    return-object v0
.end method

.method public static b(FF)Z
    .locals 1

    const v0, 0x40770a3d    # 3.86f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_1

    const v0, 0x42563333    # 53.55f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1

    const v0, 0x429351ec    # 73.66f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    const v0, 0x43070ccd    # 135.05f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    const v0, 0x41af0a3d    # 21.88f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const v0, 0x41ca6666    # 25.3f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const v0, 0x42f0428f    # 120.13f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x42f40a3d    # 122.02f

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alensw/b/d/f;)Lcom/alensw/b/d/e;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/d/f;->f:Lcom/alensw/b/d/e;

    return-object v0
.end method

.method static synthetic d(Lcom/alensw/b/d/f;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/d/f;->h:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic e(Lcom/alensw/b/d/f;)Lcom/alensw/b/d/d;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/d/f;->g:Lcom/alensw/b/d/d;

    return-object v0
.end method

.method static synthetic f(Lcom/alensw/b/d/f;)I
    .locals 2

    iget v0, p0, Lcom/alensw/b/d/f;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alensw/b/d/f;->j:I

    return v0
.end method

.method static synthetic g(Lcom/alensw/b/d/f;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/d/f;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/alensw/b/d/f;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/d/f;->i:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic i(Lcom/alensw/b/d/f;)I
    .locals 1

    iget v0, p0, Lcom/alensw/b/d/f;->j:I

    return v0
.end method

.method static synthetic j(Lcom/alensw/b/d/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/b/d/f;->a()V

    return-void
.end method


# virtual methods
.method public a(FFJ)Ljava/lang/String;
    .locals 3

    const/high16 v0, -0x3d4c0000    # -90.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/high16 v0, -0x3ccc0000    # -180.0f

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_3

    invoke-static {p1, p2}, Lcom/alensw/b/d/f;->a(FF)J

    move-result-wide p3

    :cond_3
    iget-object v0, p0, Lcom/alensw/b/d/f;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/b/d/f;->g:Lcom/alensw/b/d/d;

    invoke-virtual {v0, p3, p4}, Lcom/alensw/b/d/d;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alensw/b/d/f;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/b/d/f;->k:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/b/d/f;->j:I

    :cond_0
    return-void
.end method

.method public a(FFJLcom/alensw/b/d/g;)Z
    .locals 7

    const/high16 v0, -0x3d4c0000    # -90.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/high16 v0, -0x3ccc0000    # -180.0f

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_3

    invoke-static {p1, p2}, Lcom/alensw/b/d/f;->a(FF)J

    move-result-wide v4

    :goto_1
    new-instance v0, Lcom/alensw/b/d/h;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alensw/b/d/h;-><init>(Lcom/alensw/b/d/f;FFJLcom/alensw/b/d/g;)V

    iget-object v1, p0, Lcom/alensw/b/d/f;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/alensw/b/d/f;->c:Lcom/alensw/b/k/a;

    invoke-virtual {v1, v0}, Lcom/alensw/b/k/a;->execute(Ljava/lang/Runnable;)V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-wide v4, p3

    goto :goto_1
.end method
