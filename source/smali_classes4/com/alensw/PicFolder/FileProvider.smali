.class public Lcom/alensw/PicFolder/FileProvider;
.super Landroid/content/ContentProvider;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alensw/PicFolder/FileProvider;->a:[Ljava/lang/String;

    const-string v0, "content://com.alensw.PicFolder.FileProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/alensw/PicFolder/FileProvider;->b:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "com.alensw.PicFolder.FileProvider"

    invoke-static {v0, p0}, Lcom/alensw/b/j/a;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/alensw/b/j/a;->b(Landroid/net/Uri;)Ljava/lang/String;
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


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "*/*"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/alensw/b/f/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/alensw/PicFolder/FileProvider;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/alensw/b/c/f;->b(Ljava/io/File;Z)Landroid/os/ParcelFileDescriptor;
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

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18

    if-nez p2, :cond_0

    sget-object p2, Lcom/alensw/PicFolder/FileProvider;->a:[Ljava/lang/String;

    :cond_0
    new-instance v6, Landroid/database/MatrixCursor;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/alensw/PicFolder/FileProvider;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    move-object/from16 v0, p2

    array-length v2, v0

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v7}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;)C

    move-result v9

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    const/4 v2, 0x1

    invoke-static {v7, v2}, Lcom/alensw/b/h/c;->a(Ljava/lang/String;Z)Lcom/alensw/b/h/c;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lcom/alensw/b/h/c;->e()J

    move-result-wide v2

    move-wide v4, v2

    :goto_0
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/alensw/b/h/c;->o()[F

    move-result-object v2

    :goto_1
    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p2

    array-length v13, v0

    if-ge v3, v13, :cond_e

    aget-object v13, p2, v3

    const-string v14, "_data"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    aput-object v7, v8, v3

    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v2, 0x0

    move-wide v4, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const-string v14, "_display_name"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-static {v7}, Lcom/alensw/b/l/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v3

    goto :goto_3

    :cond_5
    const-string v14, "title"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {v7}, Lcom/alensw/b/l/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v3

    goto :goto_3

    :cond_6
    const-string v14, "mime_type"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-static {v7, v9}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v3

    goto :goto_3

    :cond_7
    const-string v14, "_size"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v8, v3

    goto :goto_3

    :cond_8
    const/16 v14, 0x49

    if-ne v9, v14, :cond_1

    const-string v14, "datetaken"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    if-eqz v12, :cond_9

    invoke-virtual {v12, v10, v11}, Lcom/alensw/b/h/c;->a(J)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v8, v3

    goto :goto_3

    :cond_9
    const-string v14, "latitude"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    if-eqz v2, :cond_a

    const/4 v13, 0x0

    aget v13, v2, v13

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v8, v3

    goto :goto_3

    :cond_a
    const-string v14, "longitude"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    if-eqz v2, :cond_b

    const/4 v13, 0x1

    aget v13, v2, v13

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v8, v3

    goto/16 :goto_3

    :cond_b
    const-string v14, "orientation"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    if-eqz v12, :cond_c

    invoke-virtual {v12}, Lcom/alensw/b/h/c;->f()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v3

    goto/16 :goto_3

    :cond_c
    const-string v14, "width"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const-wide/32 v14, 0x7fffffff

    and-long/2addr v14, v4

    long-to-int v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v3

    goto/16 :goto_3

    :cond_d
    const-string v14, "height"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/16 v13, 0x20

    shr-long v14, v4, v13

    const-wide/32 v16, 0x7fffffff

    and-long v14, v14, v16

    long-to-int v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v3

    goto/16 :goto_3

    :cond_e
    if-eqz v12, :cond_f

    invoke-virtual {v12}, Lcom/alensw/b/h/c;->a()V

    :cond_f
    invoke-virtual {v6, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_10
    return-object v6
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
