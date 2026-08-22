.class Lcom/alensw/cloud/a/h;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Lcom/alensw/cloud/a/a;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/a;ILcom/alensw/b/e/f;Ljava/lang/StringBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/h;->b:Lcom/alensw/cloud/a/a;

    iput-object p4, p0, Lcom/alensw/cloud/a/h;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/HttpURLConnection;)V
    .locals 2

    const-string v0, "application/json; charset=utf8"

    iget-object v1, p0, Lcom/alensw/cloud/a/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
