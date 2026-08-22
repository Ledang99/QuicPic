.class Lcom/alensw/updater/downloader/DownloadTask$1;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alensw/updater/downloader/DownloadTask;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alensw/updater/downloader/DownloadTask;

.field final synthetic val$me:Lcom/alensw/updater/downloader/DownloadTask;


# direct methods
.method constructor <init>(Lcom/alensw/updater/downloader/DownloadTask;Lcom/alensw/updater/downloader/DownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/updater/downloader/DownloadTask$1;->this$0:Lcom/alensw/updater/downloader/DownloadTask;

    iput-object p2, p0, Lcom/alensw/updater/downloader/DownloadTask$1;->val$me:Lcom/alensw/updater/downloader/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/updater/downloader/DownloadTask$1;->val$me:Lcom/alensw/updater/downloader/DownloadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alensw/updater/downloader/DownloadTask;->cancel(Z)Z

    return-void
.end method
