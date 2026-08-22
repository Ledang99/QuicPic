.class final Lcom/alensw/ui/a/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ljava/util/HashMap;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/a/b;->a:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/alensw/ui/a/b;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    const-string v0, "http://ver.q-supreme.com/update"

    iget-object v1, p0, Lcom/alensw/ui/a/b;->a:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/f;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "versionCode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "CheckUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lcom/alensw/PicFolder/QuickApp;->k:I

    if-le v0, v2, :cond_0

    const-string v0, "versionName"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "changeLog"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "downloadUrl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/alensw/ui/a/b;->b:Landroid/app/Activity;

    new-instance v4, Lcom/alensw/ui/a/c;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/alensw/ui/a/c;-><init>(Lcom/alensw/ui/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CheckUpdate"

    const-string v2, "check from server: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
