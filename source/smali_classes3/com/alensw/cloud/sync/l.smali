.class Lcom/alensw/cloud/sync/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alensw/cloud/sync/k;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/sync/k;I)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/sync/l;->b:Lcom/alensw/cloud/sync/k;

    iput p2, p0, Lcom/alensw/cloud/sync/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/alensw/cloud/sync/l;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/alensw/cloud/sync/l;->a:I

    iget-object v1, p0, Lcom/alensw/cloud/sync/l;->b:Lcom/alensw/cloud/sync/k;

    iget-object v1, v1, Lcom/alensw/cloud/sync/k;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-static {v1}, Lcom/alensw/cloud/sync/SyncSettings;->a(Lcom/alensw/cloud/sync/SyncSettings;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/sync/l;->b:Lcom/alensw/cloud/sync/k;

    iget-object v0, v0, Lcom/alensw/cloud/sync/k;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-static {v0}, Lcom/alensw/cloud/sync/SyncSettings;->a(Lcom/alensw/cloud/sync/SyncSettings;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/alensw/cloud/sync/l;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/sync/s;

    iget-object v1, p0, Lcom/alensw/cloud/sync/l;->b:Lcom/alensw/cloud/sync/k;

    iget-object v1, v1, Lcom/alensw/cloud/sync/k;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-static {v1}, Lcom/alensw/cloud/sync/SyncSettings;->d(Lcom/alensw/cloud/sync/SyncSettings;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/alensw/cloud/sync/l;->b:Lcom/alensw/cloud/sync/k;

    iget-object v1, v1, Lcom/alensw/cloud/sync/k;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-virtual {v1}, Lcom/alensw/cloud/sync/SyncSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, v0, Lcom/alensw/cloud/sync/s;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alensw/cloud/sync/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alensw/cloud/sync/l;->b:Lcom/alensw/cloud/sync/k;

    iget-object v0, v0, Lcom/alensw/cloud/sync/k;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-static {v0}, Lcom/alensw/cloud/sync/SyncSettings;->a(Lcom/alensw/cloud/sync/SyncSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/sync/l;->b:Lcom/alensw/cloud/sync/k;

    iget-object v0, v0, Lcom/alensw/cloud/sync/k;->a:Lcom/alensw/cloud/sync/SyncSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alensw/cloud/sync/x;->a(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method
