.class Lcom/alensw/cloud/a/av;
.super Lcom/alensw/cloud/a/aw;


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alensw/cloud/a/as;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/as;ILcom/alensw/b/e/f;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/av;->d:Lcom/alensw/cloud/a/as;

    iput-object p4, p0, Lcom/alensw/cloud/a/av;->a:Ljava/io/InputStream;

    iput-object p5, p0, Lcom/alensw/cloud/a/av;->b:Ljava/lang/String;

    iput-object p6, p0, Lcom/alensw/cloud/a/av;->c:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/aw;-><init>(Lcom/alensw/cloud/a/as;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/HttpURLConnection;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v0, "form-data"

    iget-object v1, p0, Lcom/alensw/cloud/a/av;->i:Lcom/alensw/b/e/f;

    new-array v2, v9, [Lcom/alensw/b/e/h;

    new-instance v3, Lcom/alensw/b/e/h;

    iget-object v4, p0, Lcom/alensw/cloud/a/av;->a:Ljava/io/InputStream;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "Content-Disposition"

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "form-data; name=\"file\"; filename=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/alensw/cloud/a/av;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x2

    const-string v7, "Content-Type"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/alensw/cloud/a/av;->c:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/alensw/b/e/h;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    aput-object v3, v2, v8

    invoke-static {p1, v0, v1, v2}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/alensw/b/e/f;[Lcom/alensw/b/e/h;)V

    return-void
.end method
