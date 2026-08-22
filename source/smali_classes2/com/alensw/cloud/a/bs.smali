.class Lcom/alensw/cloud/a/bs;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/a/bn;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/bn;ILcom/alensw/b/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/bs;->a:Lcom/alensw/cloud/a/bn;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/HttpURLConnection;)V
    .locals 2

    const-string v0, "If-Match"

    const-string v1, "*"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/alensw/cloud/a/by;->a(Ljava/net/HttpURLConnection;)V

    return-void
.end method
