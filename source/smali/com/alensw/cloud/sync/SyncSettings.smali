.class public Lcom/alensw/cloud/sync/SyncSettings;
.super Lcom/alensw/ui/activity/ao;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/net/Uri;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/content/SharedPreferences;

.field private final h:Landroid/os/Handler;

.field private final i:Lcom/alensw/cloud/sync/s;

.field private final j:Ljava/util/ArrayList;

.field private final k:Landroid/widget/BaseAdapter;

.field private final l:Landroid/database/ContentObserver;

.field private final m:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alensw/ui/activity/ao;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->e:Landroid/net/Uri;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->h:Landroid/os/Handler;

    new-instance v0, Lcom/alensw/cloud/sync/s;

    invoke-direct {v0}, Lcom/alensw/cloud/sync/s;-><init>()V

    iput-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->i:Lcom/alensw/cloud/sync/s;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->j:Ljava/util/ArrayList;

    new-instance v0, Lcom/alensw/cloud/sync/o;

    invoke-direct {v0, p0}, Lcom/alensw/cloud/sync/o;-><init>(Lcom/alensw/cloud/sync/SyncSettings;)V

    iput-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->k:Landroid/widget/BaseAdapter;

    new-instance v0, Lcom/alensw/cloud/sync/q;

    iget-object v1, p0, Lcom/alensw/cloud/sync/SyncSettings;->h:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/alensw/cloud/sync/q;-><init>(Lcom/alensw/cloud/sync/SyncSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->l:Landroid/database/ContentObserver;

    new-instance v0, Lcom/alensw/cloud/sync/r;

    invoke-direct {v0, p0}, Lcom/alensw/cloud/sync/r;-><init>(Lcom/alensw/cloud/sync/SyncSettings;)V

    iput-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->m:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic a(Lcom/alensw/cloud/sync/SyncSettings;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(ILjava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x0

    const v0, 0x7f03000b

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f09000f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f09001a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v2, p0, Lcom/alensw/cloud/sync/SyncSettings;->g:Landroid/content/SharedPreferences;

    invoke-interface {v2, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/alensw/cloud/sync/SyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/alensw/cloud/sync/SyncSettings;->b:I

    iget v4, p0, Lcom/alensw/cloud/sync/SyncSettings;->a:I

    invoke-static {v2, v3, v4, v5}, Lcom/alensw/b/g/a;->a(Landroid/content/res/Resources;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-static {p0}, Lcom/alensw/b/l/b;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v2, Lcom/alensw/cloud/sync/m;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/alensw/cloud/sync/m;-><init>(Lcom/alensw/cloud/sync/SyncSettings;Landroid/widget/CheckBox;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/alensw/cloud/sync/SyncSettings;)Lcom/alensw/cloud/sync/s;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->i:Lcom/alensw/cloud/sync/s;

    return-object v0
.end method

.method private b()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.document/directory"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "activity_title"

    const v2, 0x7f0a0070

    invoke-virtual {p0, v2}, Lcom/alensw/cloud/sync/SyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/alensw/cloud/sync/SyncSettings;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alensw/PicFolder/GalleryActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Lcom/alensw/ui/activity/a;->a(Landroid/app/Activity;Landroid/content/Intent;I)Z

    return-void
.end method

.method private c()V
    .locals 4

    invoke-virtual {p0}, Lcom/alensw/cloud/sync/SyncSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/cloud/sync/e;->a(Landroid/content/ContentResolver;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/cloud/sync/SyncSettings;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/sync/v;

    iget-object v2, p0, Lcom/alensw/cloud/sync/SyncSettings;->j:Ljava/util/ArrayList;

    new-instance v3, Lcom/alensw/cloud/sync/s;

    invoke-direct {v3, v0}, Lcom/alensw/cloud/sync/s;-><init>(Lcom/alensw/cloud/sync/v;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alensw/cloud/sync/SyncSettings;->m:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alensw/cloud/sync/SyncSettings;->i:Lcom/alensw/cloud/sync/s;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->k:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic c(Lcom/alensw/cloud/sync/SyncSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/cloud/sync/SyncSettings;->b()V

    return-void
.end method

.method static synthetic d(Lcom/alensw/cloud/sync/SyncSettings;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->k:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic e(Lcom/alensw/cloud/sync/SyncSettings;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->g:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic f(Lcom/alensw/cloud/sync/SyncSettings;)I
    .locals 1

    iget v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->d:I

    return v0
.end method

.method static synthetic g(Lcom/alensw/cloud/sync/SyncSettings;)I
    .locals 1

    iget v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->c:I

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x65

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/alensw/cloud/sync/SyncSettings;->e:Landroid/net/Uri;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alensw/cloud/ShareToCloudActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->e:Landroid/net/Uri;

    invoke-virtual {p0, v1, v3}, Lcom/alensw/cloud/sync/SyncSettings;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v3, :cond_0

    iget-object v1, p0, Lcom/alensw/cloud/sync/SyncSettings;->e:Landroid/net/Uri;

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/alensw/b/j/a;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/alensw/cloud/sync/s;

    invoke-direct {v1}, Lcom/alensw/cloud/sync/s;-><init>()V

    iget-object v2, p0, Lcom/alensw/cloud/sync/SyncSettings;->e:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alensw/cloud/sync/s;->d:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alensw/cloud/sync/s;->e:Ljava/lang/String;

    invoke-static {}, Lcom/alensw/cloud/sync/v;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alensw/cloud/sync/s;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->j:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alensw/cloud/sync/SyncSettings;->i:Lcom/alensw/cloud/sync/s;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->j:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alensw/cloud/sync/SyncSettings;->m:Ljava/util/Comparator;

    invoke-static {v0, v1, v2}, Lcom/alensw/b/l/b;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/alensw/cloud/sync/SyncSettings;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->j:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alensw/cloud/sync/SyncSettings;->i:Lcom/alensw/cloud/sync/s;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->k:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/alensw/cloud/sync/SyncSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, v1, Lcom/alensw/cloud/sync/s;->c:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/alensw/cloud/sync/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/alensw/cloud/sync/v;)V

    invoke-static {p0}, Lcom/alensw/cloud/sync/a;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alensw/cloud/sync/x;->a(Landroid/content/Context;Landroid/accounts/Account;)Z

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alensw/cloud/sync/x;->a(Landroid/content/Context;Z)V

    iget-object v0, v1, Lcom/alensw/cloud/sync/s;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/alensw/cloud/sync/x;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    iput-object v4, p0, Lcom/alensw/cloud/sync/SyncSettings;->e:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/alensw/cloud/sync/SyncSettings;->j:Ljava/util/ArrayList;

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    iput-object v4, p0, Lcom/alensw/cloud/sync/SyncSettings;->e:Landroid/net/Uri;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/ao;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/sync/SyncSettings;->setContentView(I)V

    invoke-virtual {p0, v4}, Lcom/alensw/cloud/sync/SyncSettings;->g(Z)V

    const v0, 0x7f0a00a0

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/sync/SyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/sync/SyncSettings;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/alensw/cloud/sync/SyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v0, 0x7f080007

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->b:I

    const v0, 0x7f01000e

    invoke-static {p0, v0}, Lcom/alensw/ui/activity/ao;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->a:I

    const v0, 0x7f070049

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->c:I

    const v0, 0x1010038

    invoke-static {p0, v0}, Lcom/alensw/cloud/sync/SyncSettings;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->d:I

    if-eqz p1, :cond_0

    const-string v0, "source_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->e:Landroid/net/Uri;

    :cond_0
    iget-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->i:Lcom/alensw/cloud/sync/s;

    const v2, 0x7f05002f

    iget v3, p0, Lcom/alensw/cloud/sync/SyncSettings;->d:I

    invoke-static {v1, v2, v3}, Lcom/alensw/b/l/b;->a(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/alensw/cloud/sync/s;->b:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/sync/SyncSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->f:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/alensw/cloud/sync/x;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->g:Landroid/content/SharedPreferences;

    const v0, 0x7f0a0043

    const-string v1, "include_videos"

    invoke-direct {p0, v0, v1, v4}, Lcom/alensw/cloud/sync/SyncSettings;->a(ILjava/lang/String;Z)V

    const v0, 0x7f0a009f

    const-string v1, "only_wifi"

    invoke-direct {p0, v0, v1, v4}, Lcom/alensw/cloud/sync/SyncSettings;->a(ILjava/lang/String;Z)V

    const v0, 0x7f0a009e

    const-string v1, "only_charging"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/alensw/cloud/sync/SyncSettings;->a(ILjava/lang/String;Z)V

    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/sync/SyncSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alensw/cloud/sync/SyncSettings;->k:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/alensw/cloud/sync/j;

    invoke-direct {v1, p0}, Lcom/alensw/cloud/sync/j;-><init>(Lcom/alensw/cloud/sync/SyncSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Lcom/alensw/cloud/sync/k;

    invoke-direct {v1, p0}, Lcom/alensw/cloud/sync/k;-><init>(Lcom/alensw/cloud/sync/SyncSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-direct {p0}, Lcom/alensw/cloud/sync/SyncSettings;->c()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/alensw/ui/activity/ao;->onPause()V

    invoke-virtual {p0}, Lcom/alensw/cloud/sync/SyncSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/cloud/sync/SyncSettings;->l:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/alensw/ui/activity/ao;->onResume()V

    invoke-virtual {p0}, Lcom/alensw/cloud/sync/SyncSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/alensw/cloud/sync/d;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alensw/cloud/sync/SyncSettings;->l:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/cloud/sync/SyncSettings;->e:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const-string v0, "source_uri"

    iget-object v1, p0, Lcom/alensw/cloud/sync/SyncSettings;->e:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
