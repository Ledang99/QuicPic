.class public Lcom/alensw/ui/activity/PathListActivity;
.super Lcom/alensw/ui/activity/ao;


# instance fields
.field protected a:Ljava/util/ArrayList;

.field protected b:Landroid/widget/BaseAdapter;

.field protected c:Landroid/widget/ListView;

.field protected d:Z

.field protected e:Z

.field protected final f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alensw/ui/activity/ao;-><init>()V

    new-instance v0, Lcom/alensw/ui/activity/bf;

    invoke-direct {v0, p0}, Lcom/alensw/ui/activity/bf;-><init>(Lcom/alensw/ui/activity/PathListActivity;)V

    iput-object v0, p0, Lcom/alensw/ui/activity/PathListActivity;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static a(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alensw/ui/activity/PathListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "exclude_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected b()V
    .locals 3

    iget-boolean v0, p0, Lcom/alensw/ui/activity/PathListActivity;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    new-instance v2, Lcom/alensw/ui/activity/bh;

    invoke-direct {v2, p0}, Lcom/alensw/ui/activity/bh;-><init>(Lcom/alensw/ui/activity/PathListActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/alensw/ui/a/ae;->a(Landroid/content/Context;ILjava/io/File;Lcom/alensw/ui/a/an;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/ao;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alensw/ui/activity/PathListActivity;->c:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/alensw/ui/activity/PathListActivity;->c:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/PathListActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/alensw/ui/activity/PathListActivity;->g(Z)V

    invoke-virtual {p0}, Lcom/alensw/ui/activity/PathListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "exclude_mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alensw/ui/activity/PathListActivity;->e:Z

    iget-boolean v0, p0, Lcom/alensw/ui/activity/PathListActivity;->e:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a0046

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/PathListActivity;->setTitle(I)V

    invoke-static {p0}, Lcom/alensw/a/o;->a(Landroid/content/Context;)Lcom/alensw/a/o;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alensw/ui/activity/PathListActivity;->e:Z

    invoke-virtual {v0, v1}, Lcom/alensw/a/o;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/activity/PathListActivity;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alensw/ui/activity/PathListActivity;->a:Ljava/util/ArrayList;

    sget-object v1, Lcom/alensw/b/b/b;->a:Lcom/alensw/b/b/c;

    invoke-static {v0, v1}, Lcom/alensw/b/l/b;->a(Ljava/util/List;Ljava/util/Comparator;)Z

    invoke-virtual {p0}, Lcom/alensw/ui/activity/PathListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alensw/ui/activity/PathListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f01000e

    invoke-static {p0, v2}, Lcom/alensw/ui/activity/ao;->b(Landroid/content/Context;I)I

    move-result v2

    const v3, 0x7f050007

    invoke-static {v1, v3, v2}, Lcom/b/a/b;->a(Landroid/content/res/Resources;II)Lcom/b/a/l;

    move-result-object v1

    new-instance v2, Lcom/alensw/ui/activity/bg;

    invoke-direct {v2, p0, v0, v1}, Lcom/alensw/ui/activity/bg;-><init>(Lcom/alensw/ui/activity/PathListActivity;Landroid/view/LayoutInflater;Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/alensw/ui/activity/PathListActivity;->b:Landroid/widget/BaseAdapter;

    iget-object v0, p0, Lcom/alensw/ui/activity/PathListActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alensw/ui/activity/PathListActivity;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_0
    const v0, 0x7f0a0044

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v2, 0x0

    const v0, 0x7f090040

    const v1, 0x7f0a0006

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alensw/b/g/l;->a(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/alensw/ui/activity/PathListActivity;->a(Landroid/view/MenuItem;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/ao;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/alensw/ui/activity/PathListActivity;->b()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f090040
        :pswitch_0
    .end packed-switch
.end method

.method public onStop()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/alensw/ui/activity/ao;->onStop()V

    iget-boolean v0, p0, Lcom/alensw/ui/activity/PathListActivity;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alensw/a/o;->a(Landroid/content/Context;)Lcom/alensw/a/o;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/activity/PathListActivity;->a:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/alensw/ui/activity/PathListActivity;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/alensw/a/o;->a(Ljava/util/ArrayList;Z)V

    invoke-virtual {p0}, Lcom/alensw/ui/activity/PathListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0x49

    invoke-static {v1}, Lcom/alensw/a/ba;->a(C)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alensw/PicFolder/QuickApp;->a(Z)Z

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3, v3}, Lcom/alensw/a/s;->a(ILjava/lang/Object;Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alensw/ui/activity/PathListActivity;->d:Z

    :cond_0
    return-void
.end method
