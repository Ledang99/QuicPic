.class public Lcom/alensw/ui/c/df;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static b:Ljava/text/DateFormat;

.field private static c:Ljava/text/DateFormat;


# instance fields
.field private final d:Landroid/content/Context;

.field private e:Landroid/net/Uri;

.field private f:C

.field private g:J

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/alensw/b/h/k;

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "resolution"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alensw/ui/c/df;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;CLjava/lang/String;Lcom/alensw/b/h/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alensw/ui/c/df;->d:Landroid/content/Context;

    sget-object v0, Lcom/alensw/ui/c/df;->b:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/alensw/ui/c/df;->b:Ljava/text/DateFormat;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/alensw/ui/c/df;->c:Ljava/text/DateFormat;

    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/alensw/ui/c/df;->a(Landroid/net/Uri;CLjava/lang/String;Lcom/alensw/b/h/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alensw/bean/CommonFile;Lcom/alensw/b/h/k;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alensw/ui/c/df;->d:Landroid/content/Context;

    sget-object v0, Lcom/alensw/ui/c/df;->b:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/alensw/ui/c/df;->b:Ljava/text/DateFormat;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/alensw/ui/c/df;->c:Ljava/text/DateFormat;

    :cond_0
    invoke-virtual {p2}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v1

    invoke-virtual {p2}, Lcom/alensw/bean/CommonFile;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/alensw/ui/c/df;->a(Landroid/net/Uri;CLjava/lang/String;Lcom/alensw/b/h/k;)V

    invoke-virtual {p2}, Lcom/alensw/bean/CommonFile;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/alensw/ui/c/df;->i:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alensw/ui/c/df;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/df;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/net/Uri;C)Landroid/net/Uri;
    .locals 2

    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alensw/ui/c/df;->a(Ljava/lang/String;C)Landroid/net/Uri;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;C)Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    invoke-virtual {v0, p0, p1}, Lcom/alensw/a/ba;->b(Ljava/lang/String;C)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/alensw/PicFolder/FileProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private a(Z)V
    .locals 8

    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    iget-char v0, p0, Lcom/alensw/ui/c/df;->f:C

    const/16 v1, 0x56

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/c/df;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    iget-object v1, p0, Lcom/alensw/ui/c/df;->i:Ljava/lang/String;

    iget-char v2, p0, Lcom/alensw/ui/c/df;->f:C

    sget-object v3, Lcom/alensw/ui/c/df;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alensw/a/ba;->a(Ljava/lang/String;C[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/alensw/b/h/k;->o:Ljava/lang/String;

    aget-object v1, v0, v4

    iput-object v1, p0, Lcom/alensw/ui/c/df;->j:Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1, v6, v7}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alensw/ui/c/df;->g:J

    iget-object v1, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-static {v0, v6, v7}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alensw/b/h/k;->j:J

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alensw/ui/c/df;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alensw/ui/c/df;->h:J

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v0, v0, Lcom/alensw/b/h/k;->o:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/df;->i:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v1, p0, Lcom/alensw/ui/c/df;->i:Ljava/lang/String;

    iget-char v2, p0, Lcom/alensw/ui/c/df;->f:C

    invoke-static {v1, v2}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alensw/b/h/k;->o:Ljava/lang/String;

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/alensw/ui/c/df;->c()Lcom/alensw/b/c/f;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alensw/b/c/f;->e()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alensw/ui/c/df;->h:J

    invoke-static {v0, v4}, Lcom/alensw/b/h/c;->a(Lcom/alensw/b/c/f;Z)Lcom/alensw/b/h/c;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    invoke-virtual {v0}, Lcom/alensw/b/c/f;->f()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/alensw/b/h/c;->a(Lcom/alensw/b/h/k;J)V

    invoke-virtual {v1}, Lcom/alensw/b/h/c;->a()V

    :cond_4
    iget-object v1, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget v1, v1, Lcom/alensw/b/h/k;->a:I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget v1, v1, Lcom/alensw/b/h/k;->b:I

    if-eqz v1, :cond_5

    iget-wide v2, p0, Lcom/alensw/ui/c/df;->h:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_8

    :cond_5
    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/alensw/ui/c/df;->c()Lcom/alensw/b/c/f;

    move-result-object v0

    :cond_6
    if-eqz v0, :cond_8

    new-instance v1, Lcom/alensw/b/h/a;

    invoke-direct {v1}, Lcom/alensw/b/h/a;-><init>()V

    invoke-static {v0, v1}, Lcom/alensw/b/h/b;->b(Lcom/alensw/b/c/f;Lcom/alensw/b/h/a;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget v3, v1, Lcom/alensw/b/h/a;->outWidth:I

    iput v3, v2, Lcom/alensw/b/h/k;->a:I

    iget-object v2, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget v3, v1, Lcom/alensw/b/h/a;->outHeight:I

    iput v3, v2, Lcom/alensw/b/h/k;->b:I

    iget-object v2, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v1, v1, Lcom/alensw/b/h/a;->outMimeType:Ljava/lang/String;

    iput-object v1, v2, Lcom/alensw/b/h/k;->o:Ljava/lang/String;

    :cond_7
    invoke-virtual {v0}, Lcom/alensw/b/c/f;->e()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alensw/ui/c/df;->h:J

    :cond_8
    iget-object v1, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-wide v2, v1, Lcom/alensw/b/h/k;->j:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/alensw/ui/c/df;->i:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/alensw/ui/c/df;->i:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alensw/b/h/k;->j:J

    :cond_9
    iget-object v1, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget v1, v1, Lcom/alensw/b/h/k;->a:I

    if-lez v1, :cond_a

    iget-object v1, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget v1, v1, Lcom/alensw/b/h/k;->b:I

    if-lez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget v2, v2, Lcom/alensw/b/h/k;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget v2, v2, Lcom/alensw/b/h/k;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget v2, v2, Lcom/alensw/b/h/k;->a:I

    iget-object v3, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget v3, v3, Lcom/alensw/b/h/k;->b:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Lcom/alensw/b/l/b;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alensw/ui/c/df;->j:Ljava/lang/String;

    :cond_a
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alensw/b/c/f;->h()V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alensw/ui/c/df;)J
    .locals 2

    invoke-direct {p0}, Lcom/alensw/ui/c/df;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method private c()Lcom/alensw/b/c/f;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alensw/ui/c/df;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/df;->e:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/alensw/b/c/f;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/alensw/b/c/f;
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

.method static synthetic c(Lcom/alensw/ui/c/df;)Lcom/alensw/b/h/k;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    return-object v0
.end method

.method private d()J
    .locals 12

    const-wide/16 v10, 0x3e8

    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/alensw/ui/c/df;->i:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    :try_start_0
    iget-char v3, p0, Lcom/alensw/ui/c/df;->f:C

    const/16 v4, 0x56

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-wide v4, v3, Lcom/alensw/b/h/k;->j:J

    cmp-long v3, v4, v0

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-char v4, p0, Lcom/alensw/ui/c/df;->f:C

    iget-object v5, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-wide v6, v5, Lcom/alensw/b/h/k;->j:J

    invoke-static {v2, v4, v6, v7}, Lcom/alensw/b/l/b;->a(Ljava/io/File;CJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alensw/b/h/k;->j:J

    :cond_0
    iget-object v3, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-wide v4, v3, Lcom/alensw/b/h/k;->j:J

    invoke-virtual {v2, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-wide v0, v2, Lcom/alensw/b/h/k;->j:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    iget-object v3, p0, Lcom/alensw/ui/c/df;->i:Ljava/lang/String;

    iget-char v4, p0, Lcom/alensw/ui/c/df;->f:C

    invoke-virtual {v2, v3, v4}, Lcom/alensw/a/ba;->a(Ljava/lang/String;C)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-char v4, p0, Lcom/alensw/ui/c/df;->f:C

    invoke-static {v4}, Lcom/alensw/a/ba;->a(C)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "datetaken"

    iget-object v7, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-wide v8, v7, Lcom/alensw/b/h/k;->j:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "date_modified"

    div-long v8, v0, v10

    long-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v3, v6}, Lcom/alensw/a/ba;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget-object v3, p0, Lcom/alensw/ui/c/df;->i:Ljava/lang/String;

    div-long v4, v0, v10

    long-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/alensw/a/bc;->a(Ljava/lang/String;J)V

    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public a(C)Ljava/lang/String;
    .locals 6

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/alensw/ui/c/df;->a()V

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/df;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/df;->j:Ljava/lang/String;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-wide v2, p0, Lcom/alensw/ui/c/df;->g:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alensw/ui/c/df;->g:J

    invoke-static {v2, v3}, Lcom/alensw/b/l/b;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v0, v0, Lcom/alensw/b/h/k;->n:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v2, v2, Lcom/alensw/b/h/k;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-wide v2, v0, Lcom/alensw/b/h/k;->j:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-wide v2, v2, Lcom/alensw/b/h/k;->j:J

    invoke-virtual {p0, v2, v3}, Lcom/alensw/ui/c/df;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    sget-object v2, Lcom/alensw/ui/c/df;->b:Ljava/text/DateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/alensw/ui/c/df;->c:Ljava/text/DateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    iput-object p1, p0, Lcom/alensw/ui/c/df;->e:Landroid/net/Uri;

    invoke-static {p1}, Lcom/alensw/b/j/a;->d(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alensw/b/j/a;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/df;->i:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/df;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/df;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/df;->i:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/df;->i:Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/ui/c/df;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alensw/ui/c/df;->m:Z

    invoke-direct {p0, v0}, Lcom/alensw/ui/c/df;->a(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/ui/c/df;->l:Z

    :cond_0
    return-void
.end method

.method public a(Landroid/net/Uri;CLjava/lang/String;Lcom/alensw/b/h/k;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/alensw/ui/c/df;->a(Landroid/net/Uri;)Ljava/lang/String;

    iput-char p2, p0, Lcom/alensw/ui/c/df;->f:C

    iput-wide v2, p0, Lcom/alensw/ui/c/df;->g:J

    iput-wide v2, p0, Lcom/alensw/ui/c/df;->h:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/ui/c/df;->j:Ljava/lang/String;

    if-nez p2, :cond_0

    if-eqz p4, :cond_2

    iget-object v0, p4, Lcom/alensw/b/h/k;->o:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p4, Lcom/alensw/b/h/k;->o:Ljava/lang/String;

    const-string v2, "video/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x56

    :goto_0
    iput-char v0, p0, Lcom/alensw/ui/c/df;->f:C

    :cond_0
    :goto_1
    if-eqz p4, :cond_3

    new-instance v0, Lcom/alensw/b/h/k;

    invoke-direct {v0, p4}, Lcom/alensw/b/h/k;-><init>(Lcom/alensw/b/h/k;)V

    iput-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    :goto_2
    iput-boolean v1, p0, Lcom/alensw/ui/c/df;->l:Z

    if-nez p4, :cond_4

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/alensw/ui/c/df;->m:Z

    return-void

    :cond_1
    const/16 v0, 0x49

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/df;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/df;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Lcom/alensw/ui/c/df;->f:C

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/alensw/b/h/k;

    invoke-direct {v0}, Lcom/alensw/b/h/k;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iput-object p3, v0, Lcom/alensw/b/h/k;->o:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method public a(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Lcom/alensw/ui/c/df;->a()V

    iget-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v0, v0, Lcom/alensw/b/h/k;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "image/webp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "image/*"

    :cond_1
    iget-object v1, p0, Lcom/alensw/ui/c/df;->e:Landroid/net/Uri;

    iget-char v2, p0, Lcom/alensw/ui/c/df;->f:C

    invoke-static {v1, v2}, Lcom/alensw/ui/c/df;->a(Landroid/net/Uri;C)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alensw/ui/c/df;->d:Landroid/content/Context;

    const v1, 0x7f0a0073

    new-instance v3, Lcom/alensw/ui/c/dn;

    invoke-direct {v3, p0}, Lcom/alensw/ui/c/dn;-><init>(Lcom/alensw/ui/c/df;)V

    invoke-static {v0, v2, v1, p1, v3}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;ILandroid/view/View;Lcom/alensw/ui/activity/o;)I

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/alensw/ui/c/df;->a()V

    iget-object v0, p0, Lcom/alensw/ui/c/df;->e:Landroid/net/Uri;

    iget-char v1, p0, Lcom/alensw/ui/c/df;->f:C

    invoke-static {v0, v1}, Lcom/alensw/ui/c/df;->a(Landroid/net/Uri;C)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/*"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "noFaceDetection"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "scale"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alensw/ui/c/df;->d:Landroid/content/Context;

    const v2, 0x7f0a0032

    new-instance v3, Lcom/alensw/ui/c/dl;

    invoke-direct {v3, p0, p2}, Lcom/alensw/ui/c/dl;-><init>(Lcom/alensw/ui/c/df;Landroid/os/Bundle;)V

    invoke-static {v0, v1, v2, p1, v3}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;ILandroid/view/View;Lcom/alensw/ui/activity/o;)I

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/alensw/ui/c/do;)V
    .locals 10

    invoke-virtual {p0}, Lcom/alensw/ui/c/df;->a()V

    iget-object v0, p0, Lcom/alensw/ui/c/df;->d:Landroid/content/Context;

    const/4 v1, 0x0

    const v2, 0x7f030006

    invoke-static {v0, v1, v2}, Lcom/alensw/ui/a/u;->a(Landroid/content/Context;II)Lcom/alensw/ui/a/u;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v7, p1}, Lcom/alensw/ui/a/u;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0x10

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/df;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/df;->e:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/df;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/df;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/df;->e:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/alensw/b/j/a;->c(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Landroid/util/Pair;

    const v3, 0x7f0a005d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v0, v0, Lcom/alensw/b/h/k;->m:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/util/Pair;

    const v1, 0x7f0a0094

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v3, v3, Lcom/alensw/b/h/k;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v0, v0, Lcom/alensw/b/h/k;->o:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v1, Landroid/util/Pair;

    const v0, 0x7f0a008f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lcom/alensw/ui/c/df;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/alensw/b/h/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v4, v4, Lcom/alensw/b/h/k;->o:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " (3D)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-wide v0, p0, Lcom/alensw/ui/c/df;->h:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    new-instance v0, Landroid/util/Pair;

    const v1, 0x7f0a0091

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/alensw/ui/c/df;->d:Landroid/content/Context;

    iget-wide v4, p0, Lcom/alensw/ui/c/df;->h:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/alensw/ui/c/df;->j:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alensw/ui/c/df;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget v1, v1, Lcom/alensw/b/h/k;->d:I

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget v1, v1, Lcom/alensw/b/h/k;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    new-instance v1, Landroid/util/Pair;

    const v3, 0x7f0a0090

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v0, v0, Lcom/alensw/b/h/k;->l:Ljava/lang/String;

    if-eqz v0, :cond_8

    new-instance v0, Landroid/util/Pair;

    const v1, 0x7f0a0093

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v3, v3, Lcom/alensw/b/h/k;->l:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v0, v0, Lcom/alensw/b/h/k;->n:Ljava/lang/String;

    if-eqz v0, :cond_9

    new-instance v0, Landroid/util/Pair;

    const v1, 0x7f0a0095

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v3, v3, Lcom/alensw/b/h/k;->n:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-wide v0, v0, Lcom/alensw/b/h/k;->j:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_a

    new-instance v0, Landroid/util/Pair;

    const v1, 0x7f0a0092

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-wide v4, v3, Lcom/alensw/b/h/k;->j:J

    invoke-virtual {p0, v4, v5}, Lcom/alensw/ui/c/df;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v0, v0, Lcom/alensw/b/h/k;->k:[F

    if-eqz v0, :cond_b

    new-instance v0, Landroid/util/Pair;

    const v1, 0x7f0a0096

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "(%.7f,%.7f)"

    iget-object v4, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v4, v4, Lcom/alensw/b/h/k;->k:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-double v4, v4

    iget-object v6, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v6, v6, Lcom/alensw/b/h/k;->k:[F

    const/4 v8, 0x1

    aget v6, v6, v8

    float-to-double v8, v6

    invoke-static {v3, v4, v5, v8, v9}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v0, p0, Lcom/alensw/ui/c/df;->d:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f09000d

    invoke-virtual {v7, v1}, Lcom/alensw/ui/a/u;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/widget/TableLayout;->setColumnShrinkable(IZ)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    const v3, 0x7f030005

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableRow;

    invoke-virtual {v1, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    const v4, 0x7f09000b

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f09000c

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v0, v0, Lcom/alensw/b/h/k;->o:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v0, v0, Lcom/alensw/b/h/k;->k:[F

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v3, v0, Lcom/alensw/b/h/k;->k:[F

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/alensw/ui/c/dg;

    invoke-direct {v1, p0, v3, v0}, Lcom/alensw/ui/c/dg;-><init>(Lcom/alensw/ui/c/df;[FLandroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/alensw/ui/c/df;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/alensw/b/d/f;->a(Landroid/content/Context;)Lcom/alensw/b/d/f;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v4, 0x1

    aget v3, v3, v4

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/alensw/ui/c/dh;

    invoke-direct {v6, p0, v0}, Lcom/alensw/ui/c/dh;-><init>(Lcom/alensw/ui/c/df;Landroid/widget/TextView;)V

    invoke-virtual/range {v1 .. v6}, Lcom/alensw/b/d/f;->a(FFJLcom/alensw/b/d/g;)Z

    :cond_e
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/alensw/ui/c/df;->d:Landroid/content/Context;

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alensw/ui/c/di;

    invoke-direct {v2, p0}, Lcom/alensw/ui/c/di;-><init>(Lcom/alensw/ui/c/df;)V

    invoke-virtual {v7, v0, v1, v2}, Lcom/alensw/ui/a/u;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    if-eqz p2, :cond_f

    iget-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-wide v0, v0, Lcom/alensw/b/h/k;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alensw/ui/c/df;->i:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alensw/ui/c/df;->i:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, -0x2

    iget-object v1, p0, Lcom/alensw/ui/c/df;->d:Landroid/content/Context;

    const v2, 0x7f0a0036

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alensw/ui/c/dj;

    invoke-direct {v2, p0, p2}, Lcom/alensw/ui/c/dj;-><init>(Lcom/alensw/ui/c/df;Lcom/alensw/ui/c/do;)V

    invoke-virtual {v7, v0, v1, v2}, Lcom/alensw/ui/a/u;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_f
    invoke-static {v7}, Lcom/alensw/ui/a/f;->a(Landroid/app/Dialog;)Z

    goto/16 :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 7

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/alensw/ui/c/df;->a()V

    iget-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v0, v0, Lcom/alensw/b/h/k;->k:[F

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/df;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v0, v0, Lcom/alensw/b/h/k;->k:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    float-to-double v2, v0

    iget-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-object v0, v0, Lcom/alensw/b/h/k;->k:[F

    aget v0, v0, v4

    float-to-double v4, v0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;DDLandroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/df;->d:Landroid/content/Context;

    const v1, 0x7f0a004d

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public b(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p0}, Lcom/alensw/ui/c/df;->a()V

    iget-object v0, p0, Lcom/alensw/ui/c/df;->e:Landroid/net/Uri;

    iget-char v1, p0, Lcom/alensw/ui/c/df;->f:C

    invoke-static {v0, v1}, Lcom/alensw/ui/c/df;->a(Landroid/net/Uri;C)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ATTACH_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/*"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const-string v2, "mimeType"

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/alensw/ui/c/df;->d:Landroid/content/Context;

    const v3, 0x7f0a0071

    new-instance v4, Lcom/alensw/ui/c/dm;

    invoke-direct {v4, p0, v0}, Lcom/alensw/ui/c/dm;-><init>(Lcom/alensw/ui/c/df;Landroid/net/Uri;)V

    invoke-static {v2, v1, v3, p1, v4}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;ILandroid/view/View;Lcom/alensw/ui/activity/o;)I

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/df;->k:Lcom/alensw/b/h/k;

    iget-boolean v0, v0, Lcom/alensw/b/h/k;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
