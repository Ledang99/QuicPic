.class public Lcom/alensw/a/al;
.super Lcom/alensw/jni/JniUtils;
.source "al.java"


# static fields
.field private static b:Ljava/lang/reflect/Method;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v2, 0x0

    new-instance v1, Lcom/alensw/a/e;

    sget-object v0, Lcom/alensw/a/e;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/alensw/a/e;-><init>(Ljava/lang/String;I)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move v3, v2

    invoke-virtual/range {v1 .. v6}, Lcom/alensw/a/e;->a(CIJLjava/lang/String;)V

    const-class v0, Lcom/alensw/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v3, v1

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    aget-object v6, v5, v2

    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    aget-object v6, v5, v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_1

    const/4 v6, 0x2

    aget-object v6, v5, v6

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_1

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_1

    sput-object v4, Lcom/alensw/a/al;->b:Ljava/lang/reflect/Method;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alensw/jni/JniUtils;-><init>()V

    sget-object v0, Lcom/alensw/a/al;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no Folder.add!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/alensw/a/al;->b:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lcom/alensw/a/al;->fsCreateScanner(Ljava/lang/reflect/Method;)I

    move-result v0

    iput v0, p0, Lcom/alensw/a/al;->a:I

    iget v0, p0, Lcom/alensw/a/al;->a:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "create failed!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static a(ZZLandroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 11

    const/16 v10, 0x56

    const/16 v9, 0x49

    const/16 v8, 0x2f

    const/4 v0, 0x0

    sget-object v2, Lcom/alensw/b/f/c;->a:[[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p0, :cond_1

    aget-object v4, v2, v0

    array-length v5, v4

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    aget-object v1, v2, v1

    invoke-static {v1, v9, p2}, Lcom/alensw/a/al;->a([Ljava/lang/String;CLandroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p1, :cond_3

    const/4 v1, 0x2

    aget-object v1, v2, v1

    array-length v4, v1

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, v1, v0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-static {v0, v10, p2}, Lcom/alensw/a/al;->a([Ljava/lang/String;CLandroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([Ljava/lang/String;CLandroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x49

    if-ne p1, v0, :cond_1

    const-string v0, "extra_images_"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v3, p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, p0, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alensw/b/f/c;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x2f

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "extra_videos_"

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v2}, Lcom/alensw/b/l/b;->a(Landroid/content/SharedPreferences$Editor;)V

    :cond_3
    return-object v0
.end method

.method private getFileExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "name":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 110
    .local v1, "lastIndexOf":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 111
    const-string v2, ""

    return-object v2

    .line 113
    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public a(Lcom/alensw/a/e;I)I
    .locals 1

    iget v0, p0, Lcom/alensw/a/al;->a:I

    invoke-static {v0, p1, p2}, Lcom/alensw/a/al;->fsScanFolders(ILjava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/alensw/a/al;->a:I

    invoke-static {v0, p1}, Lcom/alensw/a/al;->fsInitExtensions(ILjava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget v0, p0, Lcom/alensw/a/al;->a:I

    invoke-static {v0, p1}, Lcom/alensw/a/al;->fsCancelScan(IZ)V

    return-void
.end method

.method public b(Lcom/alensw/a/e;I)I
    .locals 32
    .param p1, "eVar"    # Lcom/alensw/a/e;
    .param p2, "flags"    # I

    .line 120
    const/16 v0, 0x9

    .line 121
    .local v0, "SHOW_VISIBLE":I
    const/4 v1, 0x1

    .line 122
    .local v1, "SHOW_HIDDEN":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    move/from16 v4, p2

    if-ne v4, v1, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 124
    .local v5, "isShowHidden":Z
    :goto_0
    const-string v6, "."

    if-nez v5, :cond_2

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/alensw/a/e;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/alensw/a/e;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/.nomedia"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 127
    :cond_1
    return v3

    .line 128
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alensw/a/e;->listFiles()[Ljava/io/File;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_7

    aget-object v10, v7, v9

    .line 129
    .local v10, "file":Ljava/io/File;
    if-nez v5, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v11, p0

    goto/16 :goto_2

    .line 130
    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 131
    const/16 v13, 0x44

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Lcom/alensw/a/e;->a(CIJLjava/lang/String;)V

    .line 133
    :cond_4
    move-object/from16 v11, p0

    invoke-direct {v11, v10}, Lcom/alensw/a/al;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 135
    .local v12, "ext":Ljava/lang/String;
    invoke-static {}, Lcom/alensw/PicFolder/QuickApp;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "com.alensw.PicFolder_preferences"

    invoke-virtual {v13, v14, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 136
    .local v13, "sp":Landroid/content/SharedPreferences;
    const-string v14, "include_video"

    invoke-interface {v13, v14, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 138
    .local v14, "includeVideo":Z
    const/16 v15, 0xa

    new-array v2, v15, [Ljava/lang/String;

    const-string v17, "jpeg"

    aput-object v17, v2, v3

    const-string v17, "jpg"

    const/16 v16, 0x1

    aput-object v17, v2, v16

    const/16 v17, 0x2

    const-string v18, "png"

    aput-object v18, v2, v17

    const/16 v18, 0x3

    const-string v19, "gif"

    aput-object v19, v2, v18

    const/16 v19, 0x4

    const-string v20, "webp"

    aput-object v20, v2, v19

    const/16 v20, 0x5

    const-string v21, "tiff"

    aput-object v21, v2, v20

    const/16 v21, 0x6

    const-string v22, "tif"

    aput-object v22, v2, v21

    const/16 v22, 0x7

    const-string v23, "heic"

    aput-object v23, v2, v22

    const/16 v23, 0x8

    const-string v24, "heif"

    aput-object v24, v2, v23

    const/16 v24, 0x9

    const-string v25, "svg"

    aput-object v25, v2, v24

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 141
    .local v2, "supportedImages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 142
    const/16 v27, 0x49

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v26, p1

    invoke-virtual/range {v26 .. v31}, Lcom/alensw/a/e;->a(CIJLjava/lang/String;)V

    .line 145
    :cond_5
    if-eqz v14, :cond_6

    .line 146
    const/16 v15, 0xb

    new-array v15, v15, [Ljava/lang/String;

    const-string v26, "mp4"

    aput-object v26, v15, v3

    const-string v26, "mkv"

    const/16 v16, 0x1

    aput-object v26, v15, v16

    const-string v26, "avi"

    aput-object v26, v15, v17

    const-string v17, "mov"

    aput-object v17, v15, v18

    const-string v17, "wmv"

    aput-object v17, v15, v19

    const-string v17, "flv"

    aput-object v17, v15, v20

    const-string v17, "webm"

    aput-object v17, v15, v21

    const-string v17, "mpeg"

    aput-object v17, v15, v22

    const-string v17, "mpg"

    aput-object v17, v15, v23

    const-string v17, "3gp"

    aput-object v17, v15, v24

    const-string v17, "m4v"

    const/16 v18, 0xa

    aput-object v17, v15, v18

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 149
    .local v15, "supportedVideos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 150
    const/16 v19, 0x56

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v18, p1

    invoke-virtual/range {v18 .. v23}, Lcom/alensw/a/e;->a(CIJLjava/lang/String;)V

    .line 128
    .end local v2    # "supportedImages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "file":Ljava/io/File;
    .end local v12    # "ext":Ljava/lang/String;
    .end local v13    # "sp":Landroid/content/SharedPreferences;
    .end local v14    # "includeVideo":Z
    .end local v15    # "supportedVideos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :goto_2
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x1

    goto/16 :goto_1

    .line 155
    :cond_7
    move-object/from16 v11, p0

    invoke-virtual/range {p1 .. p1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/storage/emulated/0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 156
    invoke-static {}, Lcom/alensw/Utils;->getRemovableSDCPath()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "sdc":Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 158
    const/16 v18, 0x44

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "../../../../../../../"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Lcom/alensw/a/e;->a(CIJLjava/lang/String;)V

    .line 160
    .end local v2    # "sdc":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x1

    return v2
.end method

.method protected finalize()V
    .locals 2

    iget v0, p0, Lcom/alensw/a/al;->a:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/alensw/a/al;->a:I

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alensw/jni/JniUtils;->fsDestroyScanner(I)V

    :cond_0
    return-void
.end method
