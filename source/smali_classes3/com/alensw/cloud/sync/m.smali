.class Lcom/alensw/cloud/sync/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/alensw/cloud/sync/SyncSettings;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/sync/SyncSettings;Landroid/widget/CheckBox;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/sync/m;->d:Lcom/alensw/cloud/sync/SyncSettings;

    iput-object p2, p0, Lcom/alensw/cloud/sync/m;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/alensw/cloud/sync/m;->b:Ljava/lang/String;

    iput p4, p0, Lcom/alensw/cloud/sync/m;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/alensw/cloud/sync/m;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lcom/alensw/cloud/sync/n;

    invoke-direct {v1, p0, v0}, Lcom/alensw/cloud/sync/n;-><init>(Lcom/alensw/cloud/sync/m;Z)V

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alensw/cloud/sync/m;->c:I

    const v2, 0x7f0a009f

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/alensw/cloud/sync/m;->d:Lcom/alensw/cloud/sync/SyncSettings;

    const v2, 0x1040014

    iget-object v3, p0, Lcom/alensw/cloud/sync/m;->d:Lcom/alensw/cloud/sync/SyncSettings;

    const v4, 0x7f0a00a1

    invoke-virtual {v3, v4}, Lcom/alensw/cloud/sync/SyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method
