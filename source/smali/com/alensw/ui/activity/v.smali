.class Lcom/alensw/ui/activity/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/MainPreference;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/MainPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/v;->a:Lcom/alensw/ui/activity/MainPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alensw/ui/activity/v;->a:Lcom/alensw/ui/activity/MainPreference;

    const-class v2, Lcom/alensw/ui/activity/SelectThemeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/alensw/ui/activity/v;->a:Lcom/alensw/ui/activity/MainPreference;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Lcom/alensw/ui/activity/MainPreference;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    return v0
.end method
