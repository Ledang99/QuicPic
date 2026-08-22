.class public Lcom/alensw/cloud/ShareToCloudActivity;
.super Lcom/alensw/ui/c/cx;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/ui/c/cx;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/alensw/ui/c/cx;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alensw/cloud/ShareToCloudActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move v1, v2

    :goto_0
    const-string v3, "QuickPic.catalogs"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v1, :cond_4

    new-array v0, v6, [I

    fill-array-data v0, :array_0

    :goto_1
    const-string v3, "QuickPic.catalogs"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    :cond_1
    const-class v0, Lcom/alensw/ui/c/p;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v4, v3}, Lcom/alensw/cloud/ShareToCloudActivity;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;

    move-result-object v0

    if-eqz v1, :cond_2

    check-cast v0, Lcom/alensw/ui/c/a;

    new-instance v1, Lcom/alensw/cloud/ab;

    invoke-direct {v1, p0, v5, v4}, Lcom/alensw/cloud/ab;-><init>(Lcom/alensw/cloud/ShareToCloudActivity;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/a;->a(Lcom/alensw/ui/c/m;)V

    :cond_2
    invoke-virtual {p0, v2}, Lcom/alensw/cloud/ShareToCloudActivity;->g(Z)V

    return-void

    :cond_3
    move v1, v0

    goto :goto_0

    :cond_4
    new-array v3, v2, [I

    aput v6, v3, v0

    move-object v0, v3

    goto :goto_1

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method
