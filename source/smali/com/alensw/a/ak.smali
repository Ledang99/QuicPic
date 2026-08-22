.class Lcom/alensw/a/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/a/ah;

.field private final b:Z

.field private final c:Lcom/alensw/a/d;

.field private final d:Lcom/alensw/bean/CommonFile;

.field private final e:Lcom/alensw/a/aj;

.field private f:Lcom/alensw/b/h/a;

.field private g:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/alensw/a/ah;Lcom/alensw/a/d;ZLcom/alensw/a/aj;)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/a/ak;->a:Lcom/alensw/a/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/alensw/a/ak;->b:Z

    iput-object p2, p0, Lcom/alensw/a/ak;->c:Lcom/alensw/a/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/a/ak;->d:Lcom/alensw/bean/CommonFile;

    iput-object p4, p0, Lcom/alensw/a/ak;->e:Lcom/alensw/a/aj;

    return-void
.end method

.method public constructor <init>(Lcom/alensw/a/ah;Lcom/alensw/bean/CommonFile;ZLcom/alensw/a/aj;)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/a/ak;->a:Lcom/alensw/a/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/alensw/a/ak;->b:Z

    iput-object p2, p0, Lcom/alensw/a/ak;->d:Lcom/alensw/bean/CommonFile;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/a/ak;->c:Lcom/alensw/a/d;

    iput-object p4, p0, Lcom/alensw/a/ak;->e:Lcom/alensw/a/aj;

    return-void
.end method

.method private a(Ljava/io/File;Landroid/net/Uri;I)Lcom/alensw/b/c/f;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, v1}, Lcom/alensw/b/c/f;->a(Ljava/io/File;Z)Lcom/alensw/b/c/f;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/alensw/b/j/a;->d(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-enter p0
    :try_end_1
    .catch Lcom/alensw/b/e/a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    iput-object p2, p0, Lcom/alensw/a/ak;->g:Landroid/net/Uri;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v1, Lcom/alensw/b/c/f;

    iget-object v2, p0, Lcom/alensw/a/ak;->a:Lcom/alensw/a/ah;

    invoke-static {v2}, Lcom/alensw/a/ah;->c(Lcom/alensw/a/ah;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/alensw/b/j/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/alensw/b/c/f;-><init>(Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)V
    :try_end_3
    .catch Lcom/alensw/b/e/a; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alensw/a/ak;->a:Lcom/alensw/a/ah;

    invoke-static {v1}, Lcom/alensw/a/ah;->c(Lcom/alensw/a/ah;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/alensw/b/c/f;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/alensw/b/c/f;
    :try_end_5
    .catch Lcom/alensw/b/e/a; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 12

    const/4 v5, 0x0

    const/4 v4, 0x0

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget-object v8, p0, Lcom/alensw/a/ak;->f:Lcom/alensw/b/h/a;

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcom/alensw/a/ak;->c:Lcom/alensw/a/d;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/alensw/a/ak;->c:Lcom/alensw/a/d;

    iget-object v2, v2, Lcom/alensw/a/d;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alensw/a/ak;->c:Lcom/alensw/a/d;

    iget-object v3, v3, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alensw/a/ak;->c:Lcom/alensw/a/d;

    iget-char v9, v2, Lcom/alensw/a/d;->c:C

    iget-object v2, p0, Lcom/alensw/a/ak;->c:Lcom/alensw/a/d;

    iget v2, v2, Lcom/alensw/a/d;->d:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/alensw/a/ak;->c:Lcom/alensw/a/d;

    iget v2, v2, Lcom/alensw/a/d;->d:I

    int-to-long v2, v2

    :goto_0
    move-wide v6, v2

    move-object v2, v0

    move-object v3, v4

    :goto_1
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alensw/jni/JniUtils;->fuGetFileTime(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alensw/a/ak;->d:Lcom/alensw/bean/CommonFile;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/alensw/a/ak;->d:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_3
    iget-object v2, p0, Lcom/alensw/a/ak;->d:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v2}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/a/ak;->d:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v3}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v9

    iget-object v3, p0, Lcom/alensw/a/ak;->d:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v3}, Lcom/alensw/bean/CommonFile;->e()J

    move-result-wide v6

    move-object v3, v2

    move-object v2, v0

    goto :goto_1

    :cond_3
    iput v5, v8, Lcom/alensw/b/h/a;->c:I

    sget-object v0, Lcom/alensw/a/bc;->a:Landroid/graphics/Bitmap$Config;

    iput-object v0, v8, Lcom/alensw/b/h/a;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6, v7, v8}, Lcom/alensw/a/bc;->a(Ljava/lang/String;JLcom/alensw/b/h/a;)Lcom/alensw/b/h/h;

    move-result-object v0

    :goto_4
    if-nez v0, :cond_4

    if-eqz v3, :cond_4

    iget-boolean v5, v8, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v5, :cond_4

    invoke-virtual {v1, v3, v6, v7, v8}, Lcom/alensw/a/bc;->a(Landroid/net/Uri;JLcom/alensw/b/h/a;)Lcom/alensw/b/h/h;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    iget-boolean v5, p0, Lcom/alensw/a/ak;->b:Z

    if-eqz v5, :cond_9

    invoke-virtual {v0}, Lcom/alensw/b/h/h;->g()I

    move-result v5

    iget v10, v1, Lcom/alensw/a/bc;->d:I

    if-gt v5, v10, :cond_9

    invoke-virtual {v0}, Lcom/alensw/b/h/h;->h()I

    move-result v5

    iget v10, v1, Lcom/alensw/a/bc;->e:I

    if-gt v5, v10, :cond_9

    invoke-virtual {v0}, Lcom/alensw/b/h/h;->m()I

    move-object v0, v4

    :cond_5
    :goto_5
    if-nez v0, :cond_6

    iget-boolean v4, v8, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/alensw/a/ak;->b:Z

    if-eqz v4, :cond_b

    iget v4, v1, Lcom/alensw/a/bc;->f:I

    :goto_6
    iget-boolean v5, p0, Lcom/alensw/a/ak;->b:Z

    if-eqz v5, :cond_c

    iget v5, v1, Lcom/alensw/a/bc;->g:I

    :goto_7
    mul-int/lit8 v10, v4, 0x4

    div-int/lit8 v10, v10, 0x3

    invoke-direct {p0, v2, v3, v10}, Lcom/alensw/a/ak;->a(Ljava/io/File;Landroid/net/Uri;I)Lcom/alensw/b/c/f;

    move-result-object v2

    if-eqz v2, :cond_6

    if-eqz v3, :cond_f

    invoke-static {v3}, Lcom/alensw/b/j/a;->d(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v3, 0x49

    :goto_8
    invoke-virtual/range {v1 .. v8}, Lcom/alensw/a/bc;->a(Lcom/alensw/b/c/f;CIIJLcom/alensw/b/h/a;)Lcom/alensw/b/h/h;

    move-result-object v0

    invoke-virtual {v2}, Lcom/alensw/b/c/f;->h()V

    :cond_6
    if-eqz v0, :cond_0

    iget-boolean v2, v8, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v2, :cond_8

    const/16 v2, 0x56

    if-ne v9, v2, :cond_7

    iget-object v2, p0, Lcom/alensw/a/ak;->a:Lcom/alensw/a/ah;

    invoke-virtual {v2}, Lcom/alensw/a/ah;->a()Lcom/alensw/ui/d/g;

    move-result-object v4

    iget-boolean v2, p0, Lcom/alensw/a/ak;->b:Z

    if-eqz v2, :cond_d

    iget v2, v1, Lcom/alensw/a/bc;->f:I

    move v6, v2

    :goto_9
    iget-boolean v2, p0, Lcom/alensw/a/ak;->b:Z

    if-eqz v2, :cond_e

    iget v2, v1, Lcom/alensw/a/bc;->g:I

    :goto_a
    const v3, 0x3eaaaaab

    iget-object v1, p0, Lcom/alensw/a/ak;->a:Lcom/alensw/a/ah;

    invoke-static {v1}, Lcom/alensw/a/ah;->b(Lcom/alensw/a/ah;)Landroid/graphics/Paint;

    move-result-object v5

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/alensw/b/h/h;->a(IIFLandroid/graphics/drawable/shapes/Shape;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/alensw/a/ak;->a:Lcom/alensw/a/ah;

    invoke-virtual {v1, v4}, Lcom/alensw/a/ah;->a(Lcom/alensw/ui/d/g;)V

    :cond_7
    iget-object v1, p0, Lcom/alensw/a/ak;->e:Lcom/alensw/a/aj;

    invoke-virtual {p0}, Lcom/alensw/a/ak;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alensw/a/aj;->a(Ljava/lang/Object;Lcom/alensw/b/h/h;)V

    :cond_8
    invoke-virtual {v0}, Lcom/alensw/b/h/h;->m()I

    goto/16 :goto_2

    :cond_9
    iget-boolean v4, p0, Lcom/alensw/a/ak;->b:Z

    if-nez v4, :cond_5

    invoke-virtual {v0}, Lcom/alensw/b/h/h;->g()I

    move-result v4

    iget v5, v1, Lcom/alensw/a/bc;->f:I

    if-ge v4, v5, :cond_a

    invoke-virtual {v0}, Lcom/alensw/b/h/h;->h()I

    move-result v4

    iget v5, v1, Lcom/alensw/a/bc;->g:I

    if-lt v4, v5, :cond_5

    :cond_a
    iget v4, v1, Lcom/alensw/a/bc;->d:I

    iget v5, v1, Lcom/alensw/a/bc;->e:I

    iget-boolean v10, v1, Lcom/alensw/a/bc;->b:Z

    sget-object v11, Lcom/alensw/a/bc;->a:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v4, v5, v10, v11}, Lcom/alensw/b/h/h;->a(IIZLandroid/graphics/Bitmap$Config;)Lcom/alensw/b/h/h;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/alensw/b/h/h;->m()I

    move-object v0, v4

    goto/16 :goto_5

    :cond_b
    iget v4, v1, Lcom/alensw/a/bc;->d:I

    goto/16 :goto_6

    :cond_c
    iget v5, v1, Lcom/alensw/a/bc;->e:I

    goto/16 :goto_7

    :cond_d
    iget v2, v1, Lcom/alensw/a/bc;->d:I

    move v6, v2

    goto :goto_9

    :cond_e
    iget v2, v1, Lcom/alensw/a/bc;->e:I

    goto :goto_a

    :cond_f
    move v3, v9

    goto :goto_8

    :cond_10
    move-object v0, v4

    goto/16 :goto_4

    :cond_11
    move-object v0, v4

    goto/16 :goto_3

    :cond_12
    move-object v3, v4

    move-object v2, v4

    move v9, v5

    goto/16 :goto_1
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/ak;->c:Lcom/alensw/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/ak;->c:Lcom/alensw/a/d;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/a/ak;->d:Lcom/alensw/bean/CommonFile;

    goto :goto_0
.end method

.method public c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/a/ak;->g:Landroid/net/Uri;

    iget-object v1, p0, Lcom/alensw/a/ak;->f:Lcom/alensw/b/h/a;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/alensw/a/ak;->a:Lcom/alensw/a/ah;

    invoke-static {v0}, Lcom/alensw/a/ah;->c(Lcom/alensw/a/ah;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/a/ak;->d:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v2}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alensw/b/j/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alensw/b/h/a;->requestCancelDecode()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/alensw/a/ak;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/alensw/a/ak;

    iget-object v0, p0, Lcom/alensw/a/ak;->c:Lcom/alensw/a/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/a/ak;->c:Lcom/alensw/a/d;

    iget-object v1, p1, Lcom/alensw/a/ak;->c:Lcom/alensw/a/d;

    invoke-virtual {v0, v1}, Lcom/alensw/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alensw/a/ak;->d:Lcom/alensw/bean/CommonFile;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/a/ak;->d:Lcom/alensw/bean/CommonFile;

    iget-object v1, p1, Lcom/alensw/a/ak;->d:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0, v1}, Lcom/alensw/bean/CommonFile;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/ak;->c:Lcom/alensw/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/ak;->c:Lcom/alensw/a/d;

    invoke-virtual {v0}, Lcom/alensw/a/d;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/a/ak;->d:Lcom/alensw/bean/CommonFile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/a/ak;->d:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public run()V
    .locals 2

    invoke-static {}, Lcom/alensw/b/h/a;->e()Lcom/alensw/b/h/a;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iput-object v0, p0, Lcom/alensw/a/ak;->f:Lcom/alensw/b/h/a;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/alensw/a/ak;->a:Lcom/alensw/a/ah;

    invoke-static {v1}, Lcom/alensw/a/ah;->d(Lcom/alensw/a/ah;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/alensw/a/ak;->a()V

    iget-object v1, p0, Lcom/alensw/a/ak;->a:Lcom/alensw/a/ah;

    invoke-static {v1}, Lcom/alensw/a/ah;->d(Lcom/alensw/a/ah;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/alensw/a/ak;->f:Lcom/alensw/b/h/a;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0}, Lcom/alensw/b/h/a;->a(Lcom/alensw/b/h/a;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/alensw/a/ak;->c:Lcom/alensw/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/ak;->c:Lcom/alensw/a/d;

    iget-object v0, v0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/a/ak;->d:Lcom/alensw/bean/CommonFile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/a/ak;->d:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
