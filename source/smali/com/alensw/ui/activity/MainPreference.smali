.class public Lcom/alensw/ui/activity/MainPreference;
.super Lcom/alensw/ui/activity/ba;
.source "MainPreference.java"


# instance fields
.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alensw/ui/activity/ba;-><init>()V

    new-instance v0, Lcom/alensw/ui/activity/z;

    invoke-direct {v0, p0}, Lcom/alensw/ui/activity/z;-><init>(Lcom/alensw/ui/activity/MainPreference;)V

    iput-object v0, p0, Lcom/alensw/ui/activity/MainPreference;->g:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string v1, " "

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    const v3, 0x7f0a0074

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    const-string v0, "http://t.cn/zWYtuBy"

    :goto_0
    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1

    :cond_0
    const-string v0, "https://github.com/WSTxda/QP-Gallery-Releases"

    goto :goto_0
.end method

.method static synthetic a(Lcom/alensw/ui/activity/MainPreference;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/activity/MainPreference;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method private a__$appendPatch(Landroid/preference/PreferenceScreen;)V
    .locals 4

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alensw/ui/activity/MainPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/alensw/ui/activity/MainPreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/alensw/updater/UpdateView;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/alensw/ui/activity/MainPreference;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private a__$appendPatch2(Landroid/preference/PreferenceScreen;)V
    .locals 2

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f0a008c

    invoke-virtual {p0, v1}, Lcom/alensw/ui/activity/MainPreference;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "disable_battery_opt"

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/MainPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alensw/ui/activity/MainPreference;->isBatteryOptimizationEnabled(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/activity/MainPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    new-instance v1, Lcom/alensw/ui/activity/MainPreference$1;

    invoke-direct {v1, p0}, Lcom/alensw/ui/activity/MainPreference$1;-><init>(Lcom/alensw/ui/activity/MainPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    return-void
.end method

.method private a__$appendSource(Landroid/preference/PreferenceScreen;)V
    .locals 10

    const/high16 v9, 0x7f0a0000

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/ba;->a(Landroid/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/alensw/ui/activity/MainPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v4, 0x7f0a003c

    invoke-virtual {p0, v4}, Lcom/alensw/ui/activity/MainPreference;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "main_theme"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/alensw/ui/activity/v;

    invoke-direct {v1, p0}, Lcom/alensw/ui/activity/v;-><init>(Lcom/alensw/ui/activity/MainPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v4, 0x7f0a00ba

    invoke-virtual {p0, v4}, Lcom/alensw/ui/activity/MainPreference;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "included_folders"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p0, v1}, Lcom/alensw/ui/activity/PathListActivity;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const-string v0, "excluded_folders"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p0, v2}, Lcom/alensw/ui/activity/PathListActivity;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const-string v0, "crop_thumbnail"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/alensw/ui/activity/aa;

    invoke-direct {v1, p0, v0}, Lcom/alensw/ui/activity/aa;-><init>(Lcom/alensw/ui/activity/MainPreference;Landroid/preference/SwitchPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "default_sort"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/alensw/ui/activity/ab;

    invoke-direct {v1, p0, v3}, Lcom/alensw/ui/activity/ab;-><init>(Lcom/alensw/ui/activity/MainPreference;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    :cond_2
    const v4, 0x7f0a008c

    invoke-virtual {p0, v4}, Lcom/alensw/ui/activity/MainPreference;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v0, "screen_orientation"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/MainPreference;->a(Landroid/preference/ListPreference;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_3

    const-string v0, "auto_hide_navigate_bar"

    invoke-virtual {p0, p1, v0}, Lcom/alensw/ui/activity/MainPreference;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const-string v0, "auto_hide_navigate_bar"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/alensw/ui/activity/ac;

    invoke-direct {v1, p0, v0}, Lcom/alensw/ui/activity/ac;-><init>(Lcom/alensw/ui/activity/MainPreference;Landroid/preference/SwitchPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0

    :cond_4
    const v4, 0x7f0a006e

    invoke-virtual {p0, v4}, Lcom/alensw/ui/activity/MainPreference;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v0, "password_protect"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    const-string v4, "password"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f0a0059

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :goto_2
    new-instance v1, Lcom/alensw/ui/activity/ae;

    invoke-direct {v1, p0, v0, v3}, Lcom/alensw/ui/activity/ae;-><init>(Lcom/alensw/ui/activity/MainPreference;Landroid/preference/SwitchPreference;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    new-instance v1, Lcom/alensw/ui/activity/ah;

    invoke-direct {v1, p0, v3}, Lcom/alensw/ui/activity/ah;-><init>(Lcom/alensw/ui/activity/MainPreference;Landroid/content/SharedPreferences;)V

    move v0, v2

    :goto_3
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v3, v2, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_5

    const-string v3, "password_protect"

    invoke-virtual {v2}, Landroid/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    const v1, 0x7f0a0058

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_8
    const v2, 0x7f0a007a

    invoke-virtual {p0, v2}, Lcom/alensw/ui/activity/MainPreference;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v0, "slideshow_animation"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v4, v2

    new-array v5, v4, [Ljava/lang/String;

    move v2, v1

    :goto_4
    if-ge v2, v4, :cond_9

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/MainPreference;->a(Landroid/preference/ListPreference;)V

    const-string v0, "slideshow_interval"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    const-string v0, "slideshow_interval"

    const-string v2, "3"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v0, 0x7f0a0029

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/MainPreference;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alensw/ui/activity/MainPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v6, "seconds"

    const-string v7, "s"

    invoke-static {v0, v6, v7}, Lcom/alensw/b/l/b;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x6

    new-array v7, v0, [I

    fill-array-data v7, :array_0

    array-length v0, v7

    new-array v8, v0, [Ljava/lang/String;

    move v0, v1

    :goto_5
    array-length v1, v7

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_a

    aget v1, v7, v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    aput-object v2, v8, v0

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/alensw/ui/activity/aj;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alensw/ui/activity/aj;-><init>(Lcom/alensw/ui/activity/MainPreference;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/Integer;Landroid/preference/ListPreference;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    :cond_b
    const v1, 0x7f0a0019

    invoke-virtual {p0, v1}, Lcom/alensw/ui/activity/MainPreference;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "clear_preview_cache"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/view/ConfirmPreference;

    new-instance v1, Lcom/alensw/ui/activity/al;

    invoke-direct {v1, p0}, Lcom/alensw/ui/activity/al;-><init>(Lcom/alensw/ui/activity/MainPreference;)V

    iput-object v1, v0, Lcom/alensw/ui/view/ConfirmPreference;->a:Ljava/lang/Runnable;

    const-string v0, "clear_thumb_cache"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/view/ConfirmPreference;

    iget-object v1, p0, Lcom/alensw/ui/activity/MainPreference;->g:Ljava/lang/Runnable;

    iput-object v1, v0, Lcom/alensw/ui/view/ConfirmPreference;->a:Ljava/lang/Runnable;

    goto/16 :goto_0

    :cond_c
    const v1, 0x7f0a00fb

    invoke-virtual {p0, v1}, Lcom/alensw/ui/activity/MainPreference;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/activity/MainPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string v0, " "

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/alensw/ui/activity/MainPreference;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v4, 0x7f0a0000

    invoke-virtual {p0, v4}, Lcom/alensw/ui/activity/MainPreference;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alensw/ui/activity/MainPreference;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/MainPreference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    const-string v0, "author"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_f

    const-string v0, "\u5feb\u5b9c\u56e2\u961f"

    :goto_7
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mailto:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v6, "subject"

    invoke-virtual {p0, v9}, Lcom/alensw/ui/activity/MainPreference;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4, v5}, Lcom/alensw/ui/activity/MainPreference;->a(Landroid/preference/Preference;Landroid/content/Intent;)V

    const-string v0, "blog"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v2, :cond_10

    const-string v0, "t.me/WSTprojects"

    :goto_8
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const-string v0, "translator"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_d

    if-eqz v2, :cond_11

    const-string v0, "translator"

    invoke-virtual {p0, p1, v0}, Lcom/alensw/ui/activity/MainPreference;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_d
    :goto_9
    const-string v0, "details"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v2, Lcom/alensw/ui/activity/an;

    invoke-direct {v2, p0, v3}, Lcom/alensw/ui/activity/an;-><init>(Lcom/alensw/ui/activity/MainPreference;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "donate"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_e

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_e
    :goto_a
    const-string v0, "share"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p0}, Lcom/alensw/ui/activity/MainPreference;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f0a0073

    invoke-virtual {p0, v2}, Lcom/alensw/ui/activity/MainPreference;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_f
    const-string v0, "wstxda@gmail.com"

    goto/16 :goto_7

    :cond_10
    const-string v0, "t.me/WSTprojects"

    goto :goto_8

    :cond_11
    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_12

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_d

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mailto:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0, v4}, Lcom/alensw/ui/activity/MainPreference;->a(Landroid/preference/Preference;Landroid/content/Intent;)V

    goto :goto_9

    :cond_12
    const-string v0, "translator"

    invoke-virtual {p0, p1, v0}, Lcom/alensw/ui/activity/MainPreference;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto/16 :goto_9

    :cond_13
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://github.com/WSTxda/QP-Gallery-Releases"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_a

    :catch_0
    move-exception v0

    goto/16 :goto_6

    nop

    :array_0
    .array-data 4
        0x3
        0x5
        0xa
        0x1e
        0x3c
        0x0
    .end array-data
.end method

.method private a__$appendSource2(Landroid/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct/range {p0 .. p1}, Lcom/alensw/ui/activity/MainPreference;->a__$appendSource(Landroid/preference/PreferenceScreen;)V

    invoke-direct/range {p0 .. p1}, Lcom/alensw/ui/activity/MainPreference;->a__$appendPatch(Landroid/preference/PreferenceScreen;)V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected a(Landroid/preference/ListPreference;)V
    .locals 1

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/alensw/ui/activity/y;

    invoke-direct {v0, p0, p1}, Lcom/alensw/ui/activity/y;-><init>(Lcom/alensw/ui/activity/MainPreference;Landroid/preference/ListPreference;)V

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method protected a(Landroid/preference/Preference;Landroid/content/Intent;)V
    .locals 1

    new-instance v0, Lcom/alensw/ui/activity/x;

    invoke-direct {v0, p0, p2}, Lcom/alensw/ui/activity/x;-><init>(Lcom/alensw/ui/activity/MainPreference;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method protected a(Landroid/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct/range {p0 .. p1}, Lcom/alensw/ui/activity/MainPreference;->a__$appendSource2(Landroid/preference/PreferenceScreen;)V

    invoke-direct/range {p0 .. p1}, Lcom/alensw/ui/activity/MainPreference;->a__$appendPatch2(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method protected a(ZLandroid/preference/SwitchPreference;)V
    .locals 1

    new-instance v0, Lcom/alensw/ui/activity/w;

    invoke-direct {v0, p0, p2}, Lcom/alensw/ui/activity/w;-><init>(Lcom/alensw/ui/activity/MainPreference;Landroid/preference/SwitchPreference;)V

    invoke-static {p0, p1, v0}, Lcom/alensw/ui/a/x;->a(Landroid/content/Context;ZLcom/alensw/ui/a/ad;)V

    return-void
.end method

.method public isBatteryOptimizationEnabled(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 8

    invoke-virtual {p0}, Lcom/alensw/ui/activity/MainPreference;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/alensw/ui/activity/MainPreference;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    const/16 v4, 0x17

    if-lt v2, v4, :cond_2

    invoke-virtual {v1, v0}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alensw/ui/activity/MainPreference;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/alensw/ui/activity/MainPreference;->startActivity(Landroid/content/Intent;)V

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    move-object v4, v5

    const-string v5, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lcom/alensw/utils/MIUIUtils;->isMIUI()Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f0a0144

    invoke-virtual {p0, v5}, Lcom/alensw/ui/activity/MainPreference;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/alensw/ui/activity/MainPreference;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/activity/MainPreference;->recreate()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/alensw/ui/activity/ba;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/ba;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/MainPreference;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/alensw/ui/activity/MainPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "screen"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "screen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/activity/MainPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v5, v4, Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/preference/Preference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v3, 0x7

    const/4 v2, 0x6

    const/4 v0, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/alensw/ui/activity/MainPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v4, "default_sort"

    invoke-interface {v6, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/ba;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :sswitch_0
    const-string v0, " "

    invoke-virtual {p0}, Lcom/alensw/ui/activity/MainPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move v0, v4

    :cond_1
    :goto_2
    if-eq v0, v4, :cond_0

    invoke-static {p0}, Lcom/alensw/a/q;->a(Landroid/content/Context;)Lcom/alensw/a/q;

    move-result-object v2

    iput v0, v2, Lcom/alensw/a/q;->a:I

    invoke-static {v1}, Lcom/alensw/PicFolder/QuickApp;->a(Z)Z

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "default_sort"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1

    :sswitch_1
    if-ne v4, v0, :cond_1

    const/4 v0, 0x4

    goto :goto_2

    :sswitch_2
    if-ne v4, v1, :cond_3

    const/4 v0, 0x3

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_2

    :sswitch_3
    if-ne v4, v2, :cond_4

    const/4 v0, 0x5

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_2

    :sswitch_4
    if-ne v4, v3, :cond_5

    const/16 v0, 0x8

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_2

    :sswitch_5
    move v0, v5

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090003 -> :sswitch_0
        0x7f090073 -> :sswitch_5
        0x7f090074 -> :sswitch_1
        0x7f090075 -> :sswitch_2
        0x7f090076 -> :sswitch_3
        0x7f090077 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/alensw/ui/activity/ba;->onResume()V

    invoke-virtual {p0}, Lcom/alensw/ui/activity/MainPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f0a008c

    invoke-virtual {p0, v1}, Lcom/alensw/ui/activity/MainPreference;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alensw/ui/activity/MainPreference$2;

    invoke-direct {v0, p0}, Lcom/alensw/ui/activity/MainPreference$2;-><init>(Lcom/alensw/ui/activity/MainPreference;)V

    invoke-virtual {v0}, Lcom/alensw/ui/activity/MainPreference$2;->start()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/alensw/ui/activity/MainPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "screen"

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "screen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public recreate()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-super {p0}, Lcom/alensw/ui/activity/ba;->recreate()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alensw/ui/activity/MainPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alensw/ui/activity/MainPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "screen"

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/MainPreference;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
