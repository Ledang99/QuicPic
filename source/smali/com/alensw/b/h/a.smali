.class public Lcom/alensw/b/h/a;
.super Landroid/graphics/BitmapFactory$Options;


# static fields
.field public static a:Landroid/graphics/Bitmap$Config;

.field private static final f:Lcom/alensw/b/i/c;

.field private static g:Ljava/lang/reflect/Field;


# instance fields
.field public b:I

.field public c:I

.field public d:Z

.field protected e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/alensw/b/h/a;->a:Landroid/graphics/Bitmap$Config;

    new-instance v0, Lcom/alensw/b/i/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/alensw/b/i/c;-><init>(I)V

    sput-object v0, Lcom/alensw/b/h/a;->f:Lcom/alensw/b/i/c;

    :try_start_0
    const-class v0, Landroid/graphics/BitmapFactory$Options;

    const-string v1, "inNativeAlloc"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/alensw/b/h/a;->g:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    return-void
.end method

.method public static a(Lcom/alensw/b/h/a;)V
    .locals 2

    sget-object v1, Lcom/alensw/b/h/a;->f:Lcom/alensw/b/i/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alensw/b/h/a;->f:Lcom/alensw/b/i/c;

    invoke-virtual {v0, p0}, Lcom/alensw/b/i/c;->b(Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static e()Lcom/alensw/b/h/a;
    .locals 2

    sget-object v1, Lcom/alensw/b/h/a;->f:Lcom/alensw/b/i/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alensw/b/h/a;->f:Lcom/alensw/b/i/c;

    invoke-virtual {v0}, Lcom/alensw/b/i/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/h/a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alensw/b/h/a;->a()V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    new-instance v0, Lcom/alensw/b/h/a;

    invoke-direct {v0}, Lcom/alensw/b/h/a;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alensw/b/h/a;->mCancel:Z

    iput-boolean v1, p0, Lcom/alensw/b/h/a;->inDither:Z

    iput-boolean v1, p0, Lcom/alensw/b/h/a;->inJustDecodeBounds:Z

    iput-object v2, p0, Lcom/alensw/b/h/a;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    iput v0, p0, Lcom/alensw/b/h/a;->inSampleSize:I

    iput v1, p0, Lcom/alensw/b/h/a;->outWidth:I

    iput v1, p0, Lcom/alensw/b/h/a;->outHeight:I

    iput-object v2, p0, Lcom/alensw/b/h/a;->outMimeType:Ljava/lang/String;

    iput v1, p0, Lcom/alensw/b/h/a;->b:I

    iput v1, p0, Lcom/alensw/b/h/a;->c:I

    iput-boolean v1, p0, Lcom/alensw/b/h/a;->d:Z

    iput-boolean v1, p0, Lcom/alensw/b/h/a;->e:Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    sget-object v0, Lcom/alensw/b/h/a;->g:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/alensw/b/h/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alensw/b/h/a;->inJustDecodeBounds:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/alensw/b/h/a;->inSampleSize:I

    sget-object v0, Lcom/alensw/b/h/a;->a:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/alensw/b/h/a;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public c()Z
    .locals 1

    iget v0, p0, Lcom/alensw/b/h/a;->outWidth:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/alensw/b/h/a;->outHeight:I

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    sget-object v0, Lcom/alensw/b/h/a;->g:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/alensw/b/h/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alensw/b/h/a;->outWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alensw/b/h/a;->outHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alensw/b/h/a;->inSampleSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alensw/b/h/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/b/h/a;->outMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cancel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alensw/b/h/a;->mCancel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
