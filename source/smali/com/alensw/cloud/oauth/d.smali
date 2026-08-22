.class public Lcom/alensw/cloud/oauth/d;
.super Lcom/alensw/cloud/oauth/ad;


# direct methods
.method public constructor <init>()V
    .locals 10

    sget-object v1, Lcom/alensw/cloud/z;->g:Lcom/alensw/cloud/z;

    const-string v0, "v7tvsHd89`=Ie;s\'aK~KAG`g"

    invoke-static {v0}, Lcom/alensw/b/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "t`#BG5<e|fthC7*>)h7EB\"A<}_&Kb)vC"

    invoke-static {v0}, Lcom/alensw/b/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "32D:4 ?6E5:D<"

    invoke-static {v0}, Lcom/alensw/b/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "9EEADi^^@A6?2A:]32:5F]4@>^@2FE9^a]_^2FE9@C:K6"

    invoke-static {v0}, Lcom/alensw/b/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "9EEADi^^@A6?2A:]32:5F]4@>^@2FE9^a]_^E@<6?"

    invoke-static {v0}, Lcom/alensw/b/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "9EEAi^^BF:4<A:4]B\\DFAC6>6]4@>^@2FE9^42==324<"

    invoke-static {v0}, Lcom/alensw/b/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v9, "5:DA=2J"

    invoke-static {v9}, Lcom/alensw/b/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x1

    const-string v9, ">@3:=6"

    invoke-static {v9}, Lcom/alensw/b/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/alensw/cloud/oauth/ad;-><init>(Lcom/alensw/cloud/z;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alensw/cloud/oauth/a;Lcom/alensw/b/e/f;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://openapi.baidu.com/rest/2.0/passport/users/getInfo?access_token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/alensw/cloud/oauth/a;->g:Lcom/alensw/cloud/oauth/aj;

    iget-object v2, v2, Lcom/alensw/cloud/oauth/aj;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GET"

    invoke-static {v0, v2}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

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

    const-string v2, "userid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/alensw/cloud/oauth/a;->b:Ljava/lang/String;

    const-string v2, "username"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alensw/cloud/oauth/a;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;)V

    return-void

    :cond_0
    :try_start_1
    const-string v0, "null"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;)V

    throw v0
.end method

.method protected a(Ljava/lang/String;Lcom/alensw/cloud/oauth/aj;Lcom/alensw/b/e/f;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/alensw/cloud/oauth/ad;->a(Ljava/lang/String;Lcom/alensw/cloud/oauth/aj;Lcom/alensw/b/e/f;)V

    iget-object v0, p2, Lcom/alensw/cloud/oauth/aj;->c:Ljava/lang/String;

    const-string v1, "netdisk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alensw/cloud/oauth/z;

    invoke-direct {v0}, Lcom/alensw/cloud/oauth/z;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public a_(Lcom/alensw/cloud/oauth/aj;Lcom/alensw/b/e/f;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/alensw/cloud/oauth/ad;->a_(Lcom/alensw/cloud/oauth/aj;Lcom/alensw/b/e/f;)V

    iget-object v0, p1, Lcom/alensw/cloud/oauth/aj;->c:Ljava/lang/String;

    const-string v1, "netdisk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alensw/cloud/oauth/z;

    invoke-direct {v0}, Lcom/alensw/cloud/oauth/z;-><init>()V

    throw v0

    :cond_0
    return-void
.end method
