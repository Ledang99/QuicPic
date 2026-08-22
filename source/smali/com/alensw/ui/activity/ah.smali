.class Lcom/alensw/ui/activity/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Lcom/alensw/ui/activity/MainPreference;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/MainPreference;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/ah;->b:Lcom/alensw/ui/activity/MainPreference;

    iput-object p2, p0, Lcom/alensw/ui/activity/ah;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x1

    check-cast p1, Landroid/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/activity/ah;->a:Landroid/content/SharedPreferences;

    const-string v1, "password"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ah;->b:Lcom/alensw/ui/activity/MainPreference;

    invoke-virtual {p1}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alensw/ui/activity/ai;

    invoke-direct {v2, p0, p1}, Lcom/alensw/ui/activity/ai;-><init>(Lcom/alensw/ui/activity/ah;Landroid/preference/SwitchPreference;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alensw/ui/a/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
