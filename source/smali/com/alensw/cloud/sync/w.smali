.class public Lcom/alensw/cloud/sync/w;
.super Lcom/alensw/b/c/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/alensw/b/c/g;-><init>(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "sync_task_list"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/io/DataInputStream;)Lcom/alensw/cloud/sync/v;
    .locals 1

    new-instance v0, Lcom/alensw/cloud/sync/v;

    invoke-direct {v0}, Lcom/alensw/cloud/sync/v;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alensw/cloud/sync/v;->a(Ljava/io/DataInputStream;)V

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "SyncTask"

    return-object v0
.end method

.method protected a(Ljava/io/DataOutputStream;Lcom/alensw/cloud/sync/v;)V
    .locals 0

    invoke-virtual {p2, p1}, Lcom/alensw/cloud/sync/v;->a(Ljava/io/DataOutputStream;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/io/DataOutputStream;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/alensw/cloud/sync/v;

    invoke-virtual {p0, p1, p2}, Lcom/alensw/cloud/sync/w;->a(Ljava/io/DataOutputStream;Lcom/alensw/cloud/sync/v;)V

    return-void
.end method

.method protected synthetic b(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alensw/cloud/sync/w;->a(Ljava/io/DataInputStream;)Lcom/alensw/cloud/sync/v;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    const-string v0, "sync_task_list"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/sync/w;->a(Ljava/io/File;)Z

    return-void
.end method
