.class public Lcom/alensw/cloud/sync/f;
.super Landroid/content/AbstractThreadedSyncAdapter;


# static fields
.field private static final a:Lcom/alensw/b/k/a;

.field private static d:Ljava/io/PrintWriter;

.field private static final e:Ljava/text/SimpleDateFormat;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x4

    new-instance v0, Lcom/alensw/b/k/a;

    const/16 v1, 0x100

    const/4 v2, 0x5

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/alensw/b/k/a;-><init>(IIII)V

    sput-object v0, Lcom/alensw/cloud/sync/f;->a:Lcom/alensw/b/k/a;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alensw/cloud/sync/f;->e:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/alensw/cloud/sync/f;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SYNC PID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/cloud/sync/f;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    const/4 v0, 0x1

    if-nez p2, :cond_2

    const-string v1, "SyncAdapter"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v1, Lcom/alensw/cloud/sync/f;->e:Ljava/text/SimpleDateFormat;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/alensw/cloud/sync/f;->d:Ljava/io/PrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-static {p0}, Lcom/alensw/b/c/b;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const-string v4, "cloud-backup.log"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x20000

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    :goto_1
    invoke-direct {v3, v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v0, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v0, v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    sput-object v0, Lcom/alensw/cloud/sync/f;->d:Ljava/io/PrintWriter;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_2
    :try_start_2
    sget-object v0, Lcom/alensw/cloud/sync/f;->d:Ljava/io/PrintWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    sget-object v0, Lcom/alensw/cloud/sync/f;->d:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alensw/cloud/sync/f;->e:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    sget-object v0, Lcom/alensw/cloud/sync/f;->d:Ljava/io/PrintWriter;

    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_3
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :cond_2
    const-string v1, "SyncAdapter"

    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/alensw/cloud/sync/f;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alensw/cloud/sync/f;->b:Ljava/lang/String;

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

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    invoke-virtual {p0}, Lcom/alensw/cloud/sync/f;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alensw/cloud/sync/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/alensw/cloud/sync/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "START: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alensw/cloud/sync/f;->a(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/alensw/cloud/sync/f;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alensw/cloud/sync/x;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "IGNORED"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alensw/cloud/sync/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_3

    const-string v2, "QuickPic.sync_task_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    :goto_1
    invoke-static {v3}, Lcom/alensw/cloud/sync/x;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "include_videos"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5, v4, v2}, Lcom/alensw/a/al;->a(ZZLandroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v2}, Lcom/alensw/cloud/sync/e;->a(Landroid/content/ContentResolver;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v2}, Lcom/alensw/cloud/sync/d;->a(Landroid/content/ContentResolver;)Ljava/util/Map;

    move-result-object v11

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alensw/cloud/sync/v;

    iget-boolean v2, v7, Lcom/alensw/cloud/sync/v;->f:Z

    if-nez v2, :cond_1

    if-eqz v10, :cond_2

    iget-object v2, v7, Lcom/alensw/cloud/sync/v;->c:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alensw/cloud/sync/t;

    if-nez v2, :cond_7

    new-instance v8, Lcom/alensw/cloud/sync/t;

    invoke-direct {v8}, Lcom/alensw/cloud/sync/t;-><init>()V

    :goto_3
    iget v2, v8, Lcom/alensw/cloud/sync/t;->a:I

    if-nez v2, :cond_1

    sget-object v16, Lcom/alensw/cloud/sync/f;->a:Lcom/alensw/b/k/a;

    new-instance v2, Lcom/alensw/cloud/sync/h;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/cloud/sync/f;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v10, :cond_4

    const/4 v9, 0x1

    :goto_4
    invoke-direct/range {v2 .. v9}, Lcom/alensw/cloud/sync/h;-><init>(Landroid/content/Context;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/String;Ljava/lang/String;Lcom/alensw/cloud/sync/v;Lcom/alensw/cloud/sync/t;Z)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/alensw/b/k/a;->a(Lcom/alensw/b/k/k;)Lcom/alensw/b/k/d;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    move-object v10, v2

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    :cond_5
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alensw/b/k/d;

    :try_start_0
    invoke-virtual {v2}, Lcom/alensw/b/k/d;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alensw/cloud/sync/t;

    iget v7, v2, Lcom/alensw/cloud/sync/t;->c:I

    add-int/2addr v3, v7

    iget-wide v8, v2, Lcom/alensw/cloud/sync/t;->f:J

    add-long/2addr v4, v8

    move-object/from16 v0, p5

    iget-object v7, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v7, Landroid/content/SyncStats;->numUpdates:J

    iget v10, v2, Lcom/alensw/cloud/sync/t;->c:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroid/content/SyncStats;->numUpdates:J

    move-object/from16 v0, p5

    iget-object v7, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v7, Landroid/content/SyncStats;->numEntries:J

    iget v2, v2, Lcom/alensw/cloud/sync/t;->c:I

    int-to-long v10, v2

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroid/content/SyncStats;->numEntries:J
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move v2, v3

    :goto_6
    move v3, v2

    goto :goto_5

    :catch_0
    move-exception v2

    move v2, v3

    const-string v3, "CANCELLED"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alensw/cloud/sync/f;->a(Ljava/lang/String;)V

    goto :goto_6

    :catch_1
    move-exception v2

    move v2, v3

    const-string v3, "INTERRUPTED"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alensw/cloud/sync/f;->a(Ljava/lang/String;)V

    goto :goto_6

    :catch_2
    move-exception v2

    move-object/from16 v17, v2

    move v2, v3

    move-object/from16 v3, v17

    const-string v7, "ERROR: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v3}, Lcom/alensw/cloud/sync/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "STOP: tasks="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", files="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v8, 0x400

    div-long/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->toDebugString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alensw/cloud/sync/f;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move-object v8, v2

    goto/16 :goto_3
.end method

.method public onSyncCanceled()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    const-string v0, "CANCEL..."

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/sync/f;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/alensw/cloud/sync/f;->a:Lcom/alensw/b/k/a;

    invoke-virtual {v0}, Lcom/alensw/b/k/a;->a()V

    :goto_0
    iget-object v0, p0, Lcom/alensw/cloud/sync/f;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/sync/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alensw/cloud/sync/h;->a()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled()V

    return-void
.end method
