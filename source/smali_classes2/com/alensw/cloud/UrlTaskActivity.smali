.class public Lcom/alensw/cloud/UrlTaskActivity;
.super Lcom/alensw/ui/activity/ao;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/widget/ListView;

.field private f:Lcom/alensw/cloud/UrlTaskService;

.field private final g:Ljava/util/ArrayList;

.field private final h:Landroid/content/ServiceConnection;

.field private final i:Lcom/alensw/cloud/am;

.field private final j:Landroid/view/View$OnClickListener;

.field private final k:Lcom/alensw/ui/view/z;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/alensw/ui/activity/ao;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->g:Ljava/util/ArrayList;

    new-instance v0, Lcom/alensw/cloud/ag;

    invoke-direct {v0, p0}, Lcom/alensw/cloud/ag;-><init>(Lcom/alensw/cloud/UrlTaskActivity;)V

    iput-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->h:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/alensw/cloud/ah;

    invoke-direct {v0, p0}, Lcom/alensw/cloud/ah;-><init>(Lcom/alensw/cloud/UrlTaskActivity;)V

    iput-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->i:Lcom/alensw/cloud/am;

    new-instance v0, Lcom/alensw/cloud/ai;

    invoke-direct {v0, p0}, Lcom/alensw/cloud/ai;-><init>(Lcom/alensw/cloud/UrlTaskActivity;)V

    iput-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->j:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alensw/cloud/aj;

    const v1, 0x7f09000e

    const v2, 0x7f09000f

    invoke-direct {v0, p0, v1, v2}, Lcom/alensw/cloud/aj;-><init>(Lcom/alensw/cloud/UrlTaskActivity;II)V

    iput-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->k:Lcom/alensw/ui/view/z;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alensw/cloud/UrlTaskActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url_task_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/alensw/cloud/UrlTaskActivity;Lcom/alensw/cloud/UrlTaskService;)Lcom/alensw/cloud/UrlTaskService;
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/UrlTaskActivity;->f:Lcom/alensw/cloud/UrlTaskService;

    return-object p1
.end method

.method static synthetic a(Lcom/alensw/cloud/UrlTaskActivity;)Lcom/alensw/ui/view/z;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->k:Lcom/alensw/ui/view/z;

    return-object v0
.end method

.method static synthetic a(Lcom/alensw/cloud/UrlTaskActivity;Lcom/alensw/cloud/ad;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/cloud/UrlTaskActivity;->b(Lcom/alensw/cloud/ad;)V

    return-void
.end method

.method private a(Lcom/alensw/cloud/ad;)V
    .locals 3

    iget v0, p1, Lcom/alensw/cloud/ad;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->f:Lcom/alensw/cloud/UrlTaskService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->f:Lcom/alensw/cloud/UrlTaskService;

    iget v1, p0, Lcom/alensw/cloud/UrlTaskActivity;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/alensw/cloud/UrlTaskService;->a(ILcom/alensw/cloud/ad;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->a:I

    iget-object v1, p1, Lcom/alensw/cloud/ad;->a:Landroid/net/Uri;

    iget-object v2, p1, Lcom/alensw/cloud/ad;->b:Landroid/net/Uri;

    invoke-static {p0, v0, v1, v2}, Lcom/alensw/cloud/UrlTaskService;->a(Landroid/content/Context;ILandroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/UrlTaskActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/alensw/cloud/UrlTaskActivity;->b()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alensw/cloud/UrlTaskActivity;)Lcom/alensw/cloud/UrlTaskService;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->f:Lcom/alensw/cloud/UrlTaskService;

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->f:Lcom/alensw/cloud/UrlTaskService;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alensw/cloud/UrlTaskService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/alensw/cloud/UrlTaskActivity;->h:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/alensw/cloud/UrlTaskActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alensw/cloud/UrlTaskActivity;Lcom/alensw/cloud/ad;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/cloud/UrlTaskActivity;->a(Lcom/alensw/cloud/ad;)V

    return-void
.end method

.method private b(Lcom/alensw/cloud/ad;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/ak;

    iget-object v4, v0, Lcom/alensw/cloud/ak;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/alensw/cloud/ad;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, v0, Lcom/alensw/cloud/ak;->b:Landroid/widget/ProgressBar;

    iget v1, p1, Lcom/alensw/cloud/ad;->c:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v1, v0, Lcom/alensw/cloud/ak;->b:Landroid/widget/ProgressBar;

    iget v3, p1, Lcom/alensw/cloud/ad;->c:I

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, v0, Lcom/alensw/cloud/ak;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alensw/cloud/UrlTaskActivity;)I
    .locals 1

    iget v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->a:I

    return v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->f:Lcom/alensw/cloud/UrlTaskService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->f:Lcom/alensw/cloud/UrlTaskService;

    iget v1, p0, Lcom/alensw/cloud/UrlTaskActivity;->a:I

    invoke-virtual {v0, v1}, Lcom/alensw/cloud/UrlTaskService;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/cloud/UrlTaskActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget v1, p0, Lcom/alensw/cloud/UrlTaskActivity;->a:I

    invoke-static {v1}, Lcom/alensw/cloud/UrlTaskService;->c(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alensw/b/l/a;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alensw/cloud/UrlTaskActivity;)Lcom/alensw/cloud/am;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->i:Lcom/alensw/cloud/am;

    return-object v0
.end method

.method static synthetic e(Lcom/alensw/cloud/UrlTaskActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/cloud/UrlTaskActivity;->c()V

    return-void
.end method

.method static synthetic f(Lcom/alensw/cloud/UrlTaskActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lcom/alensw/cloud/UrlTaskActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->j:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic h(Lcom/alensw/cloud/UrlTaskActivity;)I
    .locals 1

    iget v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->b:I

    return v0
.end method

.method static synthetic i(Lcom/alensw/cloud/UrlTaskActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic j(Lcom/alensw/cloud/UrlTaskActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/ao;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alensw/cloud/UrlTaskActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url_task_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->a:I

    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->e:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->e:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/UrlTaskActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/alensw/cloud/UrlTaskActivity;->g(Z)V

    iget v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->a:I

    if-ne v0, v3, :cond_0

    const v0, 0x7f0a00be

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alensw/cloud/UrlTaskActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/alensw/cloud/UrlTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f01000e

    invoke-static {p0, v1}, Lcom/alensw/ui/activity/ao;->b(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f070049

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/alensw/cloud/UrlTaskActivity;->b:I

    const v2, 0x7f050007

    invoke-static {v0, v2, v1}, Lcom/b/a/b;->a(Landroid/content/res/Resources;II)Lcom/b/a/l;

    move-result-object v2

    iput-object v2, p0, Lcom/alensw/cloud/UrlTaskActivity;->c:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f050010

    invoke-static {v0, v2, v1}, Lcom/b/a/b;->a(Landroid/content/res/Resources;II)Lcom/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->d:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alensw/cloud/UrlTaskActivity;->k:Lcom/alensw/ui/view/z;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/alensw/cloud/af;

    invoke-direct {v1, p0}, Lcom/alensw/cloud/af;-><init>(Lcom/alensw/cloud/UrlTaskActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    invoke-direct {p0}, Lcom/alensw/cloud/UrlTaskActivity;->b()V

    return-void

    :cond_0
    const v0, 0x7f0a00c0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v1, 0x2

    const v0, 0x7f0c000b

    invoke-static {p0, v0, p1}, Lcom/alensw/b/g/b;->a(Landroid/content/Context;ILandroid/view/Menu;)V

    const v0, 0x7f090079

    invoke-virtual {p0, p1, v0, v1}, Lcom/alensw/cloud/UrlTaskActivity;->a(Landroid/view/Menu;II)V

    const v0, 0x7f090041

    invoke-virtual {p0, p1, v0, v1}, Lcom/alensw/cloud/UrlTaskActivity;->a(Landroid/view/Menu;II)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/alensw/ui/activity/ao;->onDestroy()V

    invoke-direct {p0}, Lcom/alensw/cloud/UrlTaskActivity;->c()V

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->f:Lcom/alensw/cloud/UrlTaskService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->h:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/UrlTaskActivity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->k:Lcom/alensw/ui/view/z;

    invoke-virtual {v0}, Lcom/alensw/ui/view/z;->a()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/ao;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/ad;

    invoke-direct {p0, v0}, Lcom/alensw/cloud/UrlTaskActivity;->a(Lcom/alensw/cloud/ad;)V

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->f:Lcom/alensw/cloud/UrlTaskService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->f:Lcom/alensw/cloud/UrlTaskService;

    iget v2, p0, Lcom/alensw/cloud/UrlTaskActivity;->a:I

    invoke-virtual {v0, v2}, Lcom/alensw/cloud/UrlTaskService;->a(I)V

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskActivity;->f:Lcom/alensw/cloud/UrlTaskService;

    iget v2, p0, Lcom/alensw/cloud/UrlTaskActivity;->a:I

    invoke-virtual {v0, v2}, Lcom/alensw/cloud/UrlTaskService;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alensw/cloud/UrlTaskActivity;->finish()V

    :cond_1
    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090041 -> :sswitch_1
        0x7f090079 -> :sswitch_0
    .end sparse-switch
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/alensw/ui/activity/ao;->onStart()V

    return-void
.end method
