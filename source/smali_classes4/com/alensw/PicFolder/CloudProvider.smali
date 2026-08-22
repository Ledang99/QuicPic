.class public Lcom/alensw/PicFolder/CloudProvider;
.super Lcom/alensw/b/j/b;

# interfaces
.implements Lcom/alensw/b/j/e;


# static fields
.field private static final a:I

.field private static final b:Lcom/alensw/b/k/a;

.field private static final i:[Ljava/lang/String;

.field private static final j:[Ljava/lang/String;


# instance fields
.field private c:Landroid/content/ContentResolver;

.field private final d:Lcom/alensw/cloud/oauth/b;

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;

.field private final f:Ljava/util/concurrent/ConcurrentHashMap;

.field private g:Z

.field private h:Lcom/alensw/cloud/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    sget v0, Lcom/alensw/b/k/a;->c:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/alensw/PicFolder/CloudProvider;->a:I

    new-instance v0, Lcom/alensw/b/k/a;

    sget v1, Lcom/alensw/PicFolder/CloudProvider;->a:I

    sget v2, Lcom/alensw/PicFolder/CloudProvider;->a:I

    add-int/lit8 v2, v2, 0x4

    const/16 v3, 0x10

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alensw/b/k/a;-><init>(IIII)V

    sput-object v0, Lcom/alensw/PicFolder/CloudProvider;->b:Lcom/alensw/b/k/a;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "document_id"

    aput-object v1, v0, v6

    const-string v1, "mime_type"

    aput-object v1, v0, v7

    const-string v1, "_display_name"

    aput-object v1, v0, v8

    const-string v1, "flags"

    aput-object v1, v0, v9

    const-string v1, "_size"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "last_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "comment"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alensw/PicFolder/CloudProvider;->i:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "root_id"

    aput-object v1, v0, v6

    const-string v1, "mime_types"

    aput-object v1, v0, v7

    const-string v1, "title"

    aput-object v1, v0, v8

    const-string v1, "summary"

    aput-object v1, v0, v9

    const-string v1, "document_id"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "icon"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alensw/PicFolder/CloudProvider;->j:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alensw/b/j/b;-><init>()V

    new-instance v0, Lcom/alensw/cloud/oauth/b;

    invoke-direct {v0}, Lcom/alensw/cloud/oauth/b;-><init>()V

    iput-object v0, p0, Lcom/alensw/PicFolder/CloudProvider;->d:Lcom/alensw/cloud/oauth/b;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/PicFolder/CloudProvider;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/PicFolder/CloudProvider;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic a(Lcom/alensw/PicFolder/CloudProvider;Ljava/lang/String;)Lcom/alensw/PicFolder/c;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alensw/PicFolder/CloudProvider;->g(Ljava/lang/String;)Lcom/alensw/PicFolder/c;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/alensw/PicFolder/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_1

    :try_start_0
    iget-object v0, p1, Lcom/alensw/PicFolder/c;->e:Lcom/alensw/cloud/a/bv;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lcom/alensw/cloud/a/bv;->d(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alensw/cloud/a/bz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, p1, v0, v3}, Lcom/alensw/PicFolder/CloudProvider;->a(Lcom/alensw/PicFolder/c;Lcom/alensw/cloud/a/bz;Lcom/alensw/b/e/f;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Lcom/alensw/cloud/a/bz;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "failed"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/alensw/PicFolder/CloudProvider;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/alensw/PicFolder/CloudProvider;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 3

    iget-object v1, p0, Lcom/alensw/PicFolder/CloudProvider;->d:Lcom/alensw/cloud/oauth/b;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/alensw/PicFolder/CloudProvider;->g:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/PicFolder/CloudProvider;->d:Lcom/alensw/cloud/oauth/b;

    invoke-virtual {p0}, Lcom/alensw/PicFolder/CloudProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alensw/cloud/oauth/b;->a(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/alensw/PicFolder/CloudProvider;->d:Lcom/alensw/cloud/oauth/b;

    invoke-virtual {v0}, Lcom/alensw/cloud/oauth/b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/oauth/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/alensw/PicFolder/CloudProvider;->a(Lcom/alensw/cloud/oauth/a;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/alensw/PicFolder/CloudProvider;->g:Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/alensw/PicFolder/CloudProvider;Lcom/alensw/PicFolder/c;Lcom/alensw/cloud/a/bz;Lcom/alensw/b/e/f;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/PicFolder/CloudProvider;->a(Lcom/alensw/PicFolder/c;Lcom/alensw/cloud/a/bz;Lcom/alensw/b/e/f;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/alensw/PicFolder/c;Lcom/alensw/cloud/a/bz;Lcom/alensw/b/e/f;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p2, Lcom/alensw/cloud/a/ca;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/alensw/PicFolder/CloudProvider;->d:Lcom/alensw/cloud/oauth/b;

    invoke-virtual {p1, v1, p3}, Lcom/alensw/PicFolder/c;->a(Lcom/alensw/cloud/oauth/b;Lcom/alensw/b/e/f;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/PicFolder/CloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alensw/PicFolder/c;->c(Landroid/content/Context;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private a(Lcom/alensw/cloud/oauth/a;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/alensw/cloud/oauth/a;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alensw/PicFolder/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/alensw/PicFolder/c;-><init>(Lcom/alensw/PicFolder/a;)V

    iput-object v0, v1, Lcom/alensw/PicFolder/c;->b:Ljava/lang/String;

    iput-object p1, v1, Lcom/alensw/PicFolder/c;->c:Lcom/alensw/cloud/oauth/a;

    invoke-virtual {p0}, Lcom/alensw/PicFolder/CloudProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/alensw/cloud/a/bv;->a(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)Lcom/alensw/cloud/a/bv;

    move-result-object v2

    iput-object v2, v1, Lcom/alensw/PicFolder/c;->e:Lcom/alensw/cloud/a/bv;

    iget-object v2, v1, Lcom/alensw/PicFolder/c;->e:Lcom/alensw/cloud/a/bv;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v2, Lcom/alensw/cloud/a/ay;

    invoke-direct {v2}, Lcom/alensw/cloud/a/ay;-><init>()V

    iput-object v2, v1, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    iget-object v2, v1, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    iget-object v3, v1, Lcom/alensw/PicFolder/c;->e:Lcom/alensw/cloud/a/bv;

    invoke-virtual {v3}, Lcom/alensw/cloud/a/bv;->c()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/alensw/cloud/a/ay;->a(J)V

    iget-object v2, p0, Lcom/alensw/PicFolder/CloudProvider;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 3

    invoke-direct {p0, p1}, Lcom/alensw/PicFolder/CloudProvider;->g(Ljava/lang/String;)Lcom/alensw/PicFolder/c;

    move-result-object v0

    invoke-static {p1}, Lcom/alensw/PicFolder/CloudProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/alensw/PicFolder/c;->e:Lcom/alensw/cloud/a/bv;

    invoke-virtual {v2}, Lcom/alensw/cloud/a/bv;->d_()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {v0, v1, p2}, Lcom/alensw/PicFolder/c;->a(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized b()Lcom/alensw/cloud/ac;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/PicFolder/CloudProvider;->h:Lcom/alensw/cloud/ac;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alensw/PicFolder/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alensw/PicFolder/a;-><init>(Lcom/alensw/PicFolder/CloudProvider;I)V

    iput-object v0, p0, Lcom/alensw/PicFolder/CloudProvider;->h:Lcom/alensw/cloud/ac;

    :cond_0
    iget-object v0, p0, Lcom/alensw/PicFolder/CloudProvider;->h:Lcom/alensw/cloud/ac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/alensw/PicFolder/CloudProvider;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lcom/alensw/PicFolder/CloudProvider;->i:[Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method private c(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 9

    const/high16 v7, 0x10000000

    invoke-direct {p0, p1}, Lcom/alensw/PicFolder/CloudProvider;->g(Ljava/lang/String;)Lcom/alensw/PicFolder/c;

    move-result-object v0

    const-string v1, "com.alensw.PicFolder.CloudProvider"

    invoke-static {v1, p1}, Lcom/alensw/b/j/a;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz p2, :cond_0

    iget-object v1, v0, Lcom/alensw/PicFolder/c;->e:Lcom/alensw/cloud/a/bv;

    invoke-virtual {v1}, Lcom/alensw/cloud/a/bv;->d_()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/alensw/PicFolder/CloudProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    const-string v4, "mime_type"

    const-string v5, ""

    invoke-virtual {v2, v1, v4, v5}, Lcom/alensw/cloud/a/ay;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "image/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p2, 0x0

    :cond_0
    new-instance v1, Lcom/alensw/b/k/d;

    new-instance v2, Lcom/alensw/PicFolder/g;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/alensw/PicFolder/g;-><init>(Lcom/alensw/PicFolder/CloudProvider;Lcom/alensw/PicFolder/c;Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Lcom/alensw/b/k/d;-><init>(Lcom/alensw/b/k/k;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/CloudProvider;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/k/d;

    if-nez v0, :cond_5

    sget-object v0, Lcom/alensw/PicFolder/CloudProvider;->b:Lcom/alensw/b/k/a;

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/a;->a(Lcom/alensw/b/k/d;)Lcom/alensw/b/k/d;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Lcom/alensw/b/k/d;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v2, p0, Lcom/alensw/PicFolder/CloudProvider;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_3

    invoke-static {v0, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_2

    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-direct {p0}, Lcom/alensw/PicFolder/CloudProvider;->b()Lcom/alensw/cloud/ac;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alensw/cloud/ac;->a()V

    :try_start_1
    invoke-virtual {v4, v3}, Lcom/alensw/cloud/ac;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v3, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v5, v0, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    invoke-virtual {v5}, Lcom/alensw/cloud/a/ay;->f()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x50

    invoke-virtual {v3, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, v0, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    int-to-long v6, p2

    invoke-virtual {v0, v1, v6, v7, v5}, Lcom/alensw/cloud/a/ay;->a(Ljava/lang/String;JLjava/io/File;)V

    const/high16 v0, 0x10000000

    invoke-static {v5, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    invoke-virtual {v4}, Lcom/alensw/cloud/ac;->b()V

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "CloudProvider"

    const-string v3, "retrieve bitmap: "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    invoke-virtual {v4}, Lcom/alensw/cloud/ac;->b()V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    :catch_1
    move-exception v0

    const-string v4, "CloudProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "future get "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/alensw/b/k/d;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/alensw/b/e/a;

    invoke-direct {v0}, Lcom/alensw/b/e/a;-><init>()V

    :goto_3
    throw v0

    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    goto :goto_3

    :cond_5
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lcom/alensw/PicFolder/CloudProvider;->j:[Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3a

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static d(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    const-string v0, "o"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Lcom/alensw/cloud/z;
    .locals 2

    const/16 v0, 0x3a

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/alensw/cloud/oauth/a;->b(Ljava/lang/String;)Lcom/alensw/cloud/z;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)Lcom/alensw/PicFolder/c;
    .locals 2

    invoke-direct {p0}, Lcom/alensw/PicFolder/CloudProvider;->a()V

    const/4 v0, 0x0

    const/16 v1, 0x3a

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/PicFolder/CloudProvider;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/PicFolder/c;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "invalid id"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_1
    iget-boolean v1, v0, Lcom/alensw/PicFolder/c;->a:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/alensw/PicFolder/CloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/c;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return-object v0
.end method

.method private static h(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 6

    if-eqz p2, :cond_1

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/alensw/PicFolder/CloudProvider;->b(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/alensw/PicFolder/CloudProvider;->c(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    return-object v0

    :cond_1
    const/16 v0, 0x140

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    invoke-direct {p0, p1}, Lcom/alensw/PicFolder/CloudProvider;->g(Ljava/lang/String;)Lcom/alensw/PicFolder/c;

    move-result-object v3

    invoke-static {p1}, Lcom/alensw/PicFolder/CloudProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_1

    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "sharable_url"

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/alensw/b/j/c;

    invoke-direct {v0, p2}, Lcom/alensw/b/j/c;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lcom/alensw/PicFolder/CloudProvider;->a(Lcom/alensw/PicFolder/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alensw/b/j/c;->a()Lcom/alensw/b/j/d;

    move-result-object v2

    const-string v3, "sharable_url"

    invoke-virtual {v2, v3, v1}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;
    :try_end_0
    .catch Lcom/alensw/b/e/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "CloudProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query url cancelled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "CloudProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query url failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, v3, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    invoke-virtual {v0, v4, p2, p3, p4}, Lcom/alensw/cloud/a/ay;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    new-instance v1, Lcom/alensw/PicFolder/f;

    iget-object v2, v3, Lcom/alensw/PicFolder/c;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/alensw/PicFolder/f;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, v3, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1, p3, p4}, Lcom/alensw/cloud/a/ay;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :cond_3
    invoke-static {p2}, Lcom/alensw/PicFolder/CloudProvider;->b([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, "_data"

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    array-length v5, v2

    add-int/lit8 v1, v5, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v6, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v2, "_data"

    aput-object v2, v1, v5

    :goto_1
    new-instance v5, Lcom/alensw/b/j/c;

    invoke-direct {v5, v1}, Lcom/alensw/b/j/c;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v5}, Lcom/alensw/b/j/c;->a()Lcom/alensw/b/j/d;

    move-result-object v6

    array-length v7, v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v7, :cond_6

    aget-object v8, v1, v2

    const-string v9, "_data"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    invoke-virtual {v3, v4, v9}, Lcom/alensw/PicFolder/c;->a(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v6, v8, v9}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    new-instance v0, Lcom/alensw/PicFolder/f;

    iget-object v1, v3, Lcom/alensw/PicFolder/c;->b:Ljava/lang/String;

    invoke-direct {v0, v5, v1}, Lcom/alensw/PicFolder/f;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move-object v1, v2

    goto :goto_1
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    invoke-direct {p0, p1}, Lcom/alensw/PicFolder/CloudProvider;->g(Ljava/lang/String;)Lcom/alensw/PicFolder/c;

    move-result-object v7

    invoke-static {p1}, Lcom/alensw/PicFolder/CloudProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/alensw/PicFolder/CloudProvider;->b([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v0, v7, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alensw/cloud/a/ay;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alensw/b/j/c;

    invoke-direct {v0, v2}, Lcom/alensw/b/j/c;-><init>([Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-instance v8, Lcom/alensw/PicFolder/f;

    iget-object v2, v7, Lcom/alensw/PicFolder/c;->b:Ljava/lang/String;

    invoke-direct {v8, v0, v2}, Lcom/alensw/PicFolder/f;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "com.alensw.PicFolder.CloudProvider"

    invoke-static {v0, p1}, Lcom/alensw/b/j/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v9, Lcom/alensw/b/k/d;

    new-instance v0, Lcom/alensw/PicFolder/h;

    iget-object v4, p0, Lcom/alensw/PicFolder/CloudProvider;->c:Landroid/content/ContentResolver;

    if-nez v1, :cond_1

    const/4 v6, 0x1

    :goto_0
    move-object v1, p0

    move-object v2, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/alensw/PicFolder/h;-><init>(Lcom/alensw/PicFolder/CloudProvider;Lcom/alensw/PicFolder/c;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;Z)V

    invoke-direct {v9, v0}, Lcom/alensw/b/k/d;-><init>(Lcom/alensw/b/k/k;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/CloudProvider;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/k/d;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/alensw/PicFolder/f;->a(Z)V

    iget-object v0, p0, Lcom/alensw/PicFolder/CloudProvider;->c:Landroid/content/ContentResolver;

    invoke-virtual {v8, v0, v5}, Lcom/alensw/PicFolder/f;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    sget-object v0, Lcom/alensw/PicFolder/CloudProvider;->b:Lcom/alensw/b/k/a;

    invoke-virtual {v0, v9}, Lcom/alensw/b/k/a;->a(Lcom/alensw/b/k/d;)Lcom/alensw/b/k/d;

    :goto_1
    return-object v8

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/alensw/b/k/d;->b()Lcom/alensw/b/k/k;

    move-result-object v0

    check-cast v0, Lcom/alensw/PicFolder/h;

    iget-boolean v0, v0, Lcom/alensw/PicFolder/h;->a:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/alensw/PicFolder/f;->a(Z)V

    iget-object v0, p0, Lcom/alensw/PicFolder/CloudProvider;->c:Landroid/content/ContentResolver;

    invoke-virtual {v8, v0, v5}, Lcom/alensw/PicFolder/f;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alensw/PicFolder/CloudProvider;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public a([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14

    invoke-virtual {p0}, Lcom/alensw/PicFolder/CloudProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {p1}, Lcom/alensw/PicFolder/CloudProvider;->c([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/alensw/PicFolder/CloudProvider;->a()V

    iget-object v6, p0, Lcom/alensw/PicFolder/CloudProvider;->d:Lcom/alensw/cloud/oauth/b;

    monitor-enter v6

    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alensw/PicFolder/CloudProvider;->d:Lcom/alensw/cloud/oauth/b;

    invoke-virtual {v0}, Lcom/alensw/cloud/oauth/b;->c()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/alensw/PicFolder/CloudProvider;->d:Lcom/alensw/cloud/oauth/b;

    invoke-virtual {v0}, Lcom/alensw/cloud/oauth/b;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/oauth/a;

    invoke-virtual {v0}, Lcom/alensw/cloud/oauth/a;->a()Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/alensw/PicFolder/CloudProvider;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alensw/PicFolder/c;

    if-nez v1, :cond_0

    const-string v0, "CloudProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not found cloud: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_1
    iget-object v10, v0, Lcom/alensw/cloud/oauth/a;->a:Lcom/alensw/cloud/z;

    invoke-static {v10}, Lcom/alensw/cloud/e;->a(Lcom/alensw/cloud/z;)Lcom/alensw/cloud/x;

    move-result-object v10

    if-eqz v10, :cond_1

    iget v3, v10, Lcom/alensw/cloud/x;->c:I

    iget v2, v10, Lcom/alensw/cloud/x;->b:I

    :cond_1
    new-instance v10, Lcom/alensw/b/j/c;

    invoke-direct {v10, v5}, Lcom/alensw/b/j/c;-><init>([Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/alensw/b/j/c;->a()Lcom/alensw/b/j/d;

    move-result-object v11

    iget-object v1, v1, Lcom/alensw/PicFolder/c;->e:Lcom/alensw/cloud/a/bv;

    invoke-virtual {v1}, Lcom/alensw/cloud/a/bv;->a()Landroid/content/ContentValues;

    move-result-object v1

    const-string v12, "root_id"

    invoke-virtual {v11, v12, v9}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v12, "document_id"

    const-string v13, "document_id"

    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Lcom/alensw/PicFolder/CloudProvider;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v12, v9}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v9, "flags"

    const-string v12, "flags"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v9, v1}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "title"

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v1, v3}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "summary"

    iget-object v3, v0, Lcom/alensw/cloud/oauth/a;->c:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v0, v0, Lcom/alensw/cloud/oauth/a;->c:Ljava/lang/String;

    :goto_1
    invoke-virtual {v11, v1, v0}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v0, "mime_types"

    const-string v1, "image/*"

    invoke-virtual {v11, v0, v1}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v0, "icon"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    iget-object v0, v0, Lcom/alensw/cloud/oauth/a;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/alensw/b/j/c;

    invoke-direct {v0, v5}, Lcom/alensw/b/j/c;-><init>([Ljava/lang/String;)V

    :goto_2
    return-object v0

    :cond_4
    new-array v1, v0, [Landroid/database/Cursor;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v0, Landroid/database/MergeCursor;

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/alensw/PicFolder/CloudProvider;->b(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/alensw/PicFolder/CloudProvider;->c(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0, p1}, Lcom/alensw/PicFolder/CloudProvider;->g(Ljava/lang/String;)Lcom/alensw/PicFolder/c;

    move-result-object v2

    invoke-static {p1}, Lcom/alensw/PicFolder/CloudProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "vnd.android.document/directory"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "can only create a folder"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_3

    :try_start_0
    iget-object v0, v2, Lcom/alensw/PicFolder/c;->e:Lcom/alensw/cloud/a/bv;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Lcom/alensw/cloud/a/bv;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/f;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v4, "document_id"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, v2, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    const-string v6, "document_id"

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Lcom/alensw/cloud/a/ay;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, "parent_id"

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v2, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    invoke-virtual {v5, v0}, Lcom/alensw/cloud/a/ay;->a(Landroid/content/ContentValues;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/CloudProvider;->c:Landroid/content/ContentResolver;

    const-string v5, "com.alensw.PicFolder.CloudProvider"

    invoke-static {v5, p1}, Lcom/alensw/b/j/a;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, v2, Lcom/alensw/PicFolder/c;->b:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/alensw/PicFolder/CloudProvider;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alensw/cloud/a/bz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v2, v0, v8}, Lcom/alensw/PicFolder/CloudProvider;->a(Lcom/alensw/PicFolder/c;Lcom/alensw/cloud/a/bz;Lcom/alensw/b/e/f;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Lcom/alensw/cloud/a/bz;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "failed"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3

    new-instance v0, Lcom/alensw/cloud/oauth/a;

    invoke-direct {v0}, Lcom/alensw/cloud/oauth/a;-><init>()V

    invoke-virtual {v0, p2}, Lcom/alensw/cloud/oauth/a;->a(Landroid/content/ContentValues;)V

    invoke-direct {p0}, Lcom/alensw/PicFolder/CloudProvider;->a()V

    iget-object v1, p0, Lcom/alensw/PicFolder/CloudProvider;->d:Lcom/alensw/cloud/oauth/b;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/alensw/PicFolder/CloudProvider;->d:Lcom/alensw/cloud/oauth/b;

    invoke-virtual {v2, v0}, Lcom/alensw/cloud/oauth/b;->a(Lcom/alensw/cloud/oauth/a;)V

    iget-object v2, p0, Lcom/alensw/PicFolder/CloudProvider;->d:Lcom/alensw/cloud/oauth/b;

    invoke-virtual {v2}, Lcom/alensw/cloud/oauth/b;->g()Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Lcom/alensw/PicFolder/CloudProvider;->a(Lcom/alensw/cloud/oauth/a;)Z

    invoke-virtual {p0}, Lcom/alensw/PicFolder/CloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/alensw/b/f/b;->m:Lcom/alensw/b/f/b;

    iget-object v0, v0, Lcom/alensw/cloud/oauth/a;->a:Lcom/alensw/cloud/z;

    invoke-virtual {v0}, Lcom/alensw/cloud/z;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alensw/b/f/a;->a(Landroid/content/Context;Lcom/alensw/b/f/b;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/alensw/cloud/a/az;Lcom/alensw/b/e/e;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/alensw/PicFolder/CloudProvider;->g(Ljava/lang/String;)Lcom/alensw/PicFolder/c;

    move-result-object v1

    invoke-static {p1}, Lcom/alensw/PicFolder/CloudProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alensw/cloud/a/az;

    const/16 v0, 0x100

    invoke-direct {v3, v0}, Lcom/alensw/cloud/a/az;-><init>(I)V

    const/4 v0, 0x0

    :cond_0
    invoke-static {p3}, Lcom/alensw/b/e/b;->a(Lcom/alensw/b/e/f;)V

    invoke-virtual {v3}, Lcom/alensw/cloud/a/az;->clear()V

    iget-object v4, v1, Lcom/alensw/PicFolder/c;->e:Lcom/alensw/cloud/a/bv;

    invoke-virtual {v4, v2, v3, v0, p3}, Lcom/alensw/cloud/a/bv;->a(Ljava/lang/String;Lcom/alensw/cloud/a/az;ILcom/alensw/b/e/f;)Z

    move-result v4

    invoke-virtual {p2, v3}, Lcom/alensw/cloud/a/az;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Lcom/alensw/cloud/a/az;->size()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {v3}, Lcom/alensw/cloud/a/az;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    return-void

    :cond_1
    if-eqz v4, :cond_0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/e;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alensw/PicFolder/CloudProvider;->b(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/alensw/b/l/b;->e(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p3}, Lcom/alensw/b/e/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;JLcom/alensw/b/e/f;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/alensw/PicFolder/CloudProvider;->g(Ljava/lang/String;)Lcom/alensw/PicFolder/c;

    move-result-object v3

    invoke-static {p1}, Lcom/alensw/PicFolder/CloudProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v2, v0

    :goto_1
    const/4 v0, 0x2

    if-ge v2, v0, :cond_2

    :try_start_1
    invoke-virtual {v3, v4}, Lcom/alensw/PicFolder/c;->a(Ljava/lang/String;)Lcom/alensw/PicFolder/e;

    move-result-object v0

    iget-object v5, v3, Lcom/alensw/PicFolder/c;->e:Lcom/alensw/cloud/a/bv;

    iget-object v0, v0, Lcom/alensw/PicFolder/e;->a:Ljava/lang/String;

    invoke-virtual {v5, v4, v0, p2, p3}, Lcom/alensw/cloud/a/bv;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/f;)V
    :try_end_1
    .catch Lcom/alensw/cloud/a/bz; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v3, v0, v1}, Lcom/alensw/PicFolder/CloudProvider;->a(Lcom/alensw/PicFolder/c;Lcom/alensw/cloud/a/bz;Lcom/alensw/b/e/f;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Lcom/alensw/cloud/a/bz;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/i;Lcom/alensw/b/e/e;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/alensw/PicFolder/CloudProvider;->g(Ljava/lang/String;)Lcom/alensw/PicFolder/c;

    move-result-object v7

    invoke-static {p1}, Lcom/alensw/PicFolder/CloudProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v6, v0, :cond_1

    :try_start_0
    invoke-virtual {v7, v1}, Lcom/alensw/PicFolder/c;->a(Ljava/lang/String;)Lcom/alensw/PicFolder/e;

    move-result-object v2

    iget-object v0, v7, Lcom/alensw/PicFolder/c;->e:Lcom/alensw/cloud/a/bv;

    iget-object v2, v2, Lcom/alensw/PicFolder/e;->a:Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alensw/cloud/a/bv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/i;Lcom/alensw/b/e/f;)V
    :try_end_0
    .catch Lcom/alensw/cloud/a/bz; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    invoke-direct {p0, v7, v0, v2}, Lcom/alensw/PicFolder/CloudProvider;->a(Lcom/alensw/PicFolder/c;Lcom/alensw/cloud/a/bz;Lcom/alensw/b/e/f;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/CloudProvider;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/PicFolder/c;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alensw/PicFolder/c;->c:Lcom/alensw/cloud/oauth/a;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/alensw/PicFolder/CloudProvider;->a()V

    iget-object v1, p0, Lcom/alensw/PicFolder/CloudProvider;->d:Lcom/alensw/cloud/oauth/b;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/alensw/PicFolder/CloudProvider;->d:Lcom/alensw/cloud/oauth/b;

    iget-object v3, v0, Lcom/alensw/PicFolder/c;->c:Lcom/alensw/cloud/oauth/a;

    invoke-virtual {v2, v3}, Lcom/alensw/cloud/oauth/b;->c(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/alensw/PicFolder/CloudProvider;->d:Lcom/alensw/cloud/oauth/b;

    invoke-virtual {v2}, Lcom/alensw/cloud/oauth/b;->g()Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/alensw/PicFolder/CloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/c;->b(Landroid/content/Context;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/i;Lcom/alensw/b/e/e;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0, p1}, Lcom/alensw/PicFolder/CloudProvider;->g(Ljava/lang/String;)Lcom/alensw/PicFolder/c;

    move-result-object v2

    iget-object v0, v2, Lcom/alensw/PicFolder/c;->c:Lcom/alensw/cloud/oauth/a;

    iget-object v0, v0, Lcom/alensw/cloud/oauth/a;->g:Lcom/alensw/cloud/oauth/aj;

    invoke-virtual {v0}, Lcom/alensw/cloud/oauth/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/CloudProvider;->d:Lcom/alensw/cloud/oauth/b;

    invoke-virtual {v2, v0, p4}, Lcom/alensw/PicFolder/c;->a(Lcom/alensw/cloud/oauth/b;Lcom/alensw/b/e/f;)V

    :cond_0
    invoke-static {p1}, Lcom/alensw/PicFolder/CloudProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p3, Lcom/alensw/b/e/i;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/alensw/b/f/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/alensw/b/e/i;->c:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_4

    :try_start_0
    iget-object v0, v2, Lcom/alensw/PicFolder/c;->e:Lcom/alensw/cloud/a/bv;

    invoke-virtual {v0, v3, p2, p3, p4}, Lcom/alensw/cloud/a/bv;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/i;Lcom/alensw/b/e/e;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v4, "document_id"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, v2, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    const-string v6, "document_id"

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Lcom/alensw/cloud/a/ay;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v5, "parent_id"

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v2, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    invoke-virtual {v5, v0}, Lcom/alensw/cloud/a/ay;->a(Landroid/content/ContentValues;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/CloudProvider;->c:Landroid/content/ContentResolver;

    const-string v5, "com.alensw.PicFolder.CloudProvider"

    invoke-static {v5, p1}, Lcom/alensw/b/j/a;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_2
    iget-object v0, v2, Lcom/alensw/PicFolder/c;->b:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/alensw/PicFolder/CloudProvider;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alensw/cloud/a/bz; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v2, v0, v8}, Lcom/alensw/PicFolder/CloudProvider;->a(Lcom/alensw/PicFolder/c;Lcom/alensw/cloud/a/bz;Lcom/alensw/b/e/f;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p3, Lcom/alensw/b/e/i;->e:Ljava/io/InputStream;

    instance-of v4, v4, Ljava/io/FileInputStream;

    if-eqz v4, :cond_3

    iget-object v0, p3, Lcom/alensw/b/e/i;->e:Ljava/io/InputStream;

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const-string v0, "CloudProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rewind input stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/alensw/b/e/i;->e:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/PicFolder/CloudProvider;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/k/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/d;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/alensw/PicFolder/CloudProvider;->g(Ljava/lang/String;)Lcom/alensw/PicFolder/c;

    move-result-object v2

    invoke-static {p1}, Lcom/alensw/PicFolder/CloudProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/alensw/PicFolder/CloudProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Lcom/alensw/PicFolder/CloudProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_1

    :try_start_0
    iget-object v0, v2, Lcom/alensw/PicFolder/c;->e:Lcom/alensw/cloud/a/bv;

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/alensw/cloud/a/bv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/f;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v6, v2, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    invoke-virtual {v6, v3, v0}, Lcom/alensw/cloud/a/ay;->a(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Lcom/alensw/cloud/a/bz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v2, v0, v7}, Lcom/alensw/PicFolder/CloudProvider;->a(Lcom/alensw/PicFolder/c;Lcom/alensw/cloud/a/bz;Lcom/alensw/b/e/f;)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Lcom/alensw/cloud/a/bz;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    const-string v1, "CloudProvider"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "failed"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/alensw/PicFolder/CloudProvider;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alensw/PicFolder/CloudProvider;->a(Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/alensw/PicFolder/CloudProvider;->g(Ljava/lang/String;)Lcom/alensw/PicFolder/c;

    move-result-object v2

    invoke-static {p1}, Lcom/alensw/PicFolder/CloudProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/4 v0, 0x2

    if-ge v1, v0, :cond_2

    :try_start_0
    iget-object v0, v2, Lcom/alensw/PicFolder/c;->e:Lcom/alensw/cloud/a/bv;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/alensw/cloud/a/bv;->c(Ljava/lang/String;Lcom/alensw/b/e/f;)V

    iget-object v0, v2, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    invoke-virtual {v0, v3}, Lcom/alensw/cloud/a/ay;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alensw/cloud/a/bz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v2, v0, v5}, Lcom/alensw/PicFolder/CloudProvider;->a(Lcom/alensw/PicFolder/c;Lcom/alensw/cloud/a/bz;Lcom/alensw/b/e/f;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Lcom/alensw/cloud/a/bz;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "failed"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/PicFolder/CloudProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/PicFolder/CloudProvider;->c:Landroid/content/ContentResolver;

    const/4 v0, 0x1

    return v0
.end method
