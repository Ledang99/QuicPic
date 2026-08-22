.class public Lcom/alensw/PicFolder/GalleryActivity;
.super Lcom/alensw/ui/c/cx;
.source "GalleryActivity.java"


# static fields
.field public static appContext:Landroid/content/Context;


# instance fields
.field private e:Landroid/support/v4/widget/DrawerLayout;

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/widget/ListView;

.field private h:Landroid/support/a/a/a;

.field private i:Lcom/alensw/ui/view/bc;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/alensw/PicFolder/GalleryActivity;->appContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/ui/c/cx;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/alensw/PicFolder/GalleryActivity;)Lcom/alensw/ui/view/bc;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->i:Lcom/alensw/ui/view/bc;

    return-object v0
.end method

.method static synthetic b(Lcom/alensw/PicFolder/GalleryActivity;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->e:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/alensw/PicFolder/GalleryActivity;)Landroid/support/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->h:Landroid/support/a/a/a;

    return-object v0
.end method

.method private c(Landroid/view/ViewGroup;)V
    .locals 7

    const/high16 v5, 0x7f0a0000

    const v0, 0x7f090017

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->e:Landroid/support/v4/widget/DrawerLayout;

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->e:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->f:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->f:Landroid/view/ViewGroup;

    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->g:Landroid/widget/ListView;

    new-instance v0, Lcom/alensw/PicFolder/ag;

    iget-object v3, p0, Lcom/alensw/PicFolder/GalleryActivity;->e:Landroid/support/v4/widget/DrawerLayout;

    iget v1, p0, Lcom/alensw/PicFolder/GalleryActivity;->X:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p0

    move-object v2, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/alensw/PicFolder/ag;-><init>(Lcom/alensw/PicFolder/GalleryActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Ljava/lang/Object;II)V

    iput-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->h:Landroid/support/a/a/a;

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->e:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/alensw/PicFolder/GalleryActivity;->h:Landroid/support/a/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/d;)V

    iget v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->T:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->e:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p0}, Lcom/alensw/PicFolder/GalleryActivity;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setScrimColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->f:Landroid/view/ViewGroup;

    new-instance v1, Lcom/alensw/PicFolder/ah;

    invoke-direct {v1, p0}, Lcom/alensw/PicFolder/ah;-><init>(Lcom/alensw/PicFolder/GalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/alensw/ui/view/bc;

    iget-object v1, p0, Lcom/alensw/PicFolder/GalleryActivity;->g:Landroid/widget/ListView;

    invoke-direct {v0, p0, v1}, Lcom/alensw/ui/view/bc;-><init>(Lcom/alensw/PicFolder/GalleryActivity;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->i:Lcom/alensw/ui/view/bc;

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alensw/PicFolder/GalleryActivity;->i:Lcom/alensw/ui/view/bc;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/alensw/PicFolder/GalleryActivity;->g:Landroid/widget/ListView;

    iget v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->T:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setClipToPadding(Z)V

    iget v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->T:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->g:Landroid/widget/ListView;

    iget v1, p0, Lcom/alensw/PicFolder/GalleryActivity;->U:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/alensw/PicFolder/ai;

    invoke-direct {v1, p0}, Lcom/alensw/PicFolder/ai;-><init>(Lcom/alensw/PicFolder/GalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/alensw/PicFolder/ak;

    invoke-direct {v1, p0}, Lcom/alensw/PicFolder/ak;-><init>(Lcom/alensw/PicFolder/GalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/alensw/PicFolder/GalleryActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/alensw/PicFolder/GalleryActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/alensw/PicFolder/GalleryActivity;->e()V

    return-void
.end method

.method private onCreate__$appendPatch(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    const-string v0, "create data folder"

    const-string v1, "creating"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/alensw/PicFolder/GalleryActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-string v2, "success"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onCreate__$appendPatch2(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    const-string v0, "sqlitedatabase"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/alensw/PicFolder/GalleryActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-string v2, "finished"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onCreate__$appendPatch3(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/alensw/PicFolder/GalleryActivity;->getCurrentChannel()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "beta"

    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/GalleryActivity;->writeUpdateChannelPreference(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alensw/PicFolder/GalleryActivity;->writeUpdatesOnStartup(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/PicFolder/GalleryActivity;->getStartupUpdates()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alensw/updater/UpdaterAssistant;

    invoke-direct {v0, p0, v1}, Lcom/alensw/updater/UpdaterAssistant;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/alensw/updater/UpdaterAssistant;->checkForUpdates()V

    :cond_1
    return-void
.end method

.method private onCreate__$appendPatch4(Landroid/os/Bundle;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package:com.alensw.PicFolder"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alensw/PicFolder/GalleryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private onCreate__$appendPatch5(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method private onCreate__$appendPatch6(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "DXP"

    const-string v1, "It works!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onCreate__$appendPatch7(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 31
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 32
    .local v0, "builder":Landroid/os/StrictMode$VmPolicy$Builder;
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 35
    return-void
.end method

.method private onCreate__$appendSource(Landroid/os/Bundle;)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lcom/alensw/ui/c/cx;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/alensw/PicFolder/GalleryActivity;->b(Landroid/content/Intent;)I

    move-result v0

    iput v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->j:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->i:Lcom/alensw/ui/view/bc;

    const-string v2, "current_root"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/alensw/ui/view/bc;->c:I

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/PicFolder/GalleryActivity;->d()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_4

    move v2, v1

    :goto_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    if-eqz v2, :cond_e

    const-string v5, "open_last_folder"

    invoke-interface {v6, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "last_folder"

    invoke-interface {v6, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    move-object v5, v0

    :goto_2
    new-instance v7, Lcom/alensw/PicFolder/ab;

    invoke-direct {v7, p0}, Lcom/alensw/PicFolder/ab;-><init>(Lcom/alensw/PicFolder/GalleryActivity;)V

    iget v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->j:I

    if-eqz v0, :cond_6

    const-class v0, Lcom/alensw/ui/c/bz;

    invoke-virtual {p0, v0, v3, v8}, Lcom/alensw/PicFolder/GalleryActivity;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;

    if-nez v5, :cond_3

    iget v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->j:I

    if-ne v0, v1, :cond_5

    sget-object v5, Lcom/alensw/ui/activity/p;->D:Landroid/net/Uri;

    :cond_3
    :goto_3
    if-eqz v5, :cond_1

    const-string v0, "file"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/alensw/ui/c/bf;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5, v3}, Lcom/alensw/PicFolder/GalleryActivity;->a(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v8}, Lcom/alensw/PicFolder/GalleryActivity;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    sget-object v5, Lcom/alensw/ui/activity/p;->E:Landroid/net/Uri;

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_b

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    invoke-virtual {v0, v5}, Lcom/alensw/a/ba;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v4

    new-instance v0, Lcom/alensw/PicFolder/ac;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alensw/PicFolder/ac;-><init>(Lcom/alensw/PicFolder/GalleryActivity;ZLandroid/content/Intent;ZLjava/io/File;)V

    invoke-static {v6}, Lcom/alensw/b/l/b;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "protect_hidden"

    invoke-static {p0, v1, v0, v7}, Lcom/alensw/ui/a/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_7
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_8
    invoke-static {v5}, Lcom/alensw/b/j/a;->d(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v5}, Lcom/alensw/bean/UriFile;->a(Landroid/net/Uri;)Lcom/alensw/bean/CommonFile;

    move-result-object v1

    instance-of v0, v1, Lcom/alensw/bean/DocumentFile;

    if-eqz v0, :cond_1

    const-string v0, "vnd.android.document/directory"

    invoke-virtual {v1}, Lcom/alensw/bean/CommonFile;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/alensw/bean/DocumentFolder;

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/alensw/bean/DocumentFile;

    invoke-virtual {v0}, Lcom/alensw/bean/DocumentFile;->k()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v3, v0}, Lcom/alensw/bean/DocumentFolder;-><init>(Lcom/alensw/bean/CommonFile;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v4, v8}, Lcom/alensw/ui/c/z;->a(Lcom/alensw/bean/CommonFolder;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/alensw/PicFolder/ad;

    invoke-direct {v1, p0, v0}, Lcom/alensw/PicFolder/ad;-><init>(Lcom/alensw/PicFolder/GalleryActivity;Landroid/content/Intent;)V

    invoke-static {v5}, Lcom/alensw/b/j/a;->c(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "protect_cloud"

    invoke-static {p0, v0, v1, v7}, Lcom/alensw/ui/a/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_9
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_a
    const-class v0, Lcom/alensw/ui/c/dp;

    invoke-virtual {p0, v0, v3, v8}, Lcom/alensw/PicFolder/GalleryActivity;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;

    goto/16 :goto_0

    :cond_b
    const-string v0, "QuickPic.folder"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "QuickPic.folder"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFolder;

    if-eqz v0, :cond_1

    const-class v2, Lcom/alensw/ui/c/z;

    invoke-static {v0, v1, v8}, Lcom/alensw/ui/c/z;->a(Lcom/alensw/bean/CommonFolder;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v2, v0, v8}, Lcom/alensw/PicFolder/GalleryActivity;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;

    goto/16 :goto_0

    :cond_c
    const-string v0, "last_drive"

    const-string v2, ""

    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/PicFolder/GalleryActivity;->i:Lcom/alensw/ui/view/bc;

    invoke-virtual {v2, v0}, Lcom/alensw/ui/view/bc;->a(Ljava/lang/String;)Lcom/alensw/bean/CommonRoot;

    move-result-object v0

    const-string v2, "folders"

    iget-object v3, v0, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-class v0, Lcom/alensw/ui/c/bz;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1, v8}, Lcom/alensw/PicFolder/GalleryActivity;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;

    :goto_4
    const-string v0, "zh"

    invoke-virtual {p0}, Lcom/alensw/PicFolder/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, v6}, Lcom/alensw/ui/a/a;->a(Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    goto/16 :goto_0

    :cond_d
    const-class v2, Lcom/alensw/ui/c/z;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonRoot;->k()Lcom/alensw/bean/CommonFolder;

    move-result-object v3

    iget-object v0, v0, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lcom/alensw/ui/c/z;->a(Lcom/alensw/bean/CommonFolder;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v2, v0, v8}, Lcom/alensw/PicFolder/GalleryActivity;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;

    goto :goto_4

    :cond_e
    move-object v5, v0

    goto/16 :goto_2
.end method

.method private onCreate__$appendSource2(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/alensw/PicFolder/GalleryActivity;->onCreate__$appendSource(Landroid/os/Bundle;)V

    invoke-direct/range {p0 .. p1}, Lcom/alensw/PicFolder/GalleryActivity;->onCreate__$appendPatch(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/GalleryActivity;->isStoragePermissionGranted()Z

    return-void
.end method

.method private onCreate__$appendSource3(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/alensw/PicFolder/GalleryActivity;->onCreate__$appendSource2(Landroid/os/Bundle;)V

    invoke-direct/range {p0 .. p1}, Lcom/alensw/PicFolder/GalleryActivity;->onCreate__$appendPatch2(Landroid/os/Bundle;)V

    return-void
.end method

.method private onCreate__$appendSource4(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct/range {p0 .. p1}, Lcom/alensw/PicFolder/GalleryActivity;->onCreate__$appendSource3(Landroid/os/Bundle;)V

    invoke-direct/range {p0 .. p1}, Lcom/alensw/PicFolder/GalleryActivity;->onCreate__$appendPatch3(Landroid/os/Bundle;)V

    return-void
.end method

.method private onCreate__$appendSource5(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct/range {p0 .. p1}, Lcom/alensw/PicFolder/GalleryActivity;->onCreate__$appendSource4(Landroid/os/Bundle;)V

    invoke-direct/range {p0 .. p1}, Lcom/alensw/PicFolder/GalleryActivity;->onCreate__$appendPatch4(Landroid/os/Bundle;)V

    return-void
.end method

.method private onCreate__$appendSource6(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct/range {p0 .. p1}, Lcom/alensw/PicFolder/GalleryActivity;->onCreate__$appendSource5(Landroid/os/Bundle;)V

    invoke-direct/range {p0 .. p1}, Lcom/alensw/PicFolder/GalleryActivity;->onCreate__$appendPatch5(Landroid/os/Bundle;)V

    return-void
.end method

.method private onCreate__$appendSource7(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct/range {p0 .. p1}, Lcom/alensw/PicFolder/GalleryActivity;->onCreate__$appendSource6(Landroid/os/Bundle;)V

    invoke-direct/range {p0 .. p1}, Lcom/alensw/PicFolder/GalleryActivity;->onCreate__$appendPatch6(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alensw/ui/c/cx;->a(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MenuItem;I)V
    .locals 1

    sget-boolean v0, Lcom/alensw/PicFolder/QuickApp;->e:Z

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alensw/ui/c/cx;->a(Landroid/view/MenuItem;I)V

    return-void
.end method

.method protected a(Lcom/alensw/ui/c/cu;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/alensw/ui/c/cx;->a(Lcom/alensw/ui/c/cu;)V

    invoke-virtual {p0, v1}, Lcom/alensw/PicFolder/GalleryActivity;->g(Z)V

    invoke-virtual {p0, v1}, Lcom/alensw/PicFolder/GalleryActivity;->h(Z)V

    iget v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->j:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->h:Landroid/support/a/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->h:Landroid/support/a/a/a;

    invoke-virtual {v0}, Landroid/support/a/a/a;->b()Z

    move-result v3

    invoke-virtual {p0}, Lcom/alensw/PicFolder/GalleryActivity;->d()I

    move-result v0

    if-gt v0, v1, :cond_2

    instance-of v0, p1, Lcom/alensw/ui/c/dp;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/alensw/PicFolder/GalleryActivity;->h:Landroid/support/a/a/a;

    invoke-virtual {v4, v0}, Landroid/support/a/a/a;->a(Z)V

    if-eq v0, v3, :cond_1

    iget v3, p0, Lcom/alensw/PicFolder/GalleryActivity;->a:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    new-instance v4, Lcom/alensw/PicFolder/af;

    iget-object v5, p0, Lcom/alensw/PicFolder/GalleryActivity;->I:Landroid/view/View;

    if-nez v0, :cond_3

    move v3, v1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/alensw/PicFolder/GalleryActivity;->j(Z)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-direct {v4, p0, v5, v3, v0}, Lcom/alensw/PicFolder/af;-><init>(Lcom/alensw/PicFolder/GalleryActivity;Landroid/view/View;Landroid/view/animation/Interpolator;Z)V

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/alensw/PicFolder/GalleryActivity;->b(Z)J

    move-result-wide v2

    const-wide/16 v6, 0x12c

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v4, v2, v3, v1}, Lcom/alensw/PicFolder/af;->a(JZ)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1
.end method

.method public a(Z)V
    .locals 3

    iget v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->j:I

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/alensw/PicFolder/GalleryActivity;->e:Landroid/support/v4/widget/DrawerLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/widget/DrawerLayout;->a(II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/alensw/ui/c/cx;->a(Z)V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected a_()Landroid/view/ViewGroup;
    .locals 2

    const v0, 0x7f03000a

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/GalleryActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/alensw/PicFolder/GalleryActivity;->c(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public b()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->A:Landroid/os/Handler;

    return-object v0
.end method

.method public getCurrentChannel()Ljava/lang/String;
    .locals 3

    const-string v0, "com.alensw.PicFolder_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alensw/PicFolder/GalleryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "channel"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStartupUpdates()Z
    .locals 3

    const-string v0, "com.alensw.PicFolder_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alensw/PicFolder/GalleryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "updates_on_startup"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isStoragePermissionGranted()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_legacy

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/GalleryActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_granted

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    aput-object v1, v0, v3

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    aput-object v1, v0, v4

    invoke-static {p0, v0, v4}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v3

    :cond_granted
    return v4

    :cond_legacy
    const/16 v1, 0x17

    if-lt v0, v1, :cond_old_ok

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/GalleryActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_request_legacy

    return v4

    :cond_request_legacy
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    invoke-static {p0, v0, v4}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v3

    :cond_old_ok
    return v4
.end method

.method public onBackPressed()V
    .locals 2

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->e:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->e:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->d(I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/alensw/ui/c/cx;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alensw/ui/c/cx;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->h:Landroid/support/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->h:Landroid/support/a/a/a;

    invoke-virtual {v0, p1}, Landroid/support/a/a/a;->a(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-direct/range {p0 .. p1}, Lcom/alensw/PicFolder/GalleryActivity;->onCreate__$appendSource7(Landroid/os/Bundle;)V

    invoke-direct/range {p0 .. p1}, Lcom/alensw/PicFolder/GalleryActivity;->onCreate__$appendPatch7(Landroid/os/Bundle;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v2, 0x3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alensw/PicFolder/GalleryActivity;->h:Landroid/support/a/a/a;

    invoke-virtual {v1, p1}, Landroid/support/a/a/a;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alensw/PicFolder/GalleryActivity;->e:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->e(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alensw/PicFolder/GalleryActivity;->e:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->d(I)V

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/alensw/ui/c/cx;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/alensw/PicFolder/GalleryActivity;->i:Lcom/alensw/ui/view/bc;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/PicFolder/GalleryActivity;->i:Lcom/alensw/ui/view/bc;

    invoke-virtual {v1}, Lcom/alensw/ui/view/bc;->b()V

    goto :goto_0

    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alensw/cloud/sync/SyncSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/GalleryActivity;->f()[Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_4

    array-length v1, v3

    if-lez v1, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_3

    aget-object v6, v3, v1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_4
    const/high16 v1, 0x4000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/alensw/transfer/TransferActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {p0, v2}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alensw/ui/activity/MainPreference;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f090000 -> :sswitch_0
        0x7f090001 -> :sswitch_1
        0x7f090056 -> :sswitch_2
        0x7f090057 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/alensw/ui/c/cx;->onPostCreate(Landroid/os/Bundle;)V

    iget v2, p0, Lcom/alensw/PicFolder/GalleryActivity;->j:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alensw/PicFolder/GalleryActivity;->h:Landroid/support/a/a/a;

    invoke-virtual {v2}, Landroid/support/a/a/a;->a()V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/GalleryActivity;->d()I

    move-result v2

    if-gt v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/alensw/PicFolder/GalleryActivity;->c()Lcom/alensw/ui/c/cu;

    move-result-object v2

    instance-of v2, v2, Lcom/alensw/ui/c/dp;

    if-nez v2, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/alensw/PicFolder/GalleryActivity;->h:Landroid/support/a/a/a;

    invoke-virtual {v2, v0}, Landroid/support/a/a/a;->a(Z)V

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->e:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/widget/DrawerLayout;->a(II)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "drawer_shown"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget v2, Lcom/alensw/PicFolder/QuickApp;->k:I

    if-eq v1, v2, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "drawer_shown"

    sget v2, Lcom/alensw/PicFolder/QuickApp;->k:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/l/b;->a(Landroid/content/SharedPreferences$Editor;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->e:Landroid/support/v4/widget/DrawerLayout;

    new-instance v1, Lcom/alensw/PicFolder/ae;

    invoke-direct {v1, p0}, Lcom/alensw/PicFolder/ae;-><init>(Lcom/alensw/PicFolder/GalleryActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/alensw/PicFolder/GalleryActivity;->h:Landroid/support/a/a/a;

    invoke-virtual {v2, v1}, Landroid/support/a/a/a;->a(Z)V

    iget-object v1, p0, Lcom/alensw/PicFolder/GalleryActivity;->e:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/widget/DrawerLayout;->a(II)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alensw/ui/c/cx;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/GalleryActivity;->i:Lcom/alensw/ui/view/bc;

    if-eqz v0, :cond_0

    const-string v0, "current_root"

    iget-object v1, p0, Lcom/alensw/PicFolder/GalleryActivity;->i:Lcom/alensw/ui/view/bc;

    iget v1, v1, Lcom/alensw/ui/view/bc;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/alensw/ui/c/cx;->onStart()V

    .line 26
    invoke-virtual {p0}, Lcom/alensw/PicFolder/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alensw/PicFolder/GalleryActivity;->appContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/alensw/ui/c/cx;->onStop()V

    const-string v0, ""

    sput-object v0, Lcom/alensw/PicFolder/QuickApp;->y:Ljava/lang/String;

    return-void
.end method

.method public writeUpdateChannelPreference(Ljava/lang/String;)V
    .locals 2

    const-string v0, "com.alensw.PicFolder_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alensw/PicFolder/GalleryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "channel"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public writeUpdatesOnStartup(Z)V
    .locals 2

    const-string v0, "com.alensw.PicFolder_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alensw/PicFolder/GalleryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "updates_on_startup"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
