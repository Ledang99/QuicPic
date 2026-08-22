.class Lcom/alensw/ui/activity/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Landroid/preference/SwitchPreference;

.field final synthetic b:Landroid/content/SharedPreferences;

.field final synthetic c:Lcom/alensw/ui/activity/MainPreference;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/MainPreference;Landroid/preference/SwitchPreference;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/ae;->c:Lcom/alensw/ui/activity/MainPreference;

    iput-object p2, p0, Lcom/alensw/ui/activity/ae;->a:Landroid/preference/SwitchPreference;

    iput-object p3, p0, Lcom/alensw/ui/activity/ae;->b:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alensw/ui/activity/ae;->a:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/activity/ae;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "password"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/alensw/ui/activity/ae;->a:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ae;->a:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/alensw/ui/activity/af;

    invoke-direct {v0, p0}, Lcom/alensw/ui/activity/af;-><init>(Lcom/alensw/ui/activity/ae;)V

    new-instance v1, Lcom/alensw/b/g/b;

    iget-object v2, p0, Lcom/alensw/ui/activity/ae;->c:Lcom/alensw/ui/activity/MainPreference;

    invoke-direct {v1, v2}, Lcom/alensw/b/g/b;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0058

    invoke-virtual {v1, v4, v5, v4, v2}, Lcom/alensw/b/g/b;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v2, 0x2

    const v3, 0x7f0a0059

    invoke-virtual {v1, v4, v2, v4, v3}, Lcom/alensw/b/g/b;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/alensw/ui/activity/ae;->c:Lcom/alensw/ui/activity/MainPreference;

    const v2, 0x7f0a0057

    invoke-virtual {v0, v2}, Lcom/alensw/ui/activity/MainPreference;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alensw/b/g/b;->a(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/activity/ae;->b:Landroid/content/SharedPreferences;

    const-string v1, "password"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/ae;->a:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ae;->c:Lcom/alensw/ui/activity/MainPreference;

    const-string v1, "password_protect"

    new-instance v2, Lcom/alensw/ui/activity/ag;

    invoke-direct {v2, p0}, Lcom/alensw/ui/activity/ag;-><init>(Lcom/alensw/ui/activity/ae;)V

    invoke-static {v0, v1, v2, v3}, Lcom/alensw/ui/a/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
