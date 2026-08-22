.class Lcom/alensw/cloud/sync/q;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/sync/SyncSettings;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/sync/SyncSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/sync/q;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/alensw/cloud/sync/q;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-static {v0}, Lcom/alensw/cloud/sync/SyncSettings;->d(Lcom/alensw/cloud/sync/SyncSettings;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
