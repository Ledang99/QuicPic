.class Lcom/alensw/b/e/n;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/alensw/b/e/j;


# direct methods
.method constructor <init>(Lcom/alensw/b/e/j;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/b/e/n;->a:Lcom/alensw/b/e/j;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/b/e/n;->a:Lcom/alensw/b/e/j;

    invoke-static {v0}, Lcom/alensw/b/e/j;->a(Lcom/alensw/b/e/j;)Ljava/net/ServerSocket;

    move-result-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    const/16 v2, 0x3a98

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v2, Lorg/apache/http/impl/DefaultHttpServerConnection;

    invoke-direct {v2}, Lorg/apache/http/impl/DefaultHttpServerConnection;-><init>()V

    iget-object v3, p0, Lcom/alensw/b/e/n;->a:Lcom/alensw/b/e/j;

    invoke-static {v3}, Lcom/alensw/b/e/j;->b(Lcom/alensw/b/e/j;)Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/http/impl/DefaultHttpServerConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    iget-object v0, p0, Lcom/alensw/b/e/n;->a:Lcom/alensw/b/e/j;

    invoke-virtual {v0, v2}, Lcom/alensw/b/e/j;->b(Lorg/apache/http/impl/DefaultHttpServerConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HttpServer"

    const-string v1, "server quit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "HttpServer"

    const-string v3, "server loop: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
