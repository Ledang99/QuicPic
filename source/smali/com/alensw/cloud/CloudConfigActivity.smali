.class public Lcom/alensw/cloud/CloudConfigActivity;
.super Lcom/alensw/ui/activity/ao;


# instance fields
.field protected a:Z

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:Landroid/graphics/drawable/Drawable;

.field protected final f:Landroid/widget/BaseAdapter;

.field private g:Landroid/widget/ListView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/os/Handler;

.field private j:Lcom/alensw/bean/CommonFolder;

.field private k:Landroid/os/Messenger;

.field private l:Lcom/alensw/b/k/d;

.field private m:Lcom/alensw/cloud/aa;

.field private final n:Lcom/alensw/a/az;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alensw/ui/activity/ao;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->i:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->a:Z

    new-instance v0, Lcom/alensw/cloud/b;

    invoke-direct {v0, p0}, Lcom/alensw/cloud/b;-><init>(Lcom/alensw/cloud/CloudConfigActivity;)V

    iput-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->n:Lcom/alensw/a/az;

    new-instance v0, Lcom/alensw/cloud/c;

    invoke-direct {v0, p0}, Lcom/alensw/cloud/c;-><init>(Lcom/alensw/cloud/CloudConfigActivity;)V

    iput-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->f:Landroid/widget/BaseAdapter;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alensw/bean/CommonFolder;Ljava/lang/String;Landroid/os/Messenger;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alensw/cloud/CloudConfigActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "QuickPic.folder"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "QuickPic.callback"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v1, "QuickPic.root_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/alensw/cloud/CloudConfigActivity;Lcom/alensw/b/k/d;)Lcom/alensw/b/k/d;
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/CloudConfigActivity;->l:Lcom/alensw/b/k/d;

    return-object p1
.end method

.method static synthetic a(Lcom/alensw/cloud/CloudConfigActivity;)Lcom/alensw/cloud/aa;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->m:Lcom/alensw/cloud/aa;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->j:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0, p1}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    instance-of v1, v0, Lcom/alensw/bean/DocumentFolder;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alensw/bean/DocumentFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/DocumentFolder;->t()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/alensw/cloud/CloudConfigActivity;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alensw/cloud/CloudConfigActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/alensw/cloud/CloudConfigActivity;)Lcom/alensw/bean/CommonFolder;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->j:Lcom/alensw/bean/CommonFolder;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 8

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->l:Lcom/alensw/b/k/d;

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/alensw/cloud/CloudConfigActivity;->i(Z)V

    sget-object v7, Lcom/alensw/ui/c/z;->A:Lcom/alensw/b/k/a;

    new-instance v0, Lcom/alensw/a/av;

    invoke-virtual {p0}, Lcom/alensw/cloud/CloudConfigActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/cloud/CloudConfigActivity;->j:Lcom/alensw/bean/CommonFolder;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alensw/cloud/CloudConfigActivity;->i:Landroid/os/Handler;

    iget-object v6, p0, Lcom/alensw/cloud/CloudConfigActivity;->n:Lcom/alensw/a/az;

    invoke-direct/range {v0 .. v6}, Lcom/alensw/a/av;-><init>(Landroid/content/ContentResolver;Lcom/alensw/bean/CommonFolder;ZLjava/util/Set;Landroid/os/Handler;Lcom/alensw/a/az;)V

    invoke-virtual {v7, v0}, Lcom/alensw/b/k/a;->a(Lcom/alensw/b/k/k;)Lcom/alensw/b/k/d;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->l:Lcom/alensw/b/k/d;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/ao;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/CloudConfigActivity;->setContentView(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/CloudConfigActivity;->g(Z)V

    invoke-virtual {p0}, Lcom/alensw/cloud/CloudConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/alensw/cloud/CloudConfigActivity;->b:I

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->d:I

    const v0, 0x7f01000e

    invoke-static {p0, v0}, Lcom/alensw/ui/activity/ao;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->c:I

    new-instance v0, Lcom/alensw/cloud/aa;

    invoke-virtual {p0}, Lcom/alensw/cloud/CloudConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "QuickPic.root_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alensw/cloud/aa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->m:Lcom/alensw/cloud/aa;

    invoke-virtual {p0}, Lcom/alensw/cloud/CloudConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "QuickPic.folder"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFolder;

    iput-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->j:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {p0}, Lcom/alensw/cloud/CloudConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "QuickPic.callback"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->k:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->j:Lcom/alensw/bean/CommonFolder;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/cloud/CloudConfigActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/CloudConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->h:Landroid/widget/TextView;

    const v1, 0x7f0a0048

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/CloudConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->g:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alensw/cloud/CloudConfigActivity;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alensw/cloud/CloudConfigActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/alensw/cloud/a;

    invoke-direct {v1, p0}, Lcom/alensw/cloud/a;-><init>(Lcom/alensw/cloud/CloudConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/ao;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const v0, 0x102001f

    const v1, 0x104000d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/alensw/ui/activity/ao;->onDestroy()V

    iget-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->m:Lcom/alensw/cloud/aa;

    invoke-virtual {v0}, Lcom/alensw/cloud/aa;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->m:Lcom/alensw/cloud/aa;

    invoke-virtual {v0}, Lcom/alensw/cloud/aa;->h()V

    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-virtual {p0}, Lcom/alensw/cloud/CloudConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "QuickPic.root_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/alensw/cloud/CloudConfigActivity;->k:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/ao;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->m:Lcom/alensw/cloud/aa;

    invoke-virtual {v0}, Lcom/alensw/cloud/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->j:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->o()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    iget-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->j:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0, v2}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    instance-of v3, v0, Lcom/alensw/bean/DocumentFolder;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alensw/cloud/CloudConfigActivity;->m:Lcom/alensw/cloud/aa;

    check-cast v0, Lcom/alensw/bean/DocumentFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/DocumentFolder;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/alensw/cloud/aa;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->m:Lcom/alensw/cloud/aa;

    invoke-virtual {v0}, Lcom/alensw/cloud/aa;->d()V

    :cond_2
    iget-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/ao;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const v0, 0x102001f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->m:Lcom/alensw/cloud/aa;

    invoke-virtual {v0}, Lcom/alensw/cloud/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a002e

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0

    :cond_0
    const v0, 0x104000d

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/alensw/ui/activity/ao;->onStart()V

    iget-boolean v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alensw/cloud/CloudConfigActivity;->a:Z

    invoke-virtual {p0}, Lcom/alensw/cloud/CloudConfigActivity;->b()V

    :cond_0
    return-void
.end method
