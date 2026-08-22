.class public Lcom/alensw/ui/c/z;
.super Lcom/alensw/ui/c/a;


# static fields
.field public static final A:Lcom/alensw/b/k/a;

.field public static final z:Ljava/util/HashMap;


# instance fields
.field private B:Ljava/lang/String;

.field private L:Lcom/alensw/b/h/h;

.field private M:Lcom/alensw/b/k/d;

.field private N:Ljava/util/Set;

.field private O:Lcom/alensw/b/a/a;

.field private P:I

.field private final Q:Landroid/graphics/Rect;

.field private final R:Lcom/alensw/a/aj;

.field private final S:Lcom/alensw/ui/view/aj;

.field private final T:Ljava/lang/Runnable;

.field private final U:Landroid/database/ContentObserver;

.field private final V:Lcom/alensw/a/az;

.field protected f:Lcom/alensw/ui/view/ImageGridView;

.field protected g:Landroid/view/ViewGroup;

.field protected h:Landroid/widget/TextView;

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:Z

.field protected m:Z

.field protected n:Z

.field protected o:Z

.field protected p:Z

.field protected q:Z

.field protected r:Z

.field protected final s:Ljava/util/LinkedHashSet;

.field protected final t:Landroid/graphics/Paint;

.field protected final u:Landroid/graphics/Paint;

.field protected v:I

.field protected w:I

.field protected x:I

.field protected y:Lcom/alensw/bean/CommonFolder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/alensw/ui/c/z;->z:Ljava/util/HashMap;

    new-instance v0, Lcom/alensw/b/k/a;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/16 v3, 0x8

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alensw/b/k/a;-><init>(IIII)V

    sput-object v0, Lcom/alensw/ui/c/z;->A:Lcom/alensw/b/k/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/alensw/ui/c/a;-><init>()V

    iput-boolean v2, p0, Lcom/alensw/ui/c/z;->q:Z

    new-instance v0, Ljava/util/LinkedHashSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/c/z;->t:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/c/z;->u:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/c/z;->Q:Landroid/graphics/Rect;

    new-instance v0, Lcom/alensw/ui/c/ad;

    invoke-direct {v0, p0}, Lcom/alensw/ui/c/ad;-><init>(Lcom/alensw/ui/c/z;)V

    iput-object v0, p0, Lcom/alensw/ui/c/z;->R:Lcom/alensw/a/aj;

    new-instance v0, Lcom/alensw/ui/c/ae;

    invoke-direct {v0, p0}, Lcom/alensw/ui/c/ae;-><init>(Lcom/alensw/ui/c/z;)V

    iput-object v0, p0, Lcom/alensw/ui/c/z;->S:Lcom/alensw/ui/view/aj;

    new-instance v0, Lcom/alensw/ui/c/ah;

    invoke-direct {v0, p0}, Lcom/alensw/ui/c/ah;-><init>(Lcom/alensw/ui/c/z;)V

    iput-object v0, p0, Lcom/alensw/ui/c/z;->T:Ljava/lang/Runnable;

    new-instance v0, Lcom/alensw/ui/c/ai;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->b:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/alensw/ui/c/ai;-><init>(Lcom/alensw/ui/c/z;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alensw/ui/c/z;->U:Landroid/database/ContentObserver;

    new-instance v0, Lcom/alensw/ui/c/aj;

    invoke-direct {v0, p0}, Lcom/alensw/ui/c/aj;-><init>(Lcom/alensw/ui/c/z;)V

    iput-object v0, p0, Lcom/alensw/ui/c/z;->V:Lcom/alensw/a/az;

    return-void
.end method

.method public static a(Lcom/alensw/bean/CommonFolder;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "QuickPic.folder"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "QuickPic.is_root"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v1, "QuickPic.root_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/alensw/ui/c/z;)Lcom/alensw/b/a/a;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->O:Lcom/alensw/b/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/alensw/ui/c/z;Lcom/alensw/b/k/d;)Lcom/alensw/b/k/d;
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/z;->M:Lcom/alensw/b/k/d;

    return-object p1
.end method

.method static synthetic a(Lcom/alensw/ui/c/z;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/ui/c/z;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alensw/ui/c/z;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/ui/c/z;->y()V

    return-void
.end method

.method static synthetic c(Lcom/alensw/ui/c/z;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->T:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/alensw/ui/c/z;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->B:Ljava/lang/String;

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v6

    new-instance v0, Lcom/alensw/ui/c/ag;

    iget-object v2, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f0a0006

    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/z;->g(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/alensw/ui/c/ag;-><init>(Lcom/alensw/ui/c/z;Landroid/app/Activity;Ljava/lang/String;ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alensw/ui/c/ag;->c()V

    return-void
.end method

.method private w()V
    .locals 5

    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f0a004c

    const-string v2, ""

    const/4 v3, 0x0

    new-instance v4, Lcom/alensw/ui/c/af;

    invoke-direct {v4, p0}, Lcom/alensw/ui/c/af;-><init>(Lcom/alensw/ui/c/z;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/Object;Ljava/lang/CharSequence;Lcom/alensw/ui/a/s;)V

    return-void
.end method

.method private x()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.alensw.PicFolder.action.PICK_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v2}, Lcom/alensw/ui/c/cx;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alensw/PicFolder/GalleryActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/alensw/ui/activity/a;->a(Landroid/app/Activity;Landroid/content/Intent;I)Z

    return-void
.end method

.method private y()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->c()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alensw/ui/c/z;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/z;->O:Lcom/alensw/b/a/a;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0, v1}, Lcom/alensw/b/a/a;->c(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    :cond_0
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v1}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/a/bc;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(ZLandroid/graphics/RectF;)J
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v1, p1}, Lcom/alensw/ui/c/cx;->b(Z)J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3, p2}, Lcom/alensw/ui/view/ImageGridView;->a(ZJLandroid/graphics/RectF;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/alensw/ui/c/a;->a()V

    iget v0, p0, Lcom/alensw/ui/c/z;->P:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/z;->D:Landroid/view/View;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->D:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/alensw/ui/c/z;->D:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/alensw/ui/c/z;->P:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/alensw/ui/c/z;->D:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/alensw/ui/c/z;->D:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    iput v5, p0, Lcom/alensw/ui/c/z;->P:I

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    const-string v2, "horizontal_scroll"

    iget-object v3, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v3, v3, Lcom/alensw/ui/view/ImageGridView;->c:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alensw/ui/view/ImageGridView;->setHorizontal(Z)V

    iget v0, p0, Lcom/alensw/ui/c/z;->i:I

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/z;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alensw/ui/c/z;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->s()V

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/z;->O:Lcom/alensw/b/a/a;

    invoke-virtual {v0}, Lcom/alensw/b/a/a;->c()V

    :cond_2
    iput-boolean v5, p0, Lcom/alensw/ui/c/z;->r:Z

    iget-boolean v0, p0, Lcom/alensw/ui/c/z;->q:Z

    if-eqz v0, :cond_3

    iput-boolean v5, p0, Lcom/alensw/ui/c/z;->q:Z

    invoke-virtual {p0}, Lcom/alensw/ui/c/z;->n()V

    :goto_0
    invoke-virtual {p0}, Lcom/alensw/ui/c/z;->l()Z

    return-void

    :cond_3
    iget-object v0, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    goto :goto_0
.end method

.method public a(IIII)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/alensw/ui/c/a;->a(IIII)V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->Q:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cx;->a(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->Q:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/alensw/ui/c/z;->Q:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/alensw/ui/c/z;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/alensw/ui/c/z;->Q:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alensw/ui/view/ImageGridView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/z;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->Q:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/alensw/ui/c/z;->Q:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/alensw/ui/c/z;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v2, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    iget-object v3, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v3, v5, v0, v1}, Lcom/alensw/cloud/UrlTaskService;->a(Landroid/content/Context;ILandroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alensw/ui/c/cx;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void

    :cond_1
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v3, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    iget-object v4, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v4, v5, v0, v1}, Lcom/alensw/cloud/UrlTaskService;->a(Landroid/content/Context;ILandroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alensw/ui/c/cx;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method protected a(ILcom/alensw/bean/CommonFile;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget v1, v1, Lcom/alensw/bean/CommonFolder;->k:I

    invoke-virtual {v0, v1}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v1, p2}, Lcom/alensw/bean/CommonFolder;->a(Lcom/alensw/bean/CommonFile;)I

    move-result v1

    iput v1, v0, Lcom/alensw/bean/CommonFolder;->k:I

    :cond_0
    invoke-virtual {p2}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v0

    const/16 v1, 0x44

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/c/cx;->c(I)Landroid/view/View;

    move-result-object v0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/alensw/ui/c/df;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-direct {v0, v1, p2, v3}, Lcom/alensw/ui/c/df;-><init>(Landroid/content/Context;Lcom/alensw/bean/CommonFile;Lcom/alensw/b/h/k;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget v2, v2, Lcom/alensw/bean/CommonFolder;->k:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v2}, Lcom/alensw/bean/CommonFolder;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alensw/ui/c/am;

    invoke-direct {v2, p0, p2}, Lcom/alensw/ui/c/am;-><init>(Lcom/alensw/ui/c/z;Lcom/alensw/bean/CommonFile;)V

    invoke-virtual {v0, v1, v2}, Lcom/alensw/ui/c/df;->a(Ljava/lang/String;Lcom/alensw/ui/c/do;)V

    goto :goto_0

    :sswitch_1
    new-instance v1, Lcom/alensw/ui/c/df;

    iget-object v2, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-direct {v1, v2, p2, v3}, Lcom/alensw/ui/c/df;-><init>(Landroid/content/Context;Lcom/alensw/bean/CommonFile;Lcom/alensw/b/h/k;)V

    invoke-virtual {v1, v0, v3}, Lcom/alensw/ui/c/df;->b(Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_0

    :sswitch_2
    new-instance v1, Lcom/alensw/ui/c/df;

    iget-object v2, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-direct {v1, v2, p2, v3}, Lcom/alensw/ui/c/df;-><init>(Landroid/content/Context;Lcom/alensw/bean/CommonFile;Lcom/alensw/b/h/k;)V

    invoke-virtual {v1, v0, v3}, Lcom/alensw/ui/c/df;->a(Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_0

    :sswitch_3
    new-instance v1, Lcom/alensw/ui/c/df;

    iget-object v2, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-direct {v1, v2, p2, v3}, Lcom/alensw/ui/c/df;-><init>(Landroid/content/Context;Lcom/alensw/bean/CommonFile;Lcom/alensw/b/h/k;)V

    invoke-virtual {v1, v0}, Lcom/alensw/ui/c/df;->b(Landroid/view/View;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f090044 -> :sswitch_0
        0x7f090069 -> :sswitch_2
        0x7f09006a -> :sswitch_1
        0x7f09006c -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/alensw/ui/c/a;->a(Landroid/os/Bundle;)V

    const v0, 0x7f030002

    invoke-super {p0, v0}, Lcom/alensw/ui/c/a;->h(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->E:Landroid/content/Intent;

    const-string v3, "QuickPic.folder"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFolder;

    iput-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/c/z;->E()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->w:Lcom/alensw/b/a/a;

    iput-object v0, p0, Lcom/alensw/ui/c/z;->O:Lcom/alensw/b/a/a;

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/j/a;->c(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alensw/ui/c/z;->m:Z

    iget-object v0, p0, Lcom/alensw/ui/c/z;->E:Landroid/content/Intent;

    const-string v3, "QuickPic.is_root"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alensw/ui/c/z;->n:Z

    iget-object v0, p0, Lcom/alensw/ui/c/z;->E:Landroid/content/Intent;

    const-string v3, "QuickPic.root_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/z;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/alensw/ui/c/z;->B:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v3}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alensw/b/j/a;->d(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/z;->B:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->c()I

    move-result v3

    const/high16 v0, -0x80000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/alensw/ui/c/z;->l:Z

    const/high16 v0, 0x10000000

    and-int/2addr v0, v3

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/alensw/ui/c/z;->o:Z

    const/high16 v0, 0x8000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_9

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/alensw/ui/c/z;->p:Z

    iget-boolean v0, p0, Lcom/alensw/ui/c/z;->m:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alensw/ui/c/z;->n:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alensw/ui/c/z;->l:Z

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/alensw/ui/c/z;->n:Z

    :cond_2
    iget-boolean v0, p0, Lcom/alensw/ui/c/z;->p:Z

    if-eqz v0, :cond_4

    const-string v0, "sans-serif-light"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/alensw/ui/c/z;->u:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_3
    const-string v3, "sans-serif-thin"

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v0, p0, Lcom/alensw/ui/c/z;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/alensw/ui/c/z;->t:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->u:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-boolean v0, p0, Lcom/alensw/ui/c/z;->n:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/alensw/ui/c/z;->m:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    iget-object v2, p0, Lcom/alensw/ui/c/z;->B:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alensw/cloud/aa;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/z;->N:Ljava/util/Set;

    :cond_5
    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/z;->b(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    :goto_6
    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/z;->c(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->E:Landroid/content/Intent;

    invoke-static {v0}, Lcom/alensw/ui/activity/p;->b(Landroid/content/Intent;)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/c/z;->i:I

    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/z;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alensw/ui/c/z;->c:Landroid/view/ViewGroup;

    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/z;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/view/ImageGridView;

    iput-object v0, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-object v0, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    sget v1, Lcom/alensw/PicFolder/QuickApp;->h:I

    div-int/lit16 v1, v1, 0x140

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->setSpaceWidth(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v1}, Lcom/alensw/a/q;->a(Landroid/content/Context;)Lcom/alensw/a/q;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v1, v2}, Lcom/alensw/a/q;->a(Lcom/alensw/bean/CommonFolder;)I

    move-result v1

    iput v1, v0, Lcom/alensw/bean/CommonFolder;->l:I

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->k()I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/c/z;->j:I

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->l()I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/c/z;->k:I

    iget v0, p0, Lcom/alensw/ui/c/z;->j:I

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/z;->b(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v1}, Lcom/alensw/ui/c/cx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/c/z;->U:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2}, Lcom/alensw/bean/CommonFolder;->a(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    iget-boolean v0, p0, Lcom/alensw/ui/c/z;->m:Z

    if-eqz v0, :cond_c

    const-string v0, "local"

    :goto_7
    invoke-static {v1, v0}, Lcom/alensw/ui/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto/16 :goto_2

    :cond_8
    move v0, v2

    goto/16 :goto_3

    :cond_9
    move v0, v2

    goto/16 :goto_4

    :cond_a
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/alensw/ui/c/z;->t:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_5

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_c
    const-string v0, "cloud"

    goto :goto_7
.end method

.method public a(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Lcom/alensw/ui/c/z;->s()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    if-eqz v2, :cond_0

    new-instance v0, Lcom/alensw/ui/c/df;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    const/4 v3, 0x0

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/alensw/ui/c/df;-><init>(Landroid/content/Context;Landroid/net/Uri;CLjava/lang/String;Lcom/alensw/b/h/k;)V

    invoke-virtual {v0, p1}, Lcom/alensw/ui/c/df;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f0a0073

    new-instance v2, Lcom/alensw/ui/c/ab;

    invoke-direct {v2, p0}, Lcom/alensw/ui/c/ab;-><init>(Lcom/alensw/ui/c/z;)V

    invoke-static {v0, v4, v1, p1, v2}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;ILandroid/view/View;Lcom/alensw/ui/activity/o;)I

    goto :goto_0
.end method

.method public a(Lcom/alensw/bean/CommonFile;)V
    .locals 3

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->t:Lcom/alensw/a/ah;

    iget-boolean v1, p0, Lcom/alensw/ui/c/z;->l:Z

    iget-object v2, p0, Lcom/alensw/ui/c/z;->R:Lcom/alensw/a/aj;

    invoke-virtual {v0, p1, v1, v2}, Lcom/alensw/a/ah;->a(Lcom/alensw/bean/CommonFile;ZLcom/alensw/a/aj;)V

    return-void
.end method

.method public a(Lcom/alensw/bean/CommonFolder;)V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    const-class v1, Lcom/alensw/ui/c/z;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alensw/ui/c/z;->B:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/alensw/ui/c/z;->a(Lcom/alensw/bean/CommonFolder;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alensw/ui/c/cx;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alensw/ui/c/z;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f03000c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alensw/ui/c/z;->g:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/alensw/ui/c/z;->D:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->g:Landroid/view/ViewGroup;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->g:Landroid/view/ViewGroup;

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alensw/ui/c/z;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alensw/ui/c/z;->g:Landroid/view/ViewGroup;

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alensw/ui/c/z;->F()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050007

    iget-object v3, p0, Lcom/alensw/ui/c/z;->h:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/alensw/b/l/b;->a(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/alensw/ui/c/ac;

    invoke-direct {v1, p0}, Lcom/alensw/ui/c/ac;-><init>(Lcom/alensw/ui/c/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/z;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->Q:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/alensw/ui/c/z;->Q:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/alensw/ui/c/z;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alensw/ui/c/cx;->c(Z)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->w:Lcom/alensw/b/a/a;

    invoke-virtual {v2, v1}, Lcom/alensw/b/a/a;->c(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0, p1}, Lcom/alensw/bean/CommonFolder;->a(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    return-void
.end method

.method public a(Ljava/util/HashSet;Landroid/net/Uri;)V
    .locals 11

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/z;->a(Z)V

    sget-object v9, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lcom/alensw/ui/c/aq;

    iget-object v2, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f0a004b

    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/z;->g(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v10}, Lcom/alensw/ui/c/aq;-><init>(Lcom/alensw/ui/c/z;Landroid/app/Activity;Ljava/lang/String;ILjava/util/HashSet;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Lcom/alensw/a/bc;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/alensw/ui/c/aq;->c()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3

    sget-object v0, Lcom/alensw/ui/c/z;->z:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v1}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v2}, Lcom/alensw/ui/view/ImageGridView;->getScrollPos()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->c()V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->t:Lcom/alensw/a/ah;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alensw/a/ah;->a(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/z;->O:Lcom/alensw/b/a/a;

    invoke-virtual {v0}, Lcom/alensw/b/a/a;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/c/z;->v()V

    goto :goto_0
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const v7, 0x7f090051

    const v6, 0x7f090040

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v0, v0, Lcom/alensw/ui/view/ImageGridView;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    const v3, 0x7f0c0002

    invoke-static {v0, v3, p1}, Lcom/alensw/b/g/b;->a(Landroid/content/Context;ILandroid/view/Menu;)V

    iget v0, p0, Lcom/alensw/ui/c/z;->i:I

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, v7, v5}, Lcom/alensw/ui/c/z;->a(Landroid/view/Menu;II)V

    const v0, 0x7f090052

    invoke-virtual {p0, p1, v0, v5}, Lcom/alensw/ui/c/z;->a(Landroid/view/Menu;II)V

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->c()I

    move-result v0

    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_4

    invoke-virtual {p0, p1, v6, v1}, Lcom/alensw/ui/c/z;->a(Landroid/view/Menu;II)V

    :goto_1
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    invoke-static {v3}, Lcom/alensw/b/j/a;->c(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f090053

    invoke-virtual {p0, p1, v0, v5}, Lcom/alensw/ui/c/z;->a(Landroid/view/Menu;II)V

    :goto_2
    iget-boolean v0, p0, Lcom/alensw/ui/c/z;->n:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/alensw/ui/c/z;->m:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {p0, p1, v7, v0}, Lcom/alensw/ui/c/z;->a(Landroid/view/Menu;IZ)V

    const v0, 0x7f090054

    iget-boolean v4, p0, Lcom/alensw/ui/c/z;->o:Z

    invoke-virtual {p0, p1, v0, v4}, Lcom/alensw/ui/c/z;->a(Landroid/view/Menu;IZ)V

    const v0, 0x7f090056

    iget-boolean v4, p0, Lcom/alensw/ui/c/z;->n:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/alensw/ui/c/z;->m:Z

    if-eqz v4, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {p0, p1, v0, v2}, Lcom/alensw/ui/c/z;->a(Landroid/view/Menu;IZ)V

    const v0, 0x7f090057

    iget-boolean v2, p0, Lcom/alensw/ui/c/z;->n:Z

    invoke-virtual {p0, p1, v0, v2}, Lcom/alensw/ui/c/z;->a(Landroid/view/Menu;IZ)V

    invoke-static {v3}, Lcom/alensw/b/j/a;->d(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f090055

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1

    :cond_5
    const v0, 0x7f090053

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v3, 0x7

    const/4 v4, 0x3

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    iget-object v6, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v6, v5}, Lcom/alensw/ui/c/cx;->c(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v7}, Ljava/util/LinkedHashSet;->size()I

    move-result v7

    iget-object v8, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget v8, v8, Lcom/alensw/bean/CommonFolder;->l:I

    sparse-switch v5, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/alensw/ui/c/a;->a(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :sswitch_0
    invoke-direct {p0}, Lcom/alensw/ui/c/z;->w()V

    :cond_1
    :goto_1
    iget v0, p0, Lcom/alensw/ui/c/z;->j:I

    iget v3, p0, Lcom/alensw/ui/c/z;->k:I

    invoke-static {v0, v3}, Lcom/alensw/bean/CommonFolder;->a(II)I

    move-result v0

    if-eq v0, v8, :cond_0

    iget-object v3, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v3}, Lcom/alensw/bean/CommonFolder;->k()I

    move-result v3

    iget-object v4, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v4}, Lcom/alensw/bean/CommonFolder;->l()I

    move-result v4

    iget-object v5, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iput v0, v5, Lcom/alensw/bean/CommonFolder;->l:I

    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v0}, Lcom/alensw/a/q;->a(Landroid/content/Context;)Lcom/alensw/a/q;

    move-result-object v0

    iget-object v5, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0, v5}, Lcom/alensw/a/q;->b(Lcom/alensw/bean/CommonFolder;)V

    iget v0, p0, Lcom/alensw/ui/c/z;->j:I

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->k()I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/c/z;->j:I

    iget v0, p0, Lcom/alensw/ui/c/z;->j:I

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/z;->b(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v3}, Lcom/alensw/ui/view/ImageGridView;->getHeight()I

    move-result v3

    if-lez v0, :cond_2

    if-lez v3, :cond_2

    iget-object v5, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-object v6, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v6, v1}, Lcom/alensw/ui/c/cx;->b(Z)J

    move-result-wide v6

    new-instance v8, Landroid/graphics/RectF;

    div-int/lit8 v9, v0, 0x4

    int-to-float v9, v9

    div-int/lit8 v10, v3, 0x4

    int-to-float v10, v10

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    invoke-direct {v8, v9, v10, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v1, v6, v7, v8}, Lcom/alensw/ui/view/ImageGridView;->a(ZJLandroid/graphics/RectF;)J

    :cond_2
    iget v0, p0, Lcom/alensw/ui/c/z;->k:I

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->l()I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/c/z;->k:I

    invoke-virtual {p0, v2}, Lcom/alensw/ui/c/z;->a(Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->s()V

    invoke-virtual {p0}, Lcom/alensw/ui/c/z;->n()V

    goto/16 :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/alensw/ui/c/z;->x()V

    goto/16 :goto_1

    :sswitch_2
    iget-boolean v0, p0, Lcom/alensw/ui/c/z;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->B:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->B:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/z;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/z;->b(Z)V

    goto/16 :goto_1

    :sswitch_4
    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    new-instance v3, Lcom/alensw/ui/c/aa;

    invoke-direct {v3, p0}, Lcom/alensw/ui/c/aa;-><init>(Lcom/alensw/ui/c/z;)V

    invoke-static {v0, v6, v3}, Lcom/alensw/b/g/b;->a(Landroid/content/Context;Landroid/view/View;Lcom/alensw/b/g/k;)V

    goto/16 :goto_1

    :sswitch_5
    iput v2, p0, Lcom/alensw/ui/c/z;->j:I

    goto/16 :goto_1

    :sswitch_6
    iput v0, p0, Lcom/alensw/ui/c/z;->j:I

    goto/16 :goto_1

    :sswitch_7
    iget v0, p0, Lcom/alensw/ui/c/z;->k:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    move v3, v2

    :goto_2
    iget-object v5, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-static {v5, v6, v4, v3, v0}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/view/View;[IIZ)V

    goto/16 :goto_1

    :pswitch_1
    move v0, v1

    :goto_3
    const v3, 0x7f090074

    goto :goto_2

    :pswitch_2
    move v0, v1

    :goto_4
    const v3, 0x7f090075

    goto :goto_2

    :pswitch_3
    move v0, v1

    :goto_5
    const v3, 0x7f090077

    goto :goto_2

    :sswitch_8
    iget v3, p0, Lcom/alensw/ui/c/z;->k:I

    if-ne v3, v0, :cond_3

    const/4 v0, 0x4

    :cond_3
    iput v0, p0, Lcom/alensw/ui/c/z;->k:I

    goto/16 :goto_1

    :sswitch_9
    iget v0, p0, Lcom/alensw/ui/c/z;->k:I

    if-ne v0, v1, :cond_4

    move v0, v4

    :goto_6
    iput v0, p0, Lcom/alensw/ui/c/z;->k:I

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto :goto_6

    :sswitch_a
    iget v0, p0, Lcom/alensw/ui/c/z;->k:I

    if-ne v0, v3, :cond_5

    const/16 v0, 0x8

    :goto_7
    iput v0, p0, Lcom/alensw/ui/c/z;->k:I

    goto/16 :goto_1

    :cond_5
    move v0, v3

    goto :goto_7

    :sswitch_b
    iget-object v0, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v0, v0, Lcom/alensw/ui/view/ImageGridView;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    iget-object v3, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v3}, Lcom/alensw/bean/CommonFolder;->o()I

    move-result v3

    if-ge v0, v3, :cond_6

    iget-object v0, p0, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    iget-object v3, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v3}, Lcom/alensw/bean/CommonFolder;->p()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    :goto_8
    iget-object v0, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->b()V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v4}, Lcom/alensw/bean/CommonFolder;->o()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/alensw/ui/c/cx;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    goto :goto_8

    :sswitch_c
    invoke-virtual {p0, v6}, Lcom/alensw/ui/c/z;->a(Landroid/view/View;)V

    goto/16 :goto_1

    :sswitch_d
    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    new-instance v3, Lcom/alensw/ui/c/ak;

    invoke-direct {v3, p0}, Lcom/alensw/ui/c/ak;-><init>(Lcom/alensw/ui/c/z;)V

    invoke-static {v0, v7, v6, v3}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;ILandroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :sswitch_e
    invoke-virtual {p0}, Lcom/alensw/ui/c/z;->p()V

    goto/16 :goto_1

    :sswitch_f
    iget-boolean v0, p0, Lcom/alensw/ui/c/z;->m:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/alensw/ui/c/z;->a:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/alensw/ui/c/z;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_7
    :sswitch_10
    invoke-virtual {p0}, Lcom/alensw/ui/c/z;->u()Ljava/util/HashSet;

    move-result-object v3

    const v0, 0x7f09006b

    if-ne v5, v0, :cond_9

    move v0, v1

    :goto_9
    new-instance v4, Lcom/alensw/ui/c/al;

    invoke-direct {v4, p0}, Lcom/alensw/ui/c/al;-><init>(Lcom/alensw/ui/c/z;)V

    invoke-virtual {p0, v3, v0, v4}, Lcom/alensw/ui/c/z;->a(Ljava/util/HashSet;ZLcom/alensw/ui/c/n;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/alensw/ui/c/z;->q()V

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto :goto_9

    :sswitch_11
    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v0, v6}, Lcom/alensw/ui/activity/a;->c(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_1

    :sswitch_12
    const/16 v0, -0x5a

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/z;->c(I)V

    goto/16 :goto_1

    :sswitch_13
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/z;->c(I)V

    goto/16 :goto_1

    :sswitch_14
    const/16 v0, 0xb4

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/z;->c(I)V

    goto/16 :goto_1

    :sswitch_15
    iget-object v0, p0, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    invoke-virtual {p0, v5, v0}, Lcom/alensw/ui/c/z;->a(ILcom/alensw/bean/CommonFile;)V

    goto/16 :goto_1

    :sswitch_16
    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->c()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cx;->d(Z)V

    invoke-virtual {p0}, Lcom/alensw/ui/c/z;->m()I

    goto/16 :goto_1

    :sswitch_17
    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->o()I

    move-result v3

    move v0, v2

    :goto_a
    if-ge v0, v3, :cond_1

    iget-object v4, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v4, v0}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/alensw/bean/CommonFile;->c()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_a

    iget-object v3, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v3}, Lcom/alensw/bean/CommonFolder;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v4}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v5, v0}, Lcom/alensw/bean/CommonFolder;->b(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v3, v4, v0}, Lcom/alensw/ui/c/z;->a(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :pswitch_4
    move v0, v2

    goto/16 :goto_3

    :pswitch_5
    move v0, v2

    goto/16 :goto_4

    :pswitch_6
    move v0, v2

    goto/16 :goto_5

    :sswitch_data_0
    .sparse-switch
        0x102001f -> :sswitch_b
        0x7f09000a -> :sswitch_c
        0x7f090040 -> :sswitch_0
        0x7f090044 -> :sswitch_15
        0x7f090048 -> :sswitch_4
        0x7f09004b -> :sswitch_5
        0x7f09004c -> :sswitch_6
        0x7f09004e -> :sswitch_d
        0x7f09004f -> :sswitch_e
        0x7f090050 -> :sswitch_f
        0x7f090051 -> :sswitch_2
        0x7f090052 -> :sswitch_3
        0x7f090053 -> :sswitch_1
        0x7f090054 -> :sswitch_7
        0x7f090055 -> :sswitch_17
        0x7f09005a -> :sswitch_11
        0x7f09005e -> :sswitch_16
        0x7f090069 -> :sswitch_15
        0x7f09006a -> :sswitch_15
        0x7f09006b -> :sswitch_10
        0x7f09006c -> :sswitch_15
        0x7f090070 -> :sswitch_12
        0x7f090071 -> :sswitch_13
        0x7f090072 -> :sswitch_14
        0x7f090074 -> :sswitch_8
        0x7f090075 -> :sswitch_9
        0x7f090077 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_6
    .end packed-switch

    :array_0
    .array-data 4
        0x7f090074
        0x7f090075
        0x7f090077
    .end array-data
.end method

.method public b()V
    .locals 1

    invoke-super {p0}, Lcom/alensw/ui/c/a;->b()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/z;->a(Z)V

    return-void
.end method

.method protected b(I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    iget-boolean v0, p0, Lcom/alensw/ui/c/z;->l:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget v0, v0, Lcom/alensw/a/bc;->f:I

    :goto_0
    iput v0, p0, Lcom/alensw/ui/c/z;->w:I

    iget-boolean v0, p0, Lcom/alensw/ui/c/z;->l:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget v0, v0, Lcom/alensw/a/bc;->g:I

    :goto_1
    iput v0, p0, Lcom/alensw/ui/c/z;->x:I

    iput v3, p0, Lcom/alensw/ui/c/z;->v:I

    move v0, v1

    :goto_2
    iget-object v1, p0, Lcom/alensw/ui/c/z;->L:Lcom/alensw/b/h/h;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/z;->L:Lcom/alensw/b/h/h;

    invoke-virtual {v1}, Lcom/alensw/b/h/h;->m()I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alensw/ui/c/z;->L:Lcom/alensw/b/h/h;

    :cond_0
    iget-object v1, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-object v2, p0, Lcom/alensw/ui/c/z;->S:Lcom/alensw/ui/view/aj;

    iget v3, p0, Lcom/alensw/ui/c/z;->w:I

    iget v4, p0, Lcom/alensw/ui/c/z;->x:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/alensw/ui/view/ImageGridView;->a(Lcom/alensw/ui/view/aj;II)V

    iget-object v1, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v2, p0, Lcom/alensw/ui/c/z;->l:Z

    invoke-virtual {v1, v0, v2}, Lcom/alensw/ui/view/ImageGridView;->a(IZ)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/alensw/ui/c/z;->e()[I

    move-result-object v0

    aget v2, v0, v3

    iput v2, p0, Lcom/alensw/ui/c/z;->w:I

    aget v0, v0, v1

    iput v0, p0, Lcom/alensw/ui/c/z;->x:I

    iput v3, p0, Lcom/alensw/ui/c/z;->v:I

    const/4 v0, 0x2

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget v0, v0, Lcom/alensw/a/bc;->d:I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget v0, v0, Lcom/alensw/a/bc;->e:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget-object v2, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget v2, v2, Lcom/alensw/bean/CommonFolder;->k:I

    invoke-virtual {v1, v2}, Lcom/alensw/bean/CommonFolder;->b(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget-object v2, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v2, v0}, Lcom/alensw/bean/CommonFolder;->a(Landroid/net/Uri;)I

    move-result v0

    iput v0, v1, Lcom/alensw/bean/CommonFolder;->k:I

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget v1, v1, Lcom/alensw/bean/CommonFolder;->k:I

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->c(I)V

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget v1, v1, Lcom/alensw/bean/CommonFolder;->k:I

    invoke-virtual {v0, v1}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alensw/ui/c/z;->m:Z

    if-eqz v1, :cond_2

    instance-of v1, v0, Lcom/alensw/bean/CommonFolder;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget v1, v1, Lcom/alensw/bean/CommonFolder;->k:I

    invoke-virtual {v0, v1}, Lcom/alensw/bean/CommonFolder;->c(I)Z

    iget-object v0, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    :cond_2
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    const/4 v1, -0x1

    iput v1, v0, Lcom/alensw/bean/CommonFolder;->k:I

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0, v2}, Lcom/alensw/bean/CommonFolder;->a(Z)Lcom/alensw/bean/CommonFolder;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0, v1, v2}, Lcom/alensw/bean/CommonFolder;->a(Lcom/alensw/bean/CommonFolder;Z)V

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->o()I

    move-result v1

    iget-object v3, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v3}, Lcom/alensw/bean/CommonFolder;->o()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    :cond_1
    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/alensw/ui/c/z;->m:Z

    if-eqz v1, :cond_2

    move v1, v2

    move-object v3, v0

    :goto_0
    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->o()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0, v1}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    instance-of v4, v0, Lcom/alensw/bean/CommonFolder;

    if-eqz v4, :cond_4

    check-cast v0, Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->n()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->n()Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    return-void

    :cond_3
    move-object v3, v0

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v1}, Lcom/alensw/ui/c/cx;->s()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/alensw/ui/c/z;->D:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    aget v5, v1, v7

    add-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    aget v1, v1, v7

    iput v1, p0, Lcom/alensw/ui/c/z;->P:I

    :goto_3
    iput-boolean v7, p0, Lcom/alensw/ui/c/z;->r:Z

    invoke-static {v0, p1}, Lcom/alensw/ui/c/as;->a(Lcom/alensw/bean/CommonFolder;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    const-class v2, Lcom/alensw/ui/c/as;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/alensw/ui/c/cx;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;

    goto :goto_2

    :cond_6
    iput v2, p0, Lcom/alensw/ui/c/z;->P:I

    goto :goto_3

    :cond_7
    move-object v0, v3

    goto :goto_1
.end method

.method public b(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v0, v0, Lcom/alensw/ui/view/ImageGridView;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/alensw/ui/c/z;->m:Z

    if-eqz v0, :cond_0

    const-string v0, "local"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/z;->B:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->B:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/c/z;->B:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/c/z;->B:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/alensw/ui/c/a;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c(I)V
    .locals 7

    invoke-virtual {p0}, Lcom/alensw/ui/c/z;->u()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/z;->a(Z)V

    new-instance v0, Lcom/alensw/ui/c/ar;

    iget-object v2, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0a0064

    invoke-virtual {p0, v3}, Lcom/alensw/ui/c/z;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/alensw/ui/c/ar;-><init>(Lcom/alensw/ui/c/z;Landroid/app/Activity;Ljava/lang/String;ILjava/util/HashSet;I)V

    invoke-virtual {v0}, Lcom/alensw/ui/c/ar;->c()V

    goto :goto_0
.end method

.method protected c(Landroid/view/Menu;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const v5, 0x7f09004e

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    iget-boolean v0, p0, Lcom/alensw/ui/c/z;->m:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c0007

    :goto_0
    invoke-static {v1, v0, p1}, Lcom/alensw/b/g/b;->a(Landroid/content/Context;ILandroid/view/Menu;)V

    const v0, 0x102001f

    const v1, 0x104000d

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    sget-boolean v0, Lcom/alensw/ui/activity/ao;->F:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    const v0, 0x7f0c0001

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/alensw/ui/c/z;->m:Z

    if-eqz v0, :cond_3

    const v0, 0x7f09000a

    invoke-virtual {p0, p1, v0, v2}, Lcom/alensw/ui/c/z;->a(Landroid/view/Menu;II)V

    invoke-virtual {p0, p1, v5, v2}, Lcom/alensw/ui/c/z;->a(Landroid/view/Menu;II)V

    const v0, 0x7f09005a

    invoke-virtual {p0, p1, v0, v2}, Lcom/alensw/ui/c/z;->a(Landroid/view/Menu;II)V

    const v0, 0x7f090062

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const v0, 0x7f090052

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const v0, 0x7f090057

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0, v4}, Lcom/alensw/ui/view/ImageGridView;->setMultiSelect(Z)V

    return v4

    :cond_3
    const v0, 0x7f09004f

    invoke-virtual {p0, p1, v0, v2}, Lcom/alensw/ui/c/z;->a(Landroid/view/Menu;II)V

    invoke-virtual {p0, p1, v5, v2}, Lcom/alensw/ui/c/z;->a(Landroid/view/Menu;II)V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->c()I

    move-result v0

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    :cond_4
    const v0, 0x7f090050

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_2
.end method

.method protected d(Landroid/view/Menu;)Z
    .locals 8

    const/16 v7, 0x49

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    iget-boolean v0, p0, Lcom/alensw/ui/c/z;->m:Z

    if-eqz v0, :cond_2

    if-ne v5, v1, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v0

    move v4, v0

    :goto_0
    if-ne v4, v7, :cond_4

    move v3, v1

    :goto_1
    const v6, 0x7f09005a

    const/16 v0, 0x44

    if-eq v4, v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {p0, p1, v6, v0}, Lcom/alensw/ui/c/z;->a(Landroid/view/Menu;IZ)V

    const v0, 0x7f090044

    if-eq v4, v7, :cond_0

    const/16 v6, 0x56

    if-ne v4, v6, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {p0, p1, v0, v2}, Lcom/alensw/ui/c/z;->a(Landroid/view/Menu;IZ)V

    const v0, 0x7f090069

    invoke-virtual {p0, p1, v0, v3}, Lcom/alensw/ui/c/z;->a(Landroid/view/Menu;IZ)V

    const v0, 0x7f09006a

    invoke-virtual {p0, p1, v0, v3}, Lcom/alensw/ui/c/z;->a(Landroid/view/Menu;IZ)V

    const v0, 0x7f09006c

    invoke-virtual {p0, p1, v0, v3}, Lcom/alensw/ui/c/z;->a(Landroid/view/Menu;IZ)V

    :cond_2
    const v0, 0x102001f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v0, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->getCount()I

    move-result v0

    if-ne v5, v0, :cond_6

    const v0, 0x7f0a002e

    :goto_3
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return v1

    :cond_3
    move v4, v2

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    const v0, 0x104000d

    goto :goto_3
.end method

.method public g()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/alensw/ui/c/a;->g()V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget-object v2, p0, Lcom/alensw/ui/c/z;->U:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2}, Lcom/alensw/bean/CommonFolder;->b(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v1, v0}, Lcom/alensw/bean/CommonFolder;->b(Landroid/content/ContentResolver;)V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->T:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->M:Lcom/alensw/b/k/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/z;->M:Lcom/alensw/b/k/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/d;->cancel(Z)Z

    iput-object v3, p0, Lcom/alensw/ui/c/z;->M:Lcom/alensw/b/k/d;

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/z;->L:Lcom/alensw/b/h/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->L:Lcom/alensw/b/h/h;

    invoke-virtual {v0}, Lcom/alensw/b/h/h;->m()I

    iput-object v3, p0, Lcom/alensw/ui/c/z;->L:Lcom/alensw/b/h/h;

    :cond_1
    return-void
.end method

.method public h()Landroid/graphics/RectF;
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-object v2, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget v2, v2, Lcom/alensw/bean/CommonFolder;->k:I

    invoke-virtual {v1, v2}, Lcom/alensw/ui/view/ImageGridView;->c(I)V

    iget-object v1, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget-object v2, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget v2, v2, Lcom/alensw/bean/CommonFolder;->k:I

    invoke-virtual {v1, v2}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v1

    const/16 v2, 0x49

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-object v2, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget v2, v2, Lcom/alensw/bean/CommonFolder;->k:I

    invoke-virtual {v1, v2}, Lcom/alensw/ui/view/ImageGridView;->a(I)V

    :cond_0
    iget-object v1, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget v1, v1, Lcom/alensw/bean/CommonFolder;->k:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-object v2, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget v2, v2, Lcom/alensw/bean/CommonFolder;->k:I

    invoke-virtual {v1, v2, v0}, Lcom/alensw/ui/view/ImageGridView;->b(ILandroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iget v2, p0, Lcom/alensw/ui/c/z;->P:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/alensw/ui/c/a;->h()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->a(I)V

    invoke-super {p0}, Lcom/alensw/ui/c/a;->i()V

    return-void
.end method

.method protected j()[Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/c/z;->r()[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected k()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->setMultiSelect(Z)V

    invoke-virtual {p0}, Lcom/alensw/ui/c/z;->m()I

    return-void
.end method

.method protected l()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v1}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/c/cx;->d(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/c/z;->m()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected m()I
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->o()I

    move-result v1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v0, v0, Lcom/alensw/ui/view/ImageGridView;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v2}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/alensw/ui/c/cx;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/z;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->a()Ljava/lang/String;

    move-result-object v0

    if-lez v1, :cond_3

    iget-boolean v2, p0, Lcom/alensw/ui/c/z;->m:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/alensw/ui/c/z;->n:Z

    if-nez v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/alensw/ui/c/z;->p:Z

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/z;->b(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public n()V
    .locals 8

    iget-object v0, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->n()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alensw/ui/c/z;->z:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v1}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alensw/ui/view/ImageGridView;->setScrollPos(F)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/z;->M:Lcom/alensw/b/k/d;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/z;->c(Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    const v1, 0x7f0a0048

    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/z;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->setEmptyText(Ljava/lang/String;)V

    sget-object v7, Lcom/alensw/ui/c/z;->A:Lcom/alensw/b/k/a;

    new-instance v0, Lcom/alensw/a/av;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v1}, Lcom/alensw/ui/c/cx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alensw/ui/c/z;->N:Ljava/util/Set;

    iget-object v5, p0, Lcom/alensw/ui/c/z;->b:Landroid/os/Handler;

    iget-object v6, p0, Lcom/alensw/ui/c/z;->V:Lcom/alensw/a/az;

    invoke-direct/range {v0 .. v6}, Lcom/alensw/a/av;-><init>(Landroid/content/ContentResolver;Lcom/alensw/bean/CommonFolder;ZLjava/util/Set;Landroid/os/Handler;Lcom/alensw/a/az;)V

    invoke-virtual {v7, v0}, Lcom/alensw/b/k/a;->a(Lcom/alensw/b/k/k;)Lcom/alensw/b/k/d;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/z;->M:Lcom/alensw/b/k/d;

    :cond_1
    return-void
.end method

.method public o()V
    .locals 9

    invoke-virtual {p0}, Lcom/alensw/ui/c/z;->u()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/z;->a(Z)V

    sget-object v7, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lcom/alensw/ui/c/an;

    iget-object v2, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f0a002d

    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/z;->g(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/alensw/ui/c/an;-><init>(Lcom/alensw/ui/c/z;Landroid/app/Activity;Ljava/lang/String;ILjava/util/HashSet;Landroid/content/ContentResolver;Lcom/alensw/a/bc;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/alensw/ui/c/an;->c()V

    goto :goto_0
.end method

.method public p()V
    .locals 5

    invoke-virtual {p0}, Lcom/alensw/ui/c/z;->u()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alensw/ui/c/cx;->d(Z)V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "vnd.android.document/directory"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "activity_title"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0a00bd

    invoke-virtual {p0, v4}, Lcom/alensw/ui/c/z;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    const-class v3, Lcom/alensw/ui/c/bz;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/alensw/ui/c/cx;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/c/a;

    new-instance v2, Lcom/alensw/ui/c/ao;

    invoke-direct {v2, p0, v1}, Lcom/alensw/ui/c/ao;-><init>(Lcom/alensw/ui/c/z;Ljava/util/HashSet;)V

    invoke-virtual {v0, v2}, Lcom/alensw/ui/c/a;->a(Lcom/alensw/ui/c/m;)V

    goto :goto_0
.end method

.method public q()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/alensw/ui/c/z;->u()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, v5}, Lcom/alensw/ui/c/cx;->d(Z)V

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/z;->B:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "QuickPic.catalogs"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x2

    aput v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string v2, "QuickPic.title"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0a004b

    invoke-virtual {p0, v4}, Lcom/alensw/ui/c/z;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "QuickPic.root_id"

    iget-object v3, p0, Lcom/alensw/ui/c/z;->B:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    const-class v3, Lcom/alensw/ui/c/p;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/alensw/ui/c/cx;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/c/a;

    new-instance v2, Lcom/alensw/ui/c/ap;

    invoke-direct {v2, p0, v1}, Lcom/alensw/ui/c/ap;-><init>(Lcom/alensw/ui/c/z;Ljava/util/HashSet;)V

    invoke-virtual {v0, v2}, Lcom/alensw/ui/c/a;->a(Lcom/alensw/ui/c/m;)V

    goto :goto_0
.end method

.method public r()[Landroid/net/Uri;
    .locals 5

    iget-object v0, p0, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-array v3, v0, [Landroid/net/Uri;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_1

    :cond_1
    move-object v0, v3

    goto :goto_0
.end method

.method public s()Landroid/content/Intent;
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v6

    const/16 v7, 0x49

    if-ne v6, v7, :cond_2

    or-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_2
    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v6

    const/16 v7, 0x56

    if-ne v6, v7, :cond_1

    or-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_3
    if-ne v1, v8, :cond_4

    const-string v0, "image/jpeg"

    move-object v3, v0

    :goto_3
    if-le v4, v8, :cond_6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_4
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    const-string v0, "video/mp4"

    move-object v3, v0

    goto :goto_3

    :cond_5
    const-string v0, "*/*"

    move-object v3, v0

    goto :goto_3

    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object v0, v1

    goto :goto_4
.end method

.method protected t()Lcom/alensw/b/h/h;
    .locals 5

    iget-object v0, p0, Lcom/alensw/ui/c/z;->L:Lcom/alensw/b/h/h;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/c/z;->F()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/alensw/ui/c/z;->v:I

    iget v2, p0, Lcom/alensw/ui/c/z;->w:I

    iget v3, p0, Lcom/alensw/ui/c/z;->x:I

    iget-object v4, p0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    iget v4, v4, Lcom/alensw/ui/c/cx;->U:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alensw/a/p;->a(Landroid/content/res/Resources;IIII)Lcom/alensw/b/h/h;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/z;->L:Lcom/alensw/b/h/h;

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/z;->L:Lcom/alensw/b/h/h;

    return-object v0
.end method

.method public u()Ljava/util/HashSet;
    .locals 2

    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iget-object v1, p0, Lcom/alensw/ui/c/z;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public v()V
    .locals 5

    iget-object v0, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->getFirstVisible()I

    move-result v1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->getLastVisible()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/alensw/ui/c/z;->O:Lcom/alensw/b/a/a;

    iget-object v4, p0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v4, v0}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alensw/b/a/a;->b(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-le v2, v1, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/z;->O:Lcom/alensw/b/a/a;

    sub-int v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/alensw/b/a/a;->b(I)V

    :cond_1
    return-void
.end method
