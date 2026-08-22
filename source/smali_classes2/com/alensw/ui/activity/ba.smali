.class public Lcom/alensw/ui/activity/ba;
.super Landroid/preference/PreferenceActivity;


# instance fields
.field public a:I

.field public b:I

.field protected c:I

.field protected d:I

.field protected e:Lcom/alensw/ui/view/TitleBar;

.field protected final f:Landroid/view/View$OnClickListener;

.field private final g:Ljava/util/Stack;

.field private h:I

.field private i:I

.field private j:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/activity/ba;->g:Ljava/util/Stack;

    new-instance v0, Lcom/alensw/ui/activity/bb;

    invoke-direct {v0, p0}, Lcom/alensw/ui/activity/bb;-><init>(Lcom/alensw/ui/activity/ba;)V

    iput-object v0, p0, Lcom/alensw/ui/activity/ba;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alensw/ui/activity/ba;)Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/activity/ba;->g:Ljava/util/Stack;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/preference/PreferenceScreen;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/alensw/ui/activity/ba;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    iget v0, p0, Lcom/alensw/ui/activity/ba;->h:I

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/ui/activity/ba;->j:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alensw/ui/activity/ba;->h:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/activity/ba;->j:Landroid/view/animation/Animation;

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/activity/ba;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/activity/ba;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/view/MenuItem;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/alensw/ui/activity/ao;->F:Z

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/activity/ba;->e:Lcom/alensw/ui/view/TitleBar;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/alensw/b/g/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/activity/ba;->e:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0, p1, p2}, Lcom/alensw/ui/view/TitleBar;->a(Landroid/view/MenuItem;I)V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/ba;->a(Landroid/view/ViewGroup;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020016

    if-ne v2, v3, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_2

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    :cond_2
    instance-of v2, v0, Landroid/widget/CheckBox;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/alensw/ui/activity/ba;->d:I

    iget v4, p0, Lcom/alensw/ui/activity/ba;->c:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/alensw/b/g/a;->a(Landroid/content/res/Resources;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/widget/ImageView;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected a(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move v0, v1

    :goto_1
    return v0

    :cond_0
    instance-of v5, v0, Landroid/preference/PreferenceGroup;

    if-eqz v5, :cond_1

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, v0, p2}, Lcom/alensw/ui/activity/ba;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public addPreferencesFromResource(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ba;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ba;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/ba;->b(Landroid/preference/PreferenceScreen;)V

    :cond_0
    return-void
.end method

.method protected b(Landroid/preference/PreferenceScreen;)V
    .locals 10

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ba;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_2

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    instance-of v0, v1, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    move v2, v3

    :goto_1
    if-ge v2, v8, :cond_0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/alensw/ui/activity/be;

    invoke-direct {v2, p0, v7}, Lcom/alensw/ui/activity/be;-><init>(Lcom/alensw/ui/activity/ba;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/ba;->b(Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/activity/ba;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/activity/ba;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/ba;->a(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/16 v8, 0x15

    const/4 v7, 0x7

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, -0x3

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ba;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "transition_animation_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ba;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dialog_enter"

    const-string v2, "anim"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/activity/ba;->h:I

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ba;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dialog_exit"

    const-string v2, "anim"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/activity/ba;->i:I

    iget v0, p0, Lcom/alensw/ui/activity/ba;->h:I

    iget v1, p0, Lcom/alensw/ui/activity/ba;->i:I

    invoke-super {p0, v0, v1}, Landroid/preference/PreferenceActivity;->overridePendingTransition(II)V

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "main_theme"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alensw/ui/activity/ba;->a:I

    iget v1, p0, Lcom/alensw/ui/activity/ba;->a:I

    invoke-static {v1}, Lcom/alensw/ui/activity/ao;->h(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alensw/ui/activity/ba;->setTheme(I)V

    iget v1, p0, Lcom/alensw/ui/activity/ba;->a:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Lcom/alensw/ui/activity/ba;->a:I

    if-ne v1, v5, :cond_7

    :cond_1
    const-string v1, "actionbar_color"

    iget v2, p0, Lcom/alensw/ui/activity/ba;->b:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/activity/ba;->b:I

    :goto_0
    invoke-virtual {p0}, Lcom/alensw/ui/activity/ba;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/activity/ba;->d:I

    const v0, 0x7f01000e

    invoke-static {p0, v0}, Lcom/alensw/ui/activity/ao;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/activity/ba;->c:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v7}, Lcom/alensw/ui/activity/ba;->requestWindowFeature(I)Z

    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ba;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/alensw/PicFolder/QuickApp;

    invoke-virtual {v0, p0}, Lcom/alensw/PicFolder/QuickApp;->a(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ba;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ba;->getListView()Landroid/widget/ListView;

    move-result-object v1

    sget-boolean v2, Lcom/alensw/ui/activity/ao;->F:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ba;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget v3, p0, Lcom/alensw/ui/activity/ba;->a:I

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/alensw/ui/activity/ba;->a:I

    if-ne v3, v5, :cond_5

    :cond_3
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget v4, p0, Lcom/alensw/ui/activity/ba;->b:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_4

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget v4, p0, Lcom/alensw/ui/activity/ba;->b:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_5

    iget v2, p0, Lcom/alensw/ui/activity/ba;->b:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_5
    const v0, 0x7f010001

    invoke-static {p0, v0}, Lcom/alensw/ui/activity/ao;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/alensw/ui/activity/ao;->a(Landroid/app/Activity;I)V

    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v8, :cond_6

    new-instance v0, Lcom/alensw/ui/activity/bc;

    invoke-direct {v0, p0}, Lcom/alensw/ui/activity/bc;-><init>(Lcom/alensw/ui/activity/ba;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_6
    return-void

    :cond_7
    const/high16 v0, 0x7f010000

    invoke-static {p0, v0}, Lcom/alensw/ui/activity/ao;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/activity/ba;->b:I

    goto/16 :goto_0

    :cond_8
    const v2, 0x7f030016

    invoke-virtual {v0, v7, v2}, Landroid/view/Window;->setFeatureInt(II)V

    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/ba;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/view/TitleBar;

    iget v2, p0, Lcom/alensw/ui/activity/ba;->b:I

    invoke-virtual {v0, v2}, Lcom/alensw/ui/view/TitleBar;->setBackgroundColor(I)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alensw/ui/view/TitleBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/alensw/ui/activity/ba;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/alensw/ui/view/TitleBar;->setOnHomeClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v6}, Lcom/alensw/ui/view/TitleBar;->a(Z)V

    iput-object v0, p0, Lcom/alensw/ui/activity/ba;->e:Lcom/alensw/ui/view/TitleBar;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ba;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/alensw/PicFolder/QuickApp;

    invoke-virtual {v0, p0}, Lcom/alensw/PicFolder/QuickApp;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/alensw/ui/activity/ba;->onBackPressed()V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f090033 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ba;->e:Lcom/alensw/ui/view/TitleBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/ba;->e:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0}, Lcom/alensw/ui/view/TitleBar;->d()Z

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/activity/ba;->e:Lcom/alensw/ui/view/TitleBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/ba;->e:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/TitleBar;->a(Landroid/view/Menu;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ba;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/alensw/PicFolder/QuickApp;

    invoke-virtual {v0, p0}, Lcom/alensw/PicFolder/QuickApp;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ba;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/alensw/PicFolder/QuickApp;

    invoke-virtual {v0, p0}, Lcom/alensw/PicFolder/QuickApp;->d(Landroid/app/Activity;)V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/activity/ba;->e:Lcom/alensw/ui/view/TitleBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/ba;->e:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/TitleBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ba;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/ba;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_0

    new-instance v0, Lcom/alensw/ui/activity/bd;

    invoke-direct {v0, p0, p0}, Lcom/alensw/ui/activity/bd;-><init>(Lcom/alensw/ui/activity/ba;Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/ContainerLayout;->addView(Landroid/view/View;)V

    move-object p1, v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->setContentView(Landroid/view/View;)V

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alensw/ui/activity/ba;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method
