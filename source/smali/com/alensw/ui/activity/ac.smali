.class Lcom/alensw/ui/activity/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Landroid/preference/SwitchPreference;

.field final synthetic b:Lcom/alensw/ui/activity/MainPreference;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/MainPreference;Landroid/preference/SwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/ac;->b:Lcom/alensw/ui/activity/MainPreference;

    iput-object p2, p0, Lcom/alensw/ui/activity/ac;->a:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    iget-object v0, p0, Lcom/alensw/ui/activity/ac;->a:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/ac;->b:Lcom/alensw/ui/activity/MainPreference;

    const v1, 0x1040014

    iget-object v2, p0, Lcom/alensw/ui/activity/ac;->b:Lcom/alensw/ui/activity/MainPreference;

    const v3, 0x7f0a000f

    invoke-virtual {v2, v3}, Lcom/alensw/ui/activity/MainPreference;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/alensw/ui/activity/ad;

    invoke-direct {v4, p0}, Lcom/alensw/ui/activity/ad;-><init>(Lcom/alensw/ui/activity/ac;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
