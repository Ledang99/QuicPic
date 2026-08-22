.class Lcom/alensw/cloud/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/c/m;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/alensw/cloud/ShareToCloudActivity;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/ShareToCloudActivity;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/ab;->c:Lcom/alensw/cloud/ShareToCloudActivity;

    iput-object p2, p0, Lcom/alensw/cloud/ab;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alensw/cloud/ab;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v0, "android.intent.action.SEND"

    iget-object v2, p0, Lcom/alensw/cloud/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/cloud/ab;->b:Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v2, p0, Lcom/alensw/cloud/ab;->c:Lcom/alensw/cloud/ShareToCloudActivity;

    iget-object v3, p0, Lcom/alensw/cloud/ab;->c:Lcom/alensw/cloud/ShareToCloudActivity;

    invoke-static {v3, v5, v0, v1}, Lcom/alensw/cloud/UrlTaskService;->a(Landroid/content/Context;ILandroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alensw/cloud/ShareToCloudActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void

    :cond_1
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    iget-object v2, p0, Lcom/alensw/cloud/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/ab;->b:Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v3, p0, Lcom/alensw/cloud/ab;->c:Lcom/alensw/cloud/ShareToCloudActivity;

    iget-object v4, p0, Lcom/alensw/cloud/ab;->c:Lcom/alensw/cloud/ShareToCloudActivity;

    invoke-static {v4, v5, v0, v1}, Lcom/alensw/cloud/UrlTaskService;->a(Landroid/content/Context;ILandroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alensw/cloud/ShareToCloudActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
