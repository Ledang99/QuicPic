.class public Lcom/alensw/ui/activity/SelectThemeActivity;
.super Lcom/alensw/ui/activity/ao;


# static fields
.field public static final a:[I

.field public static final b:[I


# instance fields
.field private c:Landroid/widget/GridView;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:I

.field private final g:Ljava/util/ArrayList;

.field private final h:Ljava/util/HashMap;

.field private final i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final j:Landroid/widget/BaseAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alensw/ui/activity/SelectThemeActivity;->a:[I

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alensw/ui/activity/SelectThemeActivity;->b:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        -0x7100
        -0x9300
        -0xc300
        -0x2b0000
        -0x3aee9e
        -0xfcb86
        -0x2acb04
        -0x55ff01
        -0x83b201
        -0x9dff16
        -0xd69d01
        -0xbb7501
        -0xff611b
        -0xff5a42
        -0xff6859
        -0xff6978
        -0xff4d65
        -0xff4689
        -0xff4bb5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alensw/ui/activity/ao;-><init>()V

    const/16 v0, 0x90

    iput v0, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->f:I

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->h:Ljava/util/HashMap;

    new-instance v0, Lcom/alensw/ui/activity/bi;

    invoke-direct {v0, p0}, Lcom/alensw/ui/activity/bi;-><init>(Lcom/alensw/ui/activity/SelectThemeActivity;)V

    iput-object v0, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lcom/alensw/ui/activity/bk;

    invoke-direct {v0, p0}, Lcom/alensw/ui/activity/bk;-><init>(Lcom/alensw/ui/activity/SelectThemeActivity;)V

    iput-object v0, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->j:Landroid/widget/BaseAdapter;

    return-void
.end method

.method static synthetic a(Lcom/alensw/ui/activity/SelectThemeActivity;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->c:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic b(Lcom/alensw/ui/activity/SelectThemeActivity;)I
    .locals 1

    iget v0, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->f:I

    return v0
.end method

.method static synthetic c(Lcom/alensw/ui/activity/SelectThemeActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/alensw/ui/activity/SelectThemeActivity;)I
    .locals 1

    iget v0, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->e:I

    return v0
.end method

.method static synthetic e(Lcom/alensw/ui/activity/SelectThemeActivity;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->h:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic f(Lcom/alensw/ui/activity/SelectThemeActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 15

    invoke-super/range {p0 .. p1}, Lcom/alensw/ui/activity/ao;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/GridView;

    invoke-direct {v0, p0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->c:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->c:Landroid/widget/GridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->c:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->c:Landroid/widget/GridView;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/SelectThemeActivity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/SelectThemeActivity;->g(Z)V

    invoke-virtual {p0}, Lcom/alensw/ui/activity/SelectThemeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->e:I

    const/high16 v1, 0x43100000    # 144.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->f:I

    const v1, 0x7f05000a

    iget v2, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->Y:I

    invoke-static {v7, v1, v2}, Lcom/b/a/b;->a(Landroid/content/res/Resources;II)Lcom/b/a/l;

    move-result-object v1

    iput-object v1, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->d:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->c:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    iget-object v1, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->c:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    iget-object v1, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->c:Landroid/widget/GridView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/GridView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->c:Landroid/widget/GridView;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->c:Landroid/widget/GridView;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setDrawSelectorOnTop(Z)V

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    sget-object v10, Lcom/alensw/ui/activity/SelectThemeActivity;->a:[I

    array-length v11, v10

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v11, :cond_1

    aget v1, v10, v6

    invoke-static {v1}, Lcom/alensw/ui/activity/SelectThemeActivity;->h(I)I

    move-result v2

    const/4 v0, 0x1

    invoke-virtual {v8, v2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    const/high16 v0, 0x7f010000

    const/4 v3, 0x1

    invoke-virtual {v8, v0, v9, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const v0, 0x7f010002

    const/4 v4, 0x1

    invoke-virtual {v8, v0, v9, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const v0, 0x7f010001

    const/4 v5, 0x1

    invoke-virtual {v8, v0, v9, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget-object v12, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->g:Ljava/util/ArrayList;

    new-instance v0, Lcom/alensw/ui/activity/bl;

    invoke-direct/range {v0 .. v5}, Lcom/alensw/ui/activity/bl;-><init>(IIIII)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const v0, 0x7f0b0027

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    const v0, 0x7f010002

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v9, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const v0, 0x7f010001

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v9, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const v0, 0x7f0b0028

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    const v0, 0x7f010002

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v9, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    const v0, 0x7f010001

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v9, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    sget-object v13, Lcom/alensw/ui/activity/SelectThemeActivity;->b:[I

    array-length v14, v13

    const/4 v0, 0x0

    move v12, v0

    :goto_2
    if-ge v12, v14, :cond_3

    aget v3, v13, v12

    ushr-int/lit8 v0, v3, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    iget-object v6, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->g:Ljava/util/ArrayList;

    new-instance v0, Lcom/alensw/ui/activity/bl;

    const/4 v1, -0x3

    const v2, 0x7f0b0027

    invoke-direct/range {v0 .. v5}, Lcom/alensw/ui/activity/bl;-><init>(IIIII)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->g:Ljava/util/ArrayList;

    new-instance v6, Lcom/alensw/ui/activity/bl;

    const/4 v7, -0x2

    const v8, 0x7f0b0028

    move v9, v3

    invoke-direct/range {v6 .. v11}, Lcom/alensw/ui/activity/bl;-><init>(IIIII)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->c:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->j:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->c:Landroid/widget/GridView;

    new-instance v1, Lcom/alensw/ui/activity/bj;

    invoke-direct {v1, p0}, Lcom/alensw/ui/activity/bj;-><init>(Lcom/alensw/ui/activity/SelectThemeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->c:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/activity/SelectThemeActivity;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-super {p0}, Lcom/alensw/ui/activity/ao;->onDestroy()V

    return-void
.end method
