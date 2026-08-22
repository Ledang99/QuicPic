.class public Lcom/alensw/b/f/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:[[Ljava/lang/String;

.field private static final b:[[Ljava/lang/String;

.field private static final c:Ljava/util/HashMap;

.field private static final d:Ljava/util/HashMap;

.field private static e:Z

.field private static f:Ljava/lang/Object;

.field private static g:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    new-array v0, v6, [[Ljava/lang/String;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "jpg"

    aput-object v3, v2, v1

    const-string v3, "jpeg"

    aput-object v3, v2, v8

    const-string v3, "avif"

    aput-object v3, v2, v9

    const-string v3, "png"

    aput-object v3, v2, v5

    const-string v3, "gif"

    aput-object v3, v2, v6

    const/4 v3, 0x5

    const-string v4, "webp"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "heic"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "heif"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "bmp"

    aput-object v3, v2, v1

    aput-object v2, v0, v8

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "3gp"

    aput-object v3, v2, v1

    const-string v3, "3gpp"

    aput-object v3, v2, v8

    const-string v3, "webm"

    aput-object v3, v2, v9

    const-string v3, "avi"

    aput-object v3, v2, v5

    const-string v3, "mp4"

    aput-object v3, v2, v6

    const/4 v3, 0x5

    const-string v4, "mkv"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "mov"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "m4v"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "mpeg"

    aput-object v4, v2, v3

    aput-object v2, v0, v9

    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "asf"

    aput-object v3, v2, v1

    const-string v3, "divx"

    aput-object v3, v2, v8

    const-string v3, "flv"

    aput-object v3, v2, v9

    const-string v3, "k3g"

    aput-object v3, v2, v5

    const-string v3, "mpg"

    aput-object v3, v2, v6

    const/4 v3, 0x5

    const-string v4, "m2ts"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "mts"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "rm"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "rmvb"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "skm"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "ts"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "wmv"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "3g2"

    aput-object v4, v2, v3

    aput-object v2, v0, v5

    sput-object v0, Lcom/alensw/b/f/c;->a:[[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "asf"

    aput-object v3, v2, v1

    const-string v3, "x-ms-asf"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "bmp"

    aput-object v3, v2, v1

    const-string v3, "x-ms-bmp"

    aput-object v3, v2, v8

    aput-object v2, v0, v8

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "jpg"

    aput-object v3, v2, v1

    const-string v3, "jpeg"

    aput-object v3, v2, v8

    aput-object v2, v0, v9

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "mkv"

    aput-object v3, v2, v1

    const-string v3, "x-matroska"

    aput-object v3, v2, v8

    aput-object v2, v0, v5

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "mov"

    aput-object v3, v2, v1

    const-string v3, "mp4"

    aput-object v3, v2, v8

    aput-object v2, v0, v6

    const/4 v2, 0x5

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "wbmp"

    aput-object v4, v3, v1

    const-string v4, "vnd.wap.wbmp"

    aput-object v4, v3, v8

    aput-object v3, v0, v2

    const/4 v2, 0x6

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "webm"

    aput-object v4, v3, v1

    const-string v4, "x-matroska"

    aput-object v4, v3, v8

    aput-object v3, v0, v2

    const/4 v2, 0x7

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "wmv"

    aput-object v4, v3, v1

    const-string v4, "x-ms-wmv"

    aput-object v4, v3, v8

    aput-object v3, v0, v2

    sput-object v0, Lcom/alensw/b/f/c;->b:[[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    const/16 v2, 0x40

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/alensw/b/f/c;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/alensw/b/f/c;->d:Ljava/util/HashMap;

    move v0, v1

    :goto_0
    sget-object v2, Lcom/alensw/b/f/c;->a:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/alensw/b/f/c;->a:[[Ljava/lang/String;

    aget-object v4, v2, v0

    array-length v5, v4

    move v3, v1

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v6, v4, v3

    sget-object v7, Lcom/alensw/b/f/c;->c:Ljava/util/HashMap;

    if-ge v0, v9, :cond_0

    const/16 v2, 0x49

    :goto_2
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v7, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_0
    const/16 v2, 0x56

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/alensw/b/f/c;->b:[[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_3
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    sget-object v5, Lcom/alensw/b/f/c;->d:Ljava/util/HashMap;

    aget-object v6, v4, v1

    aget-object v4, v4, v8

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)C
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alensw/b/f/c;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;C)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x56

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    sget-object v0, Lcom/alensw/b/f/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result p1

    :cond_0
    sget-object v0, Lcom/alensw/b/f/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-ne p1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    if-ne p1, v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 8

    const/16 v7, 0xa

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v7, :cond_3

    add-int/lit8 v2, v6, -0x4

    const-string v3, ".jpg"

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v3, "AlbumArt_{"

    move-object v0, p0

    move v2, v4

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v3, "AlbumArt."

    const/16 v5, 0x9

    move-object v0, p0

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/16 v0, 0x11

    if-ne v6, v0, :cond_2

    const-string v3, "AlbumArtSmall"

    const/16 v5, 0xd

    move-object v0, p0

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    if-ne v6, v7, :cond_3

    const-string v3, "Folder"

    const/4 v5, 0x6

    move-object v0, p0

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    move v1, v4

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v3, Lcom/alensw/b/f/c;

    monitor-enter v3

    :try_start_0
    sget-boolean v0, Lcom/alensw/b/f/c;->e:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/alensw/b/f/c;->g:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "android.media.MediaFile"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    sput-object v4, Lcom/alensw/b/f/c;->f:Ljava/lang/Object;

    const-string v4, "getFileType"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alensw/b/f/c;->g:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v0, Lcom/alensw/b/f/c;->g:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/alensw/b/f/c;->f:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    sget v3, Lcom/alensw/PicFolder/QuickApp;->j:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    const-string v0, "asf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "divx"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "wmv"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    :goto_2
    return v2

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_4
    sput-boolean v0, Lcom/alensw/b/f/c;->e:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_3
    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_2
.end method
