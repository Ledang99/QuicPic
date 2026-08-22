.class public Lcom/alensw/ui/view/bc;
.super Landroid/widget/BaseAdapter;
.source "bc.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:[[I


# instance fields
.field public c:I

.field private final d:Lcom/alensw/PicFolder/GalleryActivity;

.field private final e:Landroid/widget/ListView;

.field private final f:I

.field private final g:I

.field private final h:Landroid/graphics/drawable/Drawable;

.field private final i:Lcom/alensw/bean/CommonRoot;

.field private final j:Lcom/alensw/bean/CommonRoot;

.field private final k:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alensw/cloud/z;->o:Lcom/alensw/cloud/z;

    invoke-virtual {v1}, Lcom/alensw/cloud/z;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alensw/ui/view/bc;->a:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    sput-object v0, Lcom/alensw/ui/view/bc;->b:[[I

    return-void

    :array_0
    .array-data 4
        0x7f090067
        0x7f050006
        0x7f0a001d
    .end array-data

    :array_1
    .array-data 4
        0x7f090056
        0x7f05002c
        0x7f0a00c8
    .end array-data

    :array_2
    .array-data 4
        0x7f090057
        0x7f05002b
        0x7f0a0072
    .end array-data
.end method

.method public constructor <init>(Lcom/alensw/PicFolder/GalleryActivity;Landroid/widget/ListView;)V
    .locals 5

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alensw/ui/view/bc;->c:I

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/view/bc;->k:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/alensw/ui/view/bc;->d:Lcom/alensw/PicFolder/GalleryActivity;

    iput-object p2, p0, Lcom/alensw/ui/view/bc;->e:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->d:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1010038

    invoke-static {p1, v1}, Lcom/alensw/ui/activity/ao;->b(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/alensw/ui/view/bc;->f:I

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/alensw/ui/view/bc;->g:I

    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alensw/ui/view/bc;->h:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/alensw/bean/CommonRoot;

    const v2, 0x7f0a00ba

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "*/*"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/alensw/bean/CommonRoot;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/alensw/ui/view/bc;->i:Lcom/alensw/bean/CommonRoot;

    iget-object v1, p0, Lcom/alensw/ui/view/bc;->i:Lcom/alensw/bean/CommonRoot;

    const v2, 0x7f050022

    iput v2, v1, Lcom/alensw/bean/CommonRoot;->l:I

    iget-object v1, p0, Lcom/alensw/ui/view/bc;->i:Lcom/alensw/bean/CommonRoot;

    const-string v2, "folders"

    iput-object v2, v1, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    new-instance v1, Lcom/alensw/bean/MediaStoreRoot;

    const v2, 0x7f0a00bb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "*/*"

    invoke-direct {v1, v0, v2}, Lcom/alensw/bean/MediaStoreRoot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alensw/ui/view/bc;->j:Lcom/alensw/bean/CommonRoot;

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->j:Lcom/alensw/bean/CommonRoot;

    const v1, 0x7f050025

    iput v1, v0, Lcom/alensw/bean/CommonRoot;->l:I

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->j:Lcom/alensw/bean/CommonRoot;

    const-string v1, "moments"

    iput-object v1, v0, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alensw/ui/view/bc;)Lcom/alensw/PicFolder/GalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->d:Lcom/alensw/PicFolder/GalleryActivity;

    return-object v0
.end method

.method public static a(Lcom/alensw/bean/CommonRoot;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alensw/bean/CommonRoot;->k:Lcom/alensw/cloud/z;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/alensw/bean/CommonRoot;->k:Lcom/alensw/cloud/z;

    invoke-virtual {v0}, Lcom/alensw/cloud/z;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/alensw/bean/CommonRoot;->l:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "AddCloud"

    goto :goto_0

    :sswitch_1
    const-string v0, "Transfer"

    goto :goto_0

    :sswitch_2
    const-string v0, "CloudBackup"

    goto :goto_0

    :sswitch_3
    const-string v0, "Settings"

    goto :goto_0

    :sswitch_4
    const-string v0, "Gallery"

    goto :goto_0

    :sswitch_5
    const-string v0, "Moments"

    goto :goto_0

    :sswitch_6
    const-string v0, "Discovery"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f05001e -> :sswitch_2
        0x7f05001f -> :sswitch_6
        0x7f050022 -> :sswitch_4
        0x7f050025 -> :sswitch_5
        0x7f05002b -> :sswitch_3
        0x7f05002c -> :sswitch_1
        0x7f05002f -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lcom/alensw/ui/view/bc;Lcom/alensw/bean/CommonRoot;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/ui/view/bc;->b(Lcom/alensw/bean/CommonRoot;)V

    return-void
.end method

.method static synthetic b(Lcom/alensw/ui/view/bc;)I
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/bc;->f:I

    return v0
.end method

.method private b(Lcom/alensw/bean/CommonRoot;)V
    .locals 4

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/alensw/ui/view/bh;

    invoke-direct {v2, p0}, Lcom/alensw/ui/view/bh;-><init>(Lcom/alensw/ui/view/bc;)V

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/alensw/ui/view/bc;->d:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-virtual {p1}, Lcom/alensw/bean/CommonRoot;->k()Lcom/alensw/bean/CommonFolder;

    move-result-object v2

    iget-object v3, p1, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/alensw/cloud/CloudConfigActivity;->a(Landroid/content/Context;Lcom/alensw/bean/CommonFolder;Ljava/lang/String;Landroid/os/Messenger;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/view/bc;->d:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-virtual {v1, v0}, Lcom/alensw/PicFolder/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "folders"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "moments"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alensw/ui/view/bc;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alensw/ui/view/bc;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/alensw/ui/view/bc;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->e:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/alensw/bean/CommonRoot;
    .locals 1

    const-string v0, "moments"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/alensw/ui/view/bc;->c:I

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->j:Lcom/alensw/bean/CommonRoot;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/ui/view/bc;->c:I

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->i:Lcom/alensw/bean/CommonRoot;

    goto :goto_0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/bc;->a(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alensw/ui/view/bc;->b(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/bc;->c:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/alensw/ui/view/bc;->c:I

    invoke-virtual {p0}, Lcom/alensw/ui/view/bc;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a(Lcom/alensw/cloud/z;I)V
    .locals 4

    if-eqz p2, :cond_0

    new-instance v0, Lcom/alensw/ui/view/bk;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alensw/ui/view/bk;-><init>(Lcom/alensw/ui/view/bc;Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/alensw/ui/view/bc;->d:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-static {v1, v0, p1}, Lcom/alensw/cloud/oauth/e;->a(Landroid/app/Activity;Landroid/os/Handler;Lcom/alensw/cloud/z;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alensw/cloud/oauth/a;

    invoke-direct {v0}, Lcom/alensw/cloud/oauth/a;-><init>()V

    iput-object p1, v0, Lcom/alensw/cloud/oauth/a;->a:Lcom/alensw/cloud/z;

    const-string v1, ""

    iput-object v1, v0, Lcom/alensw/cloud/oauth/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/alensw/cloud/oauth/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alensw/cloud/oauth/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.alensw.PicFolder.CloudProvider"

    invoke-static {v2, v1}, Lcom/alensw/b/j/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/ui/view/bc;->d:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-virtual {v3}, Lcom/alensw/PicFolder/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alensw/cloud/oauth/a;->b()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/alensw/ui/view/bc;->b(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->i:Lcom/alensw/bean/CommonRoot;

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->j:Lcom/alensw/bean/CommonRoot;

    invoke-virtual {p1, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v2, Lcom/alensw/ui/view/bc;->b:[[I

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    new-instance v5, Lcom/alensw/bean/CommonRoot;

    iget-object v6, p0, Lcom/alensw/ui/view/bc;->d:Lcom/alensw/PicFolder/GalleryActivity;

    const/4 v7, 0x2

    aget v7, v4, v7

    invoke-virtual {v6, v7}, Lcom/alensw/PicFolder/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v1}, Lcom/alensw/bean/CommonRoot;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aget v4, v4, v8

    iput v4, v5, Lcom/alensw/bean/CommonRoot;->l:I

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p3}, Lcom/alensw/ui/view/bc;->c(I)Lcom/alensw/bean/CommonRoot;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    iget-object v0, v2, Lcom/alensw/bean/CommonRoot;->k:Lcom/alensw/cloud/z;

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/alensw/bean/CommonRoot;->k:Lcom/alensw/cloud/z;

    iget v1, v2, Lcom/alensw/bean/CommonRoot;->m:I

    invoke-virtual {p0, v0, v1}, Lcom/alensw/ui/view/bc;->a(Lcom/alensw/cloud/z;I)V

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/alensw/ui/view/bc;->b:[[I

    array-length v5, v4

    move v0, v3

    :goto_1
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    iget v7, v2, Lcom/alensw/bean/CommonRoot;->l:I

    aget v8, v6, v9

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/alensw/ui/view/bc;->d:Lcom/alensw/PicFolder/GalleryActivity;

    new-instance v0, Lcom/alensw/b/g/l;

    iget-object v2, p0, Lcom/alensw/ui/view/bc;->d:Lcom/alensw/PicFolder/GalleryActivity;

    aget v4, v6, v3

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/alensw/b/g/l;-><init>(Lcom/alensw/b/g/b;Landroid/content/Context;IILjava/lang/CharSequence;)V

    invoke-virtual {v7, v0}, Lcom/alensw/PicFolder/GalleryActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alensw/ui/view/bc;->a()V

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonRoot;

    iget-object v4, v0, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/view/bc;->e:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alensw/ui/view/bc;->e:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Lcom/alensw/ui/view/bc;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    if-eqz p2, :cond_0

    invoke-direct {p0, v0}, Lcom/alensw/ui/view/bc;->b(Lcom/alensw/bean/CommonRoot;)V

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->d:Lcom/alensw/PicFolder/GalleryActivity;

    const/4 v1, 0x0

    new-instance v2, Lcom/alensw/ui/view/bj;

    invoke-direct {v2, p0}, Lcom/alensw/ui/view/bj;-><init>(Lcom/alensw/ui/view/bc;)V

    invoke-static {v0, v1, v2}, Lcom/alensw/cloud/e;->a(Landroid/content/Context;[ILcom/alensw/cloud/y;)V

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 7

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->d:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->d:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v6, Lcom/alensw/ui/a/ao;->d:Lcom/alensw/b/k/a;

    new-instance v0, Lcom/alensw/ui/view/bf;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alensw/ui/view/bf;-><init>(Lcom/alensw/ui/view/bc;Landroid/content/ContentResolver;Landroid/content/res/Resources;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Lcom/alensw/b/k/a;->a(Lcom/alensw/b/k/k;)Lcom/alensw/b/k/d;

    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->d:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "five00px_removed"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->d:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/alensw/cloud/z;->p:Lcom/alensw/cloud/z;

    invoke-static {v1}, Lcom/alensw/cloud/e;->a(Lcom/alensw/cloud/z;)Lcom/alensw/cloud/x;

    move-result-object v1

    new-instance v2, Lcom/alensw/bean/CommonRoot;

    iget v3, v1, Lcom/alensw/cloud/x;->c:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/alensw/bean/CommonRoot;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, v1, Lcom/alensw/cloud/x;->a:Lcom/alensw/cloud/z;

    iput-object v3, v2, Lcom/alensw/bean/CommonRoot;->k:Lcom/alensw/cloud/z;

    iget v3, v1, Lcom/alensw/cloud/x;->e:I

    iput v3, v2, Lcom/alensw/bean/CommonRoot;->m:I

    iget v1, v1, Lcom/alensw/cloud/x;->b:I

    iput v1, v2, Lcom/alensw/bean/CommonRoot;->l:I

    iget v1, v2, Lcom/alensw/bean/CommonRoot;->l:I

    if-eqz v1, :cond_0

    iget v1, v2, Lcom/alensw/bean/CommonRoot;->l:I

    iget v3, p0, Lcom/alensw/ui/view/bc;->f:I

    invoke-static {v0, v1, v3}, Lcom/alensw/b/l/b;->a(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Lcom/alensw/bean/CommonRoot;->p:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public b(I)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/alensw/ui/view/bc;->c(I)Lcom/alensw/bean/CommonRoot;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v1, v0, Lcom/alensw/bean/CommonRoot;->k:Lcom/alensw/cloud/z;

    sget-object v2, Lcom/alensw/cloud/z;->p:Lcom/alensw/cloud/z;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/view/bc;->d:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "five00px_removed"

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    invoke-virtual {v0}, Lcom/alensw/bean/CommonRoot;->i()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alensw/b/j/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Lcom/alensw/cloud/aa;

    iget-object v1, p0, Lcom/alensw/ui/view/bc;->d:Lcom/alensw/PicFolder/GalleryActivity;

    iget-object v0, v0, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    invoke-direct {v6, v1, v0}, Lcom/alensw/cloud/aa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/alensw/ui/view/bl;

    iget-object v2, p0, Lcom/alensw/ui/view/bc;->d:Lcom/alensw/PicFolder/GalleryActivity;

    iget-object v1, p0, Lcom/alensw/ui/view/bc;->d:Lcom/alensw/PicFolder/GalleryActivity;

    const v3, 0x7f0a002d

    invoke-virtual {v1, v3}, Lcom/alensw/PicFolder/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/alensw/ui/view/bl;-><init>(Lcom/alensw/ui/view/bc;Landroid/app/Activity;Ljava/lang/String;ILandroid/net/Uri;Lcom/alensw/cloud/aa;I)V

    invoke-virtual {v0}, Lcom/alensw/ui/view/bl;->c()V

    move v4, v8

    goto :goto_0
.end method

.method public b(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p3}, Lcom/alensw/ui/view/bc;->c(I)Lcom/alensw/bean/CommonRoot;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/alensw/bean/CommonRoot;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/j/a;->d(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/alensw/ui/view/bi;

    invoke-direct {v3, p0, p3}, Lcom/alensw/ui/view/bi;-><init>(Lcom/alensw/ui/view/bc;I)V

    new-instance v4, Lcom/alensw/b/g/b;

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->d:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-direct {v4, v0}, Lcom/alensw/b/g/b;-><init>(Landroid/content/Context;)V

    const v0, 0x7f090002

    const v5, 0x7f0a0044

    invoke-virtual {v4, v2, v0, v2, v5}, Lcom/alensw/b/g/b;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/g/l;

    invoke-virtual {v0, v3}, Lcom/alensw/b/g/l;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const v0, 0x7f09004e

    const v5, 0x7f0a002d

    invoke-virtual {v4, v2, v0, v2, v5}, Lcom/alensw/b/g/b;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/g/l;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/alensw/b/g/l;->a(I)Lcom/alensw/b/g/l;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alensw/b/g/l;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-virtual {v4, p2}, Lcom/alensw/b/g/b;->a(Landroid/view/View;)V

    move v0, v1

    goto :goto_0
.end method

.method public c(I)Lcom/alensw/bean/CommonRoot;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonRoot;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/bc;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/alensw/ui/view/bc;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonRoot;

    if-nez p2, :cond_3

    new-instance v2, Lcom/alensw/ui/view/bm;

    invoke-direct {v2, p0, v4}, Lcom/alensw/ui/view/bm;-><init>(Lcom/alensw/ui/view/bc;Lcom/alensw/ui/view/bd;)V

    iget-object v1, p0, Lcom/alensw/ui/view/bc;->d:Lcom/alensw/PicFolder/GalleryActivity;

    const v5, 0x7f030007

    invoke-static {v1, v5, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f09000f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/alensw/ui/view/bm;->a:Landroid/widget/TextView;

    const v1, 0x7f090010

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/alensw/ui/view/bm;->b:Landroid/widget/TextView;

    const v1, 0x7f09000e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/alensw/ui/view/bm;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    iget-object v2, v1, Lcom/alensw/ui/view/bm;->d:Lcom/alensw/bean/CommonRoot;

    if-eq v2, v0, :cond_1

    iput-object v0, v1, Lcom/alensw/ui/view/bm;->d:Lcom/alensw/bean/CommonRoot;

    iget-object v2, v1, Lcom/alensw/ui/view/bm;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonRoot;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/alensw/bean/CommonRoot;->o:Ljava/lang/String;

    iget-object v5, v1, Lcom/alensw/ui/view/bm;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v1, Lcom/alensw/ui/view/bm;->b:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lcom/alensw/bean/CommonRoot;->p:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/view/bc;->d:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-virtual {v2}, Lcom/alensw/PicFolder/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v5, v0, Lcom/alensw/bean/CommonRoot;->l:I

    iget v6, p0, Lcom/alensw/ui/view/bc;->f:I

    invoke-static {v2, v5, v6}, Lcom/alensw/b/l/b;->a(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/alensw/bean/CommonRoot;->p:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v2, v1, Lcom/alensw/ui/view/bm;->c:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/alensw/bean/CommonRoot;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v2, v1, Lcom/alensw/ui/view/bm;->c:Landroid/widget/ImageView;

    iget v1, p0, Lcom/alensw/ui/view/bc;->c:I

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/alensw/ui/view/bc;->h:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v0, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_2

    iget v3, p0, Lcom/alensw/ui/view/bc;->g:I

    :cond_2
    invoke-virtual {p2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    return-object p2

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alensw/ui/view/bm;

    goto :goto_0

    :cond_4
    const/16 v2, 0x8

    goto :goto_1

    :cond_5
    move-object v1, v4

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_3
.end method
