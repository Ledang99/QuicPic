.class public Lcom/alensw/b/h/c;
.super Lcom/alensw/jni/JniUtils;


# static fields
.field public static final a:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field

.field public static final b:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alensw/b/h/c;->a:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alensw/b/h/c;->b:Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/alensw/b/h/c;->b:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alensw/jni/JniUtils;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/b/h/c;->c:I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/alensw/jni/JniUtils;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/b/h/c;->c:I

    iput p1, p0, Lcom/alensw/b/h/c;->c:I

    return-void
.end method

.method public static a(Lcom/alensw/b/c/f;IZ)I
    .locals 4

    const/4 v1, -0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/alensw/b/h/c;->a(Lcom/alensw/b/c/f;Z)Lcom/alensw/b/h/c;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {v2}, Lcom/alensw/b/h/c;->f()I

    move-result v0

    add-int/2addr p1, v0

    :cond_1
    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 v0, v0, 0x168

    invoke-virtual {v2, v0}, Lcom/alensw/b/h/c;->a(I)Z

    move-result v3

    invoke-virtual {v2}, Lcom/alensw/b/h/c;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)J
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/alensw/b/h/c;->a(Ljava/lang/String;Z)Lcom/alensw/b/h/c;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0, v1}, Lcom/alensw/b/h/c;->a(J)J

    move-result-wide v0

    invoke-virtual {v2}, Lcom/alensw/b/h/c;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alensw/b/c/f;Z)Lcom/alensw/b/h/c;
    .locals 2

    invoke-virtual {p0}, Lcom/alensw/b/c/f;->c()I

    move-result v0

    invoke-static {v0, p1}, Lcom/alensw/b/h/c;->exifOpenFD(IZ)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/alensw/b/h/c;

    invoke-direct {v0, v1}, Lcom/alensw/b/h/c;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Lcom/alensw/b/h/c;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/alensw/b/c/f;->a(Ljava/io/File;Z)Lcom/alensw/b/c/f;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-static {v1, p1}, Lcom/alensw/b/h/c;->a(Lcom/alensw/b/c/f;Z)Lcom/alensw/b/h/c;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alensw/b/c/f;->h()V

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alensw/b/c/f;->h()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alensw/b/c/f;->h()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p1, p0, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
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
.method public a(J)J
    .locals 11

    const-wide/16 v8, 0x2710

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Lcom/alensw/b/h/c;->i()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/alensw/b/h/c;->h()J

    move-result-wide v2

    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    sub-long v4, v0, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_1

    move-wide p1, v0

    :cond_0
    :goto_0
    return-wide p1

    :cond_1
    cmp-long v4, v2, v6

    if-eqz v4, :cond_2

    sub-long v4, v2, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_2

    move-wide p1, v2

    goto :goto_0

    :cond_2
    cmp-long v4, v0, v6

    if-eqz v4, :cond_3

    move-wide p1, v0

    goto :goto_0

    :cond_3
    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    move-wide p1, v2

    goto :goto_0
.end method

.method public a(IZ)Ljava/lang/Integer;
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/alensw/b/h/c;->c:I

    invoke-static {v0, p1, p2}, Lcom/alensw/b/h/c;->exifGetValue(IIZ)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILjava/text/SimpleDateFormat;)Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alensw/b/h/c;->c(IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/alensw/b/h/c;->a(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    iget v0, p0, Lcom/alensw/b/h/c;->c:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alensw/b/h/c;->c:I

    invoke-static {v0}, Lcom/alensw/b/h/c;->exifClose(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/b/h/c;->c:I

    :cond_0
    return-void
.end method

.method public a(Lcom/alensw/b/h/k;J)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/alensw/b/h/c;->c:I

    invoke-static {v0, v1}, Lcom/alensw/b/h/c;->exifGetInfo(II)I

    move-result v0

    iput v0, p1, Lcom/alensw/b/h/k;->a:I

    iget v0, p0, Lcom/alensw/b/h/c;->c:I

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/alensw/b/h/c;->exifGetInfo(II)I

    move-result v0

    iput v0, p1, Lcom/alensw/b/h/k;->b:I

    iget v0, p0, Lcom/alensw/b/h/c;->c:I

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/alensw/b/h/c;->exifGetInfo(II)I

    move-result v0

    iput v0, p1, Lcom/alensw/b/h/k;->c:I

    iget v0, p0, Lcom/alensw/b/h/c;->c:I

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lcom/alensw/b/h/c;->exifGetInfo(II)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p1, Lcom/alensw/b/h/k;->h:Z

    iget v0, p0, Lcom/alensw/b/h/c;->c:I

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/alensw/b/h/c;->exifGetInfo(II)I

    move-result v0

    iput v0, p1, Lcom/alensw/b/h/k;->d:I

    iget v0, p0, Lcom/alensw/b/h/c;->c:I

    const/16 v3, 0xb

    invoke-static {v0, v3}, Lcom/alensw/b/h/c;->exifGetInfo(II)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p1, Lcom/alensw/b/h/k;->i:Z

    invoke-virtual {p0, p2, p3}, Lcom/alensw/b/h/c;->a(J)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/alensw/b/h/k;->j:J

    invoke-virtual {p0}, Lcom/alensw/b/h/c;->o()[F

    move-result-object v0

    iput-object v0, p1, Lcom/alensw/b/h/k;->k:[F

    const/16 v0, 0x110

    invoke-virtual {p0, v0, v2}, Lcom/alensw/b/h/c;->c(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alensw/b/h/k;->l:Ljava/lang/String;

    const/16 v0, 0x10e

    invoke-virtual {p0, v0, v2}, Lcom/alensw/b/h/c;->c(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alensw/b/h/k;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alensw/b/h/c;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alensw/b/h/k;->n:Ljava/lang/String;

    const-string v0, "image/jpeg"

    iput-object v0, p1, Lcom/alensw/b/h/k;->o:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public a(I)Z
    .locals 1

    iget v0, p0, Lcom/alensw/b/h/c;->c:I

    invoke-static {v0, p1}, Lcom/alensw/b/h/c;->exifSetDegrees(II)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/alensw/b/c/f;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alensw/b/h/c;->a(Lcom/alensw/b/c/f;Z)Lcom/alensw/b/h/c;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/alensw/b/h/c;->c:I

    iget v2, v1, Lcom/alensw/b/h/c;->c:I

    invoke-static {v0, v2}, Lcom/alensw/b/h/c;->exifSaveTo(II)Z

    move-result v0

    invoke-virtual {v1}, Lcom/alensw/b/h/c;->a()V

    :cond_0
    return v0
.end method

.method public b(IZ)Ljava/lang/Double;
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/alensw/b/h/c;->c:I

    invoke-static {v0, p1, p2}, Lcom/alensw/b/h/c;->exifGetValue(IIZ)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget v0, p0, Lcom/alensw/b/h/c;->c:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/alensw/b/c/f;Z)Z
    .locals 1

    iget v0, p0, Lcom/alensw/b/h/c;->c:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/b/h/c;->a()V

    :cond_0
    invoke-virtual {p1}, Lcom/alensw/b/c/f;->c()I

    move-result v0

    invoke-static {v0, p2}, Lcom/alensw/b/h/c;->exifOpenFD(IZ)I

    move-result v0

    iput v0, p0, Lcom/alensw/b/h/c;->c:I

    iget v0, p0, Lcom/alensw/b/h/c;->c:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(IZ)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget v0, p0, Lcom/alensw/b/h/c;->c:I

    invoke-static {v0, p1, p2}, Lcom/alensw/b/h/c;->exifGetValue(IIZ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    instance-of v2, v0, [B

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/String;

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, Lcom/alensw/b/h/c;->c:I

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/alensw/b/h/c;->exifGetInfo(II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 2

    iget v0, p0, Lcom/alensw/b/h/c;->c:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/alensw/b/h/c;->exifGetInfo(II)I

    move-result v0

    return v0
.end method

.method public final e()J
    .locals 4

    iget v0, p0, Lcom/alensw/b/h/c;->c:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alensw/b/h/c;->exifGetInfo(II)I

    move-result v0

    iget v1, p0, Lcom/alensw/b/h/c;->c:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/alensw/b/h/c;->exifGetInfo(II)I

    move-result v1

    int-to-long v2, v1

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    int-to-long v0, v0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final f()I
    .locals 2

    iget v0, p0, Lcom/alensw/b/h/c;->c:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/alensw/b/h/c;->exifGetInfo(II)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 1

    iget v0, p0, Lcom/alensw/b/h/c;->c:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/b/h/c;->a()V

    :cond_0
    return-void
.end method

.method public g()[B
    .locals 2

    const/16 v0, 0x131

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alensw/b/h/c;->c(IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "GIMP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/alensw/b/h/c;->c:I

    invoke-static {v0}, Lcom/alensw/b/h/c;->exifGetThumbnail(I)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected h()J
    .locals 2

    const v0, 0x9003

    sget-object v1, Lcom/alensw/b/h/c;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v0, v1}, Lcom/alensw/b/h/c;->a(ILjava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x132

    sget-object v1, Lcom/alensw/b/h/c;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v0, v1}, Lcom/alensw/b/h/c;->a(ILjava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const v0, 0x9004

    sget-object v1, Lcom/alensw/b/h/c;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v0, v1}, Lcom/alensw/b/h/c;->a(ILjava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected i()J
    .locals 13

    const/4 v12, 0x2

    const/4 v9, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const/16 v0, 0x1d

    invoke-virtual {p0, v0, v8}, Lcom/alensw/b/h/c;->c(IZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    iget v1, p0, Lcom/alensw/b/h/c;->c:I

    const/4 v4, 0x7

    invoke-static {v1, v4, v8}, Lcom/alensw/b/h/c;->exifGet3RealValue(IIZ)[D

    move-result-object v1

    if-eqz v1, :cond_0

    aget-wide v4, v1, v9

    cmpg-double v4, v4, v10

    if-ltz v4, :cond_0

    aget-wide v4, v1, v9

    const-wide/high16 v6, 0x4038000000000000L    # 24.0

    cmpl-double v4, v4, v6

    if-gez v4, :cond_0

    aget-wide v4, v1, v8

    cmpg-double v4, v4, v10

    if-ltz v4, :cond_0

    aget-wide v4, v1, v8

    const-wide/high16 v6, 0x4038000000000000L    # 24.0

    cmpl-double v4, v4, v6

    if-gez v4, :cond_0

    aget-wide v4, v1, v12

    cmpg-double v4, v4, v10

    if-ltz v4, :cond_0

    aget-wide v4, v1, v12

    const-wide/high16 v6, 0x4038000000000000L    # 24.0

    cmpl-double v4, v4, v6

    if-gez v4, :cond_0

    aget-wide v4, v1, v9

    cmpl-double v4, v4, v10

    if-nez v4, :cond_2

    aget-wide v4, v1, v8

    cmpl-double v4, v4, v10

    if-nez v4, :cond_2

    aget-wide v4, v1, v12

    cmpl-double v4, v4, v10

    if-nez v4, :cond_2

    const-string v4, "0000:00:00"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    const-string v4, "%d:%d:%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aget-wide v6, v1, v9

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    aget-wide v6, v1, v8

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    aget-wide v6, v1, v12

    double-to-int v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v12

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alensw/b/h/c;->b:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Lcom/alensw/b/h/c;->a(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_1
    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    :goto_2
    move-wide v2, v0

    goto/16 :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_1

    :cond_4
    move-wide v0, v2

    goto :goto_2
.end method

.method public j()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alensw/b/h/c;->l()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/alensw/b/h/c;->m()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/alensw/b/h/c;->k()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/alensw/b/h/c;->n()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    if-eqz v4, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public k()Ljava/lang/String;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v5, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    const v0, 0x829a

    invoke-virtual {p0, v0, v4}, Lcom/alensw/b/h/c;->b(IZ)Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x9201

    invoke-virtual {p0, v0, v4}, Lcom/alensw/b/h/c;->b(IZ)Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    div-double v0, v8, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v2, v6

    if-gtz v0, :cond_2

    const-string v0, "1/%ds"

    new-array v1, v5, [Ljava/lang/Object;

    div-double v2, v8, v2

    add-double/2addr v2, v6

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, v2, v0

    if-gez v0, :cond_3

    const-string v0, "%6.4fs"

    :goto_1
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "%5.3fs"

    goto :goto_1
.end method

.method public l()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v0, 0x829d

    invoke-virtual {p0, v0, v4}, Lcom/alensw/b/h/c;->b(IZ)Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_2

    const v0, 0x9202

    invoke-virtual {p0, v0, v4}, Lcom/alensw/b/h/c;->b(IZ)Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x9205

    invoke-virtual {p0, v0, v4}, Lcom/alensw/b/h/c;->b(IZ)Ljava/lang/Double;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-int v2, v0

    int-to-double v2, v2

    cmpl-double v2, v0, v2

    if-nez v2, :cond_3

    const-string v2, "F/%d"

    new-array v3, v5, [Ljava/lang/Object;

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v2, "F/%3.1f"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 6

    const v0, 0x920a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alensw/b/h/c;->b(IZ)Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const v0, 0x8827

    invoke-virtual {p0, v0, v2}, Lcom/alensw/b/h/c;->a(IZ)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0xc8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISO-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const v0, 0xa215

    invoke-virtual {p0, v0, v2}, Lcom/alensw/b/h/c;->b(IZ)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISO-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public o()[F
    .locals 14

    iget v0, p0, Lcom/alensw/b/h/c;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alensw/b/h/c;->exifGet3RealValue(IIZ)[D

    move-result-object v0

    iget v1, p0, Lcom/alensw/b/h/c;->c:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/alensw/b/h/c;->exifGet3RealValue(IIZ)[D

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/alensw/b/h/c;->c(IZ)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/alensw/b/h/c;->c(IZ)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v5, 0x1

    aget-wide v8, v0, v5

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    div-double/2addr v8, v10

    add-double/2addr v2, v8

    const/4 v5, 0x2

    aget-wide v8, v0, v5

    const-wide v10, 0x40ac200000000000L    # 3600.0

    div-double/2addr v8, v10

    add-double/2addr v2, v8

    const/4 v0, 0x0

    aget-wide v8, v1, v0

    const/4 v0, 0x1

    aget-wide v10, v1, v0

    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    const/4 v0, 0x2

    aget-wide v0, v1, v0

    const-wide v10, 0x40ac200000000000L    # 3600.0

    div-double/2addr v0, v10

    add-double/2addr v0, v8

    const-wide/16 v8, 0x0

    cmpl-double v5, v2, v8

    if-nez v5, :cond_2

    const-wide/16 v8, 0x0

    cmpl-double v5, v0, v8

    if-nez v5, :cond_2

    if-nez v4, :cond_2

    if-nez v6, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x53

    if-ne v4, v5, :cond_4

    neg-double v2, v2

    move-wide v4, v2

    :goto_1
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x57

    if-ne v2, v3, :cond_3

    neg-double v0, v0

    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    double-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x1

    double-to-float v0, v0

    aput v0, v2, v3

    move-object v0, v2

    goto :goto_0

    :cond_4
    move-wide v4, v2

    goto :goto_1
.end method
