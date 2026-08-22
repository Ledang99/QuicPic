.class public Lcom/alensw/PicFolder/QuickApp;
.super Landroid/app/Application;
.source "QuickApp.java"


# static fields
.field private static A:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static B:Lcom/alensw/PicFolder/QuickApp;

.field private static final F:[Ljava/lang/String;

.field private static final G:[B

.field private static final H:[B

.field public static final a:[I

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static e:Z

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:Ljava/lang/String;

.field public static m:Ljava/text/DateFormat;

.field public static n:Ljava/text/DateFormat;

.field public static o:Lcom/alensw/a/x;

.field public static p:Lcom/alensw/a/bh;

.field public static q:Lcom/alensw/a/s;

.field public static r:Lcom/alensw/a/bc;

.field public static s:Lcom/alensw/a/ba;

.field public static t:Lcom/alensw/a/ah;

.field public static u:Lcom/alensw/a/ao;

.field public static v:Lcom/alensw/b/a/a;

.field public static w:Lcom/alensw/b/a/a;

.field public static x:Z

.field public static y:Ljava/lang/String;

.field private static z:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final C:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final D:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final E:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x10

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alensw/PicFolder/QuickApp;->a:[I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/alensw/PicFolder/QuickApp;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/alensw/PicFolder/QuickApp;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.samsung.app.playreadyui"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.htc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.meizu.mstore"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alensw/PicFolder/QuickApp;->F:[Ljava/lang/String;

    new-array v0, v3, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alensw/PicFolder/QuickApp;->G:[B

    new-array v0, v3, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/alensw/PicFolder/QuickApp;->H:[B

    return-void

    :array_0
    .array-data 4
        0xa00
        0x800
        0x780
        0x708
        0x640
        0x500
        0x400
        0x3c0
        0x320
        0x1e0
        0x140
    .end array-data

    :array_1
    .array-data 1
        -0x2dt
        0x6dt
        -0x73t
        -0x56t
        0x67t
        -0x68t
        -0x24t
        0x42t
        -0x51t
        -0x30t
        0x4at
        0xet
        0x3bt
        0x13t
        0x4dt
        0x4dt
    .end array-data

    :array_2
    .array-data 1
        -0x3et
        0x7ft
        -0x4bt
        -0x5ct
        0x47t
        0x3ct
        0x4bt
        0x37t
        0x5ft
        -0x63t
        -0x1ft
        0x42t
        0x40t
        0x6ft
        0x65t
        0x65t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/alensw/PicFolder/QuickApp;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/alensw/PicFolder/QuickApp;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alensw/PicFolder/QuickApp;->E:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lcom/alensw/PicFolder/QuickApp;
    .locals 1

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->B:Lcom/alensw/PicFolder/QuickApp;

    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->m:Ljava/text/DateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alensw/PicFolder/QuickApp;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/QuickApp;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p0, v1}, Lcom/alensw/PicFolder/QuickApp;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/alensw/b/f/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Z)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alensw/PicFolder/QuickApp;->x:Z

    :cond_0
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    return v0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->m:Ljava/text/DateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->n:Ljava/text/DateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/alensw/PicFolder/QuickApp;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/QuickApp;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/alensw/b/f/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Z)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alensw/PicFolder/QuickApp;->x:Z

    :cond_0
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    return v0
.end method

.method private f()I
    .locals 2

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->F:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->F:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p0, v1}, Lcom/alensw/b/l/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private g()Z
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alensw/PicFolder/QuickApp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {p0}, Lcom/alensw/b/h/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/alensw/b/e/b;->a()V

    iget v0, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v5, 0x3

    if-lt v0, v5, :cond_3

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/alensw/PicFolder/QuickApp;->b:Z

    invoke-virtual {p0}, Lcom/alensw/PicFolder/QuickApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "android.hardware.type.television"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alensw/PicFolder/QuickApp;->e:Z

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v5, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v5

    float-to-int v0, v0

    sput v0, Lcom/alensw/PicFolder/QuickApp;->h:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xd

    if-lt v0, v5, :cond_0

    sget v0, Lcom/alensw/PicFolder/QuickApp;->h:I

    iget v5, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ge v0, v5, :cond_0

    iget v0, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sput v0, Lcom/alensw/PicFolder/QuickApp;->h:I

    :cond_0
    sget v0, Lcom/alensw/PicFolder/QuickApp;->h:I

    int-to-float v0, v0

    iget v3, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/alensw/PicFolder/QuickApp;->g:I

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v7, Lcom/alensw/PicFolder/QuickApp;->a:[I

    array-length v8, v7

    move v4, v2

    move v3, v0

    :goto_1
    if-ge v4, v8, :cond_1

    aget v5, v7, v4

    if-ne v0, v5, :cond_4

    :cond_1
    :goto_2
    sput v0, Lcom/alensw/PicFolder/QuickApp;->f:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_2

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_2

    move v2, v1

    :cond_2
    sput-boolean v2, Lcom/alensw/PicFolder/QuickApp;->d:Z

    const-string v0, "com.google.android.gms"

    invoke-static {p0, v0}, Lcom/alensw/b/l/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alensw/PicFolder/QuickApp;->c:Z

    const/16 v0, 0x190

    :try_start_res
    const v1, 0x10e0001

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v1, 0x190

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_res
    .catch Ljava/lang/Throwable; {:try_start_res .. :try_end_res} :catch_res

    goto :goto_res_done

    :catch_res

    const/16 v0, 0x190

    :goto_res_done
    sput v0, Lcom/alensw/PicFolder/QuickApp;->i:I

    sget v0, Lcom/alensw/PicFolder/QuickApp;->j:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    const-string v0, "100MEDIA"

    :goto_3
    sput-object v0, Lcom/alensw/PicFolder/QuickApp;->l:Ljava/lang/String;

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/alensw/PicFolder/QuickApp;->m:Ljava/text/DateFormat;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/alensw/PicFolder/QuickApp;->n:Ljava/text/DateFormat;

    new-instance v0, Lcom/alensw/a/x;

    invoke-direct {v0}, Lcom/alensw/a/x;-><init>()V

    sput-object v0, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    new-instance v0, Lcom/alensw/a/bh;

    invoke-direct {v0, p0}, Lcom/alensw/a/bh;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alensw/PicFolder/QuickApp;->p:Lcom/alensw/a/bh;

    new-instance v0, Lcom/alensw/a/s;

    invoke-direct {v0, p0}, Lcom/alensw/a/s;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    new-instance v0, Lcom/alensw/a/bc;

    invoke-direct {v0, p0}, Lcom/alensw/a/bc;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    new-instance v0, Lcom/alensw/a/ah;

    invoke-direct {v0, p0}, Lcom/alensw/a/ah;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alensw/PicFolder/QuickApp;->t:Lcom/alensw/a/ah;

    new-instance v0, Lcom/alensw/a/ao;

    invoke-direct {v0, p0}, Lcom/alensw/a/ao;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    new-instance v0, Lcom/alensw/a/ba;

    invoke-direct {v0, p0}, Lcom/alensw/a/ba;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->p:Lcom/alensw/a/bh;

    invoke-static {p0, v0}, Lcom/alensw/a/c;->a(Landroid/content/Context;Lcom/alensw/a/bh;)V

    sget v0, Lcom/alensw/PicFolder/QuickApp;->g:I

    invoke-static {p0, v0}, Lcom/alensw/b/h/n;->a(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/QuickApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    new-instance v3, Lcom/alensw/PicFolder/bb;

    invoke-direct {v3, p0, v0}, Lcom/alensw/PicFolder/bb;-><init>(Lcom/alensw/PicFolder/QuickApp;Landroid/content/ContentResolver;)V

    invoke-virtual {v2, v3}, Lcom/alensw/a/ao;->a(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget v0, v0, Lcom/alensw/a/bc;->c:I

    div-int/lit8 v2, v0, 0x2

    new-instance v3, Lcom/alensw/PicFolder/bc;

    invoke-direct {v3, p0, v2}, Lcom/alensw/PicFolder/bc;-><init>(Lcom/alensw/PicFolder/QuickApp;I)V

    sput-object v3, Lcom/alensw/PicFolder/QuickApp;->v:Lcom/alensw/b/a/a;

    new-instance v2, Lcom/alensw/PicFolder/bd;

    invoke-direct {v2, p0, v0}, Lcom/alensw/PicFolder/bd;-><init>(Lcom/alensw/PicFolder/QuickApp;I)V

    sput-object v2, Lcom/alensw/PicFolder/QuickApp;->w:Lcom/alensw/b/a/a;

    return v1

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    if-le v0, v5, :cond_5

    move v0, v3

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto/16 :goto_1

    :cond_6
    const-string v0, "Camera"

    goto :goto_3
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 24
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->B:Lcom/alensw/PicFolder/QuickApp;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/QuickApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    const/4 v3, 0x0

    const/4 v8, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v0, "external_sd_uuid"

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alensw/a/c;->a:Ljava/lang/String;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v0, "bkgnd_theme"

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v3, "bkgnd_theme"

    invoke-interface {v6, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "4"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v0, "main_theme"

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "auto_black_bkgnd"

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_0
    move v0, v1

    :goto_1
    sget v3, Lcom/alensw/PicFolder/QuickApp;->j:I

    if-ne v3, v8, :cond_0

    sget v3, Lcom/alensw/PicFolder/QuickApp;->g:I

    const/16 v7, 0x2d0

    if-lt v3, v7, :cond_0

    const-string v3, "split_bar"

    invoke-interface {v5, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v0, "split_bar"

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    :cond_0
    const-string v3, "include_video"

    invoke-interface {v5, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v4

    :goto_2
    or-int/lit8 v3, v3, 0x1

    sget-object v7, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    invoke-virtual {v7, v3, v5}, Lcom/alensw/a/s;->a(ILandroid/content/SharedPreferences;)V

    const-string v3, "sort_logical"

    invoke-interface {v5, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Lcom/alensw/b/b/b;->a(Z)Z

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v3, v7, :cond_1

    sget-boolean v3, Lcom/alensw/PicFolder/QuickApp;->d:Z

    if-eqz v3, :cond_1

    const-string v3, "auto_hide_navigate_bar"

    invoke-interface {v5, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "auto_hide_navigate_bar"

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    :cond_1
    const-string v3, "show_controls"

    invoke-interface {v5, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "show_details"

    invoke-interface {v5, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "show_controls"

    invoke-interface {v6, v0, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "show_details"

    invoke-interface {v6, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    :cond_2
    const-string v3, "protect_hidden"

    invoke-interface {v5, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v0, "protect_hidden"

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    :cond_3
    const-string v3, "failed_upload_tasks"

    invoke-interface {v5, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_4

    invoke-static {p0, v4, v3}, Lcom/alensw/cloud/UrlTaskService;->b(Landroid/content/Context;II)V

    :cond_4
    const-string v3, "failed_download_tasks"

    invoke-interface {v5, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_5

    invoke-static {p0, v1, v2}, Lcom/alensw/cloud/UrlTaskService;->b(Landroid/content/Context;II)V

    :cond_5
    if-eqz v0, :cond_6

    invoke-static {v6}, Lcom/alensw/b/l/b;->a(Landroid/content/SharedPreferences$Editor;)V

    :cond_6
    return-void

    :cond_7
    const-string v3, "main_theme"

    invoke-static {v0, v2}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {v6, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    :cond_8
    move v3, v2

    goto :goto_2

    :cond_9
    move v0, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/QuickApp;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v1, p0, Lcom/alensw/PicFolder/QuickApp;->E:Ljava/util/ArrayList;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/PicFolder/QuickApp;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/QuickApp;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b()V
    .locals 1

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    invoke-virtual {v0}, Lcom/alensw/a/bc;->c()V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    invoke-virtual {v0}, Lcom/alensw/a/s;->a()V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/QuickApp;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/PicFolder/QuickApp;->d()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v1, p0, Lcom/alensw/PicFolder/QuickApp;->E:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/PicFolder/QuickApp;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected c()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/alensw/PicFolder/QuickApp;->E:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/PicFolder/QuickApp;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sput-boolean v3, Lcom/alensw/PicFolder/QuickApp;->x:Z

    const-string v0, ""

    sput-object v0, Lcom/alensw/PicFolder/QuickApp;->y:Ljava/lang/String;

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    invoke-virtual {v0}, Lcom/alensw/a/ba;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v3}, Lcom/alensw/PicFolder/QuickApp;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/alensw/PicFolder/QuickApp;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/QuickApp;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/PicFolder/QuickApp;->b()V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    iget-boolean v0, v0, Lcom/alensw/a/s;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    iput-boolean v1, v0, Lcom/alensw/a/s;->b:Z

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    invoke-virtual {v0, v1}, Lcom/alensw/a/x;->a(Z)Z

    :cond_0
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    invoke-virtual {v0}, Lcom/alensw/a/bc;->d()V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    invoke-virtual {v0}, Lcom/alensw/a/s;->b()V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    invoke-virtual {v0}, Lcom/alensw/a/ao;->a()V

    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/QuickApp;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/PicFolder/QuickApp;->c()V

    :cond_0
    return-void
.end method

.method public e()I
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/alensw/PicFolder/QuickApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alensw/PicFolder/QuickApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lcom/alensw/PicFolder/QuickApp;->k:I

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->G:[B

    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->H:[B

    invoke-static {v0, v1, v2}, Lcom/alensw/b/l/b;->a(Landroid/content/pm/PackageInfo;[B[B)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public e(Landroid/app/Activity;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/f/a;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alensw/b/f/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public f(Landroid/app/Activity;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/f/a;->b(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alensw/b/f/a;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sput-object p0, Lcom/alensw/PicFolder/QuickApp;->B:Lcom/alensw/PicFolder/QuickApp;

    invoke-virtual {p0}, Lcom/alensw/PicFolder/QuickApp;->e()I

    move-result v0

    invoke-static {p0, v0}, Lcom/alensw/b/f/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-direct {p0}, Lcom/alensw/PicFolder/QuickApp;->f()I

    move-result v2

    sput v2, Lcom/alensw/PicFolder/QuickApp;->j:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_f

    :try_start_1
    invoke-direct {p0}, Lcom/alensw/PicFolder/QuickApp;->g()Z

    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_g

    :try_start_2
    invoke-direct {p0}, Lcom/alensw/PicFolder/QuickApp;->h()V

    const-string v2, "QuickApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", heap="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/alensw/b/h/b;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", core="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/alensw/b/k/a;->c:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", ch="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_h

    goto :goto_0

    :catch_f
    move-exception v0

    const-string v1, "QuickApp"

    const-string v2, "init channel: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_g
    move-exception v0

    const-string v1, "QuickApp"

    const-string v2, "init services: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_h
    move-exception v0

    const-string v1, "QuickApp"

    const-string v2, "init prefs: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    :try_start_vc
    const-class v0, Landroid/view/ViewConfiguration;

    const-string v1, "sHasPermanentMenuKey"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_vc
    .catch Ljava/lang/Exception; {:try_start_vc .. :try_end_vc} :catch_vc

    :cond_0
    :goto_1
    new-instance v0, Lcom/alensw/PicFolder/ba;

    invoke-direct {v0, p0}, Lcom/alensw/PicFolder/ba;-><init>(Lcom/alensw/PicFolder/QuickApp;)V

    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/QuickApp;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    return-void

    :catch_vc
    move-exception v0

    goto :goto_1
.end method

.method public static ensureServices()V
    .locals 4

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->B:Lcom/alensw/PicFolder/QuickApp;

    if-nez v0, :try_init

    return-void

    :try_init
    :try_start_0
    invoke-direct {v0}, Lcom/alensw/PicFolder/QuickApp;->g()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :ensure_caches

    :catch_0
    move-exception v1

    const-string v2, "QuickApp"

    const-string v3, "ensureServices: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :ensure_caches
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->B:Lcom/alensw/PicFolder/QuickApp;

    invoke-static {v0}, Lcom/alensw/PicFolder/QuickApp;->ensureBitmapCaches(Lcom/alensw/PicFolder/QuickApp;)V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    if-nez v0, :check_s

    new-instance v0, Lcom/alensw/a/x;

    invoke-direct {v0}, Lcom/alensw/a/x;-><init>()V

    sput-object v0, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    :check_s
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    if-nez v0, :check_r

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->B:Lcom/alensw/PicFolder/QuickApp;

    :try_start_1
    new-instance v1, Lcom/alensw/a/ba;

    invoke-direct {v1, v0}, Lcom/alensw/a/ba;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    if-nez v0, :check_r

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->B:Lcom/alensw/PicFolder/QuickApp;

    :try_start_2
    new-instance v1, Lcom/alensw/a/s;

    invoke-direct {v1, v0}, Lcom/alensw/a/s;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :check_r
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    if-nez v0, :check_t

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->B:Lcom/alensw/PicFolder/QuickApp;

    :try_start_3
    new-instance v1, Lcom/alensw/a/bc;

    invoke-direct {v1, v0}, Lcom/alensw/a/bc;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->B:Lcom/alensw/PicFolder/QuickApp;

    invoke-static {v0}, Lcom/alensw/PicFolder/QuickApp;->ensureBitmapCaches(Lcom/alensw/PicFolder/QuickApp;)V

    :check_t
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->t:Lcom/alensw/a/ah;

    if-nez v0, :done

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->B:Lcom/alensw/PicFolder/QuickApp;

    :try_start_4
    new-instance v1, Lcom/alensw/a/ah;

    invoke-direct {v1, v0}, Lcom/alensw/a/ah;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alensw/PicFolder/QuickApp;->t:Lcom/alensw/a/ah;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :done
    return-void
.end method

.method public static ensureBitmapCaches(Lcom/alensw/PicFolder/QuickApp;)V
    .locals 4

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->v:Lcom/alensw/b/a/a;

    if-nez v0, :check_w_entry

    goto :create_caches

    :check_w_entry
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->w:Lcom/alensw/b/a/a;

    if-nez v0, :done

    :create_caches
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    if-nez v0, :has_r

    :try_start_bc
    new-instance v0, Lcom/alensw/a/bc;

    invoke-direct {v0, p0}, Lcom/alensw/a/bc;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;
    :try_end_bc
    .catch Ljava/lang/Throwable; {:try_start_bc .. :try_end_bc} :catch_bc

    :catch_bc
    :has_r
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    if-nez v0, :has_r_dim

    const/16 v0, 0xc0

    goto :got_dim

    :has_r_dim
    iget v0, v0, Lcom/alensw/a/bc;->c:I

    :got_dim

    div-int/lit8 v1, v0, 0x2

    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->v:Lcom/alensw/b/a/a;

    if-nez v2, :check_w_cache

    new-instance v2, Lcom/alensw/PicFolder/bc;

    invoke-direct {v2, p0, v1}, Lcom/alensw/PicFolder/bc;-><init>(Lcom/alensw/PicFolder/QuickApp;I)V

    sput-object v2, Lcom/alensw/PicFolder/QuickApp;->v:Lcom/alensw/b/a/a;

    :check_w_cache
    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->w:Lcom/alensw/b/a/a;

    if-nez v2, :done

    new-instance v2, Lcom/alensw/PicFolder/bd;

    invoke-direct {v2, p0, v0}, Lcom/alensw/PicFolder/bd;-><init>(Lcom/alensw/PicFolder/QuickApp;I)V

    sput-object v2, Lcom/alensw/PicFolder/QuickApp;->w:Lcom/alensw/b/a/a;

    :done
    return-void
.end method
