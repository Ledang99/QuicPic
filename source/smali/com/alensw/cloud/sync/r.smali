.class Lcom/alensw/cloud/sync/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/sync/SyncSettings;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/sync/SyncSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/sync/r;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alensw/cloud/sync/v;Lcom/alensw/cloud/sync/v;)I
    .locals 2

    iget-object v0, p1, Lcom/alensw/cloud/sync/v;->d:Ljava/lang/String;

    iget-object v1, p2, Lcom/alensw/cloud/sync/v;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alensw/cloud/sync/v;->e:Ljava/lang/String;

    iget-object v1, p2, Lcom/alensw/cloud/sync/v;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/alensw/cloud/sync/v;

    check-cast p2, Lcom/alensw/cloud/sync/v;

    invoke-virtual {p0, p1, p2}, Lcom/alensw/cloud/sync/r;->a(Lcom/alensw/cloud/sync/v;Lcom/alensw/cloud/sync/v;)I

    move-result v0

    return v0
.end method
