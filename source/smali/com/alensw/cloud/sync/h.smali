.class public Lcom/alensw/cloud/sync/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/e/e;
.implements Lcom/alensw/b/k/k;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/alensw/cloud/sync/v;

.field private final e:Lcom/alensw/cloud/sync/t;

.field private final f:Landroid/content/Context;

.field private final g:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private final h:Z

.field private volatile i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/String;Ljava/lang/String;Lcom/alensw/cloud/sync/v;Lcom/alensw/cloud/sync/t;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/cloud/sync/h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alensw/cloud/sync/h;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alensw/cloud/sync/h;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/alensw/cloud/sync/h;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/alensw/cloud/sync/h;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p5, p0, Lcom/alensw/cloud/sync/h;->d:Lcom/alensw/cloud/sync/v;

    iput-object p6, p0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alensw/cloud/sync/h;->i:Z

    iput-boolean p7, p0, Lcom/alensw/cloud/sync/h;->h:Z

    return-void
.end method

.method private a(Lcom/alensw/a/e;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alensw/a/e;->j()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v0}, Lcom/alensw/a/e;->e(I)Lcom/alensw/a/d;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/alensw/a/d;->b:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/alensw/a/d;->b:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v1, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/l/b;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_1
.end method

.method private a(Lcom/alensw/b/j/e;Ljava/io/File;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alensw/cloud/sync/h;->a(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/alensw/b/e/i;

    invoke-direct {v0}, Lcom/alensw/b/e/i;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alensw/b/e/i;->a:J

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alensw/b/e/i;->b:J

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alensw/b/f/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alensw/b/e/i;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alensw/b/e/i;->e:Ljava/io/InputStream;

    invoke-static {p3}, Lcom/alensw/b/j/a;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3, v0, p0}, Lcom/alensw/b/j/e;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/i;Lcom/alensw/b/e/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/PicFolder/CloudProvider;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/cloud/sync/h;->f:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alensw/cloud/sync/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alensw/cloud/sync/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/cloud/sync/h;->f:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alensw/cloud/sync/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/alensw/cloud/sync/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;Ljava/lang/String;Lcom/alensw/cloud/sync/t;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/alensw/cloud/sync/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget v0, p3, Lcom/alensw/cloud/sync/t;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p3, Lcom/alensw/cloud/sync/t;->g:I

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Lcom/alensw/cloud/a/cb;

    if-eqz v0, :cond_1

    iget v0, p3, Lcom/alensw/cloud/sync/t;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p3, Lcom/alensw/cloud/sync/t;->h:I

    goto :goto_0

    :cond_1
    iget v0, p3, Lcom/alensw/cloud/sync/t;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p3, Lcom/alensw/cloud/sync/t;->i:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/alensw/cloud/sync/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/cloud/sync/h;->i:Z

    return v0
.end method

.method private b(JJ)Z
    .locals 11

    const-wide/16 v8, 0x3c

    const/4 v2, 0x1

    const-wide/16 v0, 0x5

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x1e

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p3

    const-wide/16 v6, 0x18

    mul-long/2addr v0, v6

    mul-long/2addr v0, v8

    mul-long/2addr v0, v8

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    move v0, v2

    :goto_1
    return v0

    :cond_0
    long-to-int v0, p1

    add-int/lit8 v0, v0, -0x1

    shl-int v0, v2, v0

    int-to-long v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "cancel..."

    invoke-direct {p0, v0}, Lcom/alensw/cloud/sync/h;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/cloud/sync/h;->i:Z

    return-void
.end method

.method public a(JJ)V
    .locals 0

    return-void
.end method

.method public a(Lcom/alensw/b/j/e;Lcom/alensw/a/e;Lcom/alensw/cloud/sync/g;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/cloud/sync/h;->d:Lcom/alensw/cloud/sync/v;

    iget-object v2, v2, Lcom/alensw/cloud/sync/v;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/alensw/b/j/a;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    new-instance v4, Lcom/alensw/cloud/a/az;

    const/16 v3, 0x100

    invoke-direct {v4, v3}, Lcom/alensw/cloud/a/az;-><init>(I)V

    new-instance v3, Lcom/alensw/cloud/sync/i;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alensw/cloud/sync/i;-><init>(Lcom/alensw/cloud/sync/h;)V

    invoke-static {v2}, Lcom/alensw/b/j/a;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v3}, Lcom/alensw/b/j/e;->a(Ljava/lang/String;Lcom/alensw/cloud/a/az;Lcom/alensw/b/e/e;)V

    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x5

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/cloud/sync/h;->d:Lcom/alensw/cloud/sync/v;

    iget-object v2, v2, Lcom/alensw/cloud/sync/v;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/alensw/b/l/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-virtual/range {p2 .. p2}, Lcom/alensw/a/e;->j()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v7, v2}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alensw/a/d;

    iget-object v8, v2, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/alensw/cloud/a/az;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_1
    if-ltz v3, :cond_2

    invoke-virtual {v4, v3}, Lcom/alensw/cloud/a/az;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v8, "_display_name"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alensw/jni/JniUtils;->fuGetFileSize(Ljava/lang/String;)J

    move-result-wide v10

    const-string v12, "_size"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, v10, v12

    if-nez v12, :cond_1

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    const-string v12, "_id"

    invoke-virtual {v5, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "cloud_id"

    const-string v13, "document_id"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "updated"

    invoke-static {v9}, Lcom/alensw/jni/JniUtils;->fuGetFileTime(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "size"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "failed"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/alensw/cloud/sync/g;->a(Landroid/content/ContentValues;)V

    invoke-virtual {v4, v3}, Lcom/alensw/cloud/a/az;->remove(I)Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alensw/a/d;

    iget-object v3, v2, Lcom/alensw/a/d;->b:Ljava/lang/String;

    const/16 v8, 0x2e

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v8, 0x1

    if-le v3, v8, :cond_3

    iget-object v8, v2, Lcom/alensw/a/d;->b:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v2, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/alensw/cloud/a/az;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v11, "_display_name"

    invoke-virtual {v3, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v11, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "_size"

    invoke-virtual {v3, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "last_modified"

    invoke-virtual {v3, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    if-eqz v11, :cond_4

    if-eqz v12, :cond_4

    iget-wide v14, v2, Lcom/alensw/a/d;->f:J

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v11, v14, v16

    if-nez v11, :cond_4

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget v11, v2, Lcom/alensw/a/d;->d:I

    int-to-long v14, v11

    cmp-long v11, v12, v14

    if-ltz v11, :cond_4

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    const-string v11, "_id"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "cloud_id"

    const-string v12, "document_id"

    invoke-virtual {v3, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "updated"

    iget v11, v2, Lcom/alensw/a/d;->d:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "size"

    iget-wide v12, v2, Lcom/alensw/a/d;->f:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "failed"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/alensw/cloud/sync/g;->a(Landroid/content/ContentValues;)V

    goto/16 :goto_2

    :cond_5
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b_()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/cloud/sync/h;->i:Z

    return v0
.end method

.method public c()Lcom/alensw/cloud/sync/t;
    .locals 37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/cloud/sync/h;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/cloud/sync/h;->d:Lcom/alensw/cloud/sync/v;

    iget-object v6, v4, Lcom/alensw/cloud/sync/v;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "begin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/cloud/sync/h;->d:Lcom/alensw/cloud/sync/v;

    iget-object v5, v5, Lcom/alensw/cloud/sync/v;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alensw/cloud/sync/h;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/cloud/sync/h;->b:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/alensw/cloud/sync/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/alensw/cloud/sync/t;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v5, v4, Lcom/alensw/cloud/sync/t;->a:I

    if-eqz v5, :cond_0

    const-string v5, "ignored"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/alensw/cloud/sync/h;->a(Ljava/lang/String;)V

    :goto_0
    return-object v4

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/cloud/sync/h;->b:Ljava/lang/String;

    const/4 v5, 0x2

    move-object/from16 v0, v17

    invoke-static {v0, v4, v5}, Lcom/alensw/cloud/sync/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/alensw/cloud/sync/t;->d:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/alensw/cloud/sync/t;->e:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    const/4 v5, 0x0

    iput v5, v4, Lcom/alensw/cloud/sync/t;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    const/4 v5, 0x0

    iput v5, v4, Lcom/alensw/cloud/sync/t;->c:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    const-wide/16 v8, 0x0

    iput-wide v8, v4, Lcom/alensw/cloud/sync/t;->f:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    const/4 v5, 0x0

    iput v5, v4, Lcom/alensw/cloud/sync/t;->g:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    const/4 v5, 0x0

    iput v5, v4, Lcom/alensw/cloud/sync/t;->h:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    const/4 v5, 0x0

    iput v5, v4, Lcom/alensw/cloud/sync/t;->i:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alensw/cloud/sync/h;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance v18, Lcom/alensw/a/e;

    const/4 v7, -0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v6, v7}, Lcom/alensw/a/e;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v18

    iget v0, v0, Lcom/alensw/a/e;->e:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/alensw/cloud/sync/h;->h:Z

    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    iget v7, v7, Lcom/alensw/cloud/sync/t;->k:I

    move/from16 v0, v19

    if-gt v0, v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/alensw/a/e;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alensw/cloud/sync/h;->f:Landroid/content/Context;

    invoke-static {v6}, Lcom/alensw/cloud/sync/x;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    new-instance v6, Lcom/alensw/a/al;

    invoke-direct {v6}, Lcom/alensw/a/al;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alensw/cloud/sync/h;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/alensw/a/al;->a(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/alensw/a/e;->a(II)I

    move-result v7

    move-object/from16 v0, v18

    iput v7, v0, Lcom/alensw/a/e;->d:I

    const/16 v7, 0xf0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v7}, Lcom/alensw/a/al;->b(Lcom/alensw/a/e;I)I

    invoke-virtual/range {v18 .. v18}, Lcom/alensw/a/e;->l()V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/alensw/cloud/sync/h;->a(Lcom/alensw/a/e;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/alensw/cloud/sync/h;->h:Z

    if-nez v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    iget-object v6, v6, Lcom/alensw/cloud/sync/t;->l:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    :cond_2
    const-string v6, "_id=?"

    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v6, 0x4

    new-array v0, v6, [J

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/ContentValues;

    const/4 v6, 0x5

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Landroid/content/ContentValues;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alensw/cloud/sync/h;->d:Lcom/alensw/cloud/sync/v;

    iget-object v6, v6, Lcom/alensw/cloud/sync/v;->e:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v6

    :try_start_1
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v4

    check-cast v4, Lcom/alensw/b/j/e;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alensw/cloud/sync/h;->f:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alensw/cloud/sync/h;->b:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/alensw/cloud/sync/g;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alensw/cloud/sync/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alensw/cloud/sync/g;->a()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/alensw/cloud/sync/t;->a(Z)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    invoke-virtual {v7}, Lcom/alensw/cloud/sync/t;->b()Z

    move-result v7

    if-nez v7, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1, v5}, Lcom/alensw/cloud/sync/h;->a(Lcom/alensw/b/j/e;Lcom/alensw/a/e;Lcom/alensw/cloud/sync/g;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/alensw/cloud/sync/t;->a(Z)V

    :cond_4
    invoke-virtual/range {v18 .. v18}, Lcom/alensw/a/e;->j()I

    move-result v26

    const/4 v8, 0x0

    const/4 v7, 0x0

    move/from16 v16, v7

    move v7, v8

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/alensw/cloud/sync/h;->b_()Z

    move-result v8

    if-nez v8, :cond_8

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alensw/a/e;->e(I)Lcom/alensw/a/d;

    move-result-object v27

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/alensw/a/d;->f:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v27

    iget v8, v0, Lcom/alensw/a/d;->d:I

    int-to-long v0, v8

    move-wide/from16 v30, v0

    const-wide/16 v8, 0x0

    cmp-long v8, v28, v8

    if-lez v8, :cond_7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alensw/cloud/sync/h;->f:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v8, v0}, Lcom/alensw/cloud/sync/x;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object/from16 v0, v27

    iget-char v8, v0, Lcom/alensw/a/d;->c:C

    const/16 v9, 0x49

    if-eq v8, v9, :cond_5

    const-string v8, "include_videos"

    const/4 v9, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_5
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alensw/a/e;->c(I)Ljava/io/File;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v33

    const/4 v8, 0x0

    aput-object v33, v22, v8

    const-wide/16 v14, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-string v34, "_id=?"

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v5, v0, v1, v2}, Lcom/alensw/cloud/sync/g;->a(Ljava/lang/String;[Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_12

    const/4 v8, 0x0

    aget-wide v14, v23, v8

    const/4 v8, 0x1

    aget-wide v12, v23, v8

    const/4 v8, 0x2

    aget-wide v10, v23, v8

    const/4 v8, 0x3

    aget-wide v8, v23, v8

    move-wide/from16 v35, v8

    move-wide v8, v10

    move-wide/from16 v10, v35

    :goto_2
    cmp-long v14, v28, v14

    if-nez v14, :cond_6

    cmp-long v12, v30, v12

    if-nez v12, :cond_6

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-lez v12, :cond_e

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/alensw/cloud/sync/h;->h:Z

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v10, v11}, Lcom/alensw/cloud/sync/h;->b(JJ)Z

    move-result v10

    if-eqz v10, :cond_e

    :cond_6
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentValues;->clear()V

    const-string v10, "_id"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    iget v11, v10, Lcom/alensw/cloud/sync/t;->b:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/alensw/cloud/sync/t;->b:I

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v25

    invoke-direct {v0, v4, v1, v2}, Lcom/alensw/cloud/sync/h;->a(Lcom/alensw/b/j/e;Ljava/io/File;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "cloud_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "size"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v10, "updated"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v8, 0x0

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    iget v11, v10, Lcom/alensw/cloud/sync/t;->c:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/alensw/cloud/sync/t;->c:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    iget-wide v12, v10, Lcom/alensw/cloud/sync/t;->f:J

    add-long v12, v12, v28

    iput-wide v12, v10, Lcom/alensw/cloud/sync/t;->f:J
    :try_end_2
    .catch Lcom/alensw/b/e/a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v10, "failed"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "last_sync"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v24

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/alensw/cloud/sync/g;->a(Landroid/content/ContentValues;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alensw/cloud/sync/h;->f:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Lcom/alensw/b/f/b;->n:Lcom/alensw/b/f/b;

    move-object/from16 v0, v27

    iget-char v8, v0, Lcom/alensw/a/d;->c:C

    const/16 v11, 0x56

    if-ne v8, v11, :cond_d

    const-string v8, "video"

    :goto_4
    invoke-static {v9, v10, v8}, Lcom/alensw/b/f/a;->a(Landroid/content/Context;Lcom/alensw/b/f/b;Ljava/lang/String;)V

    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v8, Lcom/alensw/cloud/sync/t;->d:J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v8, v16, 0x1

    move/from16 v16, v8

    goto/16 :goto_1

    :catch_0
    move-exception v4

    move v4, v7

    :try_start_4
    const-string v7, "updated"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "interrupted"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/alensw/cloud/sync/h;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v7, "failed"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "last_sync"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/alensw/cloud/sync/g;->a(Landroid/content/ContentValues;)V

    move v7, v4

    :cond_8
    move/from16 v0, v26

    if-ne v7, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    move/from16 v0, v19

    iput v0, v4, Lcom/alensw/cloud/sync/t;->k:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/alensw/cloud/sync/t;->l:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_9
    move-object v4, v5

    move-object v5, v6

    :goto_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alensw/cloud/sync/h;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/alensw/cloud/sync/g;->c()V

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->release()Z

    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/alensw/cloud/sync/t;->d:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    iget-wide v6, v5, Lcom/alensw/cloud/sync/t;->d:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    iget-wide v8, v5, Lcom/alensw/cloud/sync/t;->e:J

    sub-long/2addr v6, v8

    iput-wide v6, v4, Lcom/alensw/cloud/sync/t;->e:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/alensw/cloud/sync/h;->b_()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "cancelled"

    :goto_8
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": files="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    iget v5, v5, Lcom/alensw/cloud/sync/t;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    iget-wide v6, v5, Lcom/alensw/cloud/sync/t;->e:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    iget-wide v6, v5, Lcom/alensw/cloud/sync/t;->f:J

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "KB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alensw/cloud/sync/h;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    const/4 v5, 0x0

    iput v5, v4, Lcom/alensw/cloud/sync/t;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/cloud/sync/h;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    move-object/from16 v0, v17

    invoke-static {v0, v4, v5}, Lcom/alensw/cloud/sync/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/alensw/cloud/sync/t;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    goto/16 :goto_0

    :catch_1
    move-exception v10

    move-object/from16 v35, v10

    move v10, v7

    move-object/from16 v7, v35

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    :try_start_6
    move-object/from16 v0, v27

    iget-object v11, v0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11, v12}, Lcom/alensw/cloud/sync/h;->a(Ljava/lang/Throwable;Ljava/lang/String;Lcom/alensw/cloud/sync/t;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    const-string v7, "failed"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "last_sync"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/alensw/cloud/sync/g;->a(Landroid/content/ContentValues;)V

    move v7, v10

    goto/16 :goto_3

    :catchall_0
    move-exception v4

    const-string v7, "failed"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "last_sync"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/alensw/cloud/sync/g;->a(Landroid/content/ContentValues;)V

    throw v4
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_2
    move-exception v4

    :goto_9
    :try_start_8
    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7, v8}, Lcom/alensw/cloud/sync/h;->a(Ljava/lang/Throwable;Ljava/lang/String;Lcom/alensw/cloud/sync/t;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/cloud/sync/h;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/alensw/cloud/sync/g;->c()V

    :cond_c
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_7

    :cond_d
    :try_start_9
    const-string v8, "image"

    goto/16 :goto_4

    :cond_e
    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alensw/cloud/sync/h;->e:Lcom/alensw/cloud/sync/t;

    iget v9, v8, Lcom/alensw/cloud/sync/t;->i:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/alensw/cloud/sync/t;->i:I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_5

    :catchall_1
    move-exception v4

    :goto_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alensw/cloud/sync/h;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Lcom/alensw/cloud/sync/g;->c()V

    :cond_f
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z

    :cond_10
    throw v4

    :cond_11
    const-string v4, "end"

    goto/16 :goto_8

    :catchall_2
    move-exception v6

    move-object/from16 v35, v6

    move-object v6, v4

    move-object/from16 v4, v35

    goto :goto_a

    :catch_3
    move-exception v6

    move-object/from16 v35, v6

    move-object v6, v4

    move-object/from16 v4, v35

    goto :goto_9

    :cond_12
    move-wide/from16 v35, v8

    move-wide v8, v10

    move-wide/from16 v10, v35

    goto/16 :goto_2

    :cond_13
    move-object/from16 v35, v5

    move-object v5, v4

    move-object/from16 v4, v35

    goto/16 :goto_6
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/cloud/sync/h;->c()Lcom/alensw/cloud/sync/t;

    move-result-object v0

    return-object v0
.end method
