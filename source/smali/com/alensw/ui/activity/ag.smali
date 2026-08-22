.class Lcom/alensw/ui/activity/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/ae;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/ag;->a:Lcom/alensw/ui/activity/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/activity/ag;->a:Lcom/alensw/ui/activity/ae;

    iget-object v0, v0, Lcom/alensw/ui/activity/ae;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "password"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/alensw/ui/activity/ag;->a:Lcom/alensw/ui/activity/ae;

    iget-object v0, v0, Lcom/alensw/ui/activity/ae;->a:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ag;->a:Lcom/alensw/ui/activity/ae;

    iget-object v0, v0, Lcom/alensw/ui/activity/ae;->a:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alensw/ui/activity/ag;->a:Lcom/alensw/ui/activity/ae;

    iget-object v0, v0, Lcom/alensw/ui/activity/ae;->c:Lcom/alensw/ui/activity/MainPreference;

    const v1, 0x7f0a0055

    invoke-virtual {v0, v1}, Lcom/alensw/ui/activity/MainPreference;->a(I)V

    return-void
.end method
