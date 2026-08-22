.class public Lcom/alensw/AltMediaScanner;
.super Ljava/lang/Object;
.source "AltMediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alensw/AltMediaScanner$MediaFolderCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/net/Uri;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Ljava/util/HashMap;

    .line 14
    invoke-static {p0, p1, p2}, Lcom/alensw/AltMediaScanner;->scanUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/HashMap;)V

    return-void
.end method

.method public static scanMediaFolders(Landroid/content/Context;Lcom/alensw/AltMediaScanner$MediaFolderCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/alensw/AltMediaScanner$MediaFolderCallback;

    .line 21
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alensw/AltMediaScanner$1;

    invoke-direct {v1, p0, p1}, Lcom/alensw/AltMediaScanner$1;-><init>(Landroid/content/Context;Lcom/alensw/AltMediaScanner$MediaFolderCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 37
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    return-void
.end method

.method private static scanUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/HashMap;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 41
    .local p2, "folderMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 42
    .local v6, "resolver":Landroid/content/ContentResolver;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v7, "_data"

    const/4 v0, 0x0

    aput-object v7, v2, v0

    .line 43
    .local v2, "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 45
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 46
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 47
    .local v1, "dataIndex":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "path":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 50
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "parent":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 54
    .local v7, "name":Ljava/lang/String;
    if-eqz v5, :cond_1

    if-eqz v7, :cond_1

    .line 55
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 56
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v8, :cond_0

    .line 57
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v9

    .line 58
    invoke-virtual {p2, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "parent":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 64
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 66
    .end local v1    # "dataIndex":I
    :cond_3
    return-void
.end method
