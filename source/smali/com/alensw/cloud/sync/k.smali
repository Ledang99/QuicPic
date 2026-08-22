.class Lcom/alensw/cloud/sync/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/sync/SyncSettings;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/sync/SyncSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/sync/k;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3

    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/sync/k;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-static {v0}, Lcom/alensw/cloud/sync/SyncSettings;->a(Lcom/alensw/cloud/sync/SyncSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p3, v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/sync/k;->a:Lcom/alensw/cloud/sync/SyncSettings;

    const/4 v1, 0x0

    new-instance v2, Lcom/alensw/cloud/sync/l;

    invoke-direct {v2, p0, p3}, Lcom/alensw/cloud/sync/l;-><init>(Lcom/alensw/cloud/sync/k;I)V

    invoke-static {v0, v1, p2, v2}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;ILandroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
