.class public Lcom/alensw/a/bc;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/graphics/Bitmap$Config;

.field private static final h:[Ljava/lang/String;

.field private static final p:[B


# instance fields
.field public b:Z

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field private final i:Landroid/content/Context;

.field private final j:I

.field private final k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Landroid/database/sqlite/SQLiteDatabase;

.field private o:Lcom/alensw/a/bg;

.field private final q:Lcom/alensw/a/be;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/alensw/a/bc;->a:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "thumb"

    aput-object v2, v0, v1

    const-string v1, "modified"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alensw/a/bc;->h:[Ljava/lang/String;

    new-array v0, v3, [B

    sput-object v0, Lcom/alensw/a/bc;->p:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alensw/a/be;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alensw/a/be;-><init>(Lcom/alensw/a/bd;)V

    iput-object v0, p0, Lcom/alensw/a/bc;->q:Lcom/alensw/a/be;

    iput-object p1, p0, Lcom/alensw/a/bc;->i:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "crop_thumbnail"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alensw/a/bc;->b:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v5, v4, Landroid/util/DisplayMetrics;->density:F

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/alensw/PicFolder/QuickApp;->h:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/high16 v0, 0x43100000    # 144.0f

    mul-float/2addr v0, v5

    float-to-int v7, v0

    int-to-float v0, v7

    div-float v0, v6, v0

    float-to-int v0, v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    const/4 v1, 0x1

    sget v2, Lcom/alensw/PicFolder/QuickApp;->h:I

    int-to-float v2, v2

    const/high16 v8, 0x43c80000    # 400.0f

    div-float/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    shl-int/2addr v1, v2

    mul-int v2, v0, v1

    sget v0, Lcom/alensw/PicFolder/QuickApp;->h:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v5, v0

    if-lez v0, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    int-to-float v0, v2

    sub-float v0, v6, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    and-int/lit8 v1, v0, 0x1

    const/4 v8, 0x1

    if-ne v1, v8, :cond_8

    add-int/lit8 v1, v0, -0x1

    :goto_0
    and-int/lit8 v8, v0, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "thumb_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    mul-int v9, v1, v0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".db"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alensw/a/bc;->k:Ljava/lang/String;

    const/high16 v8, 0x40000000    # 2.0f

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_3

    int-to-float v0, v7

    div-float v0, v6, v0

    float-to-int v0, v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v5

    sget v1, Lcom/alensw/PicFolder/QuickApp;->h:I

    div-int/lit16 v1, v1, 0x140

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    sget v0, Lcom/alensw/PicFolder/QuickApp;->h:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v5, v0

    if-lez v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    int-to-float v0, v2

    sub-float v0, v6, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    and-int/lit8 v1, v0, 0x1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_7

    add-int/lit8 v1, v0, -0x1

    :goto_1
    and-int/lit8 v5, v0, 0x1

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    iput v1, p0, Lcom/alensw/a/bc;->d:I

    iput v0, p0, Lcom/alensw/a/bc;->e:I

    iget v0, p0, Lcom/alensw/a/bc;->d:I

    const/16 v1, 0x78

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alensw/a/bc;->j:I

    const/high16 v0, 0x40400000    # 3.0f

    int-to-float v1, v3

    mul-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v1, v2

    sub-float v1, v6, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    int-to-float v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    and-int/lit8 v1, v0, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    add-int/lit8 v1, v0, -0x1

    :goto_2
    and-int/lit8 v3, v0, 0x1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    add-int/lit8 v0, v0, -0x1

    :cond_4
    iput v1, p0, Lcom/alensw/a/bc;->f:I

    iput v0, p0, Lcom/alensw/a/bc;->g:I

    sget-object v0, Lcom/alensw/a/bc;->a:Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_5

    const/4 v0, 0x4

    :goto_3
    sget v1, Lcom/alensw/b/h/b;->b:I

    const v3, 0xfa000

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x4

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/alensw/a/bc;->d:I

    add-int/2addr v4, v2

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/alensw/a/bc;->e:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    div-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    iget v3, p0, Lcom/alensw/a/bc;->d:I

    iget v4, p0, Lcom/alensw/a/bc;->e:I

    mul-int/2addr v3, v4

    mul-int/2addr v0, v3

    div-int v0, v1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/alensw/a/bc;->c:I

    return-void

    :cond_5
    const/4 v0, 0x2

    goto :goto_3

    :cond_6
    move v1, v0

    goto :goto_2

    :cond_7
    move v1, v0

    goto :goto_1

    :cond_8
    move v1, v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alensw/a/bc;)Lcom/alensw/a/be;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/bc;->q:Lcom/alensw/a/be;

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE thumbs (path TEXT PRIMARY KEY,thumb BLOB,modified INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS thumbs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alensw/a/bc;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private a(Landroid/content/Context;Z)Z
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v1, 0x0

    const/16 v7, 0x10

    const/4 v0, 0x1

    const/4 v6, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thumb_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alensw/a/bc;->d:I

    iget v4, p0, Lcom/alensw/a/bc;->e:I

    mul-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/alensw/b/c/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/alensw/a/bc;->k:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alensw/a/bc;->k:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/alensw/b/c/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_0
    if-eqz p2, :cond_5

    move v2, v0

    :goto_0
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_1

    const/high16 v4, 0x20000000

    or-int/2addr v2, v4

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez p2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v7, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/alensw/a/bc;->m:Z

    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    if-eq v2, v6, :cond_4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_6

    :try_start_1
    invoke-direct {p0, v1}, Lcom/alensw/a/bc;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    :goto_1
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_4
    iput-object v1, p0, Lcom/alensw/a/bc;->n:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alensw/a/bc;->l:Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    return v0

    :cond_5
    const/high16 v2, 0x10000000

    goto :goto_0

    :cond_6
    if-ge v2, v6, :cond_3

    const v4, 0x7f0a001a

    :try_start_3
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/alensw/b/l/b;->c(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-direct {p0, v1, v2, v4}, Lcom/alensw/a/bc;->a(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    move-exception v0

    invoke-static {v1}, Lcom/alensw/b/a/f;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v3}, Lcom/alensw/b/a/f;->a(Ljava/io/File;)Z

    :goto_3
    if-nez p2, :cond_7

    if-eqz v0, :cond_7

    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1, v0}, Lcom/alensw/b/l/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v1}, Lcom/alensw/b/a/f;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/alensw/a/bc;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/alensw/a/bc;->a(Z)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized a(Z)Z
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lcom/alensw/a/bc;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/alensw/a/bc;->l:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alensw/a/bc;->n:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/alensw/a/bc;->a()V

    :cond_3
    iget-object v0, p0, Lcom/alensw/a/bc;->i:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/alensw/a/bc;->a(Landroid/content/Context;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/alensw/a/bc;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/a/bc;->m:Z

    return v0
.end method

.method static synthetic c(Lcom/alensw/a/bc;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/bc;->n:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic e()[B
    .locals 1

    sget-object v0, Lcom/alensw/a/bc;->p:[B

    return-object v0
.end method


# virtual methods
.method public a(Lcom/alensw/b/c/f;Lcom/alensw/b/h/a;)Landroid/graphics/Bitmap;
    .locals 8

    const-wide/32 v6, 0x7fffffff

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/alensw/b/h/c;->a(Lcom/alensw/b/c/f;Z)Lcom/alensw/b/h/c;

    move-result-object v1

    if-eqz v1, :cond_1

    const/high16 v0, 0x30000

    invoke-static {v1, v0, p2}, Lcom/alensw/b/h/b;->a(Lcom/alensw/b/h/c;ILcom/alensw/b/h/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/alensw/b/h/c;->a()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/alensw/b/h/c;->e()J

    move-result-wide v2

    and-long v4, v2, v6

    long-to-int v0, v4

    iput v0, p2, Lcom/alensw/b/h/a;->outWidth:I

    const/16 v0, 0x20

    shr-long/2addr v2, v0

    and-long/2addr v2, v6

    long-to-int v0, v2

    iput v0, p2, Lcom/alensw/b/h/a;->outHeight:I

    invoke-virtual {v1}, Lcom/alensw/b/h/c;->d()I

    move-result v0

    iput v0, p2, Lcom/alensw/b/h/a;->b:I

    invoke-virtual {v1}, Lcom/alensw/b/h/c;->f()I

    move-result v0

    iput v0, p2, Lcom/alensw/b/h/a;->c:I

    invoke-virtual {v1}, Lcom/alensw/b/h/c;->c()Z

    move-result v0

    iput-boolean v0, p2, Lcom/alensw/b/h/a;->d:Z

    invoke-virtual {v1}, Lcom/alensw/b/h/c;->a()V

    :cond_1
    iget v0, p2, Lcom/alensw/b/h/a;->outWidth:I

    if-lez v0, :cond_2

    iget v0, p2, Lcom/alensw/b/h/a;->outHeight:I

    if-gtz v0, :cond_3

    :cond_2
    iget-boolean v0, p2, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v0, :cond_3

    invoke-static {p1, p2}, Lcom/alensw/b/h/b;->b(Lcom/alensw/b/c/f;Lcom/alensw/b/h/a;)Z

    :cond_3
    iget v0, p2, Lcom/alensw/b/h/a;->outWidth:I

    if-lez v0, :cond_4

    iget v0, p2, Lcom/alensw/b/h/a;->outHeight:I

    if-lez v0, :cond_4

    iget-boolean v0, p2, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/alensw/a/bc;->b:Z

    iget v1, p0, Lcom/alensw/a/bc;->j:I

    invoke-static {p1, v0, v1, p2}, Lcom/alensw/b/h/b;->a(Lcom/alensw/b/c/f;ZILcom/alensw/b/h/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;JLcom/alensw/b/h/a;)Lcom/alensw/b/h/h;
    .locals 2

    invoke-static {p1}, Lcom/alensw/b/c/f;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/alensw/a/bc;->a(Ljava/lang/String;JLcom/alensw/b/h/a;)Lcom/alensw/b/h/h;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/alensw/b/c/f;CIIJLcom/alensw/b/h/a;)Lcom/alensw/b/h/h;
    .locals 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/16 v5, 0x49

    if-ne p2, v5, :cond_2

    move-object/from16 v0, p7

    invoke-virtual {p0, p1, v0}, Lcom/alensw/a/bc;->a(Lcom/alensw/b/c/f;Lcom/alensw/b/h/a;)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_0
    :goto_0
    if-nez v5, :cond_c

    move-object/from16 v0, p7

    iget-boolean v5, v0, Lcom/alensw/b/h/a;->mCancel:Z

    if-eqz v5, :cond_4

    move-object v2, v4

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    const/16 v5, 0x44

    if-eq p2, v5, :cond_3

    if-nez p2, :cond_d

    :cond_3
    move-object/from16 v0, p7

    invoke-virtual {p0, p1, v0}, Lcom/alensw/a/bc;->a(Lcom/alensw/b/c/f;Lcom/alensw/b/h/a;)Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_2
    if-nez v5, :cond_0

    invoke-static {p1}, Lcom/alensw/b/h/b;->a(Lcom/alensw/b/c/f;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    :cond_4
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v5}, Lcom/alensw/b/h/b;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_5

    move-object v2, v4

    goto :goto_1

    :cond_5
    const v6, -0x7f7f7f80

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    move-object v6, v5

    move v7, v2

    :goto_3
    if-lez p3, :cond_7

    if-lez p4, :cond_7

    :goto_4
    invoke-virtual {p1}, Lcom/alensw/b/c/f;->g()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alensw/b/c/f;->a()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    :goto_5
    new-instance v5, Lcom/alensw/b/h/h;

    move-object/from16 v0, p7

    iget v8, v0, Lcom/alensw/b/h/a;->b:I

    move-object/from16 v0, p7

    iget v9, v0, Lcom/alensw/b/h/a;->c:I

    invoke-direct {v5, v6, v8, v9}, Lcom/alensw/b/h/h;-><init>(Landroid/graphics/Bitmap;II)V

    iget-object v8, v5, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    invoke-static {v3}, Lcom/alensw/b/h/j;->a(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v8, Lcom/alensw/b/h/i;->e:Z

    if-eqz v2, :cond_b

    if-nez v7, :cond_b

    iget-object v2, v5, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v2, v2, Lcom/alensw/b/h/i;->d:I

    if-nez v2, :cond_6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, p3, :cond_6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v2, p4, :cond_6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v6, Lcom/alensw/a/bc;->a:Landroid/graphics/Bitmap$Config;

    if-eq v2, v6, :cond_b

    :cond_6
    iget-boolean v2, p0, Lcom/alensw/a/bc;->b:Z

    sget-object v6, Lcom/alensw/a/bc;->a:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v5, p3, p4, v2, v6}, Lcom/alensw/b/h/h;->a(IIZLandroid/graphics/Bitmap$Config;)Lcom/alensw/b/h/h;

    move-result-object v2

    if-nez v2, :cond_9

    move-object v2, v4

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_9
    invoke-virtual {v5}, Lcom/alensw/b/h/h;->m()I

    :goto_6
    if-eqz v2, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, p5, v4

    if-eqz v4, :cond_1

    if-eqz v7, :cond_a

    const/16 v4, 0x56

    if-ne p2, v4, :cond_1

    :cond_a
    move-wide/from16 v0, p5

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/alensw/a/bc;->a(Ljava/lang/String;JLcom/alensw/b/h/h;)V

    goto/16 :goto_1

    :cond_b
    move-object v2, v5

    goto :goto_6

    :cond_c
    move-object v6, v5

    move v7, v3

    goto :goto_3

    :cond_d
    move-object v5, v4

    goto/16 :goto_2
.end method

.method public a(Ljava/lang/String;JLcom/alensw/b/h/a;)Lcom/alensw/b/h/h;
    .locals 10

    iget-object v0, p0, Lcom/alensw/a/bc;->q:Lcom/alensw/a/be;

    invoke-virtual {v0, p1}, Lcom/alensw/a/be;->a(Ljava/lang/String;)[B

    move-result-object v9

    sget-object v0, Lcom/alensw/a/bc;->p:[B

    if-ne v9, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-nez v9, :cond_4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alensw/a/bc;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p4, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v0, :cond_4

    const/4 v8, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    iget-object v0, p0, Lcom/alensw/a/bc;->n:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "thumbs"

    sget-object v2, Lcom/alensw/a/bc;->h:[Ljava/lang/String;

    const-string v3, "path=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_6

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v1, p2, v4

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v2, v3, p2, p3, v1}, Lcom/alensw/b/a/f;->a(JJI)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    move-object v1, v9

    :goto_1
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_3

    iget-boolean v1, p4, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v1, :cond_3

    invoke-static {v0, p4}, Lcom/alensw/b/h/h;->a([BLandroid/graphics/BitmapFactory$Options;)Lcom/alensw/b/h/h;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v8

    :goto_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v9

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_4
    move-object v0, v9

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_2

    :cond_6
    move-object v1, v9

    goto :goto_1
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/a/bc;->n:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alensw/a/bc;->n:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alensw/a/bc;->l:Z

    invoke-static {v0}, Lcom/alensw/b/a/f;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    iget-object v1, p0, Lcom/alensw/a/bc;->q:Lcom/alensw/a/be;

    const/4 v3, 0x3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alensw/a/be;->a(Ljava/lang/String;IJ[B)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 8

    iget-object v1, p0, Lcom/alensw/a/bc;->q:Lcom/alensw/a/be;

    const/4 v3, 0x2

    const/4 v6, 0x0

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/alensw/a/be;->a(Ljava/lang/String;IJ[B)V

    return-void
.end method

.method public a(Ljava/lang/String;JLcom/alensw/b/h/h;)V
    .locals 8

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x4b

    invoke-virtual {p4, v0, v1}, Lcom/alensw/b/h/h;->a(Landroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v1, p0, Lcom/alensw/a/bc;->q:Lcom/alensw/a/be;

    const/4 v3, 0x1

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/alensw/a/be;->a(Ljava/lang/String;IJ[B)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 7

    iget-object v1, p0, Lcom/alensw/a/bc;->q:Lcom/alensw/a/be;

    const-string v2, "*"

    const/4 v3, 0x5

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/alensw/a/be;->a(Ljava/lang/String;IJ[B)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 7

    iget-object v1, p0, Lcom/alensw/a/bc;->q:Lcom/alensw/a/be;

    const/4 v3, 0x4

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alensw/a/be;->a(Ljava/lang/String;IJ[B)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/a/bc;->o:Lcom/alensw/a/bg;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alensw/a/bg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alensw/a/bg;-><init>(Lcom/alensw/a/bc;Lcom/alensw/a/bd;)V

    iput-object v0, p0, Lcom/alensw/a/bc;->o:Lcom/alensw/a/bg;

    :cond_0
    iget-object v0, p0, Lcom/alensw/a/bc;->o:Lcom/alensw/a/bg;

    invoke-virtual {v0}, Lcom/alensw/a/bg;->start()V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/a/bc;->q:Lcom/alensw/a/be;

    invoke-virtual {v0}, Lcom/alensw/a/be;->a()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/bc;->o:Lcom/alensw/a/bg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/bc;->o:Lcom/alensw/a/bg;

    iget-object v1, p0, Lcom/alensw/a/bc;->q:Lcom/alensw/a/be;

    invoke-virtual {v0, v1}, Lcom/alensw/a/bg;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/a/bc;->o:Lcom/alensw/a/bg;

    :cond_0
    return-void
.end method
