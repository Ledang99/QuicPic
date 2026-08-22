.class public Lcom/alensw/ui/view/TitleBar;
.super Landroid/widget/LinearLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Instantiatable"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Z

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/alensw/ui/view/HomeButton;

.field private h:Lcom/alensw/ui/view/TitleView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ProgressBar;

.field private k:Lcom/alensw/ui/view/ActionLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Lcom/alensw/b/g/b;

.field private n:Lcom/alensw/ui/view/cb;

.field private final o:Landroid/view/View$OnClickListener;

.field private final p:Landroid/view/View$OnLongClickListener;

.field private final q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alensw/ui/view/TitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/alensw/ui/view/bv;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/bv;-><init>(Lcom/alensw/ui/view/TitleBar;)V

    iput-object v0, p0, Lcom/alensw/ui/view/TitleBar;->o:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alensw/ui/view/bw;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/bw;-><init>(Lcom/alensw/ui/view/TitleBar;)V

    iput-object v0, p0, Lcom/alensw/ui/view/TitleBar;->p:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/alensw/ui/view/bz;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/bz;-><init>(Lcom/alensw/ui/view/TitleBar;)V

    iput-object v0, p0, Lcom/alensw/ui/view/TitleBar;->q:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const v3, 0x7f010001

    invoke-virtual {v1, v3, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alensw/ui/view/TitleBar;->a:I

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/alensw/ui/view/TitleBar;->b:I

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/alensw/ui/view/TitleBar;->c:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43f00000    # 480.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alensw/ui/view/TitleBar;->d:I

    new-array v0, v5, [I

    const v1, 0x10100d4

    aput v1, v0, v4

    const v1, 0x101005c

    invoke-virtual {p1, p2, v0, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alensw/ui/view/TitleBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/alensw/ui/view/TitleBar;)Lcom/alensw/b/g/b;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->m:Lcom/alensw/b/g/b;

    return-object v0
.end method

.method static synthetic b(Lcom/alensw/ui/view/TitleBar;)Lcom/alensw/ui/view/ActionLayout;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->k:Lcom/alensw/ui/view/ActionLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/alensw/ui/view/TitleBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/ui/view/TitleBar;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/alensw/ui/view/TitleBar;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/alensw/ui/view/TitleBar;)Lcom/alensw/ui/view/TitleView;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->h:Lcom/alensw/ui/view/TitleView;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alensw/ui/view/TitleBar;->l:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->l:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alensw/ui/view/TitleBar;->l:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    iget v3, p0, Lcom/alensw/ui/view/TitleBar;->c:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleBar;->f()V

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->l:Landroid/widget/LinearLayout;

    return-object v0

    :cond_0
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

.method public a(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alensw/ui/view/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->k:Lcom/alensw/ui/view/ActionLayout;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/ActionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Landroid/view/Menu;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->k:Lcom/alensw/ui/view/ActionLayout;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ActionLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    move v2, v0

    :goto_0
    if-ltz v2, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->k:Lcom/alensw/ui/view/ActionLayout;

    invoke-virtual {v0, v2}, Lcom/alensw/ui/view/ActionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->f:Landroid/widget/ImageView;

    invoke-interface {p1}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_3
    const/16 v1, 0x8

    goto :goto_2
.end method

.method public a(Landroid/view/MenuItem;I)V
    .locals 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->k:Lcom/alensw/ui/view/ActionLayout;

    iget-object v2, p0, Lcom/alensw/ui/view/TitleBar;->k:Lcom/alensw/ui/view/ActionLayout;

    invoke-virtual {v2, v1}, Lcom/alensw/ui/view/ActionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alensw/ui/view/ActionLayout;->removeView(Landroid/view/View;)V

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/alensw/ui/view/TitleBar;->b:I

    const/high16 v3, 0x7f030000

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/alensw/ui/view/TitleBar;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/alensw/ui/view/TitleBar;->p:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alensw/ui/view/TitleBar;->k:Lcom/alensw/ui/view/ActionLayout;

    invoke-virtual {v1}, Lcom/alensw/ui/view/ActionLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/alensw/ui/view/TitleBar;->c:I

    invoke-direct {v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/alensw/ui/view/TitleBar;->k:Lcom/alensw/ui/view/ActionLayout;

    invoke-virtual {v2, v0, v1, v3}, Lcom/alensw/ui/view/ActionLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleBar;->f()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleBar;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->m:Lcom/alensw/b/g/b;

    invoke-virtual {v0}, Lcom/alensw/b/g/b;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->m:Lcom/alensw/b/g/b;

    invoke-virtual {v0, p1}, Lcom/alensw/b/g/b;->a(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/alensw/ui/view/TitleBar;->f:Landroid/widget/ImageView;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/alensw/ui/view/TitleBar;->k:Lcom/alensw/ui/view/ActionLayout;

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, Lcom/alensw/ui/view/TitleBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleBar;->f()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->g:Lcom/alensw/ui/view/HomeButton;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/HomeButton;->a(Z)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->g:Lcom/alensw/ui/view/HomeButton;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/HomeButton;->b(Z)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->l:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alensw/ui/view/TitleBar;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->k:Lcom/alensw/ui/view/ActionLayout;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ActionLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/view/TitleBar;->k:Lcom/alensw/ui/view/ActionLayout;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/view/ActionLayout;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->m:Lcom/alensw/b/g/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->m:Lcom/alensw/b/g/b;

    invoke-virtual {v0}, Lcom/alensw/b/g/b;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/ui/view/TitleBar;->m:Lcom/alensw/b/g/b;

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleBar;->f()V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->h:Lcom/alensw/ui/view/TitleView;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/TitleView;->a(Z)V

    return-void
.end method

.method public d()Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->m:Lcom/alensw/b/g/b;

    if-nez v0, :cond_3

    new-instance v0, Lcom/alensw/b/g/b;

    invoke-direct {v0, v1}, Lcom/alensw/b/g/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alensw/ui/view/TitleBar;->m:Lcom/alensw/b/g/b;

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->n:Lcom/alensw/ui/view/cb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->n:Lcom/alensw/ui/view/cb;

    iget-object v3, p0, Lcom/alensw/ui/view/TitleBar;->m:Lcom/alensw/b/g/b;

    invoke-interface {v0, p0, v3}, Lcom/alensw/ui/view/cb;->a(Lcom/alensw/ui/view/TitleBar;Landroid/view/Menu;)Z

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/alensw/ui/view/TitleBar;->m:Lcom/alensw/b/g/b;

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->n:Lcom/alensw/ui/view/cb;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->n:Lcom/alensw/ui/view/cb;

    iget-object v1, p0, Lcom/alensw/ui/view/TitleBar;->m:Lcom/alensw/b/g/b;

    invoke-interface {v0, p0, v1}, Lcom/alensw/ui/view/cb;->b(Lcom/alensw/ui/view/TitleBar;Landroid/view/Menu;)Z

    move-result v2

    :cond_0
    :goto_1
    return v2

    :cond_1
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    iget-object v3, p0, Lcom/alensw/ui/view/TitleBar;->m:Lcom/alensw/b/g/b;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/ui/view/TitleBar;->m:Lcom/alensw/b/g/b;

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast v1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->m:Lcom/alensw/b/g/b;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    goto :goto_1

    :cond_5
    move v2, v0

    goto :goto_1
.end method

.method protected e()V
    .locals 9

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleBar;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->l:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alensw/ui/view/TitleBar;->d:I

    if-ge v3, v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alensw/ui/view/TitleBar;->e:Z

    iget-boolean v0, p0, Lcom/alensw/ui/view/TitleBar;->e:Z

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    iget-object v3, p0, Lcom/alensw/ui/view/TitleBar;->k:Lcom/alensw/ui/view/ActionLayout;

    invoke-virtual {v3}, Lcom/alensw/ui/view/ActionLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v7, v3, -0x1

    move v5, v2

    move v3, v0

    :goto_2
    if-ge v5, v7, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->k:Lcom/alensw/ui/view/ActionLayout;

    invoke-virtual {v0, v5}, Lcom/alensw/ui/view/ActionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move v0, v1

    :goto_4
    if-eqz v0, :cond_12

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v3, v0

    :goto_5
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v0

    goto :goto_2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    div-int/lit8 v0, v3, 0x2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    :cond_5
    move v6, v2

    :goto_6
    if-ge v6, v7, :cond_a

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->k:Lcom/alensw/ui/view/ActionLayout;

    invoke-virtual {v0, v6}, Lcom/alensw/ui/view/ActionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_7
    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lt v3, v0, :cond_8

    :cond_6
    move v5, v1

    :goto_8
    if-eqz v5, :cond_9

    move v0, v2

    :goto_9
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_11

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v3, v0

    :goto_a
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v0

    goto :goto_6

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    move v5, v2

    goto :goto_8

    :cond_9
    move v0, v4

    goto :goto_9

    :cond_a
    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->k:Lcom/alensw/ui/view/ActionLayout;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ActionLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/alensw/ui/view/TitleBar;->e:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/alensw/ui/view/TitleBar;->l:Landroid/widget/LinearLayout;

    :goto_b
    if-eq v0, v1, :cond_c

    if-eqz v0, :cond_b

    iget-object v2, p0, Lcom/alensw/ui/view/TitleBar;->k:Lcom/alensw/ui/view/ActionLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_b
    iget-object v2, p0, Lcom/alensw/ui/view/TitleBar;->k:Lcom/alensw/ui/view/ActionLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v0, p0, Lcom/alensw/ui/view/TitleBar;->e:Z

    if-eqz v0, :cond_10

    const/4 v0, -0x1

    :goto_c
    iget v5, p0, Lcom/alensw/ui/view/TitleBar;->c:I

    invoke-direct {v3, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->l:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->l:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/alensw/ui/view/TitleBar;->e:Z

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleBar;->getVisibility()I

    move-result v4

    :cond_d
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_e
    return-void

    :cond_f
    move-object v1, p0

    goto :goto_b

    :cond_10
    const/4 v0, -0x2

    goto :goto_c

    :cond_11
    move v0, v3

    goto :goto_a

    :cond_12
    move v0, v3

    goto/16 :goto_5
.end method

.method protected f()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/TitleBar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getButtonHeight()I
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/TitleBar;->c:I

    return v0
.end method

.method public getSplitBarHeight()I
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->l:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alensw/ui/view/TitleBar;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/alensw/ui/view/TitleBar;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitleColor()I
    .locals 2

    iget v0, p0, Lcom/alensw/ui/view/TitleBar;->a:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/view/HomeButton;

    iput-object v0, p0, Lcom/alensw/ui/view/TitleBar;->g:Lcom/alensw/ui/view/HomeButton;

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->g:Lcom/alensw/ui/view/HomeButton;

    const v2, 0x102002c

    invoke-virtual {v0, v2}, Lcom/alensw/ui/view/HomeButton;->setId(I)V

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->g:Lcom/alensw/ui/view/HomeButton;

    iget v2, p0, Lcom/alensw/ui/view/TitleBar;->a:I

    invoke-virtual {v0, v2}, Lcom/alensw/ui/view/HomeButton;->a(I)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleBar;->getTitleColor()I

    move-result v2

    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/view/TitleView;

    iput-object v0, p0, Lcom/alensw/ui/view/TitleBar;->h:Lcom/alensw/ui/view/TitleView;

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->h:Lcom/alensw/ui/view/TitleView;

    invoke-virtual {v0, v2}, Lcom/alensw/ui/view/TitleView;->setTextColor(I)V

    const v0, 0x7f090035

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alensw/ui/view/TitleBar;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->i:Landroid/widget/TextView;

    const v3, 0xffffff

    and-int/2addr v2, v3

    const/high16 v3, -0x40000000    # -2.0f

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f090036

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alensw/ui/view/TitleBar;->j:Landroid/widget/ProgressBar;

    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/view/ActionLayout;

    iput-object v0, p0, Lcom/alensw/ui/view/TitleBar;->k:Lcom/alensw/ui/view/ActionLayout;

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->k:Lcom/alensw/ui/view/ActionLayout;

    const v2, 0x7f090034

    invoke-virtual {v0, v2}, Lcom/alensw/ui/view/ActionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alensw/ui/view/TitleBar;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->f:Landroid/widget/ImageView;

    const v2, 0x7f05000f

    iget v3, p0, Lcom/alensw/ui/view/TitleBar;->a:I

    invoke-static {v1, v2, v3}, Lcom/b/a/b;->a(Landroid/content/res/Resources;II)Lcom/b/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/alensw/ui/view/bx;

    invoke-direct {v1, p0}, Lcom/alensw/ui/view/bx;-><init>(Lcom/alensw/ui/view/TitleBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/alensw/ui/view/TitleBar;->c:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleBar;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/alensw/ui/view/TitleBar;->c:I

    invoke-virtual {p0, v0, v1}, Lcom/alensw/ui/view/TitleBar;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleBar;->e()V

    new-instance v0, Lcom/alensw/ui/view/by;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/by;-><init>(Lcom/alensw/ui/view/TitleBar;)V

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/TitleBar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->l:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alensw/ui/view/TitleBar;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->l:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->g:Lcom/alensw/ui/view/HomeButton;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/HomeButton;->setEnabled(Z)V

    return-void
.end method

.method public setMenuCallback(Lcom/alensw/ui/view/cb;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/TitleBar;->n:Lcom/alensw/ui/view/cb;

    return-void
.end method

.method public setOnHomeClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->g:Lcom/alensw/ui/view/HomeButton;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/HomeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnTitleClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->h:Lcom/alensw/ui/view/TitleView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/TitleView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/alensw/ui/view/ca;

    invoke-direct {v1, p0, p1}, Lcom/alensw/ui/view/ca;-><init>(Lcom/alensw/ui/view/TitleBar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setProgressVisible(Z)V
    .locals 2

    iget-object v1, p0, Lcom/alensw/ui/view/TitleBar;->j:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alensw/ui/view/TitleBar;->i:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->h:Lcom/alensw/ui/view/TitleView;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/TitleView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->l:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alensw/ui/view/TitleBar;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/TitleBar;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
