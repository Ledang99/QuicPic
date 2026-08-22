.class public Lcom/alensw/updater/downloader/DownloaderManager;
.super Ljava/lang/Object;
.source "DownloaderManager.java"


# instance fields
.field public c:Landroid/content/Context;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alensw/updater/downloader/DownloaderManager;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/alensw/updater/downloader/DownloaderManager;->url:Ljava/lang/String;

    return-void
.end method

.method private startDownload__$prependPatch()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/Download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    return-void
.end method

.method private startDownload__$prependSource()V
    .locals 6

    const-string v0, "Z[[[[b[2l[[[[b[0aH[[[[b[ViL[[[[b[mNvbS9XU1[[[[b[R4ZGE="

    const-string v1, "[[[[b["

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v3, p0, Lcom/alensw/updater/downloader/DownloaderManager;->url:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/alensw/updater/downloader/DownloadTask;

    iget-object v4, p0, Lcom/alensw/updater/downloader/DownloaderManager;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/alensw/updater/downloader/DownloadTask;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/alensw/updater/downloader/DownloaderManager;->url:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lcom/alensw/updater/downloader/DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-void
.end method


# virtual methods
.method public startDownload()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/alensw/updater/downloader/DownloaderManager;->startDownload__$prependPatch()V

    invoke-direct/range {p0 .. p0}, Lcom/alensw/updater/downloader/DownloaderManager;->startDownload__$prependSource()V

    return-void
.end method
