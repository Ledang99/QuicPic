.class public Lcom/alensw/transfer/s;
.super Lcom/alensw/transfer/a;


# instance fields
.field private final a:Lcom/alensw/transfer/z;

.field private final b:Ljava/util/ArrayList;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/widget/ListView;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Ljava/io/File;

.field private final i:Lcom/alensw/transfer/e;

.field private final j:Lcom/alensw/transfer/bj;

.field private k:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alensw/transfer/a;-><init>()V

    new-instance v0, Lcom/alensw/transfer/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alensw/transfer/z;-><init>(Lcom/alensw/transfer/s;Lcom/alensw/transfer/t;)V

    iput-object v0, p0, Lcom/alensw/transfer/s;->a:Lcom/alensw/transfer/z;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alensw/transfer/s;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/alensw/transfer/u;

    invoke-direct {v0, p0}, Lcom/alensw/transfer/u;-><init>(Lcom/alensw/transfer/s;)V

    iput-object v0, p0, Lcom/alensw/transfer/s;->i:Lcom/alensw/transfer/e;

    new-instance v0, Lcom/alensw/transfer/x;

    invoke-direct {v0, p0}, Lcom/alensw/transfer/x;-><init>(Lcom/alensw/transfer/s;)V

    iput-object v0, p0, Lcom/alensw/transfer/s;->j:Lcom/alensw/transfer/bj;

    new-instance v0, Lcom/alensw/transfer/y;

    invoke-direct {v0, p0}, Lcom/alensw/transfer/y;-><init>(Lcom/alensw/transfer/s;)V

    iput-object v0, p0, Lcom/alensw/transfer/s;->k:Ljava/util/Comparator;

    return-void
.end method

.method private a(Lcom/alensw/transfer/d;)I
    .locals 4

    iget-object v0, p0, Lcom/alensw/transfer/s;->d:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lcom/alensw/transfer/s;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const v3, 0x7f090004

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/transfer/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/alensw/transfer/s;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/s;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Lcom/alensw/transfer/d;Lcom/alensw/transfer/ab;)V
    .locals 9

    const/16 v8, 0x64

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/alensw/transfer/d;->b()Z

    move-result v2

    invoke-virtual {p1}, Lcom/alensw/transfer/d;->p()I

    move-result v3

    iget-object v4, p2, Lcom/alensw/transfer/ab;->c:Landroid/widget/ProgressBar;

    iget-object v5, p2, Lcom/alensw/transfer/ab;->d:Landroid/widget/ImageView;

    iget-object v6, p2, Lcom/alensw/transfer/ab;->b:Landroid/widget/TextView;

    iget-object v7, p2, Lcom/alensw/transfer/ab;->a:Landroid/widget/TextView;

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget v3, p0, Lcom/alensw/transfer/s;->f:I

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget v3, p0, Lcom/alensw/transfer/s;->f:I

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v2, :cond_0

    :goto_1
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/alensw/transfer/d;->q()F

    move-result v3

    iget v8, p0, Lcom/alensw/transfer/s;->f:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget v6, p0, Lcom/alensw/transfer/s;->f:I

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-nez v6, :cond_1

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_2
    if-eqz v2, :cond_2

    :goto_3
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :pswitch_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget v0, p0, Lcom/alensw/transfer/s;->f:I

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Lcom/alensw/transfer/s;->f:I

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget v0, p0, Lcom/alensw/transfer/s;->e:I

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Lcom/alensw/transfer/s;->e:I

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/alensw/transfer/s;Lcom/alensw/transfer/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/transfer/s;->b(Lcom/alensw/transfer/d;)V

    return-void
.end method

.method static synthetic a(Lcom/alensw/transfer/s;Lcom/alensw/transfer/d;Lcom/alensw/transfer/ab;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alensw/transfer/s;->a(Lcom/alensw/transfer/d;Lcom/alensw/transfer/ab;)V

    return-void
.end method

.method static synthetic b(Lcom/alensw/transfer/s;Lcom/alensw/transfer/d;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/alensw/transfer/s;->a(Lcom/alensw/transfer/d;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/alensw/transfer/s;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/s;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private b(Lcom/alensw/transfer/d;)V
    .locals 8

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/alensw/transfer/s;->h:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/alensw/b/c/b;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, "QP Transfer"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alensw/transfer/s;->h:Ljava/io/File;

    :cond_0
    new-instance v0, Lcom/alensw/bean/LocalFolder;

    iget-object v1, p0, Lcom/alensw/transfer/s;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/transfer/s;->h:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x32

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/alensw/bean/LocalFolder;-><init>(Ljava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {p1}, Lcom/alensw/transfer/d;->j()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alensw/transfer/f;

    iget-object v3, v1, Lcom/alensw/transfer/f;->e:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;)C

    move-result v4

    iget-object v1, v1, Lcom/alensw/transfer/f;->e:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alensw/jni/JniUtils;->fuGetFileTime(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v4, v1, v3}, Lcom/alensw/bean/LocalFolder;->a(CILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/transfer/s;->g()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/alensw/PicFolder/GalleryActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "QuickPic.folder"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic c(Lcom/alensw/transfer/s;)Lcom/alensw/transfer/e;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/s;->i:Lcom/alensw/transfer/e;

    return-object v0
.end method

.method static synthetic d(Lcom/alensw/transfer/s;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/s;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/alensw/transfer/s;)Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/s;->k:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic f(Lcom/alensw/transfer/s;)Lcom/alensw/transfer/z;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/s;->a:Lcom/alensw/transfer/z;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v0, 0x7f030008

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f090011

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a00ce

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f090007

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alensw/transfer/s;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alensw/transfer/s;->d:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-object v2
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alensw/transfer/a;->a(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f01000e

    invoke-static {p1, v1}, Lcom/alensw/ui/activity/ao;->b(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f050007

    invoke-static {v0, v2, v1}, Lcom/b/a/b;->a(Landroid/content/res/Resources;II)Lcom/b/a/l;

    move-result-object v1

    iput-object v1, p0, Lcom/alensw/transfer/s;->c:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f070049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alensw/transfer/s;->e:I

    check-cast p1, Lcom/alensw/ui/activity/ao;

    iget v0, p1, Lcom/alensw/ui/activity/ao;->Y:I

    iput v0, p0, Lcom/alensw/transfer/s;->f:I

    iget-object v0, p0, Lcom/alensw/transfer/s;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alensw/transfer/s;->a:Lcom/alensw/transfer/z;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alensw/transfer/s;->d:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alensw/transfer/s;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/alensw/transfer/t;

    invoke-direct {v1, p0}, Lcom/alensw/transfer/t;-><init>(Lcom/alensw/transfer/s;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public a(Landroid/app/Service;)V
    .locals 1

    instance-of v0, p1, Lcom/alensw/transfer/TransferService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/transfer/s;->g:Z

    move-object v0, p1

    check-cast v0, Lcom/alensw/transfer/TransferService;

    invoke-virtual {v0}, Lcom/alensw/transfer/TransferService;->a()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/transfer/s;->h:Ljava/io/File;

    check-cast p1, Lcom/alensw/transfer/TransferService;

    iget-object v0, p0, Lcom/alensw/transfer/s;->j:Lcom/alensw/transfer/bj;

    invoke-virtual {p1, v0}, Lcom/alensw/transfer/TransferService;->a(Lcom/alensw/transfer/bj;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/app/Service;)V
    .locals 1

    instance-of v0, p1, Lcom/alensw/transfer/TransferService;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alensw/transfer/s;->g:Z

    check-cast p1, Lcom/alensw/transfer/TransferService;

    iget-object v0, p0, Lcom/alensw/transfer/s;->j:Lcom/alensw/transfer/bj;

    invoke-virtual {p1, v0}, Lcom/alensw/transfer/TransferService;->b(Lcom/alensw/transfer/bj;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Lcom/alensw/transfer/s;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/s;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/transfer/d;

    invoke-virtual {v0}, Lcom/alensw/transfer/d;->k()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/alensw/transfer/a;->e()V

    return-void
.end method
