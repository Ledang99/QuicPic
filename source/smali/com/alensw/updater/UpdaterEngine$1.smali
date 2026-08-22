.class Lcom/alensw/updater/UpdaterEngine$1;
.super Ljava/lang/Object;
.source "UpdaterEngine.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alensw/updater/UpdaterEngine;->onPostExecute(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alensw/updater/UpdaterEngine;

.field final synthetic val$linkApk:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alensw/updater/UpdaterEngine;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/updater/UpdaterEngine$1;->this$0:Lcom/alensw/updater/UpdaterEngine;

    iput-object p2, p0, Lcom/alensw/updater/UpdaterEngine$1;->val$linkApk:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Lcom/alensw/updater/downloader/DownloaderManager;

    iget-object v1, p0, Lcom/alensw/updater/UpdaterEngine$1;->this$0:Lcom/alensw/updater/UpdaterEngine;

    iget-object v1, v1, Lcom/alensw/updater/UpdaterEngine;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/alensw/updater/UpdaterEngine$1;->val$linkApk:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/alensw/updater/downloader/DownloaderManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alensw/updater/downloader/DownloaderManager;->startDownload()V

    return-void
.end method
