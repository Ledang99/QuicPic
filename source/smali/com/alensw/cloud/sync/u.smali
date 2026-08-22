.class public Lcom/alensw/cloud/sync/u;
.super Lcom/alensw/b/c/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/alensw/b/c/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/DataInputStream;)Lcom/alensw/cloud/sync/t;
    .locals 1

    new-instance v0, Lcom/alensw/cloud/sync/t;

    invoke-direct {v0}, Lcom/alensw/cloud/sync/t;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alensw/cloud/sync/t;->a(Ljava/io/DataInputStream;)V

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "SyncStatus"

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "sync_status_list"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/sync/u;->a(Ljava/io/File;)Z

    return-void
.end method

.method protected a(Ljava/io/DataOutputStream;Lcom/alensw/cloud/sync/t;)V
    .locals 0

    invoke-virtual {p2, p1}, Lcom/alensw/cloud/sync/t;->a(Ljava/io/DataOutputStream;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/io/DataOutputStream;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/alensw/cloud/sync/t;

    invoke-virtual {p0, p1, p2}, Lcom/alensw/cloud/sync/u;->a(Ljava/io/DataOutputStream;Lcom/alensw/cloud/sync/t;)V

    return-void
.end method

.method protected synthetic b(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alensw/cloud/sync/u;->a(Ljava/io/DataInputStream;)Lcom/alensw/cloud/sync/t;

    move-result-object v0

    return-object v0
.end method
