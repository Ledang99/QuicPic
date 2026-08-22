.class Lcom/alensw/cloud/a/bg;
.super Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/a/ba;


# direct methods
.method public constructor <init>(Lcom/alensw/cloud/a/ba;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/cloud/a/bg;->a:Lcom/alensw/cloud/a/ba;

    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/a/bg;->setURI(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "MOVE"

    return-object v0
.end method
