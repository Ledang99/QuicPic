.class public Lcom/b/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field private b:I

.field private c:Landroid/graphics/Picture;

.field private d:Landroid/graphics/RectF;

.field private e:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/b/a/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/b;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/b;->e:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/b/a/b;->c:Landroid/graphics/Picture;

    iput-object p2, p0, Lcom/b/a/b;->d:Landroid/graphics/RectF;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;I)Lcom/b/a/l;
    .locals 1

    invoke-static {p0, p1}, Lcom/b/a/b;->b(Landroid/content/res/Resources;I)Lcom/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b;->a()Lcom/b/a/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;II)Lcom/b/a/l;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/b/a/b;->b(Landroid/content/res/Resources;II)Lcom/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b;->a()Lcom/b/a/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;III)Lcom/b/a/l;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/b/a/b;->b(Landroid/content/res/Resources;II)Lcom/b/a/b;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/b/a/b;->a(I)Lcom/b/a/l;

    move-result-object v0

    return-object v0
.end method

.method private static a(ILcom/b/a/b;)V
    .locals 4

    sget-object v1, Lcom/b/a/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/b/a/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static b(I)Lcom/b/a/b;
    .locals 3

    sget-object v1, Lcom/b/a/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/b/a/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/b;

    :goto_0
    monitor-exit v1

    return-object v0

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

.method public static b(Landroid/content/res/Resources;I)Lcom/b/a/b;
    .locals 1

    invoke-static {p1}, Lcom/b/a/b;->b(I)Lcom/b/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/b/a/d;->a(Landroid/content/res/Resources;I)Lcom/b/a/b;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/b/a/b;->a(ILcom/b/a/b;)V

    :cond_0
    return-object v0
.end method

.method public static b(Landroid/content/res/Resources;II)Lcom/b/a/b;
    .locals 2

    invoke-static {p1}, Lcom/b/a/b;->b(I)Lcom/b/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/b/a/b;->b:I

    if-eq v1, p2, :cond_1

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/b/a/d;->a(Landroid/content/res/Resources;II)Lcom/b/a/b;

    move-result-object v0

    iput p2, v0, Lcom/b/a/b;->b:I

    invoke-static {p1, v0}, Lcom/b/a/b;->a(ILcom/b/a/b;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a()Lcom/b/a/l;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Lcom/b/a/l;

    iget-object v1, p0, Lcom/b/a/b;->c:Landroid/graphics/Picture;

    invoke-direct {v0, v1, v2, v2}, Lcom/b/a/l;-><init>(Landroid/graphics/Picture;II)V

    return-object v0
.end method

.method public a(I)Lcom/b/a/l;
    .locals 2

    new-instance v0, Lcom/b/a/l;

    iget-object v1, p0, Lcom/b/a/b;->c:Landroid/graphics/Picture;

    invoke-direct {v0, v1, p1, p1}, Lcom/b/a/l;-><init>(Landroid/graphics/Picture;II)V

    return-object v0
.end method

.method a(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/b;->e:Landroid/graphics/RectF;

    return-void
.end method
