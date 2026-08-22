.class Lcom/alensw/cloud/oauth/q;
.super Lcom/alensw/b/e/g;


# instance fields
.field final synthetic a:Z

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/alensw/cloud/oauth/BasicAuthActivity;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/oauth/BasicAuthActivity;Lcom/alensw/b/e/f;Z[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/oauth/q;->c:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    iput-boolean p3, p0, Lcom/alensw/cloud/oauth/q;->a:Z

    iput-object p4, p0, Lcom/alensw/cloud/oauth/q;->b:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/alensw/b/e/g;-><init>(Lcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Server not installed!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)V
    .locals 5

    iget-object v0, p0, Lcom/alensw/cloud/oauth/q;->i:Lcom/alensw/b/e/f;

    invoke-static {p6, p3, v0}, Lcom/alensw/b/e/b;->a(Ljava/io/InputStream;Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "installed"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/cloud/oauth/q;->b:[Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "version"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Server not installed!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public a(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/cloud/oauth/q;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alensw/b/e/b;->a(Ljavax/net/ssl/HttpsURLConnection;)V

    :cond_0
    return-void
.end method
