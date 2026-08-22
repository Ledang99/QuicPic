.class Lcom/alensw/b/e/l;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/protocol/HttpRequestHandler;


# instance fields
.field final synthetic a:Lcom/alensw/b/e/j;


# direct methods
.method constructor <init>(Lcom/alensw/b/e/j;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/b/e/l;->a:Lcom/alensw/b/e/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alensw/b/e/l;->a:Lcom/alensw/b/e/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alensw/b/e/j;->a(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    const/16 v1, 0x1f4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, v1, v2}, Lcom/alensw/b/e/j;->a(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;ILjava/lang/String;)V

    const-string v1, "HttpServer"

    const-string v2, "handle request: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
