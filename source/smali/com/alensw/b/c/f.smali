.class public Lcom/alensw/b/c/f;
.super Ljava/lang/Object;


# static fields
.field private static c:Ljava/lang/reflect/Field;

.field private static d:Ljava/lang/reflect/Constructor;


# instance fields
.field private final a:Landroid/net/Uri;

.field private b:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-class v0, Ljava/io/FileDescriptor;

    const-string v1, "descriptor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/alensw/b/c/f;->c:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/alensw/b/c/f;->c:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v0, Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/io/FileDescriptor;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/alensw/b/c/f;->d:Ljava/lang/reflect/Constructor;

    sget-object v0, Lcom/alensw/b/c/f;->d:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alensw/b/c/f;->b:Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Lcom/alensw/b/c/f;->a:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Landroid/os/ParcelFileDescriptor;
    .locals 3

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "r"

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "rw"
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/alensw/b/c/f;->a(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_1

    :cond_1
    throw v0
.end method

.method private static a(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alensw/b/c/f;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alensw/b/c/f;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/alensw/b/c/f;
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alensw/b/c/f;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    new-instance v1, Lcom/alensw/b/c/f;

    invoke-direct {v1, p1, v0}, Lcom/alensw/b/c/f;-><init>(Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)V

    return-object v1
.end method

.method public static a(Ljava/io/File;Z)Lcom/alensw/b/c/f;
    .locals 3

    invoke-static {p0, p1}, Lcom/alensw/b/c/f;->b(Ljava/io/File;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    new-instance v1, Lcom/alensw/b/c/f;

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alensw/b/c/f;-><init>(Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)V

    return-object v1
.end method

.method public static a(Landroid/net/Uri;)Z
    .locals 2

    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/io/File;Z)Landroid/os/ParcelFileDescriptor;
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x10000000

    :goto_0
    :try_start_0
    invoke-static {p0, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/high16 v0, 0x38000000

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alensw/b/c/f;->a(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public a()Z
    .locals 2

    const-string v0, "file"

    iget-object v1, p0, Lcom/alensw/b/c/f;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/io/FileDescriptor;
    .locals 2

    iget-object v0, p0, Lcom/alensw/b/c/f;->b:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "file not open"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/b/c/f;->b:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lcom/alensw/b/c/f;->b:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/b/c/f;->b:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/alensw/b/c/f;->c:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/alensw/b/c/f;->b:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/c/f;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()J
    .locals 2

    iget-object v0, p0, Lcom/alensw/b/c/f;->b:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/b/c/f;->b:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/alensw/b/c/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/c/f;->a:Landroid/net/Uri;

    check-cast p1, Lcom/alensw/b/c/f;

    iget-object v1, p1, Lcom/alensw/b/c/f;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()J
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alensw/b/c/f;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/alensw/b/c/f;->h()V

    return-void
.end method

.method public g()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/c/f;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/c/f;->b:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/b/c/f;->b:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/b/c/f;->b:Landroid/os/ParcelFileDescriptor;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/c/f;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method
