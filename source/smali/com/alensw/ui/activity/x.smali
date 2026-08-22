.class Lcom/alensw/ui/activity/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/alensw/ui/activity/MainPreference;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/MainPreference;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/x;->b:Lcom/alensw/ui/activity/MainPreference;

    iput-object p2, p0, Lcom/alensw/ui/activity/x;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/activity/x;->b:Lcom/alensw/ui/activity/MainPreference;

    iget-object v1, p0, Lcom/alensw/ui/activity/x;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    const/4 v0, 0x1

    return v0
.end method
