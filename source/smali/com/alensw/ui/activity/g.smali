.class final Lcom/alensw/ui/activity/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alensw/ui/activity/o;

.field final synthetic c:Ljava/util/HashSet;

.field final synthetic d:Landroid/content/Intent;

.field final synthetic e:Landroid/content/Intent;

.field final synthetic f:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/alensw/ui/activity/o;Ljava/util/HashSet;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/g;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/alensw/ui/activity/g;->b:Lcom/alensw/ui/activity/o;

    iput-object p3, p0, Lcom/alensw/ui/activity/g;->c:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/alensw/ui/activity/g;->d:Landroid/content/Intent;

    iput-object p5, p0, Lcom/alensw/ui/activity/g;->e:Landroid/content/Intent;

    iput-object p6, p0, Lcom/alensw/ui/activity/g;->f:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alensw/ui/activity/g;->a:Ljava/util/List;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/alensw/ui/activity/g;->b:Lcom/alensw/ui/activity/o;

    iget-object v1, p0, Lcom/alensw/ui/activity/g;->c:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/activity/g;->d:Landroid/content/Intent;

    :goto_0
    invoke-interface {v2, v1, v0}, Lcom/alensw/ui/activity/o;->a(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    iget-object v1, p0, Lcom/alensw/ui/activity/g;->f:Landroid/content/SharedPreferences;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/alensw/ui/activity/g;->f:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v3

    :cond_0
    iget-object v1, p0, Lcom/alensw/ui/activity/g;->e:Landroid/content/Intent;

    goto :goto_0
.end method
