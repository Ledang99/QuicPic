.class Lcom/alensw/cloud/a/q;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Landroid/content/ContentValues;

.field final synthetic b:Ljava/lang/StringBuilder;

.field final synthetic c:Lcom/alensw/cloud/a/n;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/n;ILcom/alensw/b/e/f;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/q;->c:Lcom/alensw/cloud/a/n;

    iput-object p4, p0, Lcom/alensw/cloud/a/q;->a:Landroid/content/ContentValues;

    iput-object p5, p0, Lcom/alensw/cloud/a/q;->b:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    const/16 v0, 0x199

    if-ne p1, v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "item_name_in_use"

    const-string v2, "code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alensw/cloud/a/by;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lcom/a/a/a/h;)V
    .locals 2

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    iget-object v0, p0, Lcom/alensw/cloud/a/q;->c:Lcom/alensw/cloud/a/n;

    iget-object v1, p0, Lcom/alensw/cloud/a/q;->a:Landroid/content/ContentValues;

    invoke-static {v0, p1, v1}, Lcom/alensw/cloud/a/n;->a(Lcom/alensw/cloud/a/n;Lcom/a/a/a/h;Landroid/content/ContentValues;)C

    return-void
.end method

.method public a(Ljava/net/HttpURLConnection;)V
    .locals 2

    const-string v0, "application/json; charset=utf-8"

    iget-object v1, p0, Lcom/alensw/cloud/a/q;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
