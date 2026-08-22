.class Lcom/alensw/cloud/sync/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/sync/SyncSettings;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/sync/SyncSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/sync/j;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/sync/j;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-static {v0}, Lcom/alensw/cloud/sync/SyncSettings;->a(Lcom/alensw/cloud/sync/SyncSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/sync/j;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-static {v0}, Lcom/alensw/cloud/sync/SyncSettings;->a(Lcom/alensw/cloud/sync/SyncSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/cloud/sync/j;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-static {v1}, Lcom/alensw/cloud/sync/SyncSettings;->b(Lcom/alensw/cloud/sync/SyncSettings;)Lcom/alensw/cloud/sync/s;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/sync/j;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-static {v0}, Lcom/alensw/cloud/sync/SyncSettings;->c(Lcom/alensw/cloud/sync/SyncSettings;)V

    :cond_0
    return-void
.end method
