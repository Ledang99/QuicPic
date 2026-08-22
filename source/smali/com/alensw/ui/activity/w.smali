.class Lcom/alensw/ui/activity/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/a/ad;


# instance fields
.field final synthetic a:Landroid/preference/SwitchPreference;

.field final synthetic b:Lcom/alensw/ui/activity/MainPreference;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/MainPreference;Landroid/preference/SwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/w;->b:Lcom/alensw/ui/activity/MainPreference;

    iput-object p2, p0, Lcom/alensw/ui/activity/w;->a:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alensw/ui/view/PasswordView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/activity/w;->b:Lcom/alensw/ui/activity/MainPreference;

    invoke-virtual {v0}, Lcom/alensw/ui/activity/MainPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "password"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/alensw/ui/activity/w;->a:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/alensw/ui/activity/w;->a:Landroid/preference/SwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0059

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setSummary(I)V

    sput-object p2, Lcom/alensw/PicFolder/QuickApp;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/alensw/ui/activity/w;->b:Lcom/alensw/ui/activity/MainPreference;

    const v1, 0x1040014

    iget-object v2, p0, Lcom/alensw/ui/activity/w;->b:Lcom/alensw/ui/activity/MainPreference;

    const v3, 0x7f0a005c

    invoke-virtual {v2, v3}, Lcom/alensw/ui/activity/MainPreference;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/CharSequence;)V

    :goto_1
    return v4

    :cond_0
    const v0, 0x7f0a0058

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/alensw/ui/a/x;->a(Landroid/view/View;)V

    goto :goto_1
.end method
