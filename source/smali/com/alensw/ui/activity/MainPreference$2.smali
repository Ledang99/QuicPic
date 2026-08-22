.class Lcom/alensw/ui/activity/MainPreference$2;
.super Ljava/lang/Thread;
.source "MainPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alensw/ui/activity/MainPreference;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alensw/ui/activity/MainPreference;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/MainPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/MainPreference$2;->this$0:Lcom/alensw/ui/activity/MainPreference;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "disable_battery_opt"

    :try_start_0
    iget-object v1, p0, Lcom/alensw/ui/activity/MainPreference$2;->this$0:Lcom/alensw/ui/activity/MainPreference;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/activity/MainPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/activity/MainPreference$2;->this$0:Lcom/alensw/ui/activity/MainPreference;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alensw/ui/activity/MainPreference;->isBatteryOptimizationEnabled(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/activity/MainPreference$2;->this$0:Lcom/alensw/ui/activity/MainPreference;

    invoke-virtual {v2}, Lcom/alensw/ui/activity/MainPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    iget-object v2, p0, Lcom/alensw/ui/activity/MainPreference$2;->this$0:Lcom/alensw/ui/activity/MainPreference;

    invoke-virtual {v2, v0}, Lcom/alensw/ui/activity/MainPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/activity/MainPreference$2;->this$0:Lcom/alensw/ui/activity/MainPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alensw/ui/activity/MainPreference;->isBatteryOptimizationEnabled(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/activity/MainPreference$2;->this$0:Lcom/alensw/ui/activity/MainPreference;

    invoke-virtual {v1}, Lcom/alensw/ui/activity/MainPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
