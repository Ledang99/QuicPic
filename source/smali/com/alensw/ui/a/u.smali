.class public Lcom/alensw/ui/a/u;
.super Landroid/app/AlertDialog;


# instance fields
.field protected final a:Landroid/content/Context;

.field protected b:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/alensw/ui/a/u;->a(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/AlertDialog;->setIcon(I)V

    iput-object p1, p0, Lcom/alensw/ui/a/u;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "main_theme"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    if-eqz v0, :cond_3

    const v0, 0x7f0b001c

    goto :goto_0

    :cond_3
    const v0, 0x7f0b001b

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;II)Lcom/alensw/ui/a/u;
    .locals 1

    new-instance v0, Lcom/alensw/ui/a/u;

    invoke-direct {v0, p0}, Lcom/alensw/ui/a/u;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/alensw/ui/a/u;->setTitle(I)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Lcom/alensw/ui/a/u;->a(I)V

    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 13

    const/16 v12, 0xb

    const/4 v2, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_a

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v1, 0x1010036

    invoke-static {p0, v1}, Lcom/alensw/ui/activity/ao;->b(Landroid/content/Context;I)I

    move-result v5

    const v1, 0x7f080006

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v1, 0x7f080005

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const-string v1, "alertTitle"

    const-string v3, "id"

    const-string v9, "android"

    invoke-virtual {v4, v1, v3, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v8, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    const-string v1, "titleDivider"

    const-string v3, "id"

    const-string v9, "android"

    invoke-virtual {v4, v1, v3, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v8, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    instance-of v1, p1, Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const-string v1, "buttonPanel"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v4, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v12, :cond_7

    mul-int/lit8 v3, v6, 0x3

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v5, v6, 0x3

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v3, v6, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    instance-of v3, v1, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    :cond_3
    :goto_2
    const v1, 0x7f080004

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v3, v6, 0x2

    add-int v4, v1, v3

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_3
    if-ltz v3, :cond_b

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x2

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, 0x0

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    instance-of v1, v5, Landroid/widget/Button;

    if-eqz v1, :cond_4

    invoke-virtual {v5, v4}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setMinimumHeight(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v12, :cond_4

    const v1, 0x7f020002

    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_3

    :cond_5
    move-object v1, v2

    goto/16 :goto_0

    :cond_6
    move-object v1, v2

    goto/16 :goto_1

    :cond_7
    const v3, 0x7f01000c

    invoke-static {p0, v3}, Lcom/alensw/ui/activity/ao;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    mul-int/lit8 v10, v6, 0x3

    div-int/lit8 v10, v10, 0x4

    invoke-static {v3, v10}, Lcom/alensw/ui/d/d;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v3, v9, v10, v11}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_4
    if-ltz v3, :cond_8

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_8
    const v1, 0x1020006

    invoke-virtual {v8, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_9

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, v5}, Lcom/alensw/ui/a/u;->a(Landroid/view/ViewGroup;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_5
    return-void

    :cond_b
    const v1, 0x102001b

    :try_start_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method public static a(Landroid/view/ViewGroup;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/alensw/ui/a/u;->a(Landroid/view/ViewGroup;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lcom/alensw/ui/a/u;->a(Landroid/widget/EditText;)V

    goto :goto_1

    :cond_2
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static a(Landroid/widget/EditText;)V
    .locals 1

    new-instance v0, Lcom/alensw/ui/a/v;

    invoke-direct {v0}, Lcom/alensw/ui/a/v;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/a/u;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/a/u;->setView(Landroid/view/View;)V

    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/a/u;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/a/u;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/a/u;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/alensw/ui/a/u;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/ui/a/u;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/alensw/ui/a/u;->b:Landroid/view/View;

    invoke-super {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    return-void
.end method
