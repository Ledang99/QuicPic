.class public Lcom/alensw/ui/c/dc;
.super Lcom/alensw/ui/c/z;


# instance fields
.field private B:Ljava/lang/String;

.field private L:Lcom/alensw/b/k/d;

.field private M:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/ui/c/z;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 11

    const/4 v9, 0x1

    const-wide/16 v4, 0x0

    const-string v0, "moments"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alensw/bean/MediaStoreFolder;

    const/4 v1, 0x0

    const v3, -0x6fffffce

    const/4 v8, 0x0

    move-object v2, p1

    move-wide v6, v4

    move v10, v9

    invoke-direct/range {v0 .. v10}, Lcom/alensw/bean/MediaStoreFolder;-><init>(ILjava/lang/String;IJJLjava/lang/String;ZZ)V

    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "QuickPic.folder"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "QuickPic.keyword"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v0, "QuickPic.root_id"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Lcom/alensw/bean/LocalFolder;

    const-string v1, "/search"

    const v3, 0x10000032

    move-object v2, p1

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/alensw/bean/LocalFolder;-><init>(Ljava/lang/String;Ljava/lang/String;IJJ)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alensw/ui/c/dc;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/dc;->B:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/alensw/a/d;)V
    .locals 12

    iget v0, p0, Lcom/alensw/ui/c/dc;->H:I

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alensw/a/d;->b:Ljava/lang/String;

    iget-char v1, p1, Lcom/alensw/a/d;->c:C

    invoke-static {v0, v1}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/alensw/bean/LocalFile;

    iget-char v1, p1, Lcom/alensw/a/d;->c:C

    iget-object v2, p1, Lcom/alensw/a/d;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/alensw/a/d;->b:Ljava/lang/String;

    const/4 v5, 0x5

    const-wide/16 v6, 0x0

    iget v8, p1, Lcom/alensw/a/d;->d:I

    int-to-long v8, v8

    iget v10, p1, Lcom/alensw/a/d;->d:I

    int-to-long v10, v10

    invoke-direct/range {v0 .. v11}, Lcom/alensw/bean/LocalFile;-><init>(CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJ)V

    iget-object v1, p0, Lcom/alensw/ui/c/dc;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alensw/ui/c/dc;->b:Landroid/os/Handler;

    const/16 v3, 0xbc2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alensw/ui/c/dc;Lcom/alensw/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/ui/c/dc;->a(Lcom/alensw/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/alensw/ui/c/dc;Lcom/alensw/a/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/ui/c/dc;->b(Lcom/alensw/a/e;)V

    return-void
.end method

.method static synthetic a(Lcom/alensw/ui/c/dc;Lcom/alensw/bean/CommonFile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/ui/c/dc;->b(Lcom/alensw/bean/CommonFile;)V

    return-void
.end method

.method private b(Lcom/alensw/a/e;)V
    .locals 8

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alensw/a/e;->e(I)Lcom/alensw/a/d;

    move-result-object v1

    iget v0, p0, Lcom/alensw/ui/c/dc;->H:I

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v0, Lcom/alensw/bean/LocalFolder;

    invoke-virtual {v1}, Lcom/alensw/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alensw/a/e;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x10000005

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/alensw/bean/LocalFolder;-><init>(Ljava/lang/String;Ljava/lang/String;IJJ)V

    iget-object v1, p0, Lcom/alensw/ui/c/dc;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alensw/ui/c/dc;->b:Landroid/os/Handler;

    const/16 v3, 0xbc2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private b(Lcom/alensw/bean/CommonFile;)V
    .locals 3

    iget v0, p0, Lcom/alensw/ui/c/dc;->H:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/dc;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alensw/ui/c/dc;->b:Landroid/os/Handler;

    const/16 v2, 0xbc2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alensw/ui/c/z;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alensw/ui/c/dc;->E:Landroid/content/Intent;

    const-string v1, "QuickPic.root_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/dc;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/alensw/ui/c/dc;->B:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/dc;->B:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "folders"

    iput-object v0, p0, Lcom/alensw/ui/c/dc;->B:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/dc;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/dc;->M:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/alensw/ui/c/dc;->C:Lcom/alensw/ui/c/cx;

    sget-object v1, Lcom/alensw/b/f/b;->i:Lcom/alensw/b/f/b;

    iget-object v2, p0, Lcom/alensw/ui/c/dc;->B:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alensw/b/f/a;->a(Landroid/content/Context;Lcom/alensw/b/f/b;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/alensw/bean/CommonFolder;)V
    .locals 4

    instance-of v0, p1, Lcom/alensw/bean/LocalFolder;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alensw/bean/CommonFolder;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alensw/ui/c/dc;->C:Lcom/alensw/ui/c/cx;

    const-class v2, Lcom/alensw/ui/c/bf;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/alensw/ui/c/cx;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/alensw/ui/c/z;->a(Lcom/alensw/bean/CommonFolder;)V

    goto :goto_0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/dc;->L:Lcom/alensw/b/k/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/dc;->L:Lcom/alensw/b/k/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/d;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/ui/c/dc;->L:Lcom/alensw/b/k/d;

    :cond_0
    invoke-super {p0}, Lcom/alensw/ui/c/z;->g()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/alensw/ui/c/z;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lcom/alensw/ui/c/dc;->H:I

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alensw/bean/CommonFile;

    iget-object v1, p0, Lcom/alensw/ui/c/dc;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v1, v0}, Lcom/alensw/bean/CommonFolder;->b(Lcom/alensw/bean/CommonFile;)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/c/dc;->y:Lcom/alensw/bean/CommonFolder;

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1, v0}, Lcom/alensw/bean/CommonFolder;->a(ILcom/alensw/bean/CommonFile;)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/dc;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xbc2
        :pswitch_0
    .end packed-switch
.end method

.method public n()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/dc;->L:Lcom/alensw/b/k/d;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/dc;->c(Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/dc;->f:Lcom/alensw/ui/view/ImageGridView;

    const v1, 0x7f0a0048

    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/dc;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->setEmptyText(Ljava/lang/String;)V

    sget-object v0, Lcom/alensw/ui/a/ao;->d:Lcom/alensw/b/k/a;

    new-instance v1, Lcom/alensw/ui/c/dd;

    iget-object v2, p0, Lcom/alensw/ui/c/dc;->E:Landroid/content/Intent;

    const-string v3, "QuickPic.keyword"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/alensw/ui/c/dd;-><init>(Lcom/alensw/ui/c/dc;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/a;->a(Lcom/alensw/b/k/k;)Lcom/alensw/b/k/d;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/dc;->L:Lcom/alensw/b/k/d;

    :cond_0
    return-void
.end method
