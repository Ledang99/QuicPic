.class public Lcom/alensw/cloud/sync/SyncService;
.super Landroid/app/Service;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/alensw/cloud/sync/f;


# instance fields
.field private c:Lcom/alensw/cloud/sync/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alensw/cloud/sync/SyncService;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/alensw/cloud/sync/SyncService;->b:Lcom/alensw/cloud/sync/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "android.content.SyncAdapter"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alensw/cloud/sync/SyncService;->b:Lcom/alensw/cloud/sync/f;

    invoke-virtual {v0}, Lcom/alensw/cloud/sync/f;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/cloud/sync/SyncService;->c:Lcom/alensw/cloud/sync/a;

    invoke-virtual {v0}, Lcom/alensw/cloud/sync/a;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v1, Lcom/alensw/cloud/sync/SyncService;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alensw/cloud/sync/SyncService;->b:Lcom/alensw/cloud/sync/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alensw/cloud/sync/f;

    invoke-virtual {p0}, Lcom/alensw/cloud/sync/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/alensw/cloud/sync/f;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/alensw/cloud/sync/SyncService;->b:Lcom/alensw/cloud/sync/f;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/alensw/cloud/sync/a;

    invoke-direct {v0, p0}, Lcom/alensw/cloud/sync/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alensw/cloud/sync/SyncService;->c:Lcom/alensw/cloud/sync/a;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
