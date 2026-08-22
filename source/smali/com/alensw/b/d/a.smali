.class public Lcom/alensw/b/d/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFLcom/alensw/b/d/c;)Z
    .locals 9

    const/4 v8, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    const-string v3, "http://gc.ditu.aliyun.com/regeocoding?type=010&l=%f,%f"

    float-to-double v4, p1

    float-to-double v6, p2

    invoke-static {v3, v4, v5, v6, v7}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "addrList"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v3, "status"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, "admName"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v3, v5

    if-lt v3, v2, :cond_0

    array-length v3, v5

    if-lt v3, v8, :cond_4

    move v3, v1

    :goto_1
    aget-object v3, v5, v3

    iput-object v3, p3, Lcom/alensw/b/d/c;->c:Ljava/lang/String;

    iget-object v3, p3, Lcom/alensw/b/d/c;->c:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p3, Lcom/alensw/b/d/c;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\u4e2d\u56fd"

    iput-object v3, p3, Lcom/alensw/b/d/c;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v5, v3

    iput-object v3, p3, Lcom/alensw/b/d/c;->b:Ljava/lang/String;

    array-length v3, v5

    if-lt v3, v8, :cond_5

    :goto_2
    aget-object v2, v5, v2

    iput-object v2, p3, Lcom/alensw/b/d/c;->d:Ljava/lang/String;

    const-string v2, "addr"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/alensw/b/d/c;->e:Ljava/lang/String;

    iget-object v2, p3, Lcom/alensw/b/d/c;->e:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p3, Lcom/alensw/b/d/c;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "name"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/alensw/b/d/c;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v3, v0

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "GeoCodeApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
