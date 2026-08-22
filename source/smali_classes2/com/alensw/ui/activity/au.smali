.class Lcom/alensw/ui/activity/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/ao;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/au;->a:Lcom/alensw/ui/activity/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/activity/au;->a:Lcom/alensw/ui/activity/ao;

    invoke-virtual {v0, p2}, Lcom/alensw/ui/activity/ao;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/au;->a:Lcom/alensw/ui/activity/ao;

    invoke-virtual {v0}, Lcom/alensw/ui/activity/ao;->i()V

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/activity/au;->a:Lcom/alensw/ui/activity/ao;

    invoke-virtual {v0, p2}, Lcom/alensw/ui/activity/ao;->c(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/activity/au;->a:Lcom/alensw/ui/activity/ao;

    invoke-static {v0}, Lcom/alensw/ui/activity/ao;->a(Lcom/alensw/ui/activity/ao;)Landroid/view/ActionMode;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/au;->a:Lcom/alensw/ui/activity/ao;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alensw/ui/activity/ao;->a(Lcom/alensw/ui/activity/ao;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/activity/au;->a:Lcom/alensw/ui/activity/ao;

    invoke-virtual {v0}, Lcom/alensw/ui/activity/ao;->r()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/activity/au;->a:Lcom/alensw/ui/activity/ao;

    invoke-virtual {v0, p2}, Lcom/alensw/ui/activity/ao;->d(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
