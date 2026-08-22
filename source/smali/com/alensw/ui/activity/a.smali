.class public Lcom/alensw/ui/activity/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/Intent;ILandroid/view/View;Lcom/alensw/ui/activity/o;)I
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {p0, p1, v8}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.intent.action.SEND_MSG"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    invoke-static {p0, v4, v8}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_6

    move v9, v8

    :goto_1
    return v9

    :cond_1
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    invoke-static {p0, v4, v8}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v9, "com.htc."

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v0, "android.intent.action.ATTACH_DATA"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    const-string v0, "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v4, v8}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v7

    :goto_3
    if-nez v2, :cond_4

    const-string v2, "com.android.wallpapercropper"

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    if-ne v9, v7, :cond_8

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_4
    invoke-interface {p4, v4, v0}, Lcom/alensw/ui/activity/o;->a(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    goto/16 :goto_1

    :cond_7
    move-object v4, p1

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v0, "activity_menu"

    invoke-virtual {p0, v0, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v0, Lcom/alensw/ui/activity/b;

    invoke-direct {v0, v10, p0, v6}, Lcom/alensw/ui/activity/b;-><init>(Landroid/content/pm/PackageManager;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-static {v1, v0}, Lcom/alensw/b/l/b;->a(Ljava/util/List;Ljava/util/Comparator;)Z

    new-instance v0, Lcom/alensw/ui/activity/g;

    move-object v2, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/alensw/ui/activity/g;-><init>(Ljava/util/List;Lcom/alensw/ui/activity/o;Ljava/util/HashSet;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/SharedPreferences;)V

    if-eqz p3, :cond_a

    move v2, v7

    :goto_5
    new-instance v6, Lcom/alensw/b/g/b;

    invoke-direct {v6, p0}, Lcom/alensw/b/g/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Lcom/alensw/b/g/b;->a(Z)V

    if-eqz v2, :cond_b

    const/4 v2, 0x6

    if-le v9, v2, :cond_b

    const/4 v2, 0x5

    move v3, v2

    :goto_6
    move v5, v8

    :goto_7
    if-ge v5, v3, :cond_c

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_9

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_9
    invoke-virtual {v6, v8, v5, v8, v4}, Lcom/alensw/b/g/b;->a(IIILjava/lang/CharSequence;)Lcom/alensw/b/g/l;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/alensw/b/g/l;->a(Landroid/content/pm/ResolveInfo;)Landroid/view/MenuItem;

    invoke-virtual {v4, v0}, Lcom/alensw/b/g/l;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_7

    :cond_a
    move v2, v8

    goto :goto_5

    :cond_b
    move v3, v9

    goto :goto_6

    :cond_c
    if-ge v3, v9, :cond_e

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "more_item_label"

    const-string v5, "More"

    invoke-static {v2, v4, v5}, Lcom/alensw/b/l/b;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x2026

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/alensw/b/g/b;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/alensw/b/g/m;

    move v5, v3

    :goto_8
    if-ge v5, v9, :cond_e

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_d

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_d
    invoke-virtual {v2, v8, v5, v8, v4}, Lcom/alensw/b/g/m;->a(IIILjava/lang/CharSequence;)Lcom/alensw/b/g/l;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alensw/b/g/l;->a(Landroid/content/pm/ResolveInfo;)Landroid/view/MenuItem;

    invoke-virtual {v4, v0}, Lcom/alensw/b/g/l;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_8

    :cond_e
    invoke-virtual {v6, p3}, Lcom/alensw/b/g/b;->a(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_f
    move v2, v8

    goto/16 :goto_3
.end method

.method public static a(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x3000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;I)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;DDLandroid/view/View;)V
    .locals 7

    const-string v0, "%.7f,%.7f"

    invoke-static {v0, p1, p2, p3, p4}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "geo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?z=16"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://maps.google.com/maps?q=loc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v4, 0x7f0a0078

    new-instance v5, Lcom/alensw/ui/activity/i;

    invoke-direct {v5, v2, v1, v0, p0}, Lcom/alensw/ui/activity/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p0, v3, v4, p5, v5}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;ILandroid/view/View;Lcom/alensw/ui/activity/o;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p0, v0, v2}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/view/View;Ljava/lang/Runnable;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Lcom/alensw/ui/activity/j;

    invoke-direct {v1, p0, p3}, Lcom/alensw/ui/activity/j;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-le p1, v7, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p2, :cond_1

    new-instance v2, Lcom/alensw/ui/activity/k;

    invoke-direct {v2, v1}, Lcom/alensw/ui/activity/k;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f050009

    const v4, 0x7f070049

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const v5, 0x7f080014

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v1, v3, v4, v5}, Lcom/b/a/b;->a(Landroid/content/res/Resources;III)Lcom/b/a/l;

    move-result-object v1

    new-instance v3, Lcom/alensw/ui/b/a;

    invoke-direct {v3, v1, v6}, Lcom/alensw/ui/b/a;-><init>(Landroid/graphics/drawable/Drawable;Z)V

    new-instance v1, Lcom/alensw/ui/activity/l;

    invoke-direct {v1, v3}, Lcom/alensw/ui/activity/l;-><init>(Lcom/alensw/ui/b/a;)V

    const-wide/16 v4, 0x96

    invoke-virtual {p2, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v1, Lcom/alensw/b/g/b;

    invoke-direct {v1, p0}, Lcom/alensw/b/g/b;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09004e

    invoke-virtual {v1, v6, v4, v6, v0}, Lcom/alensw/b/g/b;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/g/l;

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Lcom/alensw/b/g/l;->a(I)Lcom/alensw/b/g/l;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alensw/b/g/l;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-virtual {v1, v7}, Lcom/alensw/b/g/b;->a(Z)V

    invoke-virtual {v1, p2}, Lcom/alensw/b/g/b;->a(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v6, v0, v1, v2}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 7

    const/4 v1, 0x1

    invoke-static {p1, p2}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v0, Lcom/alensw/b/f/b;->j:Lcom/alensw/b/f/b;

    move-object v2, v0

    move v0, v1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    if-lez v0, :cond_1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "t"

    const-string v5, "com."

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v2, v4, v0}, Lcom/alensw/b/f/a;->a(Landroid/content/Context;Lcom/alensw/b/f/b;Ljava/util/Map;I)V

    :cond_1
    return-void

    :cond_2
    const-string v5, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v2, Lcom/alensw/b/f/b;->j:Lcom/alensw/b/f/b;

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v5, "android.intent.action.EDIT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v0, Lcom/alensw/b/f/b;->k:Lcom/alensw/b/f/b;

    move-object v2, v0

    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gms"

    const-string v3, "com.google.android.gms.panorama.PanoramaViewActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alensw/b/j/a;->e(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    aget-object v2, v1, v4

    if-eqz v2, :cond_0

    const-class v2, Lcom/alensw/PicFolder/PlayerActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "Authorization"

    aget-object v1, v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.android.browser.headers"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :goto_0
    invoke-static {p0, v0}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    sget-object v0, Lcom/alensw/b/f/b;->f:Lcom/alensw/b/f/b;

    invoke-static {p0, v0}, Lcom/alensw/b/f/a;->a(Landroid/content/Context;Lcom/alensw/b/f/b;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    sget v0, Lcom/alensw/PicFolder/QuickApp;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.gallery3d"

    const-string v3, "com.android.camera.CameraLauncher"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alensw/b/f/b;->l:Lcom/alensw/b/f/b;

    invoke-static {p0, v0}, Lcom/alensw/b/f/a;->a(Landroid/content/Context;Lcom/alensw/b/f/b;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alensw/b/f/b;->l:Lcom/alensw/b/f/b;

    invoke-static {p0, v0}, Lcom/alensw/b/f/a;->a(Landroid/content/Context;Lcom/alensw/b/f/b;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0a001d

    new-instance v2, Lcom/alensw/ui/activity/h;

    invoke-direct {v2, p0}, Lcom/alensw/ui/activity/h;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, v1, p1, v2}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;ILandroid/view/View;Lcom/alensw/ui/activity/o;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;[IIZ)V
    .locals 6

    const/4 v5, 0x1

    new-instance v1, Lcom/alensw/ui/activity/d;

    invoke-direct {v1, p0, p3, p4}, Lcom/alensw/ui/activity/d;-><init>(Landroid/content/Context;IZ)V

    const v0, 0x7f0c000a

    invoke-static {p0, v0, v1}, Lcom/alensw/b/g/b;->a(Landroid/content/Context;ILandroid/view/Menu;)V

    invoke-static {p2}, Ljava/util/Arrays;->sort([I)V

    invoke-virtual {v1}, Lcom/alensw/b/g/b;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {v1, v0}, Lcom/alensw/b/g/b;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-static {p2, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    if-gez v4, :cond_1

    invoke-virtual {v1, v0}, Lcom/alensw/b/g/b;->b(I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-ne v3, p3, :cond_0

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1}, Lcom/alensw/b/g/b;->a(Landroid/view/View;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x56

    const/4 v0, 0x0

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    invoke-virtual {v1, p1, v4}, Lcom/alensw/a/ba;->a(Ljava/lang/String;C)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mime_type"

    aput-object v3, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    sget-object v3, Lcom/alensw/a/ba;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Lcom/alensw/a/ba;->b(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p1, v4}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;I)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p0, v0}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Landroid/view/View;)V
    .locals 5

    const/4 v4, -0x1

    new-instance v0, Lcom/alensw/b/g/b;

    invoke-direct {v0, p0}, Lcom/alensw/b/g/b;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0004

    invoke-static {p0, v1, v0}, Lcom/alensw/b/g/b;->a(Landroid/content/Context;ILandroid/view/Menu;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000c

    iget v3, v0, Lcom/alensw/b/g/b;->b:I

    invoke-static {v1, v2, v3}, Lcom/b/a/b;->a(Landroid/content/res/Resources;II)Lcom/b/a/l;

    move-result-object v1

    const v2, 0x7f09005c

    invoke-virtual {v0, v2}, Lcom/alensw/b/g/b;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const v2, 0x7f09005d

    invoke-virtual {v0, v2}, Lcom/alensw/b/g/b;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/alensw/ui/activity/m;

    invoke-virtual {v1}, Lcom/b/a/l;->a()Landroid/graphics/Picture;

    move-result-object v1

    invoke-direct {v3, v1, v4, v4}, Lcom/alensw/ui/activity/m;-><init>(Landroid/graphics/Picture;II)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alensw/b/g/b;->a(Z)V

    invoke-virtual {v0, p1}, Lcom/alensw/b/g/b;->a(Landroid/view/View;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v2, v1}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, ".android.gallery"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.cooliris.media"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.htc.album"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    invoke-static {p0, v2, v0}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    const/4 v5, -0x1

    new-instance v0, Lcom/alensw/b/g/b;

    invoke-direct {v0, p0}, Lcom/alensw/b/g/b;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0009

    invoke-static {p0, v1, v0}, Lcom/alensw/b/g/b;->a(Landroid/content/Context;ILandroid/view/Menu;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050011

    iget v3, v0, Lcom/alensw/b/g/b;->b:I

    invoke-static {v1, v2, v3}, Lcom/b/a/b;->a(Landroid/content/res/Resources;II)Lcom/b/a/l;

    move-result-object v1

    const v2, 0x7f090071

    invoke-virtual {v0, v2}, Lcom/alensw/b/g/b;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const v2, 0x7f090070

    invoke-virtual {v0, v2}, Lcom/alensw/b/g/b;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/alensw/ui/activity/n;

    invoke-virtual {v1}, Lcom/b/a/l;->a()Landroid/graphics/Picture;

    move-result-object v4

    invoke-direct {v3, v4, v5, v5}, Lcom/alensw/ui/activity/n;-><init>(Landroid/graphics/Picture;II)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const v2, 0x7f090072

    invoke-virtual {v0, v2}, Lcom/alensw/b/g/b;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/alensw/ui/activity/c;

    invoke-virtual {v1}, Lcom/b/a/l;->a()Landroid/graphics/Picture;

    move-result-object v1

    invoke-direct {v3, v1, v5, v5}, Lcom/alensw/ui/activity/c;-><init>(Landroid/graphics/Picture;II)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alensw/b/g/b;->a(Z)V

    invoke-virtual {v0, p1}, Lcom/alensw/b/g/b;->a(Landroid/view/View;)V

    return-void
.end method
