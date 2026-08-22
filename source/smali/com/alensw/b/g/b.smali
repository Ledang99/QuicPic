.class public Lcom/alensw/b/g/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Menu;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field protected final d:Landroid/content/Context;

.field protected final e:Ljava/util/ArrayList;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/b/g/b;->e:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/alensw/b/g/b;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const v3, 0x7f010001

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/alensw/b/g/b;->a:I

    const v3, 0x7f010004

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alensw/b/g/b;->b:I

    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alensw/b/g/b;->c:I

    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/view/Menu;)V
    .locals 7

    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    const v1, 0x7f010001

    invoke-static {p0, v1}, Lcom/alensw/ui/activity/ao;->b(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0}, Lcom/alensw/ui/activity/ao;->b(Landroid/content/Context;)I

    move-result v3

    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-interface {p2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-static {p0, v5, v2, v3}, Lcom/alensw/b/g/l;->a(Landroid/content/Context;Landroid/view/MenuItem;II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;Lcom/alensw/b/g/k;)V
    .locals 2

    new-instance v0, Lcom/alensw/b/g/b;

    invoke-direct {v0, p0}, Lcom/alensw/b/g/b;-><init>(Landroid/content/Context;)V

    invoke-interface {p2, v0, p1}, Lcom/alensw/b/g/k;->a(Landroid/view/Menu;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/alensw/b/g/b;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/alensw/b/g/a;Landroid/view/View;Lcom/alensw/b/g/j;)V
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/alensw/b/g/b;->b(Landroid/content/Context;Lcom/alensw/b/g/a;Landroid/view/View;Lcom/alensw/b/g/j;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/alensw/b/g/b;->c(Landroid/content/Context;Lcom/alensw/b/g/a;Landroid/view/View;Lcom/alensw/b/g/j;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/alensw/b/g/a;Ljava/lang/CharSequence;Lcom/alensw/b/g/j;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/alensw/b/g/b;->b(Landroid/content/Context;Lcom/alensw/b/g/a;Ljava/lang/CharSequence;Lcom/alensw/b/g/j;)V

    return-void
.end method

.method static synthetic a(Landroid/widget/PopupWindow;Landroid/view/View;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/alensw/b/g/b;->b(Landroid/widget/PopupWindow;Landroid/view/View;II)V

    return-void
.end method

.method private b(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alensw/b/g/b;->a(IIILjava/lang/CharSequence;)Lcom/alensw/b/g/l;

    move-result-object v0

    new-instance v1, Lcom/alensw/b/g/m;

    iget-object v2, p0, Lcom/alensw/b/g/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/alensw/b/g/m;-><init>(Landroid/content/Context;Landroid/view/MenuItem;)V

    invoke-virtual {v0, v1}, Lcom/alensw/b/g/l;->a(Landroid/view/SubMenu;)V

    iget-boolean v0, p0, Lcom/alensw/b/g/b;->f:Z

    invoke-virtual {v1, v0}, Lcom/alensw/b/g/m;->a(Z)V

    return-object v1
.end method

.method private static b(Landroid/content/Context;Lcom/alensw/b/g/a;Landroid/view/View;Lcom/alensw/b/g/j;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v4, v1, :cond_0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v4, v0

    :cond_0
    invoke-virtual {p1}, Lcom/alensw/b/g/a;->a()[I

    move-result-object v3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    const v0, 0x1010444

    :goto_1
    new-instance v2, Landroid/widget/ListPopupWindow;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1, v0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v2, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v2, p2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    aget v0, v3, v6

    invoke-virtual {v2, v0}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    aget v0, v3, v5

    if-le v0, v4, :cond_1

    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    invoke-virtual {v2, v5}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    new-instance v0, Lcom/alensw/b/g/f;

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alensw/b/g/f;-><init>(Lcom/alensw/b/g/a;Landroid/widget/ListPopupWindow;[IILcom/alensw/b/g/j;)V

    invoke-virtual {v2, v0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-le v4, v3, :cond_4

    :goto_2
    invoke-virtual {v2, v6}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    :cond_2
    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->show()V

    return-void

    :cond_3
    const v0, 0x1010300

    goto :goto_1

    :cond_4
    sub-int/2addr v0, v1

    div-int/lit8 v6, v0, 0x2

    goto :goto_2

    :cond_5
    move v0, v6

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/alensw/b/g/a;Ljava/lang/CharSequence;Lcom/alensw/b/g/j;)V
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcom/alensw/b/g/e;

    invoke-direct {v1, p1, p0, p3}, Lcom/alensw/b/g/e;-><init>(Lcom/alensw/b/g/a;Landroid/content/Context;Lcom/alensw/b/g/j;)V

    invoke-static {p0, v0, p1, v1}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/Object;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {v0}, Lcom/alensw/ui/a/f;->a(Landroid/app/Dialog;)Z

    goto :goto_0
.end method

.method private static b(Landroid/widget/PopupWindow;Landroid/view/View;II)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alensw/b/g/i;

    invoke-direct {v1, p0, p2}, Lcom/alensw/b/g/i;-><init>(Landroid/widget/PopupWindow;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lt v0, p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1, v3, v2, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0, v0, v3, v2, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Lcom/alensw/b/g/a;Landroid/view/View;Lcom/alensw/b/g/j;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    const v1, 0x7f01000c

    invoke-static {p0, v1}, Lcom/alensw/ui/activity/ao;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1, v4}, Lcom/alensw/ui/d/d;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v7, Landroid/widget/ListView;

    invoke-direct {v7, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const v3, 0x1030002

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p1}, Lcom/alensw/b/g/a;->a()[I

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v5, v0, 0x4

    aget v0, v8, v6

    invoke-virtual {v7}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/alensw/b/g/a;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v1, v4, 0x2

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v0, -0x2

    invoke-virtual {v2, v9, v0}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    new-instance v0, Lcom/alensw/b/g/g;

    move-object v1, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alensw/b/g/g;-><init>(Lcom/alensw/b/g/a;Landroid/widget/PopupWindow;Landroid/view/View;IILcom/alensw/b/g/j;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/alensw/b/g/h;

    invoke-direct {v0, v2}, Lcom/alensw/b/g/h;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    aget v0, v8, v9

    mul-int/lit8 v1, v4, 0x2

    add-int/2addr v0, v1

    invoke-static {v2, p2, v0, v5}, Lcom/alensw/b/g/b;->b(Landroid/widget/PopupWindow;Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 3

    iget-object v0, p0, Lcom/alensw/b/g/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/alensw/b/g/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/g/l;

    invoke-virtual {v0}, Lcom/alensw/b/g/l;->getItemId()I

    move-result v0

    if-ne v0, p1, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a(IIILjava/lang/CharSequence;)Lcom/alensw/b/g/l;
    .locals 6

    new-instance v0, Lcom/alensw/b/g/l;

    iget-object v2, p0, Lcom/alensw/b/g/b;->d:Landroid/content/Context;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alensw/b/g/l;-><init>(Lcom/alensw/b/g/b;Landroid/content/Context;IILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alensw/b/g/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lcom/alensw/b/g/c;

    invoke-direct {v0, p0}, Lcom/alensw/b/g/c;-><init>(Lcom/alensw/b/g/b;)V

    iget-object v1, p0, Lcom/alensw/b/g/b;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/alensw/b/g/b;->b()Lcom/alensw/b/g/a;

    move-result-object v2

    invoke-static {v1, v2, p1, v0}, Lcom/alensw/b/g/b;->a(Landroid/content/Context;Lcom/alensw/b/g/a;Landroid/view/View;Lcom/alensw/b/g/j;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alensw/b/g/b;->a(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/b/g/b;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/alensw/b/g/b;->b()Lcom/alensw/b/g/a;

    move-result-object v1

    new-instance v2, Lcom/alensw/b/g/d;

    invoke-direct {v2, p0}, Lcom/alensw/b/g/d;-><init>(Lcom/alensw/b/g/b;)V

    invoke-static {v0, v1, p1, v2}, Lcom/alensw/b/g/b;->b(Landroid/content/Context;Lcom/alensw/b/g/a;Ljava/lang/CharSequence;Lcom/alensw/b/g/j;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alensw/b/g/b;->f:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/b/g/b;->f:Z

    return v0
.end method

.method public add(I)Landroid/view/MenuItem;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/b/g/b;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/alensw/b/g/b;->a(IIILjava/lang/CharSequence;)Lcom/alensw/b/g/l;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/g/b;->d:Landroid/content/Context;

    invoke-virtual {v0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alensw/b/g/b;->a(IIILjava/lang/CharSequence;)Lcom/alensw/b/g/l;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alensw/b/g/b;->a(IIILjava/lang/CharSequence;)Lcom/alensw/b/g/l;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/alensw/b/g/b;->a(IIILjava/lang/CharSequence;)Lcom/alensw/b/g/l;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/b/g/b;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/alensw/b/g/b;->b(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/g/b;->d:Landroid/content/Context;

    invoke-virtual {v0, p4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alensw/b/g/b;->b(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alensw/b/g/b;->b(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p1}, Lcom/alensw/b/g/b;->b(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/alensw/b/g/a;
    .locals 3

    new-instance v0, Lcom/alensw/b/g/a;

    iget-object v1, p0, Lcom/alensw/b/g/b;->d:Landroid/content/Context;

    iget v2, p0, Lcom/alensw/b/g/b;->b:I

    invoke-direct {v0, v1, v2}, Lcom/alensw/b/g/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p0}, Lcom/alensw/b/g/a;->a(Lcom/alensw/b/g/b;)V

    return-object v0
.end method

.method public b(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alensw/b/g/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/g/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/g/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 3

    iget-object v0, p0, Lcom/alensw/b/g/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/g/l;

    invoke-virtual {v0}, Lcom/alensw/b/g/l;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/alensw/b/g/l;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alensw/b/g/l;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/g/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public hasVisibleItems()Z
    .locals 2

    iget-object v0, p0, Lcom/alensw/b/g/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/g/l;

    invoke-virtual {v0}, Lcom/alensw/b/g/l;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public performIdentifierAction(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeGroup(I)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/b/g/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/alensw/b/g/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/g/l;

    invoke-virtual {v0}, Lcom/alensw/b/g/l;->getGroupId()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/alensw/b/g/b;->b(I)V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alensw/b/g/b;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alensw/b/g/b;->b(I)V

    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz p3, :cond_0

    const/16 v0, 0x10

    :cond_0
    or-int/2addr v1, v0

    iget-object v0, p0, Lcom/alensw/b/g/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/g/l;

    invoke-virtual {v0}, Lcom/alensw/b/g/l;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-virtual {v0, v1}, Lcom/alensw/b/g/l;->a(I)Lcom/alensw/b/g/l;

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/b/g/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/g/l;

    invoke-virtual {v0}, Lcom/alensw/b/g/l;->getGroupId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0, p2}, Lcom/alensw/b/g/l;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/b/g/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/g/l;

    invoke-virtual {v0}, Lcom/alensw/b/g/l;->getGroupId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0, p2}, Lcom/alensw/b/g/l;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 0

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/g/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
