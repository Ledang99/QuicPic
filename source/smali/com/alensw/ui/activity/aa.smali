.class Lcom/alensw/ui/activity/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Landroid/preference/SwitchPreference;

.field final synthetic b:Lcom/alensw/ui/activity/MainPreference;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/MainPreference;Landroid/preference/SwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/aa;->b:Lcom/alensw/ui/activity/MainPreference;

    iput-object p2, p0, Lcom/alensw/ui/activity/aa;->a:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget-object v1, p0, Lcom/alensw/ui/activity/aa;->a:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alensw/a/bc;->b:Z

    iget-object v0, p0, Lcom/alensw/ui/activity/aa;->b:Lcom/alensw/ui/activity/MainPreference;

    const v1, 0x7f0a0022

    iget-object v2, p0, Lcom/alensw/ui/activity/aa;->b:Lcom/alensw/ui/activity/MainPreference;

    const v3, 0x7f0a0023

    invoke-virtual {v2, v3}, Lcom/alensw/ui/activity/MainPreference;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/ui/activity/aa;->b:Lcom/alensw/ui/activity/MainPreference;

    invoke-static {v3}, Lcom/alensw/ui/activity/MainPreference;->a(Lcom/alensw/ui/activity/MainPreference;)Ljava/lang/Runnable;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method
