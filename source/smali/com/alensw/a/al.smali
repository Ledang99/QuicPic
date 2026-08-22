.class public Lcom/alensw/a/al;
.super Lcom/alensw/jni/JniUtils;


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
    .locals 1

    iget v0, p0, Lcom/alensw/a/al;->a:I

    invoke-static {v0, p1, p2}, Lcom/alensw/a/al;->fsScanPictures(ILjava/lang/Object;I)I

    move-result v0

    return v0
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
