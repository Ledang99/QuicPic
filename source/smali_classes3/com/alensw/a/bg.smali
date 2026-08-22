.class Lcom/alensw/a/bg;
.super Lcom/alensw/b/k/c;


# instance fields
.field final synthetic a:Lcom/alensw/a/bc;

.field private final b:Landroid/content/ContentValues;

.field private final c:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/alensw/a/bc;)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/a/bg;->a:Lcom/alensw/a/bc;

    invoke-direct {p0}, Lcom/alensw/b/k/c;-><init>()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/alensw/a/bg;->b:Landroid/content/ContentValues;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alensw/a/bg;->c:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alensw/a/bc;Lcom/alensw/a/bd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/a/bg;-><init>(Lcom/alensw/a/bc;)V

    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alensw/a/bg;->a:Lcom/alensw/a/bc;

    invoke-static {v0}, Lcom/alensw/a/bc;->c(Lcom/alensw/a/bc;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "thumbs"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a(Lcom/alensw/a/bf;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Lcom/alensw/a/bf;->a:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/alensw/a/bg;->b(Lcom/alensw/a/bf;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/alensw/a/bg;->c(Lcom/alensw/a/bf;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/alensw/a/bg;->c:[Ljava/lang/String;

    iget-object v3, p1, Lcom/alensw/a/bf;->d:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v2, "path=?"

    iget-object v3, p0, Lcom/alensw/a/bg;->c:[Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/alensw/a/bg;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/alensw/a/bg;->c:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/alensw/a/bf;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/alensw/b/l/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x25

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v2, "path LIKE ?"

    iget-object v3, p0, Lcom/alensw/a/bg;->c:[Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/alensw/a/bg;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v3, v3}, Lcom/alensw/a/bg;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private b(Lcom/alensw/a/bf;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alensw/a/bg;->b:Landroid/content/ContentValues;

    const-string v2, "path"

    iget-object v3, p1, Lcom/alensw/a/bf;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/alensw/a/bf;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/alensw/a/bf;->d:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alensw/a/bf;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/alensw/jni/JniUtils;->fuGetFileTime(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p1, Lcom/alensw/a/bf;->b:J

    :cond_0
    iget-object v1, p0, Lcom/alensw/a/bg;->b:Landroid/content/ContentValues;

    const-string v2, "modified"

    iget-wide v4, p1, Lcom/alensw/a/bf;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p1, Lcom/alensw/a/bf;->c:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alensw/a/bg;->b:Landroid/content/ContentValues;

    const-string v2, "thumb"

    iget-object v3, p1, Lcom/alensw/a/bf;->c:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/alensw/a/bg;->a:Lcom/alensw/a/bc;

    invoke-static {v1}, Lcom/alensw/a/bc;->c(Lcom/alensw/a/bc;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "thumbs"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alensw/a/bg;->b:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iget-object v1, p0, Lcom/alensw/a/bg;->b:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    :goto_0
    return v0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/alensw/a/bg;->b:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alensw/a/bg;->b:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    throw v0
.end method

.method private c(Lcom/alensw/a/bf;)Z
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p1, Lcom/alensw/a/bf;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/alensw/a/bf;->d:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alensw/a/bf;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/alensw/jni/JniUtils;->fuGetFileTime(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p1, Lcom/alensw/a/bf;->b:J

    :cond_0
    iget-object v1, p0, Lcom/alensw/a/bg;->b:Landroid/content/ContentValues;

    const-string v2, "modified"

    iget-wide v4, p1, Lcom/alensw/a/bf;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alensw/a/bf;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "modified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/alensw/a/bf;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/alensw/a/bg;->a:Lcom/alensw/a/bc;

    invoke-static {v2}, Lcom/alensw/a/bc;->c(Lcom/alensw/a/bc;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "thumbs"

    iget-object v4, p0, Lcom/alensw/a/bg;->b:Landroid/content/ContentValues;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/alensw/a/bg;->b:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    :goto_0
    return v0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/alensw/a/bg;->b:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alensw/a/bg;->b:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/16 v6, 0x10

    const/4 v2, 0x0

    const/4 v0, 0x7

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/alensw/a/bg;->a:Lcom/alensw/a/bc;

    invoke-static {v0, v2}, Lcom/alensw/a/bc;->a(Lcom/alensw/a/bc;Z)Z

    :goto_0
    invoke-virtual {p0, v2}, Lcom/alensw/a/bg;->a(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alensw/a/bg;->a:Lcom/alensw/a/bc;

    invoke-static {v0}, Lcom/alensw/a/bc;->a(Lcom/alensw/a/bc;)Lcom/alensw/a/be;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/a/bg;->a:Lcom/alensw/a/bc;

    invoke-static {v0}, Lcom/alensw/a/bc;->a(Lcom/alensw/a/bc;)Lcom/alensw/a/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/a/be;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ge v0, v6, :cond_1

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/alensw/a/bg;->a:Lcom/alensw/a/bc;

    invoke-static {v0}, Lcom/alensw/a/bc;->a(Lcom/alensw/a/bc;)Lcom/alensw/a/be;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :goto_1
    iget-object v0, p0, Lcom/alensw/a/bg;->a:Lcom/alensw/a/bc;

    invoke-static {v0}, Lcom/alensw/a/bc;->a(Lcom/alensw/a/bc;)Lcom/alensw/a/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/a/be;->a()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/alensw/a/bg;->a:Lcom/alensw/a/bc;

    invoke-static {v0}, Lcom/alensw/a/bc;->a(Lcom/alensw/a/bc;)Lcom/alensw/a/be;

    move-result-object v0

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_1
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcom/alensw/a/bg;->a:Lcom/alensw/a/bc;

    invoke-static {v0}, Lcom/alensw/a/bc;->b(Lcom/alensw/a/bc;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/a/bg;->a:Lcom/alensw/a/bc;

    invoke-static {v0}, Lcom/alensw/a/bc;->c(Lcom/alensw/a/bc;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :goto_2
    move v1, v2

    move v0, v2

    :goto_3
    if-ge v1, v6, :cond_4

    :try_start_6
    iget-object v3, p0, Lcom/alensw/a/bg;->a:Lcom/alensw/a/bc;

    invoke-static {v3}, Lcom/alensw/a/bc;->a(Lcom/alensw/a/bc;)Lcom/alensw/a/be;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alensw/a/be;->b()Lcom/alensw/a/bf;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v3}, Lcom/alensw/a/bg;->a(Lcom/alensw/a/bf;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    :try_start_7
    iget-object v0, p0, Lcom/alensw/a/bg;->a:Lcom/alensw/a/bc;

    invoke-static {v0}, Lcom/alensw/a/bc;->c(Lcom/alensw/a/bc;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_4
    if-lez v0, :cond_5

    :try_start_8
    iget-object v0, p0, Lcom/alensw/a/bg;->a:Lcom/alensw/a/bc;

    invoke-static {v0}, Lcom/alensw/a/bc;->c(Lcom/alensw/a/bc;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_5
    :try_start_9
    iget-object v0, p0, Lcom/alensw/a/bg;->a:Lcom/alensw/a/bc;

    invoke-static {v0}, Lcom/alensw/a/bc;->c(Lcom/alensw/a/bc;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/alensw/a/bg;->a:Lcom/alensw/a/bc;

    invoke-static {v0}, Lcom/alensw/a/bc;->c(Lcom/alensw/a/bc;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/alensw/a/bg;->a:Lcom/alensw/a/bc;

    invoke-static {v1}, Lcom/alensw/a/bc;->c(Lcom/alensw/a/bc;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    :cond_6
    iget-object v0, p0, Lcom/alensw/a/bg;->a:Lcom/alensw/a/bc;

    invoke-virtual {v0}, Lcom/alensw/a/bc;->a()V

    return-void
.end method
