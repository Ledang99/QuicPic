.class public Lb/a/id;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B

.field private static d:Lb/a/id;


# instance fields
.field private b:Lb/a/ix;

.field private c:Lb/a/cm;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "pbl0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lb/a/id;->a:[B

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/id;->c:Lb/a/cm;

    iput-object p1, p0, Lb/a/id;->e:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 3

    const/4 v1, -0x1

    iget-object v0, p0, Lb/a/id;->c:Lb/a/cm;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/a/cm;->b()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Lb/a/cm;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/ct;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lb/a/ct;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lb/a/ct;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private a(Lb/a/cm;Lb/a/cm;)Lb/a/cm;
    .locals 4

    if-nez p2, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Lb/a/cm;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p2}, Lb/a/cm;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/ct;

    invoke-virtual {v1}, Lb/a/ct;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lb/a/cm;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/cm;->a(I)Lb/a/cm;

    invoke-virtual {p0, p1}, Lb/a/id;->a(Lb/a/cm;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/cm;->a(Ljava/lang/String;)Lb/a/cm;

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lb/a/id;
    .locals 2

    const-class v1, Lb/a/id;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lb/a/id;->d:Lb/a/id;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/id;

    invoke-direct {v0, p0}, Lb/a/id;-><init>(Landroid/content/Context;)V

    sput-object v0, Lb/a/id;->d:Lb/a/id;

    sget-object v0, Lb/a/id;->d:Lb/a/id;

    invoke-virtual {v0}, Lb/a/id;->b()V

    :cond_0
    sget-object v0, Lb/a/id;->d:Lb/a/id;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(Lb/a/cm;)Z
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Lb/a/cm;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lb/a/id;->a(Lb/a/cm;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lb/a/cm;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/ct;

    invoke-virtual {v0}, Lb/a/ct;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/c/a/l;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v0}, Lb/a/id;->a(Lb/a/ct;)[B

    move-result-object v4

    move v0, v1

    :goto_1
    const/4 v5, 0x4

    if-ge v0, v5, :cond_1

    aget-byte v5, v3, v0

    aget-byte v6, v4, v0

    if-eq v5, v6, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lb/a/id;->b:Lb/a/ix;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "defcon"

    invoke-direct {p0, v0}, Lb/a/id;->a(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v1, p0, Lb/a/id;->b:Lb/a/ix;

    invoke-interface {v1, v0}, Lb/a/ix;->a(I)V

    iget-object v1, p0, Lb/a/id;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/c/a/t;->a(Landroid/content/Context;)Lcom/c/a/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/c/a/t;->a(I)V

    :cond_2
    const-string v0, "latent"

    invoke-direct {p0, v0}, Lb/a/id;->a(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_3

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lb/a/id;->b:Lb/a/ix;

    invoke-interface {v1, v0}, Lb/a/ix;->b(I)V

    iget-object v1, p0, Lb/a/id;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/c/a/t;->a(Landroid/content/Context;)Lcom/c/a/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/c/a/t;->b(I)V

    :cond_3
    const-string v0, "codex"

    invoke-direct {p0, v0}, Lb/a/id;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    if-ne v0, v2, :cond_0

    :cond_4
    iget-object v1, p0, Lb/a/id;->b:Lb/a/ix;

    invoke-interface {v1, v0}, Lb/a/ix;->c(I)V

    iget-object v1, p0, Lb/a/id;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/c/a/t;->a(Landroid/content/Context;)Lcom/c/a/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/c/a/t;->c(I)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()Lb/a/cm;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/id;->c:Lb/a/cm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lb/a/cm;)Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-virtual {p1}, Lb/a/cm;->a()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/ct;

    invoke-virtual {v1}, Lb/a/ct;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/ct;

    invoke-virtual {v1}, Lb/a/ct;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/ct;

    invoke-virtual {v0}, Lb/a/ct;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget v0, p1, Lb/a/cm;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/gh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lb/a/ix;)V
    .locals 0

    iput-object p1, p0, Lb/a/id;->b:Lb/a/ix;

    return-void
.end method

.method public a(Lb/a/ct;)[B
    .locals 7

    const/4 v6, 0x4

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lb/a/ct;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    sget-object v2, Lb/a/id;->a:[B

    new-array v3, v6, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    aget-byte v4, v1, v0

    aget-byte v5, v2, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public b()V
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lb/a/id;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v3, ".imprint"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lb/a/id;->e:Landroid/content/Context;

    const-string v1, ".imprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Lb/a/gh;->b(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    invoke-static {v1}, Lb/a/gh;->c(Ljava/io/InputStream;)V

    :goto_1
    if-eqz v2, :cond_0

    :try_start_2
    new-instance v0, Lb/a/cm;

    invoke-direct {v0}, Lb/a/cm;-><init>()V

    new-instance v1, Lb/a/go;

    invoke-direct {v1}, Lb/a/go;-><init>()V

    invoke-virtual {v1, v0, v2}, Lb/a/go;->a(Lb/a/gk;[B)V

    iput-object v0, p0, Lb/a/id;->c:Lb/a/cm;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1}, Lb/a/gh;->c(Ljava/io/InputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v2}, Lb/a/gh;->c(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public b(Lb/a/cm;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lb/a/id;->c(Lb/a/cm;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/id;->c:Lb/a/cm;

    if-nez v0, :cond_2

    :goto_1
    iput-object p1, p0, Lb/a/id;->c:Lb/a/cm;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb/a/id;->c:Lb/a/cm;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lb/a/id;->d()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-direct {p0, v0, p1}, Lb/a/id;->a(Lb/a/cm;Lb/a/cm;)Lb/a/cm;

    move-result-object p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lb/a/id;->c:Lb/a/cm;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lb/a/gr;

    invoke-direct {v0}, Lb/a/gr;-><init>()V

    iget-object v1, p0, Lb/a/id;->c:Lb/a/cm;

    invoke-virtual {v0, v1}, Lb/a/gr;->a(Lb/a/gk;)[B

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lb/a/id;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".imprint"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lb/a/gh;->a(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
