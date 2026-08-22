.class final Lcom/alensw/AltMediaScanner$1;
.super Ljava/lang/Object;
.source "AltMediaScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alensw/AltMediaScanner;->scanMediaFolders(Landroid/content/Context;Lcom/alensw/AltMediaScanner$MediaFolderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/alensw/AltMediaScanner$MediaFolderCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/alensw/AltMediaScanner$MediaFolderCallback;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/alensw/AltMediaScanner$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/alensw/AltMediaScanner$1;->val$callback:Lcom/alensw/AltMediaScanner$MediaFolderCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    .local v0, "folderMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/alensw/AltMediaScanner$1;->val$context:Landroid/content/Context;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v0}, Lcom/alensw/AltMediaScanner;->access$000(Landroid/content/Context;Landroid/net/Uri;Ljava/util/HashMap;)V

    .line 27
    iget-object v1, p0, Lcom/alensw/AltMediaScanner$1;->val$context:Landroid/content/Context;

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v0}, Lcom/alensw/AltMediaScanner;->access$000(Landroid/content/Context;Landroid/net/Uri;Ljava/util/HashMap;)V

    .line 30
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 31
    .local v2, "folder":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 32
    .local v3, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 33
    iget-object v4, p0, Lcom/alensw/AltMediaScanner$1;->val$callback:Lcom/alensw/AltMediaScanner$MediaFolderCallback;

    invoke-interface {v4, v2, v3}, Lcom/alensw/AltMediaScanner$MediaFolderCallback;->onMediaFolderFound(Ljava/lang/String;Ljava/util/List;)V

    .line 35
    .end local v2    # "folder":Ljava/lang/String;
    .end local v3    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method
