.class public Lcom/alensw/ui/activity/ao;
.super Landroid/app/Activity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# static fields
.field public static final F:Z

.field public static final G:Z

.field public static final H:Z

.field private static i:I

.field private static j:I


# instance fields
.field protected I:Landroid/view/View;

.field protected J:Landroid/app/ActionBar;

.field protected K:Lcom/alensw/ui/view/TitleBar;

.field protected L:Landroid/view/ViewGroup;

.field protected M:Z

.field protected N:Z

.field protected O:I

.field protected P:I

.field public Q:Z

.field public R:Z

.field public S:J

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:I

.field public final Z:Landroid/view/View$OnClickListener;

.field private a:Landroid/view/View;

.field protected final aa:Ljava/lang/Runnable;

.field private b:Z

.field private c:Landroid/view/ActionMode;

.field private d:Lcom/alensw/ui/view/TitleView;

.field private e:Lcom/alensw/ui/view/TitleBar;

.field private f:Lcom/alensw/ui/view/TitleBar;

.field private g:I

.field private h:Landroid/graphics/drawable/ColorDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/alensw/ui/activity/ao;->F:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/alensw/ui/activity/ao;->G:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_2

    :goto_2
    sput-boolean v1, Lcom/alensw/ui/activity/ao;->H:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const v1, -0xbbbbbc

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/ui/activity/ao;->T:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/alensw/ui/activity/ao;->U:I

    iput v1, p0, Lcom/alensw/ui/activity/ao;->V:I

    iput v1, p0, Lcom/alensw/ui/activity/ao;->W:I

    const v0, -0x777778

    iput v0, p0, Lcom/alensw/ui/activity/ao;->X:I

    iput v2, p0, Lcom/alensw/ui/activity/ao;->Y:I

    new-instance v0, Lcom/alensw/ui/activity/ap;

    invoke-direct {v0, p0}, Lcom/alensw/ui/activity/ap;-><init>(Lcom/alensw/ui/activity/ao;)V

    iput-object v0, p0, Lcom/alensw/ui/activity/ao;->Z:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alensw/ui/activity/az;

    invoke-direct {v0, p0}, Lcom/alensw/ui/activity/az;-><init>(Lcom/alensw/ui/activity/ao;)V

    iput-object v0, p0, Lcom/alensw/ui/activity/ao;->aa:Ljava/lang/Runnable;

    iput v2, p0, Lcom/alensw/ui/activity/ao;->g:I

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/alensw/ui/activity/ao;->g:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/activity/ao;->h:Landroid/graphics/drawable/ColorDrawable;

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    sget v0, Lcom/alensw/ui/activity/ao;->i:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-boolean v1, Lcom/alensw/ui/activity/ao;->F:Z

    if-eqz v1, :cond_1

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10102eb

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/alensw/ui/activity/ao;->i:I

    :cond_0
    :goto_0
    sget v0, Lcom/alensw/ui/activity/ao;->i:I

    return v0

    :cond_1
    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/alensw/ui/activity/ao;->i:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/alensw/ui/activity/ao;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->c:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic a(Lcom/alensw/ui/activity/ao;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/ao;->c:Landroid/view/ActionMode;

    return-object p1
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 7

    const/16 v2, 0x15

    const/4 v6, -0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    sget-boolean v1, Lcom/alensw/ui/activity/ao;->F:Z

    if-eqz v1, :cond_5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_5

    const v0, 0x102002c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    instance-of v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-static {p0, v2}, Landroid/support/a/a/k;->a(Landroid/app/Activity;Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {p0, p1}, Landroid/support/a/a/a;->a(Landroid/app/Activity;I)Landroid/support/a/a/m;

    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080010

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    instance-of v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_4
    return-void

    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "up"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_1
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0

    :goto_2
    sget-boolean v0, Lcom/alensw/PicFolder/QuickApp;->e:Z

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    instance-of v3, v0, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, v6, :cond_8

    new-instance v1, Lcom/alensw/ui/activity/ar;

    invoke-direct {v1, p0}, Lcom/alensw/ui/activity/ar;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_1

    :cond_7
    move-object v2, v0

    goto :goto_2

    :cond_8
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_3

    :cond_9
    move-object v2, v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;I)V
    .locals 3

    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    check-cast p0, Landroid/widget/ImageView;

    const v2, 0x7f05000f

    invoke-static {v0, v2, p1, v1}, Lcom/b/a/b;->a(Landroid/content/res/Resources;III)Lcom/b/a/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/widget/ImageView;Landroid/graphics/drawable/shapes/Shape;)V
    .locals 1

    const v0, -0x55000001

    invoke-static {p0, p1, v0}, Lcom/alensw/ui/activity/ao;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/shapes/Shape;I)V

    return-void
.end method

.method public static a(Landroid/widget/ImageView;Landroid/graphics/drawable/shapes/Shape;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0, v0, p2}, Lcom/alensw/ui/d/d;->a(Landroid/graphics/drawable/shapes/Shape;III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)I
    .locals 2

    sget v0, Lcom/alensw/ui/activity/ao;->j:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/alensw/ui/activity/ao;->j:I

    :cond_0
    invoke-static {p0}, Lcom/alensw/ui/activity/ao;->a(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    sget v1, Lcom/alensw/ui/activity/ao;->j:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;I)I
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/alensw/ui/activity/ao;->b(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OverflowMenuButton"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)I
    .locals 7

    const/4 v6, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10102ce

    aput v1, v0, v6

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "titleTextStyle"

    const-string v4, "attr"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v6

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    return v0

    :cond_0
    const v0, 0x1030044

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 4

    instance-of v0, p0, Lcom/alensw/ui/activity/ao;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/alensw/ui/activity/ao;

    iget v0, v0, Lcom/alensw/ui/activity/ao;->V:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    if-ne v1, v2, :cond_0

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "split_action_bar_is_narrow"

    const-string v2, "bool"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const v0, 0x7f0b0023

    :goto_0
    return v0

    :pswitch_1
    const v0, 0x7f0b0024

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0b0025

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0b0026

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0b0027

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0b0028

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0b0029

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->m()Z

    move-result v0

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->j()I

    move-result v1

    if-lez v1, :cond_0

    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-ge v2, v1, :cond_0

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->top:I

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->k()I

    move-result v1

    if-eqz v0, :cond_1

    if-lez v1, :cond_1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v1, :cond_1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    :cond_1
    sget v1, Lcom/alensw/PicFolder/QuickApp;->j:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->a:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    return-void
.end method

.method public a(Landroid/view/Menu;II)V
    .locals 1

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/alensw/ui/activity/ao;->a(Landroid/view/MenuItem;I)V

    return-void
.end method

.method public a(Landroid/view/Menu;IZ)V
    .locals 1

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/alensw/ui/activity/ao;->a(Landroid/view/MenuItem;Z)V

    return-void
.end method

.method public a(Landroid/view/MenuItem;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/alensw/ui/activity/ao;->F:Z

    if-eqz v0, :cond_1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/alensw/b/g/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0, p1, p2}, Lcom/alensw/ui/view/TitleBar;->a(Landroid/view/MenuItem;I)V

    goto :goto_0
.end method

.method public a(Landroid/view/MenuItem;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/ao;->L:Landroid/view/ViewGroup;

    return-void
.end method

.method public a(Lcom/alensw/ui/view/TitleBar;)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->I:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    iget-boolean v1, p0, Lcom/alensw/ui/activity/ao;->M:Z

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    iget v1, p0, Lcom/alensw/ui/activity/ao;->V:I

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/TitleBar;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/TitleBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/alensw/ui/activity/ao;->N:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0}, Lcom/alensw/ui/view/TitleBar;->a()Landroid/view/View;

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->J:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->J:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->e:Lcom/alensw/ui/view/TitleBar;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/TitleBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;Z)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->d:Lcom/alensw/ui/view/TitleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->d:Lcom/alensw/ui/view/TitleView;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/TitleView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->c:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->c:Landroid/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->c:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->e:Lcom/alensw/ui/view/TitleBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->e:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/TitleBar;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->e:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0}, Lcom/alensw/ui/view/TitleBar;->requestLayout()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->u()V

    invoke-virtual {p0, p1}, Lcom/alensw/ui/activity/ao;->f(Z)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->J:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->J:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-eq v0, p1, :cond_0

    sget-boolean v0, Lcom/alensw/ui/activity/ao;->H:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->J:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    :cond_0
    :goto_0
    if-eqz p1, :cond_7

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v1}, Lcom/alensw/ui/view/TitleBar;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_2

    sget-boolean v1, Lcom/alensw/ui/activity/ao;->G:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v1, v3}, Lcom/alensw/ui/view/TitleBar;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/view/TitleBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {p0, p1}, Lcom/alensw/ui/activity/ao;->c(Z)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alensw/ui/view/TitleBar;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->L:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->L:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_4

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->L:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_4

    sget-boolean v1, Lcom/alensw/ui/activity/ao;->G:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->L:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->L:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->L:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/alensw/ui/activity/ao;->c(Z)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    if-eqz p1, :cond_8

    iget v5, p0, Lcom/alensw/ui/activity/ao;->U:I

    :goto_2
    iget v0, p0, Lcom/alensw/ui/activity/ao;->g:I

    if-eq v0, v5, :cond_5

    new-instance v0, Lcom/alensw/ui/activity/aq;

    iget-object v2, p0, Lcom/alensw/ui/activity/ao;->I:Landroid/view/View;

    const/4 v3, 0x0

    iget v4, p0, Lcom/alensw/ui/activity/ao;->g:I

    move-object v1, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/alensw/ui/activity/aq;-><init>(Lcom/alensw/ui/activity/ao;Landroid/view/View;Landroid/view/animation/Interpolator;III)V

    const-wide/16 v2, 0x12c

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/alensw/ui/activity/aq;->a(JZ)V

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->J:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_0

    :cond_7
    const/4 v0, 0x4

    goto :goto_1

    :cond_8
    iget-boolean v0, p0, Lcom/alensw/ui/activity/ao;->R:Z

    if-eqz v0, :cond_9

    const/high16 v5, -0x1000000

    goto :goto_2

    :cond_9
    iget v5, p0, Lcom/alensw/ui/activity/ao;->U:I

    goto :goto_2
.end method

.method public a()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->J:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->J:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v1}, Lcom/alensw/ui/view/TitleBar;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(FF)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->J:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->J:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->J:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->I:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->k()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_3

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v1}, Lcom/alensw/ui/view/TitleBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v1}, Lcom/alensw/ui/view/TitleBar;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v1}, Lcom/alensw/ui/view/TitleBar;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->L:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->L:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->L:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->L:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)Landroid/view/View;
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/TitleBar;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/alensw/ui/activity/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    sget-boolean v0, Lcom/alensw/ui/activity/ao;->F:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->p()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->a:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->a:Landroid/view/View;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/TitleBar;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->I:Landroid/view/View;

    goto :goto_0
.end method

.method public c(Z)Landroid/view/animation/Animation;
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    if-eqz p1, :cond_0

    move v2, v1

    :goto_0
    if-eqz p1, :cond_1

    :goto_1
    invoke-direct {v3, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v3

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected c(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected d(I)V
    .locals 2

    iget v0, p0, Lcom/alensw/ui/activity/ao;->P:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/alensw/ui/activity/ao;->P:I

    iput p1, p0, Lcom/alensw/ui/activity/ao;->P:I

    iget-boolean v1, p0, Lcom/alensw/ui/activity/ao;->Q:Z

    if-eqz v1, :cond_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->J:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->J:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/ao;->a(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alensw/ui/activity/ao;->S:J

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    sget-boolean v0, Lcom/alensw/ui/activity/ao;->F:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->c:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->c:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    iput-object v1, p0, Lcom/alensw/ui/activity/ao;->c:Landroid/view/ActionMode;

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/alensw/ui/activity/au;

    invoke-direct {v0, p0}, Lcom/alensw/ui/activity/au;-><init>(Lcom/alensw/ui/activity/ao;)V

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/ao;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/activity/ao;->c:Landroid/view/ActionMode;

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030001

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/view/TitleView;

    iput-object v0, p0, Lcom/alensw/ui/activity/ao;->d:Lcom/alensw/ui/view/TitleView;

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->d:Lcom/alensw/ui/view/TitleView;

    invoke-virtual {v0, v4}, Lcom/alensw/ui/view/TitleView;->a(Z)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->d:Lcom/alensw/ui/view/TitleView;

    const v1, 0x102001f

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/TitleView;->setId(I)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->d:Lcom/alensw/ui/view/TitleView;

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/TitleView;->setMinHeight(I)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->d:Lcom/alensw/ui/view/TitleView;

    invoke-static {p0}, Lcom/alensw/ui/activity/ao;->c(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/alensw/ui/view/TitleView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->d:Lcom/alensw/ui/view/TitleView;

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->Z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/TitleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->d:Lcom/alensw/ui/view/TitleView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->c:Landroid/view/ActionMode;

    invoke-virtual {v1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->e:Lcom/alensw/ui/view/TitleBar;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030016

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->I:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/view/TitleBar;

    iput-object v0, p0, Lcom/alensw/ui/activity/ao;->e:Lcom/alensw/ui/view/TitleBar;

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->e:Lcom/alensw/ui/view/TitleBar;

    new-instance v1, Lcom/alensw/ui/activity/av;

    invoke-direct {v1, p0}, Lcom/alensw/ui/activity/av;-><init>(Lcom/alensw/ui/activity/ao;)V

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/TitleBar;->setMenuCallback(Lcom/alensw/ui/view/cb;)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->e:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0, v4}, Lcom/alensw/ui/view/TitleBar;->b(Z)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->e:Lcom/alensw/ui/view/TitleBar;

    new-instance v1, Lcom/alensw/ui/activity/aw;

    invoke-direct {v1, p0}, Lcom/alensw/ui/activity/aw;-><init>(Lcom/alensw/ui/activity/ao;)V

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/TitleBar;->setOnHomeClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->e:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0, v4}, Lcom/alensw/ui/view/TitleBar;->c(Z)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->e:Lcom/alensw/ui/view/TitleBar;

    new-instance v1, Lcom/alensw/ui/activity/ax;

    invoke-direct {v1, p0}, Lcom/alensw/ui/activity/ax;-><init>(Lcom/alensw/ui/activity/ao;)V

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/TitleBar;->setOnTitleClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->e:Lcom/alensw/ui/view/TitleBar;

    iget-object v2, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    iput-object v2, p0, Lcom/alensw/ui/activity/ao;->f:Lcom/alensw/ui/view/TitleBar;

    :goto_1
    if-eqz v1, :cond_3

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alensw/ui/view/TitleBar;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/alensw/ui/activity/ao;->c(Z)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alensw/ui/view/TitleBar;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/ao;->a(Lcom/alensw/ui/view/TitleBar;)V

    invoke-virtual {v0}, Lcom/alensw/ui/view/TitleBar;->d()Z

    invoke-virtual {v0, v3}, Lcom/alensw/ui/view/TitleBar;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/alensw/ui/activity/ao;->c(Z)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/TitleBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->e:Lcom/alensw/ui/view/TitleBar;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/alensw/ui/activity/ao;->e:Lcom/alensw/ui/view/TitleBar;

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->f:Lcom/alensw/ui/view/TitleBar;

    iput-object v1, p0, Lcom/alensw/ui/activity/ao;->e:Lcom/alensw/ui/view/TitleBar;

    iput-object v1, p0, Lcom/alensw/ui/activity/ao;->f:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->r()V

    move-object v1, v2

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method protected d(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public e(Z)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    sget-boolean v0, Lcom/alensw/ui/activity/ao;->H:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v0, 0x500

    iput-boolean p1, p0, Lcom/alensw/ui/activity/ao;->Q:Z

    if-eqz p1, :cond_0

    const/16 v0, 0x700

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    const/16 v0, 0xf00

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    new-instance v0, Lcom/alensw/ui/activity/ay;

    invoke-direct {v0, p0}, Lcom/alensw/ui/activity/ay;-><init>(Lcom/alensw/ui/activity/ao;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(I)V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->I:Landroid/view/View;

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->aa:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->I:Landroid/view/View;

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->aa:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public f(Z)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->t()I

    move-result v1

    if-eqz p1, :cond_3

    and-int/lit8 v0, v1, -0x2

    :goto_0
    sget-boolean v2, Lcom/alensw/ui/activity/ao;->H:Z

    if-eqz v2, :cond_1

    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_0

    if-eqz p1, :cond_4

    and-int/lit8 v0, v0, -0x5

    :cond_0
    :goto_1
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_1

    if-eqz p1, :cond_5

    and-int/lit8 v0, v0, -0x3

    :cond_1
    :goto_2
    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/ao;->e(I)V

    :cond_2
    return-void

    :cond_3
    or-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_4
    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_5
    or-int/lit8 v0, v0, 0x2

    goto :goto_2
.end method

.method public g(I)V
    .locals 2

    iget v0, p0, Lcom/alensw/ui/activity/ao;->g:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/alensw/ui/activity/ao;->g:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->h:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->h:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/activity/ao;->h:Landroid/graphics/drawable/ColorDrawable;

    goto :goto_0
.end method

.method public g(Z)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->J:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->J:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/TitleBar;->a(Z)V

    goto :goto_0
.end method

.method protected h()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    sget-boolean v0, Lcom/alensw/ui/activity/ao;->F:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "progress_circular"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setScaleX(F)V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setScaleY(F)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public h(Z)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->J:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->J:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/TitleBar;->setHomeButtonEnabled(Z)V

    goto :goto_0
.end method

.method protected i()V
    .locals 3

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->o()Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/alensw/ui/activity/ao;->b(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alensw/ui/activity/ao;->X:I

    invoke-static {v0, v2}, Lcom/alensw/ui/activity/ao;->a(Landroid/view/View;I)V

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/alensw/ui/activity/at;

    invoke-direct {v2, p0, v1}, Lcom/alensw/ui/activity/at;-><init>(Lcom/alensw/ui/activity/ao;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method

.method public i(Z)V
    .locals 1

    :try_start_0
    sget-boolean v0, Lcom/alensw/ui/activity/ao;->F:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/alensw/ui/activity/ao;->setProgressBarIndeterminateVisibility(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/TitleBar;->setProgressVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    sget-boolean v0, Lcom/alensw/ui/activity/ao;->F:Z

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :goto_0
    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0}, Lcom/alensw/ui/view/TitleBar;->c()V

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0}, Lcom/alensw/ui/view/TitleBar;->d()Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/ui/activity/ao;->b:Z

    goto :goto_0
.end method

.method public j()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->J:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->J:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    :cond_0
    :goto_0
    if-lez v0, :cond_2

    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0}, Lcom/alensw/ui/view/TitleBar;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/alensw/ui/activity/ao;->a(Landroid/content/Context;)I

    move-result v0

    goto :goto_1
.end method

.method public k()I
    .locals 4

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->l()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v0, Lcom/alensw/ui/activity/ao;->F:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "split_action_bar"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->j()I

    move-result v0

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/alensw/ui/activity/ao;->F:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/alensw/ui/activity/ao;->N:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/alensw/ui/activity/ao;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0}, Lcom/alensw/ui/view/TitleBar;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public m()Z
    .locals 3

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v1, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_1
    iget v2, p0, Lcom/alensw/ui/activity/ao;->O:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected n()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/alensw/ui/activity/ao;->F:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alensw/ui/activity/ao;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->I:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->a:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "gravity"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected o()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "split_action_bar"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "action_bar_container"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/ao;->d(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/alensw/ui/activity/ao;->i:I

    sput v0, Lcom/alensw/ui/activity/ao;->j:I

    sget-boolean v0, Lcom/alensw/ui/activity/ao;->F:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->i()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    instance-of v0, p0, Lcom/alensw/PicFolder/PlayerActivity;

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/alensw/ui/activity/ao;->T:I

    iget v0, p0, Lcom/alensw/ui/activity/ao;->T:I

    invoke-static {v0}, Lcom/alensw/ui/activity/ao;->h(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/ao;->setTheme(I)V

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    const v4, 0x7f010002

    invoke-virtual {v2, v4, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/alensw/ui/activity/ao;->g:I

    iput v4, p0, Lcom/alensw/ui/activity/ao;->U:I

    iget v4, p0, Lcom/alensw/ui/activity/ao;->T:I

    const/4 v5, -0x3

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/alensw/ui/activity/ao;->T:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_4

    :cond_0
    const-string v4, "actionbar_color"

    iget v5, p0, Lcom/alensw/ui/activity/ao;->V:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alensw/ui/activity/ao;->V:I

    :goto_1
    const v1, 0x7f010005

    invoke-virtual {v2, v1, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alensw/ui/activity/ao;->W:I

    const v1, 0x1010036

    invoke-virtual {v2, v1, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alensw/ui/activity/ao;->Y:I

    const v1, 0x7f010001

    invoke-virtual {v2, v1, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alensw/ui/activity/ao;->X:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43f00000    # 480.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/alensw/ui/activity/ao;->O:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    :try_start_0
    const-string v1, "screen_toolbar"

    const-string v2, "layout"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "screen_action_bar"

    const-string v3, "layout"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v1, :cond_1

    if-nez v2, :cond_5

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wrong id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/alensw/PicFolder/QuickApp;

    invoke-virtual {v0, p0}, Lcom/alensw/PicFolder/QuickApp;->a(Landroid/app/Activity;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/ao;->requestWindowFeature(I)Z

    return-void

    :cond_3
    const-string v0, "main_theme"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_0

    :cond_4
    const/high16 v1, 0x7f010000

    invoke-virtual {v2, v1, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alensw/ui/activity/ao;->V:I

    goto/16 :goto_1

    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v3

    const-string v0, "com.android.internal.R$styleable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "Window_windowActionBarFullscreenDecorLayout"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x0

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eq v0, v1, :cond_6

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not material: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-class v0, Landroid/content/res/AssetManager;

    const-string v1, "STYLE_NUM_ENTRIES"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Landroid/content/res/AssetManager;

    const-string v5, "STYLE_RESOURCE_ID"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    mul-int v1, v4, v5

    add-int/2addr v1, v0

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "mData"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    :try_start_3
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    aput v2, v0, v1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "mData"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    sget-boolean v0, Lcom/alensw/ui/activity/ao;->F:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->i()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/alensw/PicFolder/QuickApp;

    invoke-virtual {v0, p0}, Lcom/alensw/PicFolder/QuickApp;->b(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->onBackPressed()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f090033 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/alensw/PicFolder/QuickApp;

    invoke-virtual {v0, p0}, Lcom/alensw/PicFolder/QuickApp;->f(Landroid/app/Activity;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0}, Lcom/alensw/ui/view/TitleBar;->d()Z

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/TitleBar;->a(Landroid/view/Menu;)V

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    instance-of v1, p1, Lcom/alensw/b/g/b;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/alensw/ui/activity/ao;->b:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/alensw/ui/activity/ao;->b:Z

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1}, Lcom/alensw/ui/activity/ao;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/alensw/PicFolder/QuickApp;

    invoke-virtual {v0, p0}, Lcom/alensw/PicFolder/QuickApp;->e(Landroid/app/Activity;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/alensw/PicFolder/QuickApp;

    invoke-virtual {v0, p0}, Lcom/alensw/PicFolder/QuickApp;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/alensw/PicFolder/QuickApp;

    invoke-virtual {v0, p0}, Lcom/alensw/PicFolder/QuickApp;->d(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->e:Lcom/alensw/ui/view/TitleBar;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->K:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/TitleBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected p()Landroid/view/View;
    .locals 2

    sget-boolean v0, Lcom/alensw/ui/activity/ao;->F:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->o()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/alensw/ui/activity/ao;->b(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->c:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->e:Lcom/alensw/ui/view/TitleBar;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected r()V
    .locals 0

    return-void
.end method

.method public recreate()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->recreate()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/ao;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public s()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->t()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/ao;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v6, -0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ne v1, v3, :cond_5

    instance-of v1, p0, Lcom/alensw/ui/activity/p;

    if-nez v1, :cond_5

    move v1, v0

    :goto_0
    if-eqz v1, :cond_6

    new-instance v3, Lcom/alensw/ui/activity/as;

    invoke-direct {v3, p0, p0}, Lcom/alensw/ui/activity/as;-><init>(Lcom/alensw/ui/activity/ao;Landroid/content/Context;)V

    invoke-virtual {v3, p1, v6, v6}, Lcom/alensw/ui/view/ContainerLayout;->addView(Landroid/view/View;II)V

    iput-boolean v0, p0, Lcom/alensw/ui/activity/ao;->M:Z

    iput-object v3, p0, Lcom/alensw/ui/activity/ao;->I:Landroid/view/View;

    :goto_1
    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getWindow()Landroid/view/Window;

    move-result-object v3

    sget-boolean v4, Lcom/alensw/ui/activity/ao;->F:Z

    if-eqz v4, :cond_7

    iget-boolean v0, p0, Lcom/alensw/ui/activity/ao;->M:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    invoke-virtual {v3, v0}, Landroid/view/Window;->requestFeature(I)Z

    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Landroid/view/Window;->requestFeature(I)Z

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->I:Landroid/view/View;

    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/activity/ao;->J:Landroid/app/ActionBar;

    iget v0, p0, Lcom/alensw/ui/activity/ao;->T:I

    const/4 v4, -0x3

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/alensw/ui/activity/ao;->T:I

    const/4 v4, -0x2

    if-ne v0, v4, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->J:Landroid/app/ActionBar;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    iget v5, p0, Lcom/alensw/ui/activity/ao;->V:I

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v0, v4, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->J:Landroid/app/ActionBar;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    iget v5, p0, Lcom/alensw/ui/activity/ao;->V:I

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->J:Landroid/app/ActionBar;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    iget v5, p0, Lcom/alensw/ui/activity/ao;->W:I

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_3

    iget v0, p0, Lcom/alensw/ui/activity/ao;->V:I

    invoke-virtual {v3, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->n()V

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->h()V

    iget v0, p0, Lcom/alensw/ui/activity/ao;->X:I

    invoke-static {p0, v0}, Lcom/alensw/ui/activity/ao;->a(Landroid/app/Activity;I)V

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {p0, v2}, Lcom/alensw/ui/activity/ao;->e(Z)Z

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_4
    return-void

    :cond_5
    move v1, v2

    goto/16 :goto_0

    :cond_6
    iput-object p1, p0, Lcom/alensw/ui/activity/ao;->I:Landroid/view/View;

    goto :goto_1

    :cond_7
    invoke-virtual {v3, v0}, Landroid/view/Window;->requestFeature(I)Z

    iget-boolean v3, p0, Lcom/alensw/ui/activity/ao;->M:Z

    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->I:Landroid/view/View;

    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    :goto_3
    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030016

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->I:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/view/TitleBar;

    iget-object v3, p0, Lcom/alensw/ui/activity/ao;->Z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/alensw/ui/view/TitleBar;->setOnHomeClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/alensw/ui/activity/ao;->Z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/alensw/ui/view/TitleBar;->setOnTitleClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/ao;->a(Lcom/alensw/ui/view/TitleBar;)V

    goto :goto_2

    :cond_8
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->I:Landroid/view/View;

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0, v3}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_3
.end method

.method public t()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/activity/ao;->I:Landroid/view/View;

    iget-object v1, p0, Lcom/alensw/ui/activity/ao;->aa:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public v()Z
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ao;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/ao;->a(Z)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
