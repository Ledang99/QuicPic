.class public Lcom/alensw/transfer/TransferActivity;
.super Lcom/alensw/ui/activity/ao;


# instance fields
.field private a:Lcom/alensw/transfer/TransferService;

.field private b:Landroid/support/v4/a/p;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alensw/transfer/a;

.field private f:Lcom/alensw/transfer/a;

.field private final g:Ljava/lang/Runnable;

.field private final h:Landroid/content/ServiceConnection;

.field private final i:Landroid/support/v4/a/j;

.field private final j:Landroid/support/v4/a/x;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alensw/ui/activity/ao;-><init>()V

    new-instance v0, Lcom/alensw/transfer/j;

    invoke-direct {v0, p0}, Lcom/alensw/transfer/j;-><init>(Lcom/alensw/transfer/TransferActivity;)V

    iput-object v0, p0, Lcom/alensw/transfer/TransferActivity;->g:Ljava/lang/Runnable;

    new-instance v0, Lcom/alensw/transfer/k;

    invoke-direct {v0, p0}, Lcom/alensw/transfer/k;-><init>(Lcom/alensw/transfer/TransferActivity;)V

    iput-object v0, p0, Lcom/alensw/transfer/TransferActivity;->h:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/alensw/transfer/l;

    invoke-direct {v0, p0}, Lcom/alensw/transfer/l;-><init>(Lcom/alensw/transfer/TransferActivity;)V

    iput-object v0, p0, Lcom/alensw/transfer/TransferActivity;->i:Landroid/support/v4/a/j;

    new-instance v0, Lcom/alensw/transfer/m;

    invoke-direct {v0, p0}, Lcom/alensw/transfer/m;-><init>(Lcom/alensw/transfer/TransferActivity;)V

    iput-object v0, p0, Lcom/alensw/transfer/TransferActivity;->j:Landroid/support/v4/a/x;

    return-void
.end method

.method static synthetic a(Lcom/alensw/transfer/TransferActivity;)Landroid/support/v4/a/p;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->b:Landroid/support/v4/a/p;

    return-object v0
.end method

.method static synthetic a(Lcom/alensw/transfer/TransferActivity;Lcom/alensw/transfer/TransferService;)Lcom/alensw/transfer/TransferService;
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/TransferActivity;->a:Lcom/alensw/transfer/TransferService;

    return-object p1
.end method

.method public static a(Landroid/view/ViewGroup;I)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$TabView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/alensw/ui/d/d;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/alensw/transfer/TransferActivity;->a(Landroid/view/ViewGroup;I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/alensw/transfer/TransferActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/alensw/transfer/TransferActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alensw/transfer/TransferActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x4280000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.shortcut.NAME"

    const v3, 0x7f0a00c8

    invoke-virtual {p0, v3}, Lcom/alensw/transfer/TransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v2, 0x7f020001

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "duplicate"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/alensw/transfer/TransferActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c(Lcom/alensw/transfer/TransferActivity;)Lcom/alensw/transfer/a;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->e:Lcom/alensw/transfer/a;

    return-object v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->a:Lcom/alensw/transfer/TransferService;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alensw/transfer/TransferService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/alensw/transfer/TransferActivity;->h:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/alensw/transfer/TransferActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alensw/transfer/TransferActivity;)Lcom/alensw/transfer/a;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->f:Lcom/alensw/transfer/a;

    return-object v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->a:Lcom/alensw/transfer/TransferService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->e:Lcom/alensw/transfer/a;

    iget-object v1, p0, Lcom/alensw/transfer/TransferActivity;->a:Lcom/alensw/transfer/TransferService;

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/a;->b(Landroid/app/Service;)V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->f:Lcom/alensw/transfer/a;

    iget-object v1, p0, Lcom/alensw/transfer/TransferActivity;->a:Lcom/alensw/transfer/TransferService;

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/a;->b(Landroid/app/Service;)V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->a:Lcom/alensw/transfer/TransferService;

    invoke-virtual {v0}, Lcom/alensw/transfer/TransferService;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/transfer/TransferActivity;->a:Lcom/alensw/transfer/TransferService;

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->h:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/alensw/transfer/TransferActivity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/alensw/transfer/TransferActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/transfer/TransferActivity;->d()V

    return-void
.end method

.method static synthetic f(Lcom/alensw/transfer/TransferActivity;)Lcom/alensw/transfer/TransferService;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->a:Lcom/alensw/transfer/TransferService;

    return-object v0
.end method

.method static synthetic g(Lcom/alensw/transfer/TransferActivity;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->J:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic h(Lcom/alensw/transfer/TransferActivity;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->J:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic i(Lcom/alensw/transfer/TransferActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const v0, 0x7f0a00cd

    invoke-virtual {p0, v0}, Lcom/alensw/transfer/TransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-lez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/alensw/transfer/TransferActivity;->J:Landroid/app/ActionBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alensw/transfer/TransferActivity;->J:Landroid/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/alensw/transfer/TransferActivity;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alensw/transfer/TransferActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->b:Landroid/support/v4/a/p;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/p;->setCurrentItem(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/alensw/ui/activity/ao;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->e:Lcom/alensw/transfer/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alensw/transfer/a;->a(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->f:Lcom/alensw/transfer/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alensw/transfer/a;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/ao;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->e:Lcom/alensw/transfer/a;

    invoke-virtual {v0, p1}, Lcom/alensw/transfer/a;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->f:Lcom/alensw/transfer/a;

    invoke-virtual {v0, p1}, Lcom/alensw/transfer/a;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const v5, 0x7f0a00cd

    const v3, 0x7f0a00c9

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/ao;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/support/v4/a/p;

    invoke-direct {v0, p0}, Landroid/support/v4/a/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alensw/transfer/TransferActivity;->b:Landroid/support/v4/a/p;

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->b:Landroid/support/v4/a/p;

    invoke-virtual {p0, v0}, Lcom/alensw/transfer/TransferActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, v4}, Lcom/alensw/transfer/TransferActivity;->g(Z)V

    new-instance v0, Lcom/alensw/transfer/ac;

    invoke-direct {v0}, Lcom/alensw/transfer/ac;-><init>()V

    iput-object v0, p0, Lcom/alensw/transfer/TransferActivity;->e:Lcom/alensw/transfer/a;

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->e:Lcom/alensw/transfer/a;

    iget-object v1, p0, Lcom/alensw/transfer/TransferActivity;->b:Landroid/support/v4/a/p;

    invoke-virtual {v0, p0, v1}, Lcom/alensw/transfer/a;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->e:Lcom/alensw/transfer/a;

    invoke-virtual {v0, p0}, Lcom/alensw/transfer/a;->a(Landroid/app/Activity;)V

    new-instance v0, Lcom/alensw/transfer/s;

    invoke-direct {v0}, Lcom/alensw/transfer/s;-><init>()V

    iput-object v0, p0, Lcom/alensw/transfer/TransferActivity;->f:Lcom/alensw/transfer/a;

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->f:Lcom/alensw/transfer/a;

    iget-object v1, p0, Lcom/alensw/transfer/TransferActivity;->b:Landroid/support/v4/a/p;

    invoke-virtual {v0, p0, v1}, Lcom/alensw/transfer/a;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->f:Lcom/alensw/transfer/a;

    invoke-virtual {v0, p0}, Lcom/alensw/transfer/a;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->b:Landroid/support/v4/a/p;

    iget-object v1, p0, Lcom/alensw/transfer/TransferActivity;->j:Landroid/support/v4/a/x;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/p;->setOnPageChangeListener(Landroid/support/v4/a/x;)V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->b:Landroid/support/v4/a/p;

    iget-object v1, p0, Lcom/alensw/transfer/TransferActivity;->i:Landroid/support/v4/a/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/p;->setAdapter(Landroid/support/v4/a/j;)V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->J:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->J:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/transfer/TransferActivity;->J:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    new-instance v2, Lcom/alensw/transfer/g;

    invoke-direct {v2, p0, v0}, Lcom/alensw/transfer/g;-><init>(Lcom/alensw/transfer/TransferActivity;Landroid/app/ActionBar$Tab;)V

    invoke-virtual {v0, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    iget-object v2, p0, Lcom/alensw/transfer/TransferActivity;->J:Landroid/app/ActionBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    iget-object v2, p0, Lcom/alensw/transfer/TransferActivity;->J:Landroid/app/ActionBar;

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->J:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/transfer/TransferActivity;->o()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget v1, p0, Lcom/alensw/transfer/TransferActivity;->X:I

    invoke-static {v0, v1}, Lcom/alensw/transfer/TransferActivity;->a(Landroid/view/ViewGroup;I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alensw/transfer/TransferActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/alensw/PicFolder/QuickApp;

    iget-object v1, p0, Lcom/alensw/transfer/TransferActivity;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/QuickApp;->a(Ljava/lang/Runnable;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alensw/transfer/TransferService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/alensw/transfer/TransferActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->K:Lcom/alensw/ui/view/TitleBar;

    if-eqz v0, :cond_0

    const v0, 0x7f030013

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0}, Lcom/alensw/ui/view/TitleBar;->getTitleColor()I

    move-result v2

    const v0, 0x7f090030

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alensw/transfer/TransferActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f090031

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alensw/transfer/TransferActivity;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->c:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alensw/ui/d/d;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->d:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alensw/ui/d/d;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/alensw/transfer/h;

    invoke-direct {v0, p0}, Lcom/alensw/transfer/h;-><init>(Lcom/alensw/transfer/TransferActivity;)V

    iget-object v2, p0, Lcom/alensw/transfer/TransferActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/alensw/transfer/TransferActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->d:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->K:Lcom/alensw/ui/view/TitleBar;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/alensw/ui/view/TitleBar;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/ao;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0a0073

    invoke-virtual {p0, v1}, Lcom/alensw/transfer/TransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x7f0a0000

    invoke-virtual {p0, v1}, Lcom/alensw/transfer/TransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090062

    const v2, 0x7f0a0062

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const v1, 0x7f09000a

    invoke-interface {p1, v3, v1, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/alensw/transfer/TransferActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/alensw/PicFolder/QuickApp;

    iget-object v1, p0, Lcom/alensw/transfer/TransferActivity;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/QuickApp;->b(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/alensw/transfer/TransferActivity;->d()V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->e:Lcom/alensw/transfer/a;

    invoke-virtual {v0}, Lcom/alensw/transfer/a;->e()V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->f:Lcom/alensw/transfer/a;

    invoke-virtual {v0}, Lcom/alensw/transfer/a;->e()V

    invoke-super {p0}, Lcom/alensw/ui/activity/ao;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alensw/transfer/TransferActivity;->e:Lcom/alensw/transfer/a;

    invoke-virtual {v1, p1}, Lcom/alensw/transfer/a;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alensw/transfer/TransferActivity;->f:Lcom/alensw/transfer/a;

    invoke-virtual {v1, p1}, Lcom/alensw/transfer/a;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/ao;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :sswitch_0
    invoke-static {p0}, Lcom/alensw/ui/activity/MainPreference;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const v3, 0x7f0a0073

    invoke-virtual {p0, v1}, Lcom/alensw/transfer/TransferActivity;->c(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/alensw/transfer/i;

    invoke-direct {v4, p0}, Lcom/alensw/transfer/i;-><init>(Lcom/alensw/transfer/TransferActivity;)V

    invoke-static {p0, v2, v3, v1, v4}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;ILandroid/view/View;Lcom/alensw/ui/activity/o;)I

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/alensw/transfer/TransferActivity;->b()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f09000a -> :sswitch_0
        0x7f090055 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/alensw/ui/activity/ao;->onPause()V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->e:Lcom/alensw/transfer/a;

    invoke-virtual {v0}, Lcom/alensw/transfer/a;->d()V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->f:Lcom/alensw/transfer/a;

    invoke-virtual {v0}, Lcom/alensw/transfer/a;->d()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/alensw/ui/activity/ao;->onResume()V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->e:Lcom/alensw/transfer/a;

    invoke-virtual {v0}, Lcom/alensw/transfer/a;->c()V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->f:Lcom/alensw/transfer/a;

    invoke-virtual {v0}, Lcom/alensw/transfer/a;->c()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/alensw/ui/activity/ao;->onStart()V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->e:Lcom/alensw/transfer/a;

    invoke-virtual {v0}, Lcom/alensw/transfer/a;->a()V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->f:Lcom/alensw/transfer/a;

    invoke-virtual {v0}, Lcom/alensw/transfer/a;->a()V

    invoke-direct {p0}, Lcom/alensw/transfer/TransferActivity;->c()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/alensw/ui/activity/ao;->onStop()V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->e:Lcom/alensw/transfer/a;

    invoke-virtual {v0}, Lcom/alensw/transfer/a;->b()V

    iget-object v0, p0, Lcom/alensw/transfer/TransferActivity;->f:Lcom/alensw/transfer/a;

    invoke-virtual {v0}, Lcom/alensw/transfer/a;->b()V

    return-void
.end method
