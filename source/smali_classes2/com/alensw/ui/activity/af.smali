.class Lcom/alensw/ui/activity/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/ae;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/af;->a:Lcom/alensw/ui/activity/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alensw/ui/activity/af;->a:Lcom/alensw/ui/activity/ae;

    iget-object v2, v0, Lcom/alensw/ui/activity/ae;->c:Lcom/alensw/ui/activity/MainPreference;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/alensw/ui/activity/af;->a:Lcom/alensw/ui/activity/ae;

    iget-object v3, v3, Lcom/alensw/ui/activity/ae;->a:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0, v3}, Lcom/alensw/ui/activity/MainPreference;->a(ZLandroid/preference/SwitchPreference;)V

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
