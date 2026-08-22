.class Lcom/alensw/ui/activity/bj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/SelectThemeActivity;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/SelectThemeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/bj;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/ui/activity/bj;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    invoke-static {v0}, Lcom/alensw/ui/activity/SelectThemeActivity;->c(Lcom/alensw/ui/activity/SelectThemeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/activity/bl;

    iget v2, v0, Lcom/alensw/ui/activity/bl;->a:I

    iget-object v3, p0, Lcom/alensw/ui/activity/bj;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    iget v3, v3, Lcom/alensw/ui/activity/SelectThemeActivity;->T:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/alensw/ui/activity/bl;->c:I

    iget-object v3, p0, Lcom/alensw/ui/activity/bj;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    iget v3, v3, Lcom/alensw/ui/activity/SelectThemeActivity;->V:I

    if-eq v2, v3, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/alensw/ui/activity/bj;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "main_theme"

    iget v5, v0, Lcom/alensw/ui/activity/bl;->a:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v4, "actionbar_color"

    iget v0, v0, Lcom/alensw/ui/activity/bl;->c:I

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    iget-object v3, p0, Lcom/alensw/ui/activity/bj;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    if-eqz v2, :cond_3

    const/4 v0, -0x1

    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v0, v1}, Lcom/alensw/ui/activity/SelectThemeActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/alensw/ui/activity/bj;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    invoke-virtual {v0}, Lcom/alensw/ui/activity/SelectThemeActivity;->finish()V

    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
