.class public Lcom/alensw/ui/c/p;
.super Lcom/alensw/ui/c/a;


# instance fields
.field protected final f:Landroid/widget/BaseAdapter;

.field private g:Z

.field private h:[I

.field private i:I

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/view/MenuItem;

.field private l:Landroid/widget/ListView;

.field private final m:Landroid/os/Handler;

.field private final n:Lcom/alensw/bean/CommonFolder;

.field private o:Lcom/alensw/b/k/d;

.field private p:Ljava/util/Set;

.field private q:Lcom/alensw/bean/CommonFolder;

.field private final r:Landroid/graphics/Rect;

.field private s:Lcom/alensw/bean/CommonFolder;

.field private final t:Landroid/widget/AdapterView$OnItemClickListener;

.field private final u:Lcom/alensw/a/az;


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Lcom/alensw/ui/c/a;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alensw/ui/c/p;->m:Landroid/os/Handler;

    new-instance v1, Lcom/alensw/bean/CommonFolder;

    const-string v2, ""

    move-wide v6, v4

    invoke-direct/range {v1 .. v8}, Lcom/alensw/bean/CommonFolder;-><init>(Ljava/lang/String;IJJLjava/lang/String;)V

    iput-object v1, p0, Lcom/alensw/ui/c/p;->n:Lcom/alensw/bean/CommonFolder;

    new-instance v1, Lcom/alensw/bean/CommonFolder;

    const-string v2, "roots"

    move-wide v6, v4

    invoke-direct/range {v1 .. v8}, Lcom/alensw/bean/CommonFolder;-><init>(Ljava/lang/String;IJJLjava/lang/String;)V

    iput-object v1, p0, Lcom/alensw/ui/c/p;->q:Lcom/alensw/bean/CommonFolder;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/c/p;->r:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/alensw/ui/c/p;->q:Lcom/alensw/bean/CommonFolder;

    iput-object v0, p0, Lcom/alensw/ui/c/p;->s:Lcom/alensw/bean/CommonFolder;

    new-instance v0, Lcom/alensw/ui/c/w;

    invoke-direct {v0, p0}, Lcom/alensw/ui/c/w;-><init>(Lcom/alensw/ui/c/p;)V

    iput-object v0, p0, Lcom/alensw/ui/c/p;->f:Landroid/widget/BaseAdapter;

    new-instance v0, Lcom/alensw/ui/c/x;

    invoke-direct {v0, p0}, Lcom/alensw/ui/c/x;-><init>(Lcom/alensw/ui/c/p;)V

    iput-object v0, p0, Lcom/alensw/ui/c/p;->t:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/alensw/ui/c/y;

    invoke-direct {v0, p0}, Lcom/alensw/ui/c/y;-><init>(Lcom/alensw/ui/c/p;)V

    iput-object v0, p0, Lcom/alensw/ui/c/p;->u:Lcom/alensw/a/az;

    return-void
.end method

.method static synthetic a(Lcom/alensw/ui/c/p;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/p;->j:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic a(Lcom/alensw/ui/c/p;Lcom/alensw/b/k/d;)Lcom/alensw/b/k/d;
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/p;->o:Lcom/alensw/b/k/d;

    return-object p1
.end method

.method private a(Lcom/alensw/cloud/z;I)V
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/alensw/ui/c/q;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alensw/ui/c/q;-><init>(Lcom/alensw/ui/c/p;Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/alensw/ui/c/p;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v1, v0, p1}, Lcom/alensw/cloud/oauth/e;->a(Landroid/app/Activity;Landroid/os/Handler;Lcom/alensw/cloud/z;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alensw/ui/c/p;Lcom/alensw/cloud/z;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alensw/ui/c/p;->a(Lcom/alensw/cloud/z;I)V

    return-void
.end method

.method static synthetic a(Lcom/alensw/ui/c/p;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/ui/c/p;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alensw/ui/c/p;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/ui/c/p;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/alensw/ui/c/p;)[I
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/p;->h:[I

    return-object v0
.end method

.method static synthetic c(Lcom/alensw/ui/c/p;)Lcom/alensw/bean/CommonFolder;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/p;->n:Lcom/alensw/bean/CommonFolder;

    return-object v0
.end method

.method static synthetic d(Lcom/alensw/ui/c/p;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/p;->l:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/alensw/ui/c/p;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/p;->t:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic f(Lcom/alensw/ui/c/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/ui/c/p;->n()V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/alensw/ui/c/p;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v0, p0, Lcom/alensw/ui/c/p;->q:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v6

    new-instance v0, Lcom/alensw/ui/c/u;

    iget-object v2, p0, Lcom/alensw/ui/c/p;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f0a0006

    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/p;->g(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/alensw/ui/c/u;-><init>(Lcom/alensw/ui/c/p;Landroid/app/Activity;Ljava/lang/String;ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alensw/ui/c/u;->c()V

    return-void
.end method

.method static synthetic g(Lcom/alensw/ui/c/p;)Lcom/alensw/bean/CommonFolder;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/p;->q:Lcom/alensw/bean/CommonFolder;

    return-object v0
.end method

.method static synthetic h(Lcom/alensw/ui/c/p;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/p;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic i(Lcom/alensw/ui/c/p;)I
    .locals 1

    iget v0, p0, Lcom/alensw/ui/c/p;->i:I

    return v0
.end method

.method static synthetic j(Lcom/alensw/ui/c/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/ui/c/p;->l()V

    return-void
.end method

.method private l()V
    .locals 0

    return-void
.end method

.method private m()V
    .locals 5

    iget-object v0, p0, Lcom/alensw/ui/c/p;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f0a004c

    const-string v2, ""

    const/4 v3, 0x0

    new-instance v4, Lcom/alensw/ui/c/t;

    invoke-direct {v4, p0}, Lcom/alensw/ui/c/t;-><init>(Lcom/alensw/ui/c/p;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/Object;Ljava/lang/CharSequence;Lcom/alensw/ui/a/s;)V

    return-void
.end method

.method private n()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/c/p;->C:Lcom/alensw/ui/c/cx;

    iget-object v1, p0, Lcom/alensw/ui/c/p;->h:[I

    invoke-static {v0, v1}, Lcom/alensw/cloud/e;->a(Landroid/content/Context;[I)Landroid/widget/BaseAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/p;->l:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/alensw/ui/c/p;->l:Landroid/widget/ListView;

    new-instance v2, Lcom/alensw/ui/c/v;

    invoke-direct {v2, p0, v0}, Lcom/alensw/ui/c/v;-><init>(Lcom/alensw/ui/c/p;Landroid/widget/BaseAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/alensw/ui/c/a;->a(IIII)V

    iget-object v0, p0, Lcom/alensw/ui/c/p;->C:Lcom/alensw/ui/c/cx;

    iget-object v1, p0, Lcom/alensw/ui/c/p;->r:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cx;->a(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alensw/ui/c/p;->l:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alensw/ui/c/p;->r:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/alensw/ui/c/p;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/alensw/ui/c/p;->r:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/alensw/ui/c/p;->r:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/alensw/ui/c/a;->a(Landroid/os/Bundle;)V

    const v0, 0x7f030008

    invoke-super {p0, v0}, Lcom/alensw/ui/c/a;->h(I)V

    invoke-virtual {p0}, Lcom/alensw/ui/c/p;->F()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080014

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/c/p;->i:I

    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/p;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alensw/ui/c/p;->l:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/alensw/ui/c/p;->E:Landroid/content/Intent;

    const-string v3, "QuickPic.title"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f0a00c1

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/p;->g(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/p;->b(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alensw/ui/c/p;->E:Landroid/content/Intent;

    const-string v3, "QuickPic.catalogs"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/p;->h:[I

    iget-object v0, p0, Lcom/alensw/ui/c/p;->h:[I

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alensw/ui/c/p;->h:[I

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/p;->E:Landroid/content/Intent;

    const-string v3, "QuickPic.root_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alensw/ui/c/p;->g:Z

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {p0, v3, v1}, Lcom/alensw/ui/c/p;->a(Ljava/lang/String;Z)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public a(Lcom/alensw/bean/CommonFile;Z)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/c/p;->q:Lcom/alensw/bean/CommonFolder;

    instance-of v1, p1, Lcom/alensw/bean/CommonRoot;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/alensw/bean/CommonRoot;

    invoke-virtual {p1}, Lcom/alensw/bean/CommonRoot;->k()Lcom/alensw/bean/CommonFolder;

    move-result-object v1

    iput-object v1, p0, Lcom/alensw/ui/c/p;->q:Lcom/alensw/bean/CommonFolder;

    iget-object v1, p0, Lcom/alensw/ui/c/p;->C:Lcom/alensw/ui/c/cx;

    iget-object v2, p1, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alensw/cloud/aa;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/alensw/ui/c/p;->p:Ljava/util/Set;

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/c/p;->q:Lcom/alensw/bean/CommonFolder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/alensw/bean/CommonFolder;->a(ILcom/alensw/bean/CommonFile;)V

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/p;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/alensw/ui/c/p;->l()V

    iget-object v0, p0, Lcom/alensw/ui/c/p;->q:Lcom/alensw/bean/CommonFolder;

    iget-object v1, p0, Lcom/alensw/ui/c/p;->n:Lcom/alensw/bean/CommonFolder;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/alensw/ui/c/p;->e_()V

    :cond_2
    return-void

    :cond_3
    instance-of v1, p1, Lcom/alensw/bean/CommonFolder;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/alensw/bean/CommonFolder;

    iput-object p1, p0, Lcom/alensw/ui/c/p;->q:Lcom/alensw/bean/CommonFolder;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/c/p;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/alensw/ui/a/ao;->d:Lcom/alensw/b/k/a;

    new-instance v2, Lcom/alensw/ui/c/r;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/alensw/ui/c/r;-><init>(Lcom/alensw/ui/c/p;Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/alensw/b/k/a;->a(Lcom/alensw/b/k/k;)Lcom/alensw/b/k/d;

    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const v0, 0x7f090040

    const v1, 0x7f0a0006

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/p;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v1, v0}, Lcom/alensw/b/g/l;->a(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v3}, Lcom/alensw/ui/c/p;->a(Landroid/view/MenuItem;I)V

    const v0, 0x7f090009

    const v1, 0x104000a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/p;->k:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/alensw/ui/c/p;->C:Lcom/alensw/ui/c/cx;

    iget-object v1, p0, Lcom/alensw/ui/c/p;->k:Landroid/view/MenuItem;

    invoke-static {v0, v1}, Lcom/alensw/b/g/l;->a(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/alensw/ui/c/p;->k:Landroid/view/MenuItem;

    invoke-virtual {p0, v0, v3}, Lcom/alensw/ui/c/p;->a(Landroid/view/MenuItem;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/alensw/ui/c/a;->a(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/alensw/ui/c/p;->q:Lcom/alensw/bean/CommonFolder;

    iget-object v1, p0, Lcom/alensw/ui/c/p;->n:Lcom/alensw/bean/CommonFolder;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/alensw/ui/c/p;->g:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alensw/ui/c/p;->n()V

    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/alensw/ui/c/p;->m()V

    goto :goto_1

    :sswitch_1
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v1, p0, Lcom/alensw/ui/c/p;->q:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v1}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/p;->q:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->c()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/p;->q:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/p;->a(Landroid/net/Uri;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090009 -> :sswitch_1
        0x7f090040 -> :sswitch_0
    .end sparse-switch
.end method

.method public e_()V
    .locals 8

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/alensw/ui/c/p;->q:Lcom/alensw/bean/CommonFolder;

    iget-object v1, p0, Lcom/alensw/ui/c/p;->n:Lcom/alensw/bean/CommonFolder;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/p;->o:Lcom/alensw/b/k/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/p;->q:Lcom/alensw/bean/CommonFolder;

    iget-object v1, p0, Lcom/alensw/ui/c/p;->s:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0, v1}, Lcom/alensw/bean/CommonFolder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/p;->o:Lcom/alensw/b/k/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/p;->o:Lcom/alensw/b/k/d;

    invoke-virtual {v0, v3}, Lcom/alensw/b/k/d;->cancel(Z)Z

    :cond_1
    invoke-virtual {p0, v3}, Lcom/alensw/ui/c/p;->c(Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/p;->q:Lcom/alensw/bean/CommonFolder;

    iput-object v0, p0, Lcom/alensw/ui/c/p;->s:Lcom/alensw/bean/CommonFolder;

    sget-object v7, Lcom/alensw/ui/c/z;->A:Lcom/alensw/b/k/a;

    new-instance v0, Lcom/alensw/a/av;

    iget-object v1, p0, Lcom/alensw/ui/c/p;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v1}, Lcom/alensw/ui/c/cx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/c/p;->q:Lcom/alensw/bean/CommonFolder;

    iget-object v4, p0, Lcom/alensw/ui/c/p;->p:Ljava/util/Set;

    iget-object v5, p0, Lcom/alensw/ui/c/p;->m:Landroid/os/Handler;

    iget-object v6, p0, Lcom/alensw/ui/c/p;->u:Lcom/alensw/a/az;

    invoke-direct/range {v0 .. v6}, Lcom/alensw/a/av;-><init>(Landroid/content/ContentResolver;Lcom/alensw/bean/CommonFolder;ZLjava/util/Set;Landroid/os/Handler;Lcom/alensw/a/az;)V

    invoke-virtual {v7, v0}, Lcom/alensw/b/k/a;->a(Lcom/alensw/b/k/k;)Lcom/alensw/b/k/d;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/p;->o:Lcom/alensw/b/k/d;

    :cond_2
    return-void
.end method

.method public f()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/alensw/ui/c/p;->l:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/ui/c/p;->f:Landroid/widget/BaseAdapter;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/c/p;->q:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v2}, Lcom/alensw/bean/CommonFolder;->o()I

    move-result v2

    if-lt v2, v1, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/c/p;->q:Lcom/alensw/bean/CommonFolder;

    iget-object v3, p0, Lcom/alensw/ui/c/p;->n:Lcom/alensw/bean/CommonFolder;

    if-eq v2, v3, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/c/p;->q:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v1, v0}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/alensw/ui/c/p;->a(Lcom/alensw/bean/CommonFile;Z)V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/alensw/ui/c/p;->n:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v2}, Lcom/alensw/bean/CommonFolder;->o()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/c/p;->l:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alensw/ui/c/p;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/alensw/ui/c/p;->l:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alensw/ui/c/p;->t:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/ui/c/p;->f_()V

    move v0, v1

    goto :goto_0
.end method

.method public f_()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/p;->o:Lcom/alensw/b/k/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/p;->o:Lcom/alensw/b/k/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/d;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/ui/c/p;->o:Lcom/alensw/b/k/d;

    :cond_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v1, p0, Lcom/alensw/ui/c/p;->q:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v1}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/p;->q:Lcom/alensw/bean/CommonFolder;

    iget-object v1, p0, Lcom/alensw/ui/c/p;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v1}, Lcom/alensw/ui/c/cx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/bean/CommonFolder;->b(Landroid/content/ContentResolver;)V

    :cond_1
    return-void
.end method
