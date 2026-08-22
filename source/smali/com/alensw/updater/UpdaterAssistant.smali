.class public Lcom/alensw/updater/UpdaterAssistant;
.super Ljava/lang/Object;
.source "UpdaterAssistant.java"


# instance fields
.field protected Updates:Ljava/lang/String;

.field c:Landroid/content/Context;

.field showToast:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "a[[[[b[HR0cHM6[[[[b[Ly9yY[[[[b[XcuZ2l0[[[[b[aHVidXNl[[[[b[cmNvbnRlbnQuY29tL1[[[[b[dTVH[[[[b[hkYS9RUC1H[[[[b[YWxsZXJ5LVJlbGVhc2VzL21[[[[b[hc3Rlci9PVEElMjB1cGRhd[[[[b[GVyL3Vw[[[[b[ZGF0ZXIuanNvbg"

    iput-object v0, p0, Lcom/alensw/updater/UpdaterAssistant;->Updates:Ljava/lang/String;

    iput-object p1, p0, Lcom/alensw/updater/UpdaterAssistant;->c:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/alensw/updater/UpdaterAssistant;->showToast:Z

    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alensw/updater/UpdaterAssistant;->c:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v1

    move v1, v0

    move v0, v5

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v7, v3, v0

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WIFI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MOBILE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v6, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    if-eqz v6, :cond_4

    :cond_3
    const/4 v5, 0x1

    :cond_4
    return v5
.end method


# virtual methods
.method public checkForUpdates()V
    .locals 7

    invoke-direct {p0}, Lcom/alensw/updater/UpdaterAssistant;->isNetworkAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/updater/UpdaterAssistant;->Updates:Ljava/lang/String;

    const-string v2, "[[[[b["

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v3, Lcom/alensw/updater/UpdaterEngine;

    iget-object v4, p0, Lcom/alensw/updater/UpdaterAssistant;->c:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/alensw/updater/UpdaterAssistant;->getCurrentChannel()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/alensw/updater/UpdaterAssistant;->showToast:Z

    invoke-direct {v3, v4, v5, v6}, Lcom/alensw/updater/UpdaterEngine;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v1

    invoke-virtual {v3, v4}, Lcom/alensw/updater/UpdaterEngine;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/alensw/updater/UpdaterAssistant;->showToast:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/updater/UpdaterAssistant;->c:Landroid/content/Context;

    const v2, 0x7f0a0113

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_1
    return-void
.end method

.method public getCurrentChannel()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alensw/updater/UpdaterAssistant;->c:Landroid/content/Context;

    const-string v1, "com.alensw.PicFolder_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "channel"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
