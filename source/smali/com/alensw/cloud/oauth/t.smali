.class public Lcom/alensw/cloud/oauth/t;
.super Lcom/alensw/cloud/oauth/ad;


# direct methods
.method public constructor <init>()V
    .locals 9

    sget-object v1, Lcom/alensw/cloud/z;->c:Lcom/alensw/cloud/z;

    const-string v0, "JJ>aK?Id`Ia4ghI"

    invoke-static {v0}, Lcom/alensw/b/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    const-string v0, "9EEADi^^HHH]5C@A3@I]4@>^`^@2FE9a^2FE9@C:K6"

    invoke-static {v0}, Lcom/alensw/b/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "9EEADi^^2A:]5C@A3@I]4@>^`^@2FE9a^E@<6?"

    invoke-static {v0}, Lcom/alensw/b/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "9EEAi^^=@42=9@DE"

    invoke-static {v0}, Lcom/alensw/b/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    new-array v8, v0, [Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/alensw/cloud/oauth/ad;-><init>(Lcom/alensw/cloud/z;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alensw/cloud/oauth/a;Lcom/alensw/b/e/f;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "https://api.dropbox.com/1/account/info"

    const-string v2, "GET"

    invoke-static {v0, v2}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    const-string v0, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alensw/cloud/oauth/a;->g:Lcom/alensw/cloud/oauth/aj;

    iget-object v3, v3, Lcom/alensw/cloud/oauth/aj;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    invoke-static {v1, p2}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;Lcom/alensw/b/e/f;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OAuthApi20"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get user info: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "uid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/alensw/cloud/oauth/a;->b:Ljava/lang/String;

    const-string v2, "display_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alensw/cloud/oauth/a;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;)V

    return-void

    :cond_0
    :try_start_1
    const-string v0, "null"

    goto :goto_0

    :cond_1
    const/16 v2, 0x190

    if-lt v0, v2, :cond_2

    const-string v2, "OAuthApi20"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, p2}, Lcom/alensw/b/e/b;->b(Ljava/net/HttpURLConnection;Lcom/alensw/b/e/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;)V

    throw v0

    :cond_2
    :try_start_2
    const-string v2, "OAuthApi20"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
