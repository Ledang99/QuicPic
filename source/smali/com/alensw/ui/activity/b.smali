.class final Lcom/alensw/ui/activity/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Landroid/content/pm/PackageManager;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/content/SharedPreferences;

.field private final d:Landroid/content/pm/ResolveInfo$DisplayNameComparator;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 2

    iput-object p1, p0, Lcom/alensw/ui/activity/b;->a:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/alensw/ui/activity/b;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/alensw/ui/activity/b;->c:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v1, p0, Lcom/alensw/ui/activity/b;->a:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/alensw/ui/activity/b;->d:Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v0, p0, Lcom/alensw/ui/activity/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/activity/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 8

    const/16 v1, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alensw/ui/activity/b;->e:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-object v0, p0, Lcom/alensw/ui/activity/b;->e:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object v6, p0, Lcom/alensw/ui/activity/b;->c:Landroid/content/SharedPreferences;

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v6, p0, Lcom/alensw/ui/activity/b;->c:Landroid/content/SharedPreferences;

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_2

    :goto_1
    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    if-eqz v4, :cond_3

    move v0, v2

    :goto_2
    if-eqz v5, :cond_4

    :goto_3
    sub-int/2addr v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/b;->d:Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    :cond_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/alensw/ui/activity/b;->a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
