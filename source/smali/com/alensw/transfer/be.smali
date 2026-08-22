.class Lcom/alensw/transfer/be;
.super Lcom/alensw/b/e/g;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Z

.field final synthetic c:Lcom/alensw/transfer/bd;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/bd;Lcom/alensw/b/e/f;Ljava/lang/String;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/be;->c:Lcom/alensw/transfer/bd;

    iput-object p3, p0, Lcom/alensw/transfer/be;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/alensw/transfer/be;->b:[Z

    invoke-direct {p0, p2}, Lcom/alensw/b/e/g;-><init>(Lcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/io/InputStream;)V
    .locals 2

    new-instance v0, Ljava/net/UnknownHostException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/be;->b:[Z

    aput-boolean v1, v0, v1

    :cond_0
    return-void
.end method

.method public a(Ljava/net/HttpURLConnection;)V
    .locals 2

    const-string v0, "application/json; charset=utf-8"

    iget-object v1, p0, Lcom/alensw/transfer/be;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
