.class public Lcom/alensw/ui/view/PathBar;
.super Landroid/widget/HorizontalScrollView;


# static fields
.field public static final a:Ljava/io/File;


# instance fields
.field private b:Ljava/io/File;

.field private c:Landroid/view/View$OnClickListener;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Landroid/widget/LinearLayout;

.field private final h:Landroid/widget/LinearLayout$LayoutParams;

.field private final i:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alensw/ui/view/PathBar;->a:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alensw/ui/view/PathBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/alensw/ui/view/PathBar;->a:Ljava/io/File;

    iput-object v0, p0, Lcom/alensw/ui/view/PathBar;->b:Ljava/io/File;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/alensw/ui/view/PathBar;->h:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Lcom/alensw/ui/view/az;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/az;-><init>(Lcom/alensw/ui/view/PathBar;)V

    iput-object v0, p0, Lcom/alensw/ui/view/PathBar;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/alensw/ui/view/PathBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/alensw/ui/view/PathBar;->d:I

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alensw/ui/view/PathBar;->e:I

    const v0, 0x1010036

    invoke-static {p1, v0}, Lcom/alensw/ui/activity/ao;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/PathBar;->f:I

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alensw/ui/view/PathBar;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/alensw/ui/view/PathBar;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/alensw/ui/view/PathBar;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/PathBar;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/PathBar;->setHorizontalScrollBarEnabled(Z)V

    sget-object v0, Lcom/alensw/ui/view/PathBar;->a:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/PathBar;->setPath(Ljava/io/File;)V

    return-void
.end method

.method static synthetic a(Lcom/alensw/ui/view/PathBar;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/PathBar;->c:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private a(I)Landroid/widget/TextView;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ">"

    invoke-direct {p0, v0, p1}, Lcom/alensw/ui/view/PathBar;->a(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    return-object v0
.end method

.method private a(Ljava/io/File;I)Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lcom/alensw/ui/view/PathBar;->a:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "root"

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/alensw/ui/view/PathBar;->a(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)Landroid/widget/TextView;
    .locals 3

    invoke-virtual {p0}, Lcom/alensw/ui/view/PathBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030020

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/alensw/ui/view/PathBar;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    iget v1, p0, Lcom/alensw/ui/view/PathBar;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/alensw/ui/view/PathBar;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/alensw/ui/view/PathBar;->g:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alensw/ui/view/PathBar;->h:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method static synthetic b(Lcom/alensw/ui/view/PathBar;)I
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/view/PathBar;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getPath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/PathBar;->b:Ljava/io/File;

    return-object v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/PathBar;->c:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setPath(Ljava/io/File;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/view/PathBar;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/view/PathBar;->b:Ljava/io/File;

    invoke-virtual {v1, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-gtz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/view/PathBar;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/alensw/b/l/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-lez v0, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/view/PathBar;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/alensw/ui/view/PathBar;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alensw/ui/view/PathBar;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    :goto_2
    iput-object p1, p0, Lcom/alensw/ui/view/PathBar;->b:Ljava/io/File;

    new-instance v0, Lcom/alensw/ui/view/ba;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/ba;-><init>(Lcom/alensw/ui/view/PathBar;)V

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/PathBar;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/view/PathBar;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :goto_3
    if-eqz v0, :cond_8

    sget-object v1, Lcom/alensw/ui/view/PathBar;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v0, v5}, Lcom/alensw/ui/view/PathBar;->a(Ljava/io/File;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    iget-object v3, p0, Lcom/alensw/ui/view/PathBar;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v1, :cond_7

    invoke-direct {p0, v5}, Lcom/alensw/ui/view/PathBar;->a(I)Landroid/widget/TextView;

    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/alensw/ui/view/PathBar;->a:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0, v4}, Lcom/alensw/ui/view/PathBar;->a(I)Landroid/widget/TextView;

    :cond_9
    invoke-direct {p0, p1, v4}, Lcom/alensw/ui/view/PathBar;->a(Ljava/io/File;I)Landroid/widget/TextView;

    goto :goto_2
.end method
